from pathlib import Path
from os_util import *
import argparse

from configure_template import *
from rvx_config import *
from rvx_devkit import *
from rvx_engine_log import *
from rvx_mini_home import *


def is_subpath(input_path, output_path):
    input_path = Path(input_path).resolve()
    output_path = Path(output_path).resolve()

    try:
        input_path.relative_to(output_path)
        return True
    except ValueError:
        return False


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='RVX Fork Util')
    parser.add_argument('-cmd', '-c', help='command')
    parser.add_argument('-input', '-i', help='input')
    parser.add_argument('-output', '-o', help='output')
    args = parser.parse_args()

    assert args.cmd
    assert args.input
    assert args.output

    input_path = Path(args.input).resolve().absolute()
    assert input_path.is_dir(), input_path
    assert (input_path / '.git').is_dir()

    output_path = Path(args.output).resolve().absolute()
    assert output_path.is_dir(), output_path
    assert (output_path / '.git').is_dir()

    assert input_path != output_path
    assert not is_subpath(input_path, output_path)

    if '.' in args.cmd:
        cmd, option_list = args.cmd.split('.')
    else:
        cmd = args.cmd
        option_list = ''

    assert cmd == 'fork'

    # setup
    self_file = Path(__file__)
    home_path = Path(self_file).resolve().parent.parent
    assert home_path.is_dir(), home_path

    engine_log = RvxEngineLog(home_path)
    engine_log.add_new_job('logfile_setup', True, 'done')
    engine_log.export_file()

    config = RvxConfig(home_path)
    devkit = RvxDevkit(config, args.output, engine_log, False)
    mini_home = RvxMiniHome(devkit)

    # init
    print(f'\"{input_path}\" is forked to \"{output_path}\"')

    for rvx_init_module in ('Makefile', 'rvx_init.mh'):
        copy_file(input_path/'rvx_install'/'mini_git' /
                  rvx_init_module, output_path)

    # rvx_submodule
    rvx_submodule_list = ('rvx_init', 'rvx_install')
    for rvx_submodule in rvx_submodule_list:
        run_shell_cmd(f'git submodule deinit -f {rvx_submodule}',
                      output_path, prints_when_error=False, asserts_when_error=False)
        run_shell_cmd(f'rm -rf .git/modules/{rvx_submodule}', output_path,
                      prints_when_error=False, asserts_when_error=False)
        run_shell_cmd(f'git rm -rf {rvx_submodule}', output_path,
                      prints_when_error=False, asserts_when_error=False)
        run_shell_cmd(f'git config -f .gitmodules --remove-section submodule.{rvx_submodule}', output_path,
                      prints_when_error=False, asserts_when_error=False)
        run_shell_cmd(f'rm -rf {rvx_submodule}', output_path,
                      prints_when_error=False, asserts_when_error=False)

    # rvx_submodule
    (output_path/'.gitmodules').touch()
    for rvx_submodule in rvx_submodule_list:
        assert rvx_submodule
        add_as_submodule = True
        if 'f' in option_list:
            add_as_submodule = False
        elif not (input_path/rvx_submodule/'.git').is_file():
            add_as_submodule = False

        if add_as_submodule:
            run_shell_cmd(
                f'git submodule add -f {input_path / rvx_submodule}', output_path)
            run_shell_cmd(
                f'make rvx_init CMD={rvx_submodule}.github', output_path)
        else:
            copy_directory(input_path/rvx_submodule, output_path/rvx_submodule)
            remove_file(output_path/rvx_submodule/'.git')

    # imp_class_info
    imp_class_info_path = output_path / 'imp_class_info'
    if imp_class_info_path.is_symlink():
        imp_class_info_path.unlink()
    elif imp_class_info_path.is_dir():
        remove_directory(imp_class_info_path)
    else:
        assert not imp_class_info_path.exists()

    run_shell_cmd(f'git checkout ./imp_class_info', output_path,
                  prints_when_error=False, asserts_when_error=False)

    if 'f' in option_list:
        run_shell_cmd('make copy_imp_class_info', output_path / 'rvx_install')

    # update_mini_git
    run_shell_cmd('make update_mini_git', output_path)

    # rvx_special_ip
    if config.special_ip_path:
        rvx_special_ip_name_list = []
        special_ip_path_name = config.special_ip_path.name
        run_shell_cmd(f'git checkout ./{special_ip_path_name}', output_path,
                      prints_when_error=False, asserts_when_error=False)
        if 'u' in option_list:
            rvx_special_ip_name_list = [x.name for x in (
                output_path / special_ip_path_name).glob('*') if x.is_dir()]
        else:
            rvx_special_ip_name_list = [x.name for x in (
                input_path / special_ip_path_name).glob('*') if x.is_dir()]

        if rvx_special_ip_name_list:
            print(rvx_special_ip_name_list)
            rvx_special_ip_path = output_path / special_ip_path_name
            remove_directory(rvx_special_ip_path)
            rvx_special_ip_path.mkdir()
            for rvx_special_ip_name in rvx_special_ip_name_list:
                copy_directory(config.special_ip_path/rvx_special_ip_name,
                               rvx_special_ip_path/rvx_special_ip_name)

    # copy
    copy_component_list = [
        mini_home.sync_path.name, config.freeze_tag_path.name, 'rvx_python_config.mh']
    for component in copy_component_list:
        input_component = input_path / component
        output_component = output_path / component
        if output_component.exists():
            remove(output_component)
        if input_component.is_file():
            copy_file(input_component, output_component)
        elif input_component.is_dir():
            copy_directory(input_component, output_component)

from pathlib import Path
from os_util import *
import os
import stat
import argparse

from configure_template import *
from rvx_config import *
from rvx_devkit import *
from rvx_engine_log import *
from rvx_mini_home import *
from setup_repo import *


def is_subpath(original_path, target_path):
    original_path = Path(original_path).resolve()
    target_path = Path(target_path).resolve()

    try:
        original_path.relative_to(target_path)
        return True
    except ValueError:
        return False


def has_submodule(path: Path):
    has = False
    gitmodules_path = path / '.gitmodules'
    if gitmodules_path.is_file():
        if 'submodule' in gitmodules_path.read_text():
            has = True
    return has

# from generate_git_info


def get_git_url(path: Path):
    assert path.is_dir(), path
    result = subprocess.run('git config --get remote.origin.url', cwd=path,
                            shell=True, stdout=subprocess.PIPE, encoding=encoding).stdout
    return result[:-1]


def _force_writable(path: str):
    try:
        os.chmod(path, stat.S_IWRITE | stat.S_IREAD)
    except Exception:
        pass


def remove_read_only(p: Path):
    if p.exists():
        for root, dirs, files in os.walk(p, topdown=False):
            for name in files:
                _force_writable(os.path.join(root, name))
            for name in dirs:
                _force_writable(os.path.join(root, name))


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='RVX Fork Util')
    parser.add_argument('-cmd', '-c', help='command')
    parser.add_argument('-original', '-o', help='original')
    parser.add_argument('-target', '-t', help='target')
    args = parser.parse_args()

    assert args.cmd
    assert args.original
    assert args.target

    original_path = Path(args.original).resolve().absolute()
    assert original_path.is_dir(), original_path

    target_path = Path(args.target).resolve().absolute()
    assert target_path.is_dir(), target_path
    assert (target_path / '.git').is_dir()

    assert original_path != target_path
    assert not is_subpath(original_path, target_path)

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
    devkit = RvxDevkit(config, args.target, engine_log, False)
    mini_home = RvxMiniHome(devkit)

    # init
    print(f'\"{original_path}\" is forked to \"{target_path}\"')

    # rvx_submodule
    rvx_submodule_list = ('rvx_init', 'rvx_install')
    for rvx_submodule in rvx_submodule_list:
        run_shell_cmd(f'git submodule deinit -f {rvx_submodule}',
                      target_path, prints_when_error=False, asserts_when_error=False)
        if is_windows:
            remove_read_only(target_path / '.git' / 'modules' / rvx_submodule)
        remove_directory(target_path / '.git' / 'modules' / rvx_submodule)
        run_shell_cmd(f'git rm -rf {rvx_submodule}', target_path,
                      prints_when_error=False, asserts_when_error=False)
        run_shell_cmd(f'git config -f .gitmodules --remove-section submodule.{rvx_submodule}', target_path,
                      prints_when_error=False, asserts_when_error=False)
        remove_directory(target_path / rvx_submodule)

    # rvx_submodule
    gitmodules_path = target_path / '.gitmodules'
    gitmodules_path.touch()
    for rvx_submodule in rvx_submodule_list:
        assert rvx_submodule
        add_as_submodule = True
        if 'f' in option_list:
            add_as_submodule = False
        elif not (original_path/rvx_submodule/'.git').is_file():
            add_as_submodule = False

        if add_as_submodule:
            run_shell_cmd(
                f'git -c protocol.file.allow=always submodule add -f {original_path / rvx_submodule}', target_path)
            url = f'https://github.com/rvx-etri/{rvx_submodule}.git'
            run_shell_cmd(
                f'git config -f .gitmodules submodule.{rvx_submodule}.url \"{url}\"', target_path)
            remove_directory(target_path/rvx_submodule)
            copy_directory(original_path/rvx_submodule,
                           target_path/rvx_submodule)
        else:
            copy_directory(original_path/rvx_submodule,
                           target_path/rvx_submodule)
            remove_file(target_path/rvx_submodule/'.git')

    if not has_submodule(target_path):
        gitmodules_path.unlink(missing_ok=True)

    # imp_class_info
    original_imp_class_info_path = original_path / 'imp_class_info'
    target_imp_class_info_path = target_path / 'imp_class_info'

    if original_imp_class_info_path.is_symlink():
        pass
    elif original_imp_class_info_path.is_dir():
        if target_imp_class_info_path.is_symlink():
            imp_class_info_path.unlink()
        elif target_imp_class_info_path.is_dir():
            remove_directory(target_imp_class_info_path)
        target_imp_class_info_path.mkdir()
        copy_file(original_imp_class_info_path/'Makefile',
                  target_imp_class_info_path/'Makefile')
        original_dir_names = [p.name for p in (
            original_imp_class_info_path).iterdir() if p.is_dir()]
        for dir_name in original_dir_names:
            copy_directory(original_imp_class_info_path/dir_name,
                           target_imp_class_info_path/dir_name)
    else:
        assert 0, target_imp_class_info_path

    update_repo(target_path, original_path / 'rvx_install' / 'mini_git')

    # rvx_special_ip
    if config.special_ip_path:
        rvx_special_ip_name_list = []
        special_ip_path_name = config.special_ip_path.name
        run_shell_cmd(f'git checkout ./{special_ip_path_name}', target_path,
                      prints_when_error=False, asserts_when_error=False)
        if 'u' in option_list:
            rvx_special_ip_name_list = [x.name for x in (
                target_path / special_ip_path_name).glob('*') if x.is_dir()]
        else:
            rvx_special_ip_name_list = [x.name for x in (
                original_path / special_ip_path_name).glob('*') if x.is_dir()]

        if rvx_special_ip_name_list:
            print(rvx_special_ip_name_list)
            rvx_special_ip_path = target_path / special_ip_path_name
            remove_directory(rvx_special_ip_path)
            rvx_special_ip_path.mkdir()
            for rvx_special_ip_name in rvx_special_ip_name_list:
                copy_directory(config.special_ip_path/rvx_special_ip_name,
                               rvx_special_ip_path/rvx_special_ip_name)

    # copy
    copy_component_list = [
        mini_home.sync_path.name, config.freeze_tag_path.name, 'rvx_python_config.mh']
    for component in copy_component_list:
        input_component = original_path / component
        output_component = target_path / component
        if output_component.exists():
            remove(output_component)
        if input_component.is_file():
            copy_file(input_component, output_component)
        elif input_component.is_dir():
            copy_directory(input_component, output_component)

    # update client_info
    new_client_sync_config_path = target_path / \
        devkit.client_sync_config_path.relative_to(original_path)
    run_shell_cmd(
        f'{config.python3_cmd} {config.utility_path}/manage_version_info.py -name synced_before -value false -o {new_client_sync_config_path}', original_path)
    run_shell_cmd(
        f'{config.python3_cmd} {config.utility_path}/manage_version_info.py -name synced_from -value {get_git_url(original_path)} -o {new_client_sync_config_path}', original_path)

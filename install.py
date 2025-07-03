# ****************************************************************************
# ****************************************************************************
# Copyright SoC Design Research Group, All rights reserved.
# Electronics and Telecommunications Research Institute (ETRI)
##
# THESE DOCUMENTS CONTAIN CONFIDENTIAL INFORMATION AND KNOWLEDGE
# WHICH IS THE PROPERTY OF ETRI. NO PART OF THIS PUBLICATION IS
# TO BE USED FOR ANY OTHER PURPOSE, AND THESE ARE NOT TO BE
# REPRODUCED, COPIED, DISCLOSED, TRANSMITTED, STORED IN A RETRIEVAL
# SYSTEM OR TRANSLATED INTO ANY OTHER HUMAN OR COMPUTER LANGUAGE,
# IN ANY FORM, BY ANY MEANS, IN WHOLE OR IN PART, WITHOUT THE
# COMPLETE PRIOR WRITTEN PERMISSION OF ETRI.
# ****************************************************************************
# 2019-05-17
# Kyuseung Han (han@etri.re.kr)
# ****************************************************************************
# ****************************************************************************

import argparse
import os
import sys
import platform
import datetime
from pathlib import Path

from configure_template import *
from rvx_config import *
from rvx_devkit import *
from rvx_engine_log import *
from rvx_mini_home import *

debug_enable_filename = 'debug'

if __name__ == '__main__':
    # argument
    parser = argparse.ArgumentParser(description='RVX MINI install')
    parser.add_argument('-cmd', '-c', help='command')
    parser.add_argument('-output', '-o', help='output file name')
    args = parser.parse_args()

    if getattr(sys, 'frozen', False):
        self_file = Path(sys.executable)
    elif __file__:
        self_file = Path(__file__)
    assert self_file.is_file(), self_file

    home_path = Path(self_file).resolve().parent.parent
    assert home_path.is_dir(), home_path

    if not args.cmd:
        assert 0
    elif args.cmd == 'prepare' or args.cmd == 'install':
        cmd_list = ('windows_binary', 'gnome', 'ssh', 'misc', 'config')
    else:
        cmd_list = [args.cmd]
        if 'clean' in args.cmd:
            remove_file(home_path/'.rvx_path_config')

    engine_log = RvxEngineLog(home_path)
    engine_log.add_new_job('logfile_setup', True, 'done')
    engine_log.export_file()

    config = RvxConfig(home_path)
    devkit = RvxDevkit(config, args.output, engine_log, False)

    for cmd in cmd_list:
        if cmd == 'prepare' or cmd == 'install':
            assert 0, 'wrong command {0}'.format(args.cmd)

        elif cmd == 'windows_binary':
            if is_windows:
                filename = 'windows_binary_2021-05-13.tar.gz'
                output_dir = config.windows_binary_path
                tar_file = output_dir / filename
                download_is_required = False if tar_file.is_file() else True

                if download_is_required:
                    print('Windows Binary: New Update')
                    remove_directory(output_dir)
                    output_dir.mkdir(parents=True)
                    link = f'http://link.etri.coreicc.net/{filename}'
                    download_url(link, output_file=tar_file)
                    extract_file(tar_file)
                else:
                    print('Windows Binary: No Update')
                path_value = os.environ.get('Path')
                date = datetime.datetime.now().strftime('%Y-%m-%d-%H-%M-%S')
                (home_path / f'Path-{date}.txt').write_text(path_value)
                path_list = path_value.split(';')
                path_name = Path('\"%\"RVX_MINI_HOME%') / output_dir.name
                correct_path = True
                if str(path_name) not in path_list:
                    new_path_list = []
                    for path in path_list:
                        if path not in new_path_list:
                            new_path_list.append(path)
                    new_path_list.append(str(path_name))
                    path_in_single_line = ';'.join(new_path_list)
                    if len(path_in_single_line) < 1024:
                        execute_shell_cmd(
                            f'setx Path \"{path_in_single_line}\"')
                    else:
                        correct_path = False
                        print(
                            f'[WARNING] Add {str(path_name)} into Path variable manually')
                if correct_path:
                    print(f'[INFO] Path variable is updated successfully')

        elif cmd == 'gnome':
            if is_windows:
                pass
            elif is_centos:
                execute_shell_cmd(make_cmd_sudo(
                    'yum install -y gnome-terminal', devkit.get_sudo_passwd()), home_path)
            elif is_ubuntu:
                execute_shell_cmd(make_cmd_sudo(
                    'apt install -y gnome-terminal', devkit.get_sudo_passwd()), home_path)
            else:
                assert 0

        elif cmd == 'ssh':
            if is_windows:
                pass
            elif is_centos:
                execute_shell_cmd(make_cmd_sudo(
                    'yum install -y sshpass', devkit.get_sudo_passwd()), home_path)
            elif is_ubuntu:
                execute_shell_cmd(make_cmd_sudo(
                    'apt install -y sshpass', devkit.get_sudo_passwd()), home_path)
            else:
                assert 0

        elif cmd == 'misc':
            if is_linux:
                pass

        elif cmd == 'config':
            if is_linux:
                rvx_setup_template = Path('.') / 'rvx_setup.sh.template'
                if not rvx_setup_template.is_file():
                    rvx_setup_template = home_path / 'rvx_install' / 'rvx_setup.sh.template'
                configure_template_file(rvx_setup_template, Path(
                    '.')/'rvx_setup.sh', (('RVX_MINI_HOME', str(home_path)),))
            else:
                execute_shell_cmd(f'setx RVX_MINI_HOME {home_path}')
            line_list = []
            if is_linux:
                line_list.append('#!/bin/bash')
            line_list.append('git pull origin master')
            line_list.append('git submodule init')
            line_list.append('git submodule update --force')
            line_list.append('make reconfig_python')
            line_list.append('make config')
            if is_linux:
                line_list.append('source ./rvx_setup.sh')
            line_list.append('make after_update')
            line_list.append('make check')
            line_list.append('make sync')
            if is_linux:
                update_sciprt_file = home_path / 'update.sh'
            else:
                update_sciprt_file = home_path / 'update.bat'
            update_sciprt_file.write_text('\n'.join(line_list))
            if is_linux:
                make_executable(update_sciprt_file)

        elif cmd == 'enable_debug':
            debug_enable_file = home_path / debug_enable_filename
            if not debug_enable_file.is_file():
                debug_enable_file.touch()

        elif cmd == 'disable_debug':
            debug_enable_file = home_path / debug_enable_filename
            remove_file(debug_enable_file)

        elif cmd == 'tool_config':
            config.write_file()

        elif cmd == 'check_remote_log':
            devkit.check_remote_log()

        elif cmd == 'after_update':
            pass

        elif cmd == 'sync':
            mini_home = RvxMiniHome(devkit)
            mini_home.sync()

        elif cmd == 'resync':
            mini_home = RvxMiniHome(devkit)
            mini_home.resync()

        elif cmd == 'activate':
            mini_home = RvxMiniHome(devkit)
            mini_home.activate()

        elif cmd == 'rvx_version':
            mini_home = RvxMiniHome(devkit)
            devkit.handle_output(mini_home.version)

        elif cmd == 'clean':
            mini_home = RvxMiniHome(devkit)
            mini_home.clean()
            if config.windows_binary_path:
                remove_directory(config.windows_binary_path)
            remove_directory(config.local_setup_path)

        elif cmd == 'distclean':
            execute_shell_cmd('make clean', config.install_path)
            mini_home = RvxMiniHome(devkit)
            mini_home.clean()
            remove_directory(home_path/'platform')
            execute_shell_cmd('git checkout .', home_path)

        elif cmd == 'freeze':
            mini_home = RvxMiniHome(devkit)
            mini_home.download_synthesizer()
            config.freeze_tag_path.touch(exist_ok=True)
            config.path_config_path.unlink(missing_ok=True)
        
        elif cmd == 'freeze_git':
            mini_home = RvxMiniHome(devkit)
            mini_home.download_synthesizer()
            config.freeze_tag_path.touch(exist_ok=True)
            config.path_config_path.unlink(missing_ok=True)
            execute_shell_cmd(f'git add {config.freeze_tag_path}', home_path)
            execute_shell_cmd(f'git add -f {mini_home.sync_path}', home_path)

        elif cmd == 'unfreeze':
            config.freeze_tag_path.unlink(missing_ok=True)
            config.path_config_path.unlink(missing_ok=True)

        elif cmd == 'example' or cmd == 'example.install':
            mini_home = RvxMiniHome(devkit)
            mini_home.install_example()

        elif cmd == 'example.uninstall':
            mini_home = RvxMiniHome(devkit)
            mini_home.uninstall_example()

        elif cmd == 'compiler' or cmd == 'compiler.install':
            mini_home = RvxMiniHome(devkit)
            mini_home.install_compiler()

        elif cmd == 'compiler.uninstall':
            mini_home = RvxMiniHome(devkit)
            mini_home.uninstall_compiler()
    
        elif cmd == 'synthesizer' or cmd == 'synthesizer.install':
            mini_home = RvxMiniHome(devkit)
            mini_home.install_synthesizer()

        elif cmd == 'synthesizer.uninstall':
            mini_home = RvxMiniHome(devkit)
            mini_home.uninstall_synthesizer()

        elif cmd == 'check':
            print('\n## git check ##')
            execute_shell_cmd('git --version', home_path)
            print('\n## make check ##')
            execute_shell_cmd('make --version', home_path)
            print('\n## python check ##')
            execute_shell_cmd('make check_python', home_path)
            print('\n## python package check ##')
            package_list = ('distro', 'numpy', 'cryptography',
                            'pyelftools', 'configparser')
            for package in package_list:
                result = run_shell_cmd(
                    f'{config.python3_cmd} -m pip show {package}', asserts_when_error=False)
                if result.returncode == 0:
                    stdout = result.stdout.replace('\r', '')
                    print(stdout.split('\n')[0:2])
                else:
                    assert 0, '\"make pip3\" and then \"make check\" again!'

            if is_windows:
                print('\n## windows binary check ##')
                windows_binary_list = ('libusb-0-1-4.dll', 'libusb-1.0.dll',
                                       'plink.exe', 'psftp.exe', 'putty.exe', 'zadig-2.5.exe')
                for windows_binary in windows_binary_list:
                    windows_binary_path = config.windows_binary_path / windows_binary
                    if not windows_binary_path.is_file():
                        assert 0, '\"make windows_binary\" and then \"make check\" again!'

            if is_linux:
                print('\n## Linux locale check ##')
                result = run_shell_cmd('locale', asserts_when_error=False)
                stdout = result.stdout.replace('\r', '')
                print(stdout)

            print('\n## ssh check ##')
            if is_linux:
                execute_shell_cmd('sshpass -V', home_path)
            else:
                plink_path = config.windows_binary_path / 'plink.exe'
                execute_shell_cmd(f'{plink_path} --version', home_path)
            print('\n## tar check ##')
            execute_shell_cmd('tar --version', home_path)
            print('\n## java check ##')
            execute_shell_cmd('java -version', home_path)
            if is_windows:
                print('\n## sh check ##')
                result = run_shell_cmd('where sh', asserts_when_error=False)
                if result.returncode == 0:
                    stdout = result.stdout.replace('\r', '')
                    print(stdout)
                    print('[CRITICAL WARNING]')
                    print('\"sh\" binary MUST NOT exist in Path')
                    print('Please update Path NOT to find \"sh\" binary')
                else:
                    print('OKAY')

            print('\n## RVX version ##')
            mini_home = RvxMiniHome(devkit)
            print(mini_home.home_path)
            print(mini_home.version)

        else:
            assert 0

    if args.cmd.endswith('clean'):
        engine_log.clean()
    else:
        if not devkit.engine_log.current_job.name.startswith(args.cmd):
            devkit.engine_log.add_new_job(args.cmd, True, 'done')
        devkit.engine_log.export_file()
        devkit.check_log(True)

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

import os
import sys
import subprocess
import platform
import datetime
import time
from pathlib import Path

from os_util import *
from configure_template import *
from rvx_remote_handler import *
from rvx_engine_util import *
from rvx_config import *
from rvx_devkit import *
from generate_git_info import *
from manage_version_info import *

app_debug_config_file_name = 'app.debug.launch'
remote_info_filename = 'cloud_info.xml'
remote_sync_filename = 'sync.tar.gz'
sync_history_filename = 'synced.log'
remote_synthesizer_filename = 'rvx_synthesizer_obfuscated.tar.gz'


class RvxMiniHome():
    def __init__(self, devkit=None):
        assert devkit
        self.devkit = devkit
        if self.devkit:
            self.local_sync_config = self.devkit.get_client_sync_config()
        else:
            self.local_sync_config = None

    @property
    def home_path(self):
        return self.devkit.config.home_path

    @property
    def install_path(self):
        return self.home_path / 'rvx_install'

    @property
    def example_path(self):
        return self.home_path / 'rvx_platform_example'

    @property
    def binary_path(self):
        return self.home_path / 'rvx_binary'

    @property
    def synthesizer_path(self):
        return self.home_path / 'rvx_synthesizer_obfuscated'

    @property
    def synthesizer_tar_path(self):
        return self.sync_path / remote_synthesizer_filename

    @property
    def synthesizer_sync_info_path(self):
        return self.synthesizer_path / self.devkit.client_sync_config_path.name

    @property
    def sync_path(self):
        return self.home_path / 'sync'

    @property
    def sync_gitignore_path(self):
        return self.home_path / 'sync' / '.gitignore'

    @property
    def tool_config_path(self):
        return self.home_path / '.rvx_tool_config'

    @property
    def path_config_path(self):
        return self.home_path / '.rvx_path_config'

    @property
    def local_sync_config_dict(self):
        return self.local_sync_config.attr_dict if self.local_sync_config else {}

    @property
    def is_synched(self):
        return 'rvx_version.date' in self.local_sync_config_dict.keys() and 'rvx_version.commit' in self.local_sync_config_dict.keys() and 'rvx_library' in self.local_sync_config_dict.keys()

    @property
    def version(self):
        result = 'Not synced'
        if self.is_synched:
            result = '_'.join((self.local_sync_config_dict['rvx_version.date'],
                              self.local_sync_config_dict['rvx_version.commit'], self.local_sync_config_dict['rvx_library']))
        return result

    @property
    def expire_date(self):
        result = 'Not synced'
        if self.is_synched:
            version_date = self.local_sync_config_dict['rvx_version.date']
            result = datetime.date.fromisoformat(version_date[:10])
            result += datetime.timedelta(days=365*3)
            result = str(result)
        return result

    @property
    def is_frozen(self):
        return self.devkit.config.is_frozen

    @staticmethod
    def get_activation_info_path(path: Path):
        return path / 'client_info.xml'

    @property
    def get_sync_info_path(self):
        return RvxMiniHome.get_activation_info_path(self.sync_path)

    def set_module_activated(self, target_path: Path):
        target_info_path = RvxMiniHome.get_activation_info_path(target_path)
        if target_info_path.is_file():
            remove_file(target_info_path)
        copy_file(self.get_sync_info_path, target_info_path)

    @staticmethod
    def get_activation_info(path: Path, attr_name: str):
        version = None
        config_path = RvxMiniHome.get_activation_info_path(path)
        if config_path.is_file():
            version = ConfigFileManager(
                'version_info', config_path).get_attr(attr_name)
        return version

    def is_activation_required(self, target_path: Path, attr_name: str):
        required = True
        sync_version = self.get_activation_info(self.sync_path, attr_name)
        target_version = self.get_activation_info(target_path, attr_name)
        if sync_version != None and target_version != None and sync_version == target_version:
            required = False
        return required

    def extract_module(self, module_name: str):
        target_path = self.home_path / module_name
        required = self.is_activation_required(
            target_path, f'{module_name}.commit')
        if required:
            extracted_path = self.sync_path / module_name
            remove_directory(extracted_path)
            remove_directory(target_path)
            extract_file(self.sync_path / f'{module_name}.tar.gz')
            move_directory(extracted_path, target_path)
            self.set_module_activated(target_path)
        else:
            pass
            # print(module_name)

    @property
    def is_sync_activated(self):
        return not self.is_activation_required(self.home_path/'rvx_devkit', 'rvx_devkit.commit')

    def _install_compiler(self):
        assert is_linux and self.is_sync_activated

        git_url = self.local_sync_config_dict.get('rvx_binary.url')
        git_version = self.local_sync_config_dict.get('rvx_binary.commit')
        assert git_url and git_version

        if self.binary_path.is_dir():
            if get_git_url(self.binary_path) != git_url:
                remove_directory(self.binary_path)
        if not self.binary_path.is_dir():
            run_shell_cmd(
                f'git clone {git_url} {self.binary_path}', self.home_path, stderr=subprocess.STDOUT)

        run_shell_cmd(f'git pull origin master', self.binary_path)
        run_shell_cmd(f'git checkout {git_version}', self.binary_path)
        run_shell_cmd(f'make --no-print-directory config',
                      self.binary_path)
        run_shell_cmd(f'make --no-print-directory compiler',
                      self.binary_path)
        self.tool_config_path.unlink(missing_ok=True)

    def install_compiler(self):
        self.devkit.add_new_job('compiler.install', True)
        if is_windows:
            self.devkit.add_log(
                f'Compiler Fail: NOT allowed on Windows', 'error')
        elif not self.is_sync_activated:
            self.devkit.add_log(f'Compiler Fail: Activation First', 'error')
        else:
            self._install_compiler()
            self.devkit.add_log(
                f'Compiler Success: Reopen the terminal', 'done')

    def _uninstall_compiler(self):
        remove_directory(self.binary_path)

    def uninstall_compiler(self):
        self.devkit.add_new_job('compiler.uninstall', True)
        self._uninstall_compiler()
        self.tool_config_path.unlink(missing_ok=True)
        self.devkit.add_log(
            f'Compiler Uninstall Success: Reopen the terminal', 'done')

    def _update_compiler_if_needed(self):
        if is_windows:
            self._uninstall_compiler()
        elif self.is_frozen or self.binary_path.is_dir():
            self._install_compiler()

    def _install_example(self):
        git_url = self.local_sync_config_dict.get(
            'rvx_platform_example.url')
        git_version = self.local_sync_config_dict.get(
            'rvx_platform_example.commit')
        assert git_url and git_version

        if self.example_path.is_dir():
            if get_git_url(self.example_path) != git_url:
                remove_directory(self.example_path)
        if not self.example_path.is_dir():
            run_shell_cmd(
                f'git clone {git_url} {self.example_path}', self.home_path, stderr=subprocess.STDOUT)
        run_shell_cmd(f'git pull origin master', self.example_path)
        run_shell_cmd(f'git checkout {git_version}', self.example_path)

    def install_example(self):
        self.devkit.add_new_job('example.install', True)
        self._install_example()
        self.devkit.add_log(f'Example Install Success', 'done')

    def uninstall_example(self):
        self.devkit.add_new_job('example.uninstall', True)
        remove_directory(self.example_path)
        self.devkit.add_log(f'Example Uninstall Success', 'done')

    def _update_example_if_exist(self):
        if self.example_path.is_dir():
            self._install_example()

    def _download_synthesizer(self):
        assert is_linux
        assert self.sync_path.is_dir()
        if not self.synthesizer_tar_path.is_file():
            self.devkit.get_remote_handler().request_sftp_get(
                remote_synthesizer_filename, '.', self.sync_path)

    def _install_synthesizer(self):
        assert is_linux and self.is_sync_activated
        self._download_synthesizer()
        self.extract_module('rvx_synthesizer_obfuscated')
        self.tool_config_path.unlink(missing_ok=True)

    def install_synthesizer(self):
        self.devkit.add_new_job('synthesizer.install', True)

        if is_windows:
            self.devkit.add_log(
                f'Synthesizer Fail: NOT allowed on Windows', 'error')
        elif not self.is_sync_activated:
            self.devkit.add_log(f'Synthesizer Fail: Activation First', 'error')
        else:
            self._install_synthesizer()
            self.devkit.add_log(f'Synthesizer Success', 'done')

    def _uninstall_synthesizer(self):
        remove_directory(self.synthesizer_path)

    def uninstall_synthesizer(self):
        self.devkit.add_new_job('synthesizer.uninstall', True)
        self._uninstall_synthesizer()
        self.tool_config_path.unlink(missing_ok=True)
        self.devkit.add_log(f'Synthesizer Uninstall Success', 'done')

    def _update_synthesizer_if_needed(self):
        if is_windows:
            self._uninstall_synthesizer()
        elif self.is_frozen or self.synthesizer_path.is_dir():
            self._install_synthesizer()

    def _sync(self):
        is_install_complete = True
        mini_home = os.environ.get('RVX_MINI_HOME')
        if not mini_home:
            is_install_complete = False
        if is_windows and mini_home:
            if not self.devkit.get_remote_handler().plink.is_file():
                is_install_complete = False
        assert is_install_complete, '\'make install\' is NOT complete'
        mini_home = Path(mini_home)
        assert mini_home.is_dir(), mini_home

        self.devkit.get_remote_handler().store_key_in_cache()
        run_shell_cmd(self.devkit.get_remote_handler(
        ).make_ssh_cmd('setup_rvx_private'))
        self.devkit.get_remote_handler().request_ssh(
            'make cloud.check > /dev/null 2>&1')
        self.devkit.get_remote_handler().request_sftp_get(
            remote_info_filename, '.', self.home_path)
        remote_info_file = self.home_path / remote_info_filename
        assert remote_info_file.is_file(), remote_info_file
        remote_sync_config = generate_config_from_version_info(
            remote_info_file)

        git_update_is_required = True
        sync_is_required = True

        required_rvx_install_version = remote_sync_config.get_attr(
            'rvx_install.commit')
        if get_git_version(self.install_path) == required_rvx_install_version:
            git_update_is_required = False
        if self.local_sync_config_dict.get('rvx_version.commit') == remote_sync_config.get_attr('rvx_version.commit'):
            if remote_sync_config.get_attr('synced_before') == 'true':
                sync_is_required = False

        self.devkit.add_new_job('sync', True)
        if sync_is_required:
            remove_directory(self.sync_path)
            self.devkit.get_remote_handler().extract_tar_file(
                remote_sync_filename, '.', self.home_path)
            self.local_sync_config = remote_sync_config
            self.local_sync_config_dict['synced_before'] = 'true'
            # self.local_sync_config_dict['synced_from'] = self.devkit.config.ip_address
            self.local_sync_config.export_file(
                self.devkit.client_sync_config_path)
            self.devkit.get_remote_handler().request_ssh(
                f'touch ./{sync_history_filename}')

            if git_update_is_required:
                self.devkit.add_log(
                    f'Sync Warning: Please Update ./rvx_install (checkout to {required_rvx_install_version})', 'done')
            else:
                self.devkit.add_log(
                    f'Sync Success with Update ({self.devkit.config.username}@{self.devkit.config.ip_address})', 'done')
        else:
            self.devkit.add_log(
                f'Sync Success ({self.devkit.config.username}@{self.devkit.config.ip_address})', 'done')
        remote_info_file.unlink()

    def sync(self):
        self._sync()
        self._activate()

    def _activate(self):
        # module
        module_list = ('rvx_util', 'rvx_ssw', 'rvx_hwlib', 'rvx_devkit')
        for module_name in module_list:
            self.extract_module(module_name)

        # local_setup
        local_setup_path = self.home_path / 'local_setup'
        if self.is_activation_required(local_setup_path, 'rvx_devkit.commit'):
            execute_shell_cmd(
                f'make --no-print-directory local_setup', self.home_path)
            time.sleep(0.2)
            self.set_module_activated(local_setup_path)

        # fpga_component
        for fpga_component in self.home_path.glob('**/fpga_component'):
            remove_directory(fpga_component)

        # manual
        manual_path = self.home_path / 'manual'
        remove_directory(manual_path)
        manual_path.mkdir()
        for manual in (self.home_path/'rvx_devkit'/'env'/'manual').glob('*'):
            copy_file(manual, self.home_path/'manual'/manual.name)
        for manual in (self.home_path/'rvx_install').glob('*_manual*.pdf'):
            if not (self.home_path/'manual'/manual.name).exists():
                copy_file(manual, self.home_path/'manual'/manual.name)

        self._update_compiler_if_needed()
        self._update_synthesizer_if_needed()
        self._update_example_if_exist()
        self._update_sync_gitignore()

    def activate(self):
        self.devkit.add_new_job('activate', True)
        if self.is_synched:
            self._activate()
            self.devkit.add_log(
                f'Activate Success: Reopen the terminal', 'done')
        else:
            self.devkit.add_log(f'Activate Fail: No Sync File', 'done')

    def resync(self):
        if not self.is_frozen:
            remove_directory(self.sync_path)
        run_shell_cmd(self.devkit.get_remote_handler(
        ).make_ssh_cmd('setup_rvx_private_force'))
        self.sync()
        self.devkit.engine_log.current_job.name = 'resync'

    def _update_sync_gitignore(self):
        if self.is_frozen:
            self.sync_gitignore_path.unlink(missing_ok=True)
        else:
            self.sync_gitignore_path.parent.mkdir(exist_ok=True)
            self.sync_gitignore_path.write_text('*')

    def freeze(self):
        self._sync()
        self._download_synthesizer()
        self.devkit.config.freeze_tag_path.touch(exist_ok=True)
        self.devkit.config.path_config_path.unlink(missing_ok=True)
        self._update_sync_gitignore()

    def unfreeze(self):
        self.devkit.config.freeze_tag_path.unlink(missing_ok=True)
        self.devkit.config.path_config_path.unlink(missing_ok=True)
        self._update_sync_gitignore()

    def clean(self):
        preserved_file_list = frozenset(('.git', '.gitignore', '.gitmodules', 'Makefile', 'README.md', 'rvx_setup.sh', 'rvx_each.mh', 'rvx_init.mh',
                                        'rvx_config.mh', 'rvx_python_config.mh', 'debug', self.devkit.config.freeze_tag_path.name, 'python3.bat', 'imp_class_info'))

        if not self.is_frozen:
            remove_directory(self.home_path / 'sync')
            remove_directory(self.home_path / 'env')
        remove_directory(self.home_path / 'rvx_util')
        remove_directory(self.home_path / 'rvx_hwlib')
        remove_directory(self.home_path / 'rvx_ssw')
        run_shell_cmd('git checkout --force ./rvx_hwlib', self.home_path,
                      stderr=subprocess.DEVNULL, prints_when_error=False, asserts_when_error=False)
        remove_directory(self.home_path / 'rvx_install' / '__pycache__')
        remove_directory(self.devkit.config.local_setup_path)

        for element in self.home_path.glob('*'):
            if element.is_file():
                if element.name not in preserved_file_list:
                    try:
                        element.unlink()
                    except Exception as e:
                        print(element.name, e)

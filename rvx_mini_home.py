## ****************************************************************************
## ****************************************************************************
## Copyright SoC Design Research Group, All rights reserved.    
## Electronics and Telecommunications Research Institute (ETRI)
##
## THESE DOCUMENTS CONTAIN CONFIDENTIAL INFORMATION AND KNOWLEDGE 
## WHICH IS THE PROPERTY OF ETRI. NO PART OF THIS PUBLICATION IS 
## TO BE USED FOR ANY OTHER PURPOSE, AND THESE ARE NOT TO BE 
## REPRODUCED, COPIED, DISCLOSED, TRANSMITTED, STORED IN A RETRIEVAL 
## SYSTEM OR TRANSLATED INTO ANY OTHER HUMAN OR COMPUTER LANGUAGE, 
## IN ANY FORM, BY ANY MEANS, IN WHOLE OR IN PART, WITHOUT THE 
## COMPLETE PRIOR WRITTEN PERMISSION OF ETRI.
## ****************************************************************************
## 2019-05-17
## Kyuseung Han (han@etri.re.kr)
## ****************************************************************************
## ****************************************************************************

import os
import sys
import subprocess
import platform
import datetime
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
    return self.synthesizer_path / self.devkit.get_sync_info_path.name

  @property
  def sync_path(self):
    return self.home_path / 'sync'
  
  @property
  def sync_gitignore_path(self):
    return self.home_path / 'sync' / '.gitignore'
  
  @property
  def activate_path(self):
    return self.sync_path / 'activate.py'
  
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
  def version(self):
    result = 'Not synced'
    if 'rvx_version.date' in self.local_sync_config_dict.keys() and 'rvx_version.commit' in self.local_sync_config_dict.keys() and 'rvx_library' in self.local_sync_config_dict.keys():
      result = '_'.join((self.local_sync_config_dict['rvx_version.date'],self.local_sync_config_dict['rvx_version.commit'],self.local_sync_config_dict['rvx_library']))
    return result
  
  @property
  def is_frozen(self):
    return self.devkit.config.is_frozen
  
  def _preactivate(self):
    if self.activate_path.is_file():
      tar_list = ('rvx_util',)
      for tar_name in tar_list:
        extracted_path = self.sync_path/tar_name
        target_path = self.home_path/tar_name
        remove_directory(extracted_path)
        remove_directory(target_path)
        extract_file(self.sync_path/f'{tar_name}.tar.gz')
        move_directory(extracted_path, target_path)
  
  def _install_compiler(self):
    rvx_binary_url = self.local_sync_config_dict.get('rvx_binary.url')
    git_version = self.local_sync_config_dict.get('rvx_binary.commit')
    has_rvx_util = self.devkit.config.utility_path.is_dir()
    success = rvx_binary_url and git_version and has_rvx_util
    if success:
      if self.binary_path.is_dir():
        if get_git_url(self.binary_path)!=rvx_binary_url:
          remove_directory(self.binary_path)
      if not self.binary_path.is_dir():
        run_shell_cmd(f'git clone {rvx_binary_url} {self.binary_path}', self.home_path, stderr=subprocess.STDOUT)
      run_shell_cmd(f'git pull origin master', self.binary_path)
      run_shell_cmd(f'git checkout {git_version}', self.binary_path)
      run_shell_cmd(f'make --no-print-directory config', self.binary_path)
      run_shell_cmd(f'make --no-print-directory compiler', self.binary_path)
      self.tool_config_path.unlink(missing_ok=True)
    return success
  
  def install_compiler(self):
    self._preactivate()
    self.devkit.add_new_job('compiler.install', True)
    success = self._install_compiler()
      
    if success:
      self._activate()
      self.devkit.add_log(f'Compiler Success: Reopen the terminal', 'done')
    else:
      self.devkit.add_log(f'Compiler Fail: Activation Required', 'error')
  
  def uninstall_compiler(self):
    self.devkit.add_new_job('compiler.uninstall', True)
    remove_directory(self.binary_path)
    self.tool_config_path.unlink(missing_ok=True)
    self.devkit.add_log(f'Compiler Uninstall Success: Reopen the terminal', 'done')
  
  def _update_compiler_if_needed(self):
    if self.is_frozen or self.binary_path.is_dir():
      self._install_compiler()
  
  def _install_example(self):
    rvx_platform_example_url = self.local_sync_config_dict.get('rvx_platform_example.url')
    git_version = self.local_sync_config_dict.get('rvx_platform_example.commit')
    success = False
    if rvx_platform_example_url and git_version:
      if self.example_path.is_dir():
        if get_git_url(self.example_path)!=rvx_platform_example_url:
          remove_directory(self.example_path)
      if not self.example_path.is_dir():
        run_shell_cmd(f'git clone {rvx_platform_example_url} {self.example_path}', self.home_path, stderr=subprocess.STDOUT)
      run_shell_cmd(f'git pull origin master', self.example_path)
      run_shell_cmd(f'git checkout {git_version}', self.example_path)
      success = True
    return success
  
  def install_example(self):
    self.devkit.add_new_job('example.install', True)
    success = self._install_example()
      
    if success:
      self.devkit.add_log(f'Example Install Success', 'done')
    else:
      self.devkit.add_log(f'Example Install Fail: Sync Required', 'error')
  
  def uninstall_example(self):
    self.devkit.add_new_job('example.uninstall', True)
    remove_directory(self.example_path)
    self.devkit.add_log(f'Example Uninstall Success', 'done')
  
  def _update_example_if_exist(self):
    if self.example_path.is_dir():
      self._install_example()
      
  def download_synthesizer(self):
    if not self.synthesizer_tar_path.is_file():
      self.devkit.get_remote_handler().request_sftp_get(remote_synthesizer_filename, '.', self.sync_path)
  
  def _install_synthesizer(self):
    assert self.sync_path.is_dir()
    install_new = True
    if self.synthesizer_sync_info_path.is_file():
      synthesizer_sync_config = generate_config_from_version_info(self.synthesizer_sync_info_path)
      if self.local_sync_config_dict.get('rvx_synthesizer_obfuscated.commit')==synthesizer_sync_config.get_attr('rvx_synthesizer_obfuscated.commit'):
        install_new = False
    if install_new:
      remove_directory(self.synthesizer_path)
      self.download_synthesizer()
      temp_path = self.sync_path / self.synthesizer_path.name
      remove_directory(temp_path)
      extract_file(self.synthesizer_tar_path)
      assert temp_path.is_dir()
      move_directory(temp_path, self.synthesizer_path)
      self.local_sync_config.export_file(self.synthesizer_sync_info_path)
      self.tool_config_path.unlink(missing_ok=True)
    return True
  
  def install_synthesizer(self):
    self.devkit.add_new_job('synthesizer.install', True)
    success = self._install_synthesizer()
      
    if success:
      self.devkit.add_log(f'Synthesizer Success', 'done')
    else:
      self.devkit.add_log(f'Synthesizer Fail: Sync Required', 'error')
  
  def uninstall_synthesizer(self):
    self.devkit.add_new_job('synthesizer.uninstall', True)
    remove_directory(self.synthesizer_path)
    self.tool_config_path.unlink(missing_ok=True)
    self.devkit.add_log(f'Synthesizer Uninstall Success', 'done')

  def _update_synthesizer_if_needed(self):
    if self.is_frozen or self.synthesizer_path.is_dir():
      self._install_synthesizer()

  def sync(self):
    assert not self.is_frozen, 'Sync is NOT possible in this frozen repo'
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
    run_shell_cmd(self.devkit.get_remote_handler().make_ssh_cmd('setup_rvx_private'))
    self.devkit.get_remote_handler().request_ssh('make cloud.check > /dev/null 2>&1')
    self.devkit.get_remote_handler().request_sftp_get(remote_info_filename, '.', self.home_path)
    remote_info_file = self.home_path / remote_info_filename
    assert remote_info_file.is_file(), remote_info_file
    remote_sync_config = generate_config_from_version_info(remote_info_file)
    
    git_update_is_required = True
    sync_is_required = True
    
    required_rvx_install_version = remote_sync_config.get_attr('rvx_install.commit')
    if get_git_version(self.install_path)==required_rvx_install_version:
      git_update_is_required = False
    if self.local_sync_config_dict.get('rvx_version.commit')==remote_sync_config.get_attr('rvx_version.commit'):
      if remote_sync_config.get_attr('synced_before')=='true':
        sync_is_required = False
      
    self.devkit.add_new_job('sync', True)      
    if sync_is_required:
      remove_directory(self.sync_path)
      self.devkit.get_remote_handler().extract_tar_file(remote_sync_filename, '.', self.home_path)
      self.local_sync_config = remote_sync_config
      self.local_sync_config_dict['synced_before'] = 'true'
      self.local_sync_config.export_file(self.devkit.get_sync_info_path)
      self.devkit.get_remote_handler().request_ssh(f'touch ./{sync_history_filename}')
      
      self._preactivate()
      self._update_compiler_if_needed()
      self._update_synthesizer_if_needed()
      self._activate()
      self._update_example_if_exist()
      
      if git_update_is_required:
        self.devkit.add_log(f'Sync Warning: Please Update ./rvx_install (checkout to {required_rvx_install_version})', 'done')
      else:
        self.devkit.add_log(f'Sync Success with Update ({self.devkit.config.username}@{self.devkit.config.ip_address})', 'done')
    else:
      self.devkit.add_log(f'Sync Success ({self.devkit.config.username}@{self.devkit.config.ip_address})', 'done')
    remote_info_file.unlink()
  
  def _activate(self):
    assert self.activate_path.is_file(), self.activate_path
    execute_shell_cmd(f'{self.devkit.config.python3_cmd} {self.activate_path}', self.home_path)
    self.update_sync_gitignore()
  
  def activate(self):
    self.devkit.add_new_job('activate', True)
    if self.activate_path.is_file():
      self._preactivate()
      self._update_compiler_if_needed()
      self._update_synthesizer_if_needed()
      self._activate()
      self._update_example_if_exist()
      self.devkit.add_log(f'Activate Success', 'done')
    else:
      self.devkit.add_log(f'Activate Fail: No Sync File', 'done')

  def resync(self):
    if not self.is_frozen:
      remove_directory(self.sync_path)
      run_shell_cmd(self.devkit.get_remote_handler().make_ssh_cmd('setup_rvx_private_force'))
    self.sync()
    self.devkit.engine_log.current_job.name = 'resync'
    
  def update_sync_gitignore(self):
    if self.is_frozen:
      self.sync_gitignore_path.unlink(missing_ok=True)
    else:
      self.sync_gitignore_path.touch()
      self.sync_gitignore_path.write_text('*')
  
  def freeze(self):
    self.download_synthesizer()
    self.devkit.config.freeze_tag_path.touch(exist_ok=True)
    self.devkit.config.path_config_path.unlink(missing_ok=True)
    self.update_sync_gitignore()
  
  def unfreeze(self):
    self.devkit.config.freeze_tag_path.unlink(missing_ok=True)
    self.devkit.config.path_config_path.unlink(missing_ok=True)
    self.update_sync_gitignore()

  def clean(self):  
    preserved_file_list = frozenset(('.git','.gitignore','.gitmodules','Makefile','README.md','rvx_setup.sh','rvx_each.mh','rvx_init.mh','rvx_config.mh', 'rvx_python_config.mh','debug', self.devkit.config.freeze_tag_path.name,'python3.bat','imp_class_info'))
    
    if not self.is_frozen:
      remove_directory(self.home_path / 'sync')
      remove_directory(self.home_path / 'env')
    remove_directory(self.home_path / 'rvx_util')
    remove_directory(self.home_path / 'rvx_hwlib')
    remove_directory(self.home_path / 'rvx_ssw')
    run_shell_cmd('git checkout --force ./rvx_hwlib', self.home_path, stderr=subprocess.DEVNULL, prints_when_error=False, asserts_when_error=False)
    remove_directory(self.home_path / 'rvx_install' / '__pycache__')
    remove_directory(self.devkit.config.local_setup_path)

    for element in self.home_path.glob('*'):
      if element.is_file():
        if element.name not in preserved_file_list:
          try:
            element.unlink()
          except Exception as e:
            print(element.name, e)

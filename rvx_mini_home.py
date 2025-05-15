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

app_debug_config_file_name = 'app.debug.launch'
remote_info_filename = 'cloud_info.txt'
remote_sync_filename = 'sync.tar.gz'
sync_history_filename = 'synced.log'

class RvxMiniHome():
  read_only_tag = 'this_git_is_read_only'

  def __init__(self, devkit=None):
    assert devkit
    self.devkit = devkit
  
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
  def sync_path(self):
    return self.home_path / 'sync'
  
  @property
  def version(self):
    if self.devkit.get_sync_info_path.exists():
      local_info_dict = RvxMiniHome.generate_info_dict(self.devkit.get_sync_info_path)
      result = local_info_dict['rvx_version'][0:10] + '-' + local_info_dict['rvx_server_manager']
    else:
      result = 'Not synced'
    return result

  def generate_local_info_file(self, info_dict:dict):
    local_info_file = self.devkit.get_sync_info_path
    local_info_file.write_text('\n'.join([f'{key}:{value}' for key, value in info_dict.items()]))
    
  @staticmethod
  def generate_info_dict(info_file:Path):
    info_dict = {}
    if info_file.is_file():
      for info in info_file.read_text().split('\n'):
        if ':' not in info:
          pass
        key, value = info.split(':')
        info_dict[key] = value
    return info_dict
  
  def update_example(self):
    success = False
    if self.example_path.is_dir():
      local_info_dict = RvxMiniHome.generate_info_dict(self.devkit.get_sync_info_path)
      git_version = local_info_dict.get('rvx_platform_example')
      if git_version:
        run_shell_cmd(f'git pull origin master', self.example_path)
        run_shell_cmd(f'git checkout {git_version}', self.example_path)
        success = True
    return success
  
  def generate_example(self):
    self.devkit.add_new_job('example', True)
    if not self.example_path.is_dir():
      run_shell_cmd(f'git clone https://bitbucket.org/kyuseung_han/rvx_platform_example.git {self.example_path}', self.home_path, stderr=subprocess.STDOUT)
    success = self.update_example()
    if success:
      self.devkit.add_log(f'Example Success', 'done')
    else:
      self.devkit.add_log(f'Example Fail: Sync Required', 'error')

  def sync(self):
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
    remote_info_dict = RvxMiniHome.generate_info_dict(remote_info_file)
    
    git_update_is_required = True
    sync_is_required = True
    
    required_rvx_install_version = remote_info_dict.get('rvx_install')
    if get_git_version(self.install_path)==required_rvx_install_version:
      git_update_is_required = False
    local_info_dict = RvxMiniHome.generate_info_dict(self.devkit.get_sync_info_path)
    if local_info_dict.get('rvx_server_manager')==remote_info_dict.get('rvx_server_manager'):
      if remote_info_dict.get('synced_before')=='true':
        sync_is_required = False
      
    self.devkit.add_new_job('sync', True)
    if git_update_is_required:
      self.devkit.add_log(f'Sync WARNING: please update ./rvx_install (checkout: {required_rvx_install_version})', 'done')
    if sync_is_required:
      remove_directory(self.sync_path)
      self.devkit.get_remote_handler().extract_tar_file(remote_sync_filename, '.', self.home_path)
      sync_file = self.sync_path / 'install_sync.py'
      assert sync_file.is_file(), sync_file
      execute_shell_cmd(f'{self.devkit.config.python3_cmd} {sync_file}', self.home_path)
      if (self.home_path/'env').is_dir():
        self.devkit.get_remote_handler().request_ssh(f'touch ./{sync_history_filename}')
        del remote_info_dict['synced_before']
        self.generate_local_info_file(remote_info_dict)
        if not git_update_is_required:
          self.devkit.add_log(f'Sync Success: New update ({self.devkit.config.username}@{self.devkit.config.ip_address})', 'done')
      else:
        self.devkit.add_log(f'Sync FAIL: please retry ({self.devkit.config.username}@{self.devkit.config.ip_address})', 'error')
      self.update_example()
    else:
      remote_info_file.unlink()
      if not git_update_is_required:
        self.devkit.add_log(f'Sync Success: No update ({self.devkit.config.username}@{self.devkit.config.ip_address})', 'done')

  def resync(self):
    remove_directory(self.sync_path)
    run_shell_cmd(self.devkit.get_remote_handler().make_ssh_cmd('setup_rvx_private_force'))
    self.sync()

  def clean(self):  
    preserved_file_list = frozenset(('.git','.gitignore','.gitmodules','Makefile','README.md','rvx_setup.sh','rvx_each.mh','rvx_init.mh','rvx_config.mh', 'rvx_python_config.mh','debug',RvxMiniHome.read_only_tag, 'python3.bat','imp_class_info'))

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

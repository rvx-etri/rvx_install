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
## 2020-02-17
## Kyuseung Han (han@etri.re.kr)
## ****************************************************************************
## ****************************************************************************

import os
from pathlib import Path

from config_file_manager import *

class RvxPathConfig(ConfigFileManager):
  def __init__(self, file_path:Path, home_path:Path, devkit_path:Path, is_client:bool):
    super().__init__('rvx_path_config', file_path, None)
    self.allowed_set = frozenset(('python3_cmd', 'home_path', 'devkit_path','utility_path','hwlib_path','local_setup_path', 'windows_binary_path', 'env_path', 'gui_path', 'synthesizer_path', 'ocd_path'))
    if self.check(self.allowed_set, exact=True):
      assert self.get_attr('home_path')==home_path, (self.get_attr('home_path'),home_path)
      assert self.get_attr('devkit_path')==devkit_path, (self.get_attr('devkit_path'),devkit_path)
    else:
      self.clear()
      self.set_attr('home_path', home_path)
      self.set_attr('devkit_path', devkit_path)

      python_config_path = home_path / 'rvx_python_config.mh'
      if not python_config_path.is_file(): # due to Windows
        python_config_path = Path(os.environ.get('RVX_SHARED_HOME')) / 'rvx_python_config.mh'
      assert python_config_path.is_file(), python_config_path
      python_config_list = python_config_path.read_text().split('\n')
      self.python3_cmd = None
      for python_config in python_config_list:
        if 'PYTHON3_CMD=' in python_config:
          python3_cmd = python_config.split('=')[1]
          break
      assert Path(python3_cmd).is_file(), python3_cmd
      self.set_attr('python3_cmd', python3_cmd)

      if is_client:
        self.set_attr('utility_path', home_path / 'rvx_util')
        self.set_attr('hwlib_path', home_path / 'rvx_hwlib')
        self.set_attr('env_path', home_path / 'env')
        self.set_attr('synthesizer_path', None)
      else:
        self.set_attr('utility_path', get_path_from_os_env('RVX_UTIL_HOME', must=True))
        self.set_attr('env_path', get_path_from_os_env('RVX_ENV', must=True))
        self.set_attr('hwlib_path', get_path_from_os_env('RVX_HWLIB_HOME'))
        self.set_attr('synthesizer_path', get_path_from_os_env('RVX_SYNTHESIZER_HOME'))

      if is_windows:
        self.set_attr('windows_binary_path', home_path / 'windows_binary')
      else:
        self.set_attr('windows_binary_path', None)
        
      self.set_attr('local_setup_path', home_path / 'local_setup')
      self.set_attr('gui_path', self.get_attr('local_setup_path') / 'gui')
      ocd_path = get_path_from_os_env('RVP_OCD_DIR')
      if ocd_path:
        self.set_attr('ocd_path', ocd_path / 'bin')
      else:
        self.set_attr('ocd_path', self.get_attr('local_setup_path') / 'ocd')
      assert self.check(self.allowed_set, exact=True)
   # elaboration
    '''
    if is_windows:
      self.target_binary_path = self.local_setup_path / 'windows'
    elif is_centos:
      self.target_binary_path = self.local_setup_path / 'centos'
    elif is_ubuntu:
      self.target_binary_path = self.local_setup_path / 'ubuntu'
    else:
      assert 0, 'Unknown OS'
    self.gdb_binary_file =  (self.target_binary_path / 'riscv32-unknown-elf-gdb') if is_linux else (self.target_binary_path / 'riscv64-unknown-elf-gdb.exe')
    #self.ocd_binary_file =  (self.target_binary_path / 'openocd_rvp') if is_linux else (self.target_binary_path / 'openocd_rvp.exe')
    '''    

class RvxToolConfig(ConfigFileManager):
  def __init__(self, file_path:Path):
    super().__init__('rvx_tool_config', file_path, None)
    self.allowed_set = frozenset(('rtl_simulator','use_terminal_for_implementing_fpga','use_terminal_for_running_ocd','use_terminal_for_connecting_ocd','use_terminal_for_printf', 'build_smart','build_local'))
    if not self.check(self.allowed_set, exact=True):
      self.clear()
      assert self.check(self.allowed_set, exact=True)
    self.update_build_local()

  def update_build_local(self):
    # nullify if not exist
    exist = False
    binary_path = get_path_from_os_env('RVX_BINARY_HOME')
    if binary_path:
      if (binary_path / 'source').is_file():
        exist = True
    if not exist:
      self.set_attr('build_local', False)

  def clear(self):
    super().clear()
    self.set_attr('rtl_simulator', 'modelsim')
    if run_shell_cmd('xmsim -version', self.file_path.parent, prints_when_error=False, asserts_when_error=False).returncode==0:
      self.set_attr('rtl_simulator', 'xcelium')
    elif run_shell_cmd('ncsim -version', self.file_path.parent, prints_when_error=False, asserts_when_error=False).returncode==0:
      self.set_attr('rtl_simulator', 'ncsim')
    self.set_attr('use_terminal_for_implementing_fpga', False)
    self.set_attr('use_terminal_for_running_ocd', True)
    self.set_attr('use_terminal_for_connecting_ocd', True)
    self.set_attr('use_terminal_for_printf', True)
    self.set_attr('build_smart', True)
    self.set_attr('build_local', True)
    self.update_build_local()

class RvxSudoConfig(ConfigFileManager):
  def __init__(self, file_path:Path, key):
    super().__init__('rvx_sudo_config', file_path, key)
    self.allowed_set = frozenset(('stores_sudo_info','is_nopasswd_for_sudo','sudo_passwd'))
    if not self.check(self.allowed_set, exact=True):
      self.clear()
      assert self.check(self.allowed_set, exact=True)

  def clear(self):
    super().clear()
    self.set_attr('stores_sudo_info', False)
    self.set_attr('is_nopasswd_for_sudo', False)
    self.set_attr('sudo_passwd', None)

  def set_from_input(self):
    answer = self.set_attr_from_input('stores_sudo_info', 'Do you want store sudo info?', 'bool')
    if answer:
      answer = self.set_attr_from_input('is_nopasswd_for_sudo', 'Are you registered as nopasswd sudoer?', 'bool')
      if not answer:
        self.set_attr_from_input('sudo_passwd', 'Sudo password', encoded=True)

class RvxServerConfig(ConfigFileManager):
  def __init__(self, file_path:Path, key):
    super().__init__('rvx_server_config', file_path, key)
    self.allowed_set = frozenset(('ip_address', 'ssh_port', 'username','passwd'))
    if not self.check(self.allowed_set, exact=True):
      self.clear()
      assert self.check(self.allowed_set, exact=True)

  def clear(self):
    super().clear()
    self.set_attr('ip_address', None)
    self.set_attr('ssh_port', None)
    self.set_attr('username', None)
    self.set_attr('passwd', None)

  def set_from_input(self):
    self.set_attr_from_input('ip_address', 'IP address')
    self.set_attr_from_input('ssh_port', 'SSH port')
    self.set_attr_from_input('username', 'Username')
    self.set_attr_from_input('passwd', 'Password', encoded=True)

class RvxConfig():
  @property
  def mini_install_path(self):
    return self.home_path / 'rvx_install' / 'install.py'
  
  @property
  def server_mode_path(self):
    return self.home_path / '.rvx_server_mode'

  @property
  def path_config_path(self):
    return self.home_path / '.rvx_path_config'
  
  @property
  def tool_config_path(self):
    return self.home_path / '.rvx_tool_config'

  @property
  def key_path(self):
    return self.home_path / '.rvx_key'

  @property
  def key(self):
    return self.key_manager.key
  
  @property
  def sudo_config_path(self):
    return self.home_path / '.rvx_sudo_config'
  
  @property
  def server_config_path(self):
    return self.home_path / '.rvx_server_config'

  @property
  def wifi_config_filename(self):
    return 'rvx_wifi_info.cfg'
  
  @property
  def aix_config_filename(self):
    return 'rvx_aix_info.cfg'

  @property
  def ocd_binary_file(self):
    return self.ocd_path / ('openocd_rvp' if is_linux else 'openocd_rvp.exe')
  @property
  def eclipse_solution_template_path(self):
    return self.env_path / 'eclipse_template' / 'solution'
  @property
  def eclipse_project_template_path(self):
    return self.env_path / 'eclipse_template' / 'project'

  @property
  def munoc_path(self):
    path = get_path_from_os_env('MUNOC_HW_HOME')
    if not path:
      path = self.hwlib_path / 'munoc'
    return path
  
  @property
  def pact_path(self):
    if self.is_client:
      candidate_path = self.home_path / 'rvx_hwlib_special' / 'pact'
      path = candidate_path if candidate_path.is_dir() else None
    else:
      path = get_path_from_os_env('PACT_HW_HOME')
      if not path:
        candidate_path = self.hwlib_path.parent / 'hwlib_special' / 'pact'
        if candidate_path.is_dir():
          path = candidate_path
    return path

  @property
  def is_client(self):
    return self.mini_install_path.is_file()

  @property
  def is_server(self):
    return self.server_mode_path.is_file()
    
  def __init__(self, home_path:Path=None):
    self.home_path = home_path.resolve()
    assert ' ' not in str(self.home_path), 'space is NOT allowed in home path'
    assert self.home_path.is_dir(), home_path
    if self.is_client:
      self.devkit_path = None
    else:
      self.devkit_path = os.environ.get('RVX_DEVKIT_HOME')
      if self.devkit_path:
        self.devkit_path = Path(self.devkit_path).resolve()
    if self.is_server:
      assert self.home_path==self.devkit_path, (self.home_path, self.devkit_path)

    self.path_config = RvxPathConfig(self.path_config_path, self.home_path, self.devkit_path, self.is_client)
    self.tool_config = RvxToolConfig(self.tool_config_path)
    self.key_manager = KeyFileManager(self.key_path)
    if not self.key_manager.key:
      self.key_manager.generate_key()
      self.key_manager.export_file()
    self.sudo_config = RvxSudoConfig(self.sudo_config_path, self.key)
    self.server_config = RvxServerConfig(self.server_config_path, self.key)

  def __getattr__(self, name:str):
    if name in self.__dict__.keys():
      result = self.__dict__[name]
    elif name in self.path_config.keys():
      result = self.path_config.get_attr(name)
    elif name in self.tool_config.keys():
      result = self.tool_config.get_attr(name)
    elif name in self.sudo_config.keys():
      result = self.sudo_config.get_attr(name)
    elif name in self.server_config.keys():
      result = self.server_config.get_attr(name)
    else:
      assert 0, name
    return result

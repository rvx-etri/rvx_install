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
## 2021-06-14
## Kyuseung Han (han@etri.re.kr)
## ****************************************************************************
## ****************************************************************************

import os
import shutil
from pathlib import Path

def copy_file(src_file:Path, dst_file:Path):
  assert src_file.is_file(), src_file
  shutil.copy(str(src_file),str(dst_file))

if __name__ == '__main__':
  self_file = Path(__file__).resolve()
  current_dir = Path('.').resolve()
  assert current_dir==self_file.parent, current_dir
  util_path = Path(os.environ.get('RVX_UTIL_HOME'))
  engine_path = Path(os.environ.get('RVX_DEVKIT_HOME')) / 'env' / 'engine'
  pass_set = frozenset((self_file.name, 'import_util.py'))
  for python_file in current_dir.glob('*.py'):
    if python_file.name in pass_set:
      continue
    original_file_in_util_path = util_path / python_file.name
    original_file_in_engine_path = engine_path / python_file.name
    if original_file_in_util_path.is_file():
      shutil.copy(str(original_file_in_util_path),str(python_file))
    elif original_file_in_engine_path.is_file():
      shutil.copy(str(original_file_in_engine_path),str(python_file))

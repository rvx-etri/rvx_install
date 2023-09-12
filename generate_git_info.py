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
## 2019-01
## Kyuseung Han (han@etri.re.kr)
## ****************************************************************************
## ****************************************************************************

import os
import subprocess
import argparse
import re
from re_util import *
from pathlib import *

def get_git_version(path:Path):
  assert path.is_dir(), path
  result = subprocess.run('git show', cwd=path, shell=True, stdout=subprocess.PIPE)
  git_version = result.stdout.decode('utf-8', errors='ignore').split('\n')[0].split(' ')[1]
  return git_version[0:7]

def get_git_name(path:Path):
  assert path.is_dir(), path
  result = subprocess.run('git remote -v', cwd=path, shell=True, stdout=subprocess.PIPE).stdout.decode('utf-8', errors='ignore')
  re_git_name = memorize(reexp_identifier) + r'\.git\b'
  git_name = re.findall(re_git_name,result, re.DOTALL)[0]
  return git_name

if __name__ == "__main__":
  
  parser = argparse.ArgumentParser(description='Git Info Generation')
  parser.add_argument('-path', '-p', nargs='+', help='git directory path')
  parser.add_argument('-cmd', help='command')
  parser.add_argument('-sep', help='info separator')
  parser.add_argument('-output', '-o', help='an output file name')

  args = parser.parse_args()
  assert args.cmd
  sep = args.sep
  if not sep:
    sep = ''

  if args.cmd=='version':
    info_text = sep.join([get_git_version(Path(x)) for x in args.path])
  elif args.cmd=='name':
    info_text = sep.join([get_git_name(Path(x)) for x in args.path])

  if args.output:
    output_file = Path(args.output)
    output_file.write_text(info_text)
  else:
    print(info_text)

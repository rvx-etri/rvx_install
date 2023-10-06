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

def check_if_path_is_tracked_by_git(git_repo:Path, path:Path):
  exist = False
  git_repo_abs = git_repo.expanduser().resolve()
  path_abs = path.expanduser().resolve()
  if not git_repo_abs.is_dir():
    pass
  elif not (git_repo_abs / '.git').is_dir():
    pass
  elif not path_abs.exists():
    pass
  else:
    try:
      relative_path = path_abs.relative_to(git_repo_abs)
      result = subprocess.run(f'git ls-files {relative_path}', cwd=git_repo_abs, shell=True, stdout=subprocess.PIPE).stdout.decode('utf-8', errors='ignore')
      if result:
        exist = True 
    except:
      pass
  return exist

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
  elif args.cmd=='check':
    assert len(args.path)==2, args.path
    info_text = check_if_path_is_tracked(Path(args.path[0]), Path(args.path[1]))
  else:
    assert 0, args.cmd

  if args.output:
    output_file = Path(args.output)
    output_file.write_text(info_text)
  else:
    print(info_text)

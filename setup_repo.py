from pathlib import Path
from os_util import *
import argparse

from configure_template import *


def setup_imp_class_info(repo_path: Path, git_ref_path: Path) -> None:
    if (repo_path/'imp_class_info').is_symlink():
        pass
    elif (repo_path/'imp_class_info').is_dir():
        repo_dir_names = [p.name for p in (
            repo_path/'imp_class_info').iterdir() if p.is_dir()]
        ref_dir_names = [p.name for p in (
            git_ref_path/'imp_class_info').iterdir() if p.is_dir()]

        if not repo_dir_names:
            dir_names = ref_dir_names
        else:
            dir_names = [x for x in repo_dir_names if x in ref_dir_names]

        copy_file(git_ref_path/'imp_class_info'/'Makefile',
                  repo_path/'imp_class_info'/'Makefile')
        for dir_name in dir_names:
            remove_directory(repo_path/'imp_class_info'/dir_name)
            copy_directory(git_ref_path/'imp_class_info'/dir_name,
                           repo_path/'imp_class_info'/dir_name)
    else:
        (repo_path/'imp_class_info').unlink(missing_ok=True)
        if is_windows:
            copy_directory(git_ref_path/'imp_class_info',
                           repo_path/'imp_class_info')
        else:
            os.symlink(git_ref_path/'imp_class_info',
                       repo_path/'imp_class_info')


def setup_repo(repo_path: Path, git_ref_path: Path) -> None:
    for filename in ('rvx_init.mh', 'rvx_config.mh'):
        copy_file(git_ref_path/filename, repo_path/filename)

    for filename in ('Makefile', '.gitignore', 'README.md'):
        if not (repo_path / filename).is_file():
            copy_file(git_ref_path/filename, repo_path/filename)

    (repo_path / 'platform').mkdir(exist_ok=True)
    copy_file(git_ref_path/'platform'/'Makefile',
              repo_path/'platform'/'Makefile')

    remove_directory(repo_path / 'platform' / 'tip_hello')
    copy_directory(git_ref_path/'platform'/'tip_hello',
                   repo_path/'platform'/'tip_hello')

    setup_imp_class_info(repo_path, git_ref_path)


def update_repo(repo_path: Path, git_ref_path: Path) -> None:
    setup_repo(repo_path, git_ref_path)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='RVX Repository Setup Util')
    parser.add_argument('-cmd', '-c', help='command')
    parser.add_argument('-install', '-i', help='install')
    parser.add_argument('-repo', '-r', help='repo')
    args = parser.parse_args()

    assert args.cmd
    assert args.install
    assert args.repo

    install_path = Path(args.install).resolve().absolute()
    assert install_path.is_dir(), install_path

    repo_path = Path(args.repo).resolve().absolute()
    assert repo_path.is_dir(), repo_path
    assert (repo_path / '.git').is_dir()

    git_ref_path = install_path / 'mini_git'

    if 0:
        pass
    elif args.cmd == 'setup_repo' or args.cmd == 'update_repo':
        setup_repo(repo_path, git_ref_path)

    elif args.cmd == 'setup_imp_class_info':
        setup_imp_class_info(repo_path, git_ref_path)

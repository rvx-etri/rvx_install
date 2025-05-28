# ****************************************************************************
# ****************************************************************************
# Cright SoC Design Research Group, All rights reserved.
# Electronics and Telecommunications Research Institute (ETRI)
# 
# THESE DOCUMENTS CONTAIN CONFIDENTIAL INFORMATION AND KNOWLEDGE
# WHICH IS THE PROPERTY OF ETRI. NO PART OF THIS PUBLICATION IS
# TO BE USED FOR ANY OTHER PURPOSE, AND THESE ARE NOT TO BE
# REPRODUCED, COPIED, DISCLOSED, TRANSMITTED, STORED IN A RETRIEVAL
# SYSTEM OR TRANSLATED INTO ANY OTHER HUMAN OR COMPUTER LANGUAGE,
# IN ANY FORM, BY ANY MEANS, IN WHOLE OR IN PART, WITHOUT THE
# COMPLETE PRIOR WRITTEN PERMISSION OF ETRI.
# ****************************************************************************
# 2021-09-07
# Kyuseung Han (han@etri.re.kr)
# ****************************************************************************
# ****************************************************************************

# DO NOT use this Makefile
# Use Makefile at the upper directory.

GIT_REMOTE_URL=git@bitbucket.org:kyuseung_han/rvx_install.git
-include ${RVX_UTIL_HOME}/remove_git_history.mh
-include ${RVX_ENV}/dev/rvx_dev_util.mh

MINI_GIT=$(abspath ${CURDIR}/..)
MINI_GIT_FILE_LIST = Makefile .gitignore rvx_init.mh rvx_config.mh README.md

setup_mini_git:
	cd ./mini_git && cp -f ${MINI_GIT_FILE_LIST} ${MINI_GIT}/
	cd ${MINI_GIT} && mkdir -p ./platform
	cp -rf ./mini_git/platform/* ${MINI_GIT}/platform
	if ! [ -L ${MINI_GIT}/imp_class_info ] ;	then \
		if [ -d ${MINI_GIT}/imp_class_info ] ;	then \
			cp -f ./mini_git/imp_class_info/Makefile ${MINI_GIT}/imp_class_info/ ; \
			cd ${MINI_GIT}/imp_class_info && make reimport ;\
		else \
			cp -r ./mini_git/imp_class_info/ ${MINI_GIT} ; \
		fi ; \
	fi

gen_link_for_imp_class_info:
	cd ${MINI_GIT} && rm -rf imp_class_info
	cd ${MINI_GIT} && ln -s ./rvx_install/mini_git/imp_class_info imp_class_info

.PHONY: _check_etri_home

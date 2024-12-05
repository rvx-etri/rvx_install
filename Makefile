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

MINI_GIT=$(abspath ${CURDIR}/..)

etri_env_check:
ifndef RVX_ETRI_HOME
	$(error source the rvs_setup script in RVX_ETRI_HOME)
endif

update_from_original: update_from_original_util update_from_original_devkit update_from_original_etc

update_from_original_util: etri_env_check
	cp ${RVX_UTIL_HOME}/config_file_manager.py ./
	cp ${RVX_UTIL_HOME}/configure_template.py ./
	cp ${RVX_UTIL_HOME}/generate_git_info.py ./
	cp ${RVX_UTIL_HOME}/os_util.py ./
	cp ${RVX_UTIL_HOME}/re_util.py ./
	cp ${RVX_UTIL_HOME}/xml_util.py ./
	cp ${RVX_UTIL_HOME}/misc_util.py ./

update_from_original_devkit: etri_env_check
	cp ${RVX_DEVKIT_HOME}/env/engine/rvx_config.py ./
	cp ${RVX_DEVKIT_HOME}/env/engine/rvx_devkit.py ./
	cp ${RVX_DEVKIT_HOME}/env/engine/rvx_engine_log.py ./
	cp ${RVX_DEVKIT_HOME}/env/engine/rvx_engine_util.py ./
	cp ${RVX_DEVKIT_HOME}/env/engine/rvx_remote_handler.py ./

update_from_original_etc: etri_env_check
	cd ./mini_git/platform && make update_makefile
	cd ./mini_git/imp_class_info && make update_makefile
	cd ./mini_git/imp_class_info && make reimport

mini_env_check:
ifndef RVX_MINI_HOME
	$(error source the rvs_setup script in RVX_MINI_HOME)
endif

MINI_GIT_FILE_LIST = Makefile .gitignore rvx_init.mh rvx_config.mh README.md

update_mini_git: mini_env_check
	cd ./mini_git && cp -f ${MINI_GIT_FILE_LIST} ${MINI_GIT}/
	if ! [ -f ${MINI_GIT}/README.md ] ;	then \
		cp -f ./mini_git/README.md ${MINI_GIT}/ ; \
	fi
	if [ -d ${MINI_GIT}/platform ] ;	then \
		cp -f ./mini_git/platform/Makefile ${MINI_GIT}/platform/ ; \
	else \
		cp -r ./mini_git/platform/ ${MINI_GIT} ; \
	fi
	if ! [ -L ${MINI_GIT}/imp_class_info ] ;	then \
		if [ -d ${MINI_GIT}/imp_class_info ] ;	then \
			cp -f ./mini_git/imp_class_info/Makefile ${MINI_GIT}/imp_class_info/ ; \
			cd ${MINI_GIT}/imp_class_info && make reimport ;\
		else \
			cp -r ./mini_git/imp_class_info/ ${MINI_GIT} ; \
		fi ; \
	fi

init_mini_git: update_mini_git

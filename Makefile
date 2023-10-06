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
# make targets are available at the upper directory.

GIT_REMOTE_URL=git@bitbucket.org:kyuseung_han/rvx_install.git
-include ${RVX_UTIL_HOME}/remove_git_history.mh

env_check:
ifndef RVX_ETRI_HOME
	$(error source the source file in RVX_ETRI_HOME)
endif

update_common: env_check update_common_util update_devkit

update_common_util:
	cp ${RVX_UTIL_HOME}/config_file_manager.py ./
	cp ${RVX_UTIL_HOME}/configure_template.py ./
	cp ${RVX_UTIL_HOME}/generate_git_info.py ./
	cp ${RVX_UTIL_HOME}/os_util.py ./
	cp ${RVX_UTIL_HOME}/re_util.py ./
	cp ${RVX_UTIL_HOME}/xml_util.py ./
	cp ${RVX_UTIL_HOME}/misc_util.py ./

update_devkit:
	cp ${RVX_DEVKIT_HOME}/env/engine/rvx_config.py ./
	cp ${RVX_DEVKIT_HOME}/env/engine/rvx_devkit.py ./
	cp ${RVX_DEVKIT_HOME}/env/engine/rvx_engine_log.py ./
	cp ${RVX_DEVKIT_HOME}/env/engine/rvx_engine_util.py ./
	

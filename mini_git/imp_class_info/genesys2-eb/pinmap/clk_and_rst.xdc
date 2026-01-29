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
## 2017-01 : Kyuseung Han (han@etri.re.kr)
## ****************************************************************************
## ****************************************************************************

###########
## reset ##
###########

set_property -dict { PACKAGE_PIN R19   IOSTANDARD LVCMOS33 } [get_ports { external_rstnn }]; #IO_0_14 Sch=cpu_resetn

###########
## clock ##
###########

set_property -dict { PACKAGE_PIN AD11  IOSTANDARD LVDS     } [get_ports { external_clk_0_pair }]; #IO_L12N_T1_MRCC_33 Sch=sysclk_n
set_property -dict { PACKAGE_PIN AD12  IOSTANDARD LVDS     } [get_ports { external_clk_0 }]; #IO_L12P_T1_MRCC_33 Sch=sysclk_p

create_clock -period 5.000 [get_ports external_clk_0]
set_input_jitter [get_clocks -of_objects [get_ports external_clk_0]] 0.100

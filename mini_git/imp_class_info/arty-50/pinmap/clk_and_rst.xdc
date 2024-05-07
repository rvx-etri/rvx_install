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

set_property -dict { PACKAGE_PIN C18   IOSTANDARD LVCMOS33 } [get_ports { external_rstnn }]; #IO_L11N_T1_SRCC_15

###########
## clock ##
###########

#set_property -dict { PACKAGE_PIN F14   IOSTANDARD LVCMOS33 } [get_ports { external_clk_0 }]; #IO_L13P_T2_MRCC_15 Sch=uclk
#create_clock -add -name sys_clk_pin -period 83.333 -waveform {0 41.667} [get_ports { external_clk_0 }];
set_property -dict { PACKAGE_PIN R2    IOSTANDARD SSTL135 } [get_ports { external_clk_0 }]; #IO_L12P_T1_MRCC_34 Sch=ddr3_clk[200]
create_clock -add -name sys_clk_pin -period 10.000 -waveform {0 5.000}  [get_ports { external_clk_0 }];
set_input_jitter [get_clocks -of_objects [get_ports external_clk_0]] 0.100

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets external_clk_0]

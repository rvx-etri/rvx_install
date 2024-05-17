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
## 2024-01-24 : Sukho Lee (shlee99@etri.re.kr)
## ****************************************************************************
## ****************************************************************************

###########
## reset ##
###########

set_property -dict { PACKAGE_PIN D16    IOSTANDARD LVCMOS33 } [get_ports { external_rstnn }]; # Power on Reset


###########
## clock ##
###########

set_property -dict { PACKAGE_PIN AR23   IOSTANDARD LVCMOS18 } [get_ports { external_clk_0 }];  # 50 MHz

create_clock -period 20.000 [get_ports external_clk_0]
set_input_delay
set_input_jitter [get_clocks -of_objects [get_ports external_clk_0]] 0.100

#create_clock -period 20.000 [get_ports i_platform/i_pll0/i_bufg0/O]
#create_clock -period 13.333 [get_ports i_platform/i_pll0/i_bufg1/O]

create_clock -period 20.000 [get_pins i_platform/i_pll0/i_bufg0/O]
create_clock -period 13.333 [get_pins i_platform/i_pll0/i_bufg1/O]

###########
## clock ##
###########

set_property -dict { PACKAGE_PIN AT25   IOSTANDARD LVCMOS18 } [get_ports { external_clk_1 }];  # 100 MHz

create_clock -period 10.000 [get_ports external_clk_1]
set_input_delay
set_input_jitter [get_clocks -of_objects [get_ports external_clk_1]] 0.100

#create_clock -period 5.0   [get_ports CLK_REF1_200M_P]
#
#
create_clock -period 6.400 [get_ports c3_sys_clk_p]
set_input_jitter [get_clocks -of_objects [get_ports c3_sys_clk_p]] 0.100

set_property -dict { PACKAGE_PIN AK36   IOSTANDARD DIFF_SSTL18_I } [get_ports { c3_sys_clk_p }];  # 100 MHz
set_property -dict { PACKAGE_PIN AL36   IOSTANDARD DIFF_SSTL18_I } [get_ports { c3_sys_clk_n }];  # 100 MHz





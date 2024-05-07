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
## 2018-03-19 : Sukho Lee (shlee99@etri.re.kr)
## ****************************************************************************
## ****************************************************************************

###########
## reset ##
###########

set_property -dict { PACKAGE_PIN M21    IOSTANDARD LVCMOS18 } [get_ports { external_rstnn }]; # Power on Reset


###########
## clock ##
###########

set_property -dict { PACKAGE_PIN P26    IOSTANDARD LVCMOS18 } [get_ports { external_clk_0 }];  # 50 MHz

create_clock -period 20.000 [get_ports external_clk_0]
set_input_delay
set_input_jitter [get_clocks -of_objects [get_ports external_clk_0]] 0.100

###########
## clock ##
###########

set_property -dict { PACKAGE_PIN M25    IOSTANDARD LVCMOS18 } [get_ports { external_clk_1 }];  # 100 MHz

create_clock -period 10.000 [get_ports external_clk_1]
set_input_delay
set_input_jitter [get_clocks -of_objects [get_ports external_clk_1]] 0.100

#create_clock -period 5.0   [get_ports CLK_REF1_200M_P]

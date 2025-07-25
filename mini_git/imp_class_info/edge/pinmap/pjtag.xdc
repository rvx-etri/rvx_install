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
## 2018-03 : Sukho Lee (shlee99@etri.re.kr)
## ****************************************************************************
## ****************************************************************************

##########
## JTAG ##
##########
#
set_property -dict { PACKAGE_PIN AM11   IOSTANDARD LVCMOS33 } [get_ports { pjtag_rtdo }]; #IO_L8P_T1_34 Sch=JB1_P
set_property -dict { PACKAGE_PIN M26    IOSTANDARD LVCMOS18 } [get_ports { pjtag_rtrstnn }]; #IO_L18N_T2_34 Sch=JB3_N
set_property -dict { PACKAGE_PIN AK12   IOSTANDARD LVCMOS33 } [get_ports { pjtag_rtck }]; #IO_L1P_T0_34 Sch=JB2_P
set_property -dict { PACKAGE_PIN AP13   IOSTANDARD LVCMOS33 } [get_ports { pjtag_rtdi }]; #IO_L18P_T2_34 Sch=JB3_P
set_property -dict { PACKAGE_PIN AN11   IOSTANDARD LVCMOS33 } [get_ports { pjtag_rtms }]; #IO_L18N_T2_34 Sch=JB3_N

set_property PULLUP true [get_ports pjtag_rtck]
set_property PULLUP true [get_ports pjtag_rtdi]
set_property PULLUP true [get_ports pjtag_rtms]
set_property PULLUP true [get_ports pjtag_rtrstnn]

create_clock -period 100 -waveform {0 50} -name pjtag_rclk [get_ports pjtag_rtck]

set_input_delay -clock pjtag_rclk 25.000 [get_ports pjtag_rtdi]
set_input_delay -clock pjtag_rclk 25.000 [get_ports pjtag_rtms]
set_output_delay -clock pjtag_rclk 25.000 [get_ports pjtag_rtdo]
#
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets pjtag_rtck]



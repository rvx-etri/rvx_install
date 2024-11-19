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



## PMOD Header JC
set_property -dict { PACKAGE_PIN AC26  IOSTANDARD LVCMOS33 } [get_ports { pjtag_rtdo }]; #IO_L19P_T3_13 Sch=jc[1]
set_property -dict { PACKAGE_PIN AJ27  IOSTANDARD LVCMOS33 } [get_ports { pjtag_rtrstnn }]; #IO_L20P_T3_13 Sch=jc[2]
set_property -dict { PACKAGE_PIN AH30  IOSTANDARD LVCMOS33 } [get_ports { pjtag_rtck }]; #IO_L18N_T2_13 Sch=jc[3]
set_property -dict { PACKAGE_PIN AD26  IOSTANDARD LVCMOS33 } [get_ports { pjtag_rtdi }]; #IO_L19N_T3_VREF_13 Sch=jc[7]
set_property -dict { PACKAGE_PIN AG30  IOSTANDARD LVCMOS33 } [get_ports { pjtag_rtms }]; #IO_L18P_T2_13 Sch=jc[8]

## PMOD Header JB
#set_property -dict { PACKAGE_PIN V29   IOSTANDARD LVCMOS33 } [get_ports { pjtag_rtdo }]; #IO_L17P_T2_A14_D30_14 Sch=jb_p[1]
#set_property -dict { PACKAGE_PIN V30   IOSTANDARD LVCMOS33 } [get_ports { pjtag_rtrstnn }]; #IO_L17N_T2_A13_D29_14 Sch=jb_n[1]
#set_property -dict { PACKAGE_PIN V25   IOSTANDARD LVCMOS33 } [get_ports { pjtag_rtck }]; #IO_L18P_T2_A12_D28_14 Sch=jb_p[2]
#set_property -dict { PACKAGE_PIN U22   IOSTANDARD LVCMOS33 } [get_ports { pjtag_rtdi }]; #IO_L21P_T3_DQS_14 Sch=jb_p[4]
#set_property -dict { PACKAGE_PIN U23   IOSTANDARD LVCMOS33 } [get_ports { pjtag_rtms }]; #IO_L21N_T3_DQS_A06_D22_14 Sch=jb_n[4]

set_property PULLUP true [get_ports pjtag_rtck]
set_property PULLUP true [get_ports pjtag_rtrstnn]
set_property PULLUP true [get_ports pjtag_rtdi]
set_property PULLUP true [get_ports pjtag_rtms]

create_clock -period 100 -waveform {0 50} -name pjtag_rclk [get_ports pjtag_rtck]

set_input_delay -clock pjtag_rclk 25.000 [get_ports pjtag_rtdi]
set_input_delay -clock pjtag_rclk 25.000 [get_ports pjtag_rtms]
set_output_delay -clock pjtag_rclk 25.000 [get_ports pjtag_rtdo]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets pjtag_rtck]


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
## 2017-07-18 Kyuseung Han (han@etri.re.kr)
## ****************************************************************************
## ****************************************************************************

### Pmod header JC
#set_property -dict { PACKAGE_PIN Y6    IOSTANDARD LVCMOS33 } [get_ports { spi_readymade_scs_list[0] }]; #IO_L21P_T3_DQS_34 Sch=jb_p[1] #1 
#set_property -dict { PACKAGE_PIN AA6   IOSTANDARD LVCMOS33 } [get_ports { spi_readymade_sdq0_list[0] }]; #IO_L21N_T3_DQS_34 Sch=jb_n[1] #2 (MOSI)
#set_property -dict { PACKAGE_PIN AA8    IOSTANDARD LVCMOS33 } [get_ports { spi_readymade_sdq1_list[0] }]; #IO_L19P_T3_34 Sch=jb_p[2] #3 (MISO)
#set_property -dict { PACKAGE_PIN AB8    IOSTANDARD LVCMOS33 } [get_ports { spi_readymade_sclk_list[0] }]; #IO_L19N_T3_VREF_34 Sch=jb_n[2] #4
#
### Pmod header JXADC
#set_property -dict { PACKAGE_PIN J14    IOSTANDARD LVCMOS33 } [get_ports { spi_readymade_scs_list[1] }]; #IO_L21P_T3_DQS_34 Sch=jb_p[1] #1 
#set_property -dict { PACKAGE_PIN H13    IOSTANDARD LVCMOS33 } [get_ports { spi_readymade_sdq0_list[1] }]; #IO_L21N_T3_DQS_34 Sch=jb_n[1] #2 (MOSI)
#set_property -dict { PACKAGE_PIN G15    IOSTANDARD LVCMOS33 } [get_ports { spi_readymade_sdq1_list[1] }]; #IO_L19P_T3_34 Sch=jb_p[2] #3 (MISO)
#set_property -dict { PACKAGE_PIN J15    IOSTANDARD LVCMOS33 } [get_ports { spi_readymade_sclk_list[1] }]; #IO_L19N_T3_VREF_34 Sch=jb_n[2] #4
#

#Pmod-4
set_property -dict { PACKAGE_PIN J24   IOSTANDARD LVCMOS18 } [get_ports { spi_readymade_scs_list[0] }]; # pin 1
set_property -dict { PACKAGE_PIN J25   IOSTANDARD LVCMOS18 } [get_ports { spi_readymade_sdq0_list[0] }]; # pin 2 (MOSI)
set_property -dict { PACKAGE_PIN J26   IOSTANDARD LVCMOS18 } [get_ports { spi_readymade_sdq1_list[0] }]; # pin 3 (MISO)
set_property -dict { PACKAGE_PIN H26   IOSTANDARD LVCMOS18 } [get_ports { spi_readymade_sclk_list[0] }]; # pin 4
#set_property -dict { PACKAGE_PIN H24   IOSTANDARD LVCMOS18 } [get_ports { spi_readymade_sdq2 }]; # pin 8
#set_property -dict { PACKAGE_PIN H23   IOSTANDARD LVCMOS18 } [get_ports { spi_readymade_sdq3 }]; # pin 9


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
## 2024-02-29  Sukho Lee(shlee99@etri.re.kr)
## ****************************************************************************
## ****************************************************************************

#PMOD-1
set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports { spi_readymade_scs_list[0] }]; # pin 1
set_property -dict { PACKAGE_PIN A17   IOSTANDARD LVCMOS33 } [get_ports { spi_readymade_sdq0_list[0] }]; # pin 2 (MOSI)
set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVCMOS33 } [get_ports { spi_readymade_sdq1_list[0] }]; # pin 3 (MISO)
set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33 } [get_ports { spi_readymade_sclk_list[0] }]; # pin 4

#set_property -dict { PACKAGE_PIN B13   IOSTANDARD LVCMOS33 } [get_ports {  }]; # pin 7
#set_property -dict { PACKAGE_PIN B15   IOSTANDARD LVCMOS33 } [get_ports {  }]; # pin 8
#set_property -dict { PACKAGE_PIN B14   IOSTANDARD LVCMOS33 } [get_ports {  }]; # pin 9
#set_property -dict { PACKAGE_PIN A13   IOSTANDARD LVCMOS33 } [get_ports {  }]; # pin 10


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
## Apr.19,2017, Sukho Lee (shlee99@etri.re.kr)
## ****************************************************************************
## ****************************************************************************

##########
## OLED ##
##########
#Pmod-3
set_property -dict { PACKAGE_PIN AH12   IOSTANDARD LVCMOS33 } [get_ports { oled_scs }]; # pin 1
set_property -dict { PACKAGE_PIN AH11   IOSTANDARD LVCMOS33 } [get_ports { oled_sdq0 }]; # pin 2 (MOSI)
set_property -dict { PACKAGE_PIN AG12   IOSTANDARD LVCMOS33 } [get_ports { oled_sdq1 }]; # pin 3 (MISO)
set_property -dict { PACKAGE_PIN AG11   IOSTANDARD LVCMOS33 } [get_ports { oled_sclk }]; # pin 4
#set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports { oled_sdq2 }]; # pin 8
#set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports { oled_sdq3 }]; # pin 9

set_property -dict { PACKAGE_PIN AE11   IOSTANDARD LVCMOS33 } [get_ports { oled_sdcsel }]; # pin 7
set_property -dict { PACKAGE_PIN AD11   IOSTANDARD LVCMOS33 } [get_ports { oled_srstnn }]; # pin 8
set_property -dict { PACKAGE_PIN AE12   IOSTANDARD LVCMOS33 } [get_ports { oled_svbat }]; # pin 9
set_property -dict { PACKAGE_PIN AF12   IOSTANDARD LVCMOS33 } [get_ports { oled_svdd }]; # pin 10


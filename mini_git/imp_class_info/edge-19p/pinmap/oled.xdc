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
#Pmod-1
#set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports { oled_scs }]; # pin 1
#set_property -dict { PACKAGE_PIN A17   IOSTANDARD LVCMOS33 } [get_ports { oled_sdq0 }]; # pin 2 (MOSI)
#set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVCMOS33 } [get_ports { oled_sdq1 }]; # pin 3 (MISO)
#set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33 } [get_ports { oled_sclk }]; # pin 4
#
#set_property -dict { PACKAGE_PIN B13   IOSTANDARD LVCMOS33 } [get_ports { oled_sdcsel }]; # pin 7
#set_property -dict { PACKAGE_PIN B15   IOSTANDARD LVCMOS33 } [get_ports { oled_srstnn }]; # pin 8
#set_property -dict { PACKAGE_PIN B14   IOSTANDARD LVCMOS33 } [get_ports { oled_svbat }]; # pin 9
#set_property -dict { PACKAGE_PIN A13   IOSTANDARD LVCMOS33 } [get_ports { oled_svdd }]; # pin 10

#Pmod-2
#set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { oled_scs }]; # pin 1
#set_property -dict { PACKAGE_PIN K20   IOSTANDARD LVCMOS33 } [get_ports { oled_sdq0 }]; # pin 2 (MOSI)
#set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { oled_sdq1 }]; # pin 3 (MISO)
#set_property -dict { PACKAGE_PIN L20   IOSTANDARD LVCMOS33 } [get_ports { oled_sclk }]; # pin 4

#set_property -dict { PACKAGE_PIN H19   IOSTANDARD LVCMOS33 } [get_ports { oled_sdcsel }]; # pin 7
#set_property -dict { PACKAGE_PIN J19   IOSTANDARD LVCMOS33 } [get_ports { oled_srstnn }]; # pin 8
#set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { oled_svbat }]; # pin 9
#set_property -dict { PACKAGE_PIN K19   IOSTANDARD LVCMOS33 } [get_ports { oled_svdd }]; # pin 10


#Pmod-3
#set_property -dict { PACKAGE_PIN F20   IOSTANDARD LVCMOS33 } [get_ports { oled_scs }]; # pin 1
#set_property -dict { PACKAGE_PIN E19   IOSTANDARD LVCMOS33 } [get_ports { oled_sdq0 }]; # pin 2 (MOSI)
#set_property -dict { PACKAGE_PIN F21   IOSTANDARD LVCMOS33 } [get_ports { oled_sdq1 }]; # pin 3 (MISO)
#set_property -dict { PACKAGE_PIN E20   IOSTANDARD LVCMOS33 } [get_ports { oled_sclk }]; # pin 4
##
#set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { oled_sdcsel }]; # pin 7
#set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS33 } [get_ports { oled_srstnn }]; # pin 8
#set_property -dict { PACKAGE_PIN G20   IOSTANDARD LVCMOS33 } [get_ports { oled_svbat }]; # pin 9
#set_property -dict { PACKAGE_PIN G19   IOSTANDARD LVCMOS33 } [get_ports { oled_svdd }]; # pin 10
#

#Pmod-4
set_property -dict { PACKAGE_PIN C21   IOSTANDARD LVCMOS33 } [get_ports { oled_scs }]; # pin 1
set_property -dict { PACKAGE_PIN C20   IOSTANDARD LVCMOS33 } [get_ports { oled_sdq0 }]; # pin 2 (MOSI)
set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports { oled_sdq1 }]; # pin 3 (MISO)
set_property -dict { PACKAGE_PIN C19   IOSTANDARD LVCMOS33 } [get_ports { oled_sclk }]; # pin 4

set_property -dict { PACKAGE_PIN B20   IOSTANDARD LVCMOS33 } [get_ports { oled_sdcsel }]; # pin 7
set_property -dict { PACKAGE_PIN B19   IOSTANDARD LVCMOS33 } [get_ports { oled_srstnn }]; # pin 8
set_property -dict { PACKAGE_PIN A21   IOSTANDARD LVCMOS33 } [get_ports { oled_svbat }]; # pin 9
set_property -dict { PACKAGE_PIN A20   IOSTANDARD LVCMOS33 } [get_ports { oled_svdd }]; # pin 10




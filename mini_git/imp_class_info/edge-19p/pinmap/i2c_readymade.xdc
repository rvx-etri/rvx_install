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
##PMOD-2 Lower

#set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports {  }]; # pin 1
#set_property -dict { PACKAGE_PIN K20   IOSTANDARD LVCMOS33 } [get_ports {  }]; # pin 2 (MOSI)
#set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports {  }]; # pin 3 (MISO)
#set_property -dict { PACKAGE_PIN L20   IOSTANDARD LVCMOS33 } [get_ports {  }]; # pin 4

#set_property -dict { PACKAGE_PIN H19   IOSTANDARD LVCMOS33 } [get_ports { i2c_readymade_sclk_list[0]  }]; # pin 7
#set_property -dict { PACKAGE_PIN J19   IOSTANDARD LVCMOS33 } [get_ports { i2c_readymade_sclk_list[1]  }]; # pin 8
#set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports {  }]; # pin 9
#set_property -dict { PACKAGE_PIN K19   IOSTANDARD LVCMOS33 } [get_ports {  }]; # pin 10

set_property PULLUP true [get_ports i2c_readymade_sclk_list[0] ]
set_property PULLUP true [get_ports i2c_readymade_sdata_list[0] ]




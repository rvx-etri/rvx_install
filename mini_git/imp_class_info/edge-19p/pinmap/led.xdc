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

set_property -dict { PACKAGE_PIN H20    IOSTANDARD LVCMOS33 } [get_ports { led_list[0] }];
set_property -dict { PACKAGE_PIN H21    IOSTANDARD LVCMOS33 } [get_ports { led_list[1] }];
set_property -dict { PACKAGE_PIN G22    IOSTANDARD LVCMOS33 } [get_ports { led_list[2] }];
set_property -dict { PACKAGE_PIN G23    IOSTANDARD LVCMOS33 } [get_ports { led_list[3] }];
#

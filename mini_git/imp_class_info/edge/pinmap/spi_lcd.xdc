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
## 2019-08-28 : Sukho Lee (shlee99@etri.re.kr)
## ****************************************************************************
##  SPI-LCD 14-Pin Map, 1.8V VCCO
## ****************************************************************************

set_property PACKAGE_PIN        AJ28            [get_ports {    spidma0_cs          }]
set_property PACKAGE_PIN        AK28            [get_ports {    spidma0_ck          }]
set_property PACKAGE_PIN        AH27            [get_ports {    spidma0_mosi        }]
set_property PACKAGE_PIN        AH28            [get_ports {    spidma0_miso        }]
set_property PACKAGE_PIN        AL34            [get_ports {    spidma0_dq2         }]
set_property PACKAGE_PIN        AM34            [get_ports {    spidma0_dq3         }]           

set_property PACKAGE_PIN        AD21            [get_ports {    SPI_LCD_PD_N         }]           
set_property PACKAGE_PIN        AE21            [get_ports {    spidma0_int_n        }]           


set_property IOSTANDARD LVCMOS18        [get_ports {    spidma0_cs                 }]
set_property IOSTANDARD LVCMOS18        [get_ports {    spidma0_ck                 }]
set_property IOSTANDARD LVCMOS18        [get_ports {    spidma0_mosi               }]
set_property IOSTANDARD LVCMOS18        [get_ports {    spidma0_miso               }]
set_property IOSTANDARD LVCMOS18        [get_ports {    spidma0_dq2                }]
set_property IOSTANDARD LVCMOS18        [get_ports {    spidma0_dq3                }]

set_property IOSTANDARD LVCMOS18        [get_ports {    SPI_LCD_PD_N                }]
set_property IOSTANDARD LVCMOS18        [get_ports {    spidma0_int_n               }]




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
## 2024-02-29 Sukho Lee (shlee99@etri.re.kr)
## ****************************************************************************
## ****************************************************************************
set_property PACKAGE_PIN        J23     [get_ports {    SD_CLK     }]
set_property PACKAGE_PIN        J22     [get_ports {    SD_CMD     }]
set_property PACKAGE_PIN        L22     [get_ports {    SD_DATA[0]   }]
set_property PACKAGE_PIN        K23     [get_ports {    SD_DATA[1]   }]
set_property PACKAGE_PIN        L21     [get_ports {    SD_DATA[2]   }]
set_property PACKAGE_PIN        K21     [get_ports {    SD_DATA[3]   }]
set_property PACKAGE_PIN        J21     [get_ports {    SD_DET     }]
set_property PACKAGE_PIN        H22     [get_ports {    SD_WP     }]

set_property IOSTANDARD LVCMOS33        [get_ports {    SD_CLK     }]
set_property IOSTANDARD LVCMOS33        [get_ports {    SD_CMD     }]
set_property IOSTANDARD LVCMOS33        [get_ports {    SD_DATA[0]   }]
set_property IOSTANDARD LVCMOS33        [get_ports {    SD_DATA[1]   }]
set_property IOSTANDARD LVCMOS33        [get_ports {    SD_DATA[2]   }]
set_property IOSTANDARD LVCMOS33        [get_ports {    SD_DATA[3]   }]
set_property IOSTANDARD LVCMOS33        [get_ports {    SD_DET     }]
set_property IOSTANDARD LVCMOS33        [get_ports {    SD_WP     }]


set_property -dict { PACKAGE_PIN F22    IOSTANDARD LVCMOS33 } [get_ports { SD_LED }];



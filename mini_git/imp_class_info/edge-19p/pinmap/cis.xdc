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
## 2019-05-24 : Sukho Lee (shlee99@etri.re.kr)
## ****************************************************************************
##  CIS 14-Pin Map, 1.8V VCCO
## ****************************************************************************
create_clock -period 20 [get_ports CIS_PCLK]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {CIS_PCLK}]

#create_clock -period 20 -name i_CIS_PCLK  [get_pins i_video/i_bufg_cis/O]
#set_clock_sense -positive  [get_pins i_video/i_bufg_cis/O]
#set_clock_sense -positive  [get_pins i_video/i_vim/u_vim_apb_reg/i_bufg_cis_i_1/O]

set_property PACKAGE_PIN        BA26     [get_ports {    CIS_MCLK   }]
set_property PACKAGE_PIN        AW26     [get_ports {    CIS_PCLK   }]
set_property PACKAGE_PIN        AW27     [get_ports {    CIS_RESET_N  }]


set_property PACKAGE_PIN        BA25     [get_ports {    CIS_VS  }]
set_property PACKAGE_PIN        BB27     [get_ports {    CIS_HS   }]
set_property PACKAGE_PIN        AR24     [get_ports {    CIS_PD_N   }]   

# 10-bit mode
#set_property PACKAGE_PIN        AY24    [get_ports {    CIS_D[0]     }]
#set_property PACKAGE_PIN        AY25    [get_ports {    CIS_D[1]     }]

# 8-bit mode
set_property PACKAGE_PIN        AY26    [get_ports {    CIS_D[0]     }]
set_property PACKAGE_PIN        AW24    [get_ports {    CIS_D[1]     }]
set_property PACKAGE_PIN        AW23    [get_ports {    CIS_D[2]     }]
set_property PACKAGE_PIN        AY23    [get_ports {    CIS_D[3]     }]
set_property PACKAGE_PIN        AV22    [get_ports {    CIS_D[4]     }]
set_property PACKAGE_PIN        AW22    [get_ports {    CIS_D[5]     }]
set_property PACKAGE_PIN        AT23    [get_ports {    CIS_D[6]     }]
set_property PACKAGE_PIN        AV25    [get_ports {    CIS_D[7]     }]

##################################################################################

set_property IOSTANDARD LVCMOS18        [get_ports {    CIS_MCLK   }]
set_property IOSTANDARD LVCMOS18        [get_ports {    CIS_RESET_N  }]
set_property IOSTANDARD LVCMOS18        [get_ports {    CIS_PD_N   }]


set_property IOSTANDARD LVCMOS18        [get_ports {    CIS_PCLK   }]
set_property IOSTANDARD LVCMOS18        [get_ports {    CIS_HS   }]
set_property IOSTANDARD LVCMOS18        [get_ports {    CIS_VS  }]

set_property IOSTANDARD LVCMOS18        [get_ports {    CIS_D[0]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    CIS_D[1]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    CIS_D[2]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    CIS_D[3]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    CIS_D[4]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    CIS_D[5]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    CIS_D[6]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    CIS_D[7]     }]

##############################################################################
set_property PACKAGE_PIN        BB22     [get_ports {    CIS_I2C_SCL    }]
set_property PACKAGE_PIN        BB23     [get_ports {    CIS_I2C_SDA    }]

set_property IOSTANDARD LVCMOS18        [get_ports {    CIS_I2C_SDA                }]
set_property IOSTANDARD LVCMOS18        [get_ports {    CIS_I2C_SCL                }]

#set_property PULLUP     true        [get_ports {        CIS_I2C_SDA              }]
#set_property PULLUP     true        [get_ports {        CIS_I2C_SCL              }]


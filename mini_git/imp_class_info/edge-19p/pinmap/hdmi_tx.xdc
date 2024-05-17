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
## 2019-07-08 : Sukho Lee (shlee99@etri.re.kr)
## ****************************************************************************
## HDMI TX Pin Map, 1.8V VCCO
## ****************************************************************************
#create_clock -period 3.000 -name b_HDMI_TX_DCK  [get_pins i_video/i_vom/BUFG_TX/O]

set_property PACKAGE_PIN        AH32     [get_ports {    HDMI_TX_AO_MCLK    }]
set_property PACKAGE_PIN        AK31     [get_ports {    HDMI_TX_AO_SCK     }]
set_property PACKAGE_PIN        AM32     [get_ports {    HDMI_TX_AO_SD[0]     }]
set_property PACKAGE_PIN        AL32     [get_ports {    HDMI_TX_AO_SD[1]     }]
set_property PACKAGE_PIN        AJ38     [get_ports {    HDMI_TX_AO_SD[2]     }]
set_property PACKAGE_PIN        AL40     [get_ports {    HDMI_TX_AO_SD[3]     }]
set_property PACKAGE_PIN        AM39     [get_ports {    HDMI_TX_AO_SPDIF   }]
set_property PACKAGE_PIN        AL31     [get_ports {    HDMI_TX_AO_WS      }]
set_property PACKAGE_PIN        AN40     [get_ports {    HDMI_TX_DCK    }]
#set_property PACKAGE_PIN       E8      [get_ports {    HDMI_TX_IDCK_FB         }]

set_property PACKAGE_PIN        AJ42     [get_ports {    HDMI_TX_DE      }]
set_property PACKAGE_PIN        AM40     [get_ports {    HDMI_TX_HS      }]
set_property PACKAGE_PIN        AH37     [get_ports {    HDMI_TX_VS      }]
set_property PACKAGE_PIN        AJ31     [get_ports {    HDMI_TX_INT     }]
set_property PACKAGE_PIN        AH31     [get_ports {    HDMI_TX_RST_N   }]

set_property PACKAGE_PIN        AL42    [get_ports {    HDMI_TX_VD[0]     }]
set_property PACKAGE_PIN        AN41    [get_ports {    HDMI_TX_VD[1]     }]
set_property PACKAGE_PIN        AJ41    [get_ports {    HDMI_TX_VD[2]     }]
set_property PACKAGE_PIN        AN39    [get_ports {    HDMI_TX_VD[3]     }]
set_property PACKAGE_PIN        AH41    [get_ports {    HDMI_TX_VD[4]     }]
set_property PACKAGE_PIN        AH39    [get_ports {    HDMI_TX_VD[5]     }]
set_property PACKAGE_PIN        AK40    [get_ports {    HDMI_TX_VD[6]     }]
set_property PACKAGE_PIN        AJ39    [get_ports {    HDMI_TX_VD[7]     }]
set_property PACKAGE_PIN        AL38    [get_ports {    HDMI_TX_VD[8]     }]
set_property PACKAGE_PIN        AM38    [get_ports {    HDMI_TX_VD[9]     }]
set_property PACKAGE_PIN        AH40    [get_ports {    HDMI_TX_VD[10]    }]

set_property PACKAGE_PIN        AK38    [get_ports {    HDMI_TX_VD[11]    }]
set_property PACKAGE_PIN        AJ36    [get_ports {    HDMI_TX_VD[12]    }]
set_property PACKAGE_PIN        AM35    [get_ports {    HDMI_TX_VD[13]    }]
set_property PACKAGE_PIN        AH35    [get_ports {    HDMI_TX_VD[14]    }]
set_property PACKAGE_PIN        AH36    [get_ports {    HDMI_TX_VD[15]    }]
set_property PACKAGE_PIN        AM34    [get_ports {    HDMI_TX_VD[16]    }]
set_property PACKAGE_PIN        AN35    [get_ports {    HDMI_TX_VD[17]    }]
set_property PACKAGE_PIN        AK34    [get_ports {    HDMI_TX_VD[18]    }]
set_property PACKAGE_PIN        AK35    [get_ports {    HDMI_TX_VD[19]    }]
set_property PACKAGE_PIN        AL35    [get_ports {    HDMI_TX_VD[20]    }]

set_property PACKAGE_PIN        AM33    [get_ports {    HDMI_TX_VD[21]    }]
set_property PACKAGE_PIN        AH34    [get_ports {    HDMI_TX_VD[22]    }]
set_property PACKAGE_PIN        AJ34    [get_ports {    HDMI_TX_VD[23]    }]
set_property PACKAGE_PIN        AM42    [get_ports {    HDMI_TX_VD[24]    }]
set_property PACKAGE_PIN        AN42    [get_ports {    HDMI_TX_VD[25]    }]
set_property PACKAGE_PIN        AH42    [get_ports {    HDMI_TX_VD[26]    }]
set_property PACKAGE_PIN        AK33    [get_ports {    HDMI_TX_VD[27]    }]
set_property PACKAGE_PIN        AK41    [get_ports {    HDMI_TX_VD[28]    }]
set_property PACKAGE_PIN        AL41    [get_ports {    HDMI_TX_VD[29]    }]
set_property PACKAGE_PIN        AJ32    [get_ports {    HDMI_TX_VD[30]    }]

set_property PACKAGE_PIN        AL33    [get_ports {    HDMI_TX_VD[31]    }]
set_property PACKAGE_PIN        AM37    [get_ports {    HDMI_TX_VD[32]    }]
set_property PACKAGE_PIN        AJ37    [get_ports {    HDMI_TX_VD[33]    }]
set_property PACKAGE_PIN        AK39    [get_ports {    HDMI_TX_VD[34]    }]
set_property PACKAGE_PIN        AL37    [get_ports {    HDMI_TX_VD[35]    }]

##############################################################################

set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_AO_MCLK    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_AO_SCK     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_AO_SD[0]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_AO_SD[1]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_AO_SD[2]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_AO_SD[3]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_AO_SPDIF   }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_AO_WS      }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_DCK    }]
#set_property IOSTANDARD LVCMOS18       [get_ports {    HDMI_TX_IDCK_FB         }]

set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_DE      }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_HS      }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VS      }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_INT     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_RST_N   }]

set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[0]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[1]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[2]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[3]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[4]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[5]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[6]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[7]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[8]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[9]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[10]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[11]    }]

set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[12]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[13]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[14]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[15]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[16]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[17]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[18]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[19]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[20]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[21]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[22]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[23]    }]

set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[24]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[25]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[26]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[27]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[28]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[29]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[30]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[31]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[32]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[33]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[34]   }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_TX_VD[35]    }]


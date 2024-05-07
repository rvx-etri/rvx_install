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

set_property PACKAGE_PIN        G20     [get_ports {    HDMI_TX_AO_MCLK    }]
set_property PACKAGE_PIN        G22     [get_ports {    HDMI_TX_AO_SCK     }]
set_property PACKAGE_PIN        F24     [get_ports {    HDMI_TX_AO_SD[0]     }]
set_property PACKAGE_PIN        F23     [get_ports {    HDMI_TX_AO_SD[1]     }]
set_property PACKAGE_PIN        E25     [get_ports {    HDMI_TX_AO_SD[2]     }]
set_property PACKAGE_PIN        D28     [get_ports {    HDMI_TX_AO_SD[3]     }]
set_property PACKAGE_PIN        E26     [get_ports {    HDMI_TX_AO_SPDIF   }]
set_property PACKAGE_PIN        F22     [get_ports {    HDMI_TX_AO_WS      }]
set_property PACKAGE_PIN        B29     [get_ports {    HDMI_TX_DCK    }]
#set_property PACKAGE_PIN       E8      [get_ports {    HDMI_TX_IDCK_FB         }]

set_property PACKAGE_PIN        B27     [get_ports {    HDMI_TX_DE      }]
set_property PACKAGE_PIN        C28     [get_ports {    HDMI_TX_HS      }]
set_property PACKAGE_PIN        D23     [get_ports {    HDMI_TX_VS      }]
set_property PACKAGE_PIN        G21     [get_ports {    HDMI_TX_INT     }]
set_property PACKAGE_PIN        H21     [get_ports {    HDMI_TX_RST_N   }]

set_property PACKAGE_PIN        C29     [get_ports {    HDMI_TX_VD[0]     }]
set_property PACKAGE_PIN        A29     [get_ports {    HDMI_TX_VD[1]     }]
set_property PACKAGE_PIN        A28     [get_ports {    HDMI_TX_VD[2]     }]
set_property PACKAGE_PIN        D26     [get_ports {    HDMI_TX_VD[3]     }]
set_property PACKAGE_PIN        A27     [get_ports {    HDMI_TX_VD[4]     }]
set_property PACKAGE_PIN        C26     [get_ports {    HDMI_TX_VD[5]     }]
set_property PACKAGE_PIN        A25     [get_ports {    HDMI_TX_VD[6]    }]
set_property PACKAGE_PIN        B26     [get_ports {    HDMI_TX_VD[7]     }]
set_property PACKAGE_PIN        B24     [get_ports {    HDMI_TX_VD[8]     }]
set_property PACKAGE_PIN        A24     [get_ports {    HDMI_TX_VD[9]     }]
set_property PACKAGE_PIN        A23     [get_ports {    HDMI_TX_VD[10]    }]
set_property PACKAGE_PIN        D25     [get_ports {    HDMI_TX_VD[11]    }]

set_property PACKAGE_PIN        A22     [get_ports {    HDMI_TX_VD[12]     }]
set_property PACKAGE_PIN        B22     [get_ports {    HDMI_TX_VD[13]     }]
set_property PACKAGE_PIN        C21     [get_ports {    HDMI_TX_VD[14]     }]
set_property PACKAGE_PIN        C22     [get_ports {    HDMI_TX_VD[15]     }]
set_property PACKAGE_PIN        B20     [get_ports {    HDMI_TX_VD[16]     }]
set_property PACKAGE_PIN        A20     [get_ports {    HDMI_TX_VD[17]     }]
set_property PACKAGE_PIN        D20     [get_ports {    HDMI_TX_VD[18]     }]
set_property PACKAGE_PIN        D21     [get_ports {    HDMI_TX_VD[19]     }]
set_property PACKAGE_PIN        B21     [get_ports {    HDMI_TX_VD[20]     }]
set_property PACKAGE_PIN        H22     [get_ports {    HDMI_TX_VD[21]     }]
set_property PACKAGE_PIN        G24     [get_ports {    HDMI_TX_VD[22]    }]
set_property PACKAGE_PIN        F25     [get_ports {    HDMI_TX_VD[23]    }]

set_property PACKAGE_PIN        F27     [get_ports {    HDMI_TX_VD[24]     }]
set_property PACKAGE_PIN        E27     [get_ports {    HDMI_TX_VD[25]     }]
set_property PACKAGE_PIN        C27     [get_ports {    HDMI_TX_VD[26]     }]
set_property PACKAGE_PIN        E20     [get_ports {    HDMI_TX_VD[27]     }]
set_property PACKAGE_PIN        E28     [get_ports {    HDMI_TX_VD[28]     }]
set_property PACKAGE_PIN        D29     [get_ports {    HDMI_TX_VD[29]     }]
set_property PACKAGE_PIN        F20     [get_ports {    HDMI_TX_VD[30]     }]
set_property PACKAGE_PIN        E21     [get_ports {    HDMI_TX_VD[31]     }]
set_property PACKAGE_PIN        C24     [get_ports {    HDMI_TX_VD[32]     }]
set_property PACKAGE_PIN        C23     [get_ports {    HDMI_TX_VD[33]     }]
set_property PACKAGE_PIN        B25     [get_ports {    HDMI_TX_VD[34]    }]
set_property PACKAGE_PIN        D24     [get_ports {    HDMI_TX_VD[35]    }]

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


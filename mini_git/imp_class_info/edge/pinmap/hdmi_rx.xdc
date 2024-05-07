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
## HDMI RX Pin Map, 1.8V VCCO
## ****************************************************************************

# HDMI_I2C for HDMI Rx and Tx

create_clock -period 6.000 [get_ports HDMI_RX_DCK]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets HDMI_RX_DCK]

create_clock -period 6.000 -name i_HDMI_RX_DCK  [get_pins i_platform/i_rtl/i_edge_video_system/i_video/i_bufg_hdmi_rx/O]
set_clock_sense -positive [get_pins i_platform/i_rtl/i_edge_video_system/i_video/i_bufg_hdmi_rx/O]
set clock_sense -positive [get pins i_platform/i_rtl/i_edge_video_system/i_video/i_vim/u_vim_apb_reg/i_bufg_hdmi_rx_i_1/O]

# HDMI RX Common
set_property PACKAGE_PIN        J19     [get_ports {    HDMI_I2C_SCL           }]
set_property PACKAGE_PIN        G19     [get_ports {    HDMI_I2C_SDA           }]

set_property PACKAGE_PIN        D18     [get_ports {    HDMI_RX_AP[0]             }]
set_property PACKAGE_PIN        A18     [get_ports {    HDMI_RX_AP[1]             }]
set_property PACKAGE_PIN        A19     [get_ports {    HDMI_RX_AP[2]             }]
set_property PACKAGE_PIN        B19     [get_ports {    HDMI_RX_AP[3]             }]
set_property PACKAGE_PIN        C18     [get_ports {    HDMI_RX_AP[4]             }]
set_property PACKAGE_PIN        D19     [get_ports {    HDMI_RX_AP[5]             }]
set_property PACKAGE_PIN        H18     [get_ports {    HDMI_RX_DE              }]
set_property PACKAGE_PIN        E18     [get_ports {    HDMI_RX_HS              }]
set_property PACKAGE_PIN        F18     [get_ports {    HDMI_RX_VS              }]
set_property PACKAGE_PIN        L19     [get_ports {    HDMI_RX_INT             }]
set_property PACKAGE_PIN        H19     [get_ports {    HDMI_RX_RST_N           }]

set_property PACKAGE_PIN        F19     [get_ports {    HDMI_RX_AMCLK            }]
set_property PACKAGE_PIN        C19     [get_ports {    HDMI_RX_ASCLK            }]
set_property PACKAGE_PIN        J16     [get_ports {    HDMI_RX_DCK              }]

set_property PACKAGE_PIN                J18     [get_ports {    HDMI_RX_VD[0]     }]
set_property PACKAGE_PIN                A14     [get_ports {    HDMI_RX_VD[1]     }]
set_property PACKAGE_PIN                B14     [get_ports {    HDMI_RX_VD[2]     }]
set_property PACKAGE_PIN                C14     [get_ports {    HDMI_RX_VD[3]     }]
set_property PACKAGE_PIN                D14     [get_ports {    HDMI_RX_VD[4]     }]
set_property PACKAGE_PIN                F14     [get_ports {    HDMI_RX_VD[5]     }]
set_property PACKAGE_PIN                L18     [get_ports {    HDMI_RX_VD[6]     }]
set_property PACKAGE_PIN                B10     [get_ports {    HDMI_RX_VD[7]     }]
set_property PACKAGE_PIN                A10     [get_ports {    HDMI_RX_VD[8]     }]
set_property PACKAGE_PIN                B9      [get_ports {    HDMI_RX_VD[9]     }]

set_property PACKAGE_PIN                A9      [get_ports {    HDMI_RX_VD[10]    }]
set_property PACKAGE_PIN                C9      [get_ports {    HDMI_RX_VD[11]    }]
set_property PACKAGE_PIN                E8      [get_ports {    HDMI_RX_VD[12]    }]
set_property PACKAGE_PIN                D8      [get_ports {    HDMI_RX_VD[13]    }]
set_property PACKAGE_PIN                F8      [get_ports {    HDMI_RX_VD[14]    }]
set_property PACKAGE_PIN                G14     [get_ports {    HDMI_RX_VD[15]    }]
set_property PACKAGE_PIN                E15     [get_ports {    HDMI_RX_VD[16]    }]
set_property PACKAGE_PIN                H14     [get_ports {    HDMI_RX_VD[17]    }]
set_property PACKAGE_PIN                J14     [get_ports {    HDMI_RX_VD[18]    }]
set_property PACKAGE_PIN                L15     [get_ports {    HDMI_RX_VD[19]    }]

set_property PACKAGE_PIN                K15     [get_ports {    HDMI_RX_VD[20]    }]
set_property PACKAGE_PIN                K16     [get_ports {    HDMI_RX_VD[21]    }]
set_property PACKAGE_PIN                L17     [get_ports {    HDMI_RX_VD[22]    }]
set_property PACKAGE_PIN                J15     [get_ports {    HDMI_RX_VD[23]    }]
set_property PACKAGE_PIN                K17     [get_ports {    HDMI_RX_VD[24]    }]
set_property PACKAGE_PIN                H17     [get_ports {    HDMI_RX_VD[25]    }]
set_property PACKAGE_PIN                G17     [get_ports {    HDMI_RX_VD[26]    }]
set_property PACKAGE_PIN                G16     [get_ports {    HDMI_RX_VD[27]    }]
set_property PACKAGE_PIN                H16     [get_ports {    HDMI_RX_VD[28]    }]
set_property PACKAGE_PIN                G15     [get_ports {    HDMI_RX_VD[29]    }]

set_property PACKAGE_PIN                E10     [get_ports {    HDMI_RX_VD[30]    }]
set_property PACKAGE_PIN                C8      [get_ports {    HDMI_RX_VD[31]    }]
set_property PACKAGE_PIN                D9      [get_ports {    HDMI_RX_VD[32]    }]
set_property PACKAGE_PIN                D10     [get_ports {    HDMI_RX_VD[33]    }]
set_property PACKAGE_PIN                F15     [get_ports {    HDMI_RX_VD[34]    }]
set_property PACKAGE_PIN                D15     [get_ports {    HDMI_RX_VD[35]    }]

set_property PACKAGE_PIN                C16     [get_ports {    HDMI_RX_VD[36]    }]
set_property PACKAGE_PIN                C17     [get_ports {    HDMI_RX_VD[37]    }]
set_property PACKAGE_PIN                B15     [get_ports {    HDMI_RX_VD[38]    }]
set_property PACKAGE_PIN                A15     [get_ports {    HDMI_RX_VD[39]    }]

set_property PACKAGE_PIN                B16     [get_ports {    HDMI_RX_VD[40]    }]
set_property PACKAGE_PIN                B17     [get_ports {    HDMI_RX_VD[41]    }]
set_property PACKAGE_PIN                A17     [get_ports {    HDMI_RX_VD[42]    }]
set_property PACKAGE_PIN                D16     [get_ports {    HDMI_RX_VD[43]    }]
set_property PACKAGE_PIN                E16     [get_ports {    HDMI_RX_VD[44]    }]
set_property PACKAGE_PIN                E17     [get_ports {    HDMI_RX_VD[45]    }]
set_property PACKAGE_PIN                F17     [get_ports {    HDMI_RX_VD[46]    }]
set_property PACKAGE_PIN                K18     [get_ports {    HDMI_RX_VD[47]    }]

#############################################################################################

set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_I2C_SCL           }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_I2C_SDA           }]

set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_AP[0]             }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_AP[1]             }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_AP[2]             }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_AP[3]             }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_AP[4]             }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_AP[5]             }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_DE              }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_HS              }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VS              }]

set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_AMCLK            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_ASCLK            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_DCK            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_INT             }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_RST_N           }]

set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[0]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[1]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[2]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[3]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[4]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[5]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[6]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[7]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[8]     }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[9]     }]

set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[10]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[11]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[12]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[13]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[14]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[15]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[16]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[17]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[18]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[19]    }]

set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[20]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[21]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[22]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[23]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[24]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[25]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[26]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[27]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[28]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[29]    }]

set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[30]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[31]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[32]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[33]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[34]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[35]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[36]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[37]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[38]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[39]    }]

set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[40]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[41]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[42]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[43]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[44]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[45]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[46]    }]
set_property IOSTANDARD LVCMOS18        [get_ports {    HDMI_RX_VD[47]    }]


#set_property PULLUP     true        [get_ports {        HDMI_I2C_SCL              }]
#set_property PULLUP     true        [get_ports {        HDMI_I2C_SDA              }]

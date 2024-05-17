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
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets HDMI_RX_DCK]

create_clock -period 6.000 -name i_HDMI_RX_DCK  [get_pins i_platform/i_rtl/i_edge_video_system/i_video/i_bufg_hdmi_rx/O]
set_clock_sense -positive [get_pins i_platform/i_rtl/i_edge_video_system/i_video/i_bufg_hdmi_rx/O]
set clock_sense -positive [get pins i_platform/i_rtl/i_edge_video_system/i_video/i_vim/u_vim_apb_reg/i_bufg_hdmi_rx_i_1/O]

# HDMI RX Common
set_property PACKAGE_PIN        AW41     [get_ports {    HDMI_I2C_SCL           }]
set_property PACKAGE_PIN        AT41     [get_ports {    HDMI_I2C_SDA           }]

set_property PACKAGE_PIN        AY36     [get_ports {    HDMI_RX_AP[0]             }]
set_property PACKAGE_PIN        AV37     [get_ports {    HDMI_RX_AP[1]             }]
set_property PACKAGE_PIN        AV36     [get_ports {    HDMI_RX_AP[2]             }]
set_property PACKAGE_PIN        AN37     [get_ports {    HDMI_RX_AP[3]             }]
set_property PACKAGE_PIN        AP37     [get_ports {    HDMI_RX_AP[4]             }]
set_property PACKAGE_PIN        AY35     [get_ports {    HDMI_RX_AP[5]             }]
set_property PACKAGE_PIN        AP42     [get_ports {    HDMI_RX_DE              }]
set_property PACKAGE_PIN        AT42     [get_ports {    HDMI_RX_HS              }]
set_property PACKAGE_PIN        AV40     [get_ports {    HDMI_RX_VS              }]
set_property PACKAGE_PIN        AV41     [get_ports {    HDMI_RX_INT             }]
set_property PACKAGE_PIN        AP41     [get_ports {    HDMI_RX_RST_N           }]

set_property PACKAGE_PIN        AW38     [get_ports {    HDMI_RX_AMCLK            }]
set_property PACKAGE_PIN        AW36     [get_ports {    HDMI_RX_ASCLK            }]
set_property PACKAGE_PIN        AU39     [get_ports {    HDMI_RX_DCK              }]

#set_property PACKAGE_PIN                J18     [get_ports {    HDMI_RX_VD[0]     }]

set_property PACKAGE_PIN                AY41    [get_ports {    HDMI_RX_VD[0]     }]
set_property PACKAGE_PIN                AU38    [get_ports {    HDMI_RX_VD[1]     }]
set_property PACKAGE_PIN                AU37    [get_ports {    HDMI_RX_VD[2]     }]
set_property PACKAGE_PIN                BB35    [get_ports {    HDMI_RX_VD[3]     }]
set_property PACKAGE_PIN                BA35    [get_ports {    HDMI_RX_VD[4]     }]
set_property PACKAGE_PIN                BB38    [get_ports {    HDMI_RX_VD[5]     }]
set_property PACKAGE_PIN                AW42    [get_ports {    HDMI_RX_VD[6]     }]
set_property PACKAGE_PIN                AP29    [get_ports {    HDMI_RX_VD[7]     }]
set_property PACKAGE_PIN                AR29    [get_ports {    HDMI_RX_VD[8]     }]
set_property PACKAGE_PIN                AR30    [get_ports {    HDMI_RX_VD[9]     }]

set_property PACKAGE_PIN                AT30    [get_ports {    HDMI_RX_VD[10]    }]
set_property PACKAGE_PIN                AP31    [get_ports {    HDMI_RX_VD[11]    }]
set_property PACKAGE_PIN                AU30    [get_ports {    HDMI_RX_VD[12]    }]
set_property PACKAGE_PIN                AR31    [get_ports {    HDMI_RX_VD[13]    }]
set_property PACKAGE_PIN                AU29    [get_ports {    HDMI_RX_VD[14]    }]
set_property PACKAGE_PIN                AT40    [get_ports {    HDMI_RX_VD[15]    }]
set_property PACKAGE_PIN                BA37    [get_ports {    HDMI_RX_VD[16]    }]
set_property PACKAGE_PIN                AR41    [get_ports {    HDMI_RX_VD[17]    }]
set_property PACKAGE_PIN                BB40    [get_ports {    HDMI_RX_VD[18]    }]
set_property PACKAGE_PIN                AY39    [get_ports {    HDMI_RX_VD[19]    }]

set_property PACKAGE_PIN                AY40    [get_ports {    HDMI_RX_VD[20]    }]
set_property PACKAGE_PIN                AV39    [get_ports {    HDMI_RX_VD[21]    }]
set_property PACKAGE_PIN                AW39    [get_ports {    HDMI_RX_VD[22]    }]
set_property PACKAGE_PIN                BB39    [get_ports {    HDMI_RX_VD[23]    }]
set_property PACKAGE_PIN                BA41    [get_ports {    HDMI_RX_VD[24]    }]
set_property PACKAGE_PIN                AP39    [get_ports {    HDMI_RX_VD[25]    }]
set_property PACKAGE_PIN                AU42    [get_ports {    HDMI_RX_VD[26]    }]
set_property PACKAGE_PIN                AV42    [get_ports {    HDMI_RX_VD[27]    }]
set_property PACKAGE_PIN                AR40    [get_ports {    HDMI_RX_VD[28]    }]
set_property PACKAGE_PIN                AR39    [get_ports {    HDMI_RX_VD[29]    }]
set_property PACKAGE_PIN                AN29    [get_ports {    HDMI_RX_VD[30]    }]

set_property PACKAGE_PIN                AT31    [get_ports {    HDMI_RX_VD[31]    }]
set_property PACKAGE_PIN                AN31    [get_ports {    HDMI_RX_VD[32]    }]
set_property PACKAGE_PIN                AN30    [get_ports {    HDMI_RX_VD[33]    }]
set_property PACKAGE_PIN                BA38    [get_ports {    HDMI_RX_VD[34]    }]
set_property PACKAGE_PIN                BB37    [get_ports {    HDMI_RX_VD[35]    }]
set_property PACKAGE_PIN                BA36    [get_ports {    HDMI_RX_VD[36]    }]
set_property PACKAGE_PIN                AP38    [get_ports {    HDMI_RX_VD[37]    }]
set_property PACKAGE_PIN                AT36    [get_ports {    HDMI_RX_VD[38]    }]
set_property PACKAGE_PIN                AT37    [get_ports {    HDMI_RX_VD[39]    }]

set_property PACKAGE_PIN                AT38    [get_ports {    HDMI_RX_VD[40]    }]
set_property PACKAGE_PIN                AR38    [get_ports {    HDMI_RX_VD[41]    }]
set_property PACKAGE_PIN                AR36    [get_ports {    HDMI_RX_VD[42]    }]
set_property PACKAGE_PIN                AW37    [get_ports {    HDMI_RX_VD[43]    }]
set_property PACKAGE_PIN                AN36    [get_ports {    HDMI_RX_VD[44]    }]
set_property PACKAGE_PIN                AY38    [get_ports {    HDMI_RX_VD[45]    }]
set_property PACKAGE_PIN                AU40    [get_ports {    HDMI_RX_VD[46]    }]
set_property PACKAGE_PIN                BA40    [get_ports {    HDMI_RX_VD[47]    }]

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

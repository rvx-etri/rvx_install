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
##  LCD 14-Pin Map, 1.8V VCCO
## ****************************************************************************

set_property PACKAGE_PIN        B11             [get_ports {    LCD_DCLK           }]
set_property PACKAGE_PIN        C12             [get_ports {    LCD_HS             }]
set_property PACKAGE_PIN        C11             [get_ports {    LCD_VS             }]
set_property PACKAGE_PIN        B12             [get_ports {    LCD_DE             }]
set_property PACKAGE_PIN        A13             [get_ports {    LCD_RST_N          }]
set_property PACKAGE_PIN        A12             [get_ports {    LCD_PWM            }]

set_property PACKAGE_PIN        K11             [get_ports {    LCD_BD[0]            }]
set_property PACKAGE_PIN        J8              [get_ports {    LCD_BD[1]            }]
set_property PACKAGE_PIN        F9              [get_ports {    LCD_BD[2]            }]
set_property PACKAGE_PIN        E11             [get_ports {    LCD_BD[3]            }]
set_property PACKAGE_PIN        E12             [get_ports {    LCD_BD[4]            }]
set_property PACKAGE_PIN        D11             [get_ports {    LCD_BD[5]            }]
set_property PACKAGE_PIN        J10             [get_ports {    LCD_BD[6]            }]
set_property PACKAGE_PIN        G9              [get_ports {    LCD_BD[7]            }]

set_property PACKAGE_PIN        F10             [get_ports {    LCD_GD[0]            }]
set_property PACKAGE_PIN        H11             [get_ports {    LCD_GD[1]            }]
set_property PACKAGE_PIN        G11             [get_ports {    LCD_GD[2]            }]
set_property PACKAGE_PIN        J11             [get_ports {    LCD_GD[3]            }]
set_property PACKAGE_PIN        L12             [get_ports {    LCD_GD[4]            }]
set_property PACKAGE_PIN        K10             [get_ports {    LCD_GD[5]            }]
set_property PACKAGE_PIN        H12             [get_ports {    LCD_GD[6]            }]
set_property PACKAGE_PIN        L13             [get_ports {    LCD_GD[7]            }]

set_property PACKAGE_PIN        G12             [get_ports {    LCD_RD[0]            }]
set_property PACKAGE_PIN        H13             [get_ports {    LCD_RD[1]            }]
set_property PACKAGE_PIN        J13             [get_ports {    LCD_RD[2]            }]
set_property PACKAGE_PIN        K13             [get_ports {    LCD_RD[3]            }]
set_property PACKAGE_PIN        K12             [get_ports {    LCD_RD[4]            }]
set_property PACKAGE_PIN        G10             [get_ports {    LCD_RD[5]            }]
set_property PACKAGE_PIN        F12             [get_ports {    LCD_RD[6]            }]
set_property PACKAGE_PIN        H8              [get_ports {    LCD_RD[7]            }]

##################################################################################################
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_DCLK           }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_DE             }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_HS             }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_VS             }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_PWM            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_RST_N          }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_TS_INT         }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_TS_RST         }]

set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_BD[0]            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_BD[1]            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_BD[2]            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_BD[3]            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_BD[4]            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_BD[5]            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_BD[6]            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_BD[7]            }]

set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_GD[0]            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_GD[1]            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_GD[2]            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_GD[3]            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_GD[4]            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_GD[5]            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_GD[6]            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_GD[7]            }]

set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_RD[0]            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_RD[1]            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_RD[2]            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_RD[3]            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_RD[4]            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_RD[5]            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_RD[6]            }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_RD[7]            }]


# For Touch Screen

set_property PACKAGE_PIN        E13             [get_ports {    LCD_TS_INT         }]
set_property PACKAGE_PIN        F13             [get_ports {    LCD_TS_RST         }]
set_property PACKAGE_PIN        D13             [get_ports {    LCD_I2C_SCL0           }]
set_property PACKAGE_PIN        C13             [get_ports {    LCD_I2C_SDA0           }]

set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_TS_INT         }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_TS_RST         }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_I2C_SCL0           }]
set_property IOSTANDARD LVCMOS18        [get_ports {    LCD_I2C_SDA0           }]

set_property PULLUP     true        [get_ports {        LCD_I2C_SDA0              }]
set_property PULLUP     true        [get_ports {        LCD_I2C_SCL0              }]


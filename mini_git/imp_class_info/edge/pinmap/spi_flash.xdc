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

## QSPI
#set_property -dict { PACKAGE_PIN T19   IOSTANDARD LVCMOS33 } [get_ports { spi_flash_scs }]; #IO_L6P_T0_FCS_B_14 Sch=qspi_cs
#set_property -dict { PACKAGE_PIN P22   IOSTANDARD LVCMOS33 } [get_ports { spi_flash_sdq0 }]; #IO_L1P_T0_D00_MOSI_14 Sch=qspi_dq[0]
#set_property -dict { PACKAGE_PIN R22   IOSTANDARD LVCMOS33 } [get_ports { spi_flash_sdq1 }]; #IO_L1N_T0_D01_DIN_14 Sch=qspi_dq[1]
##set_property -dict { PACKAGE_PIN P21   IOSTANDARD LVCMOS33 } [get_ports { fpga_spi_flash_dq[2] }]; #IO_L2P_T0_D02_14 Sch=qspi_dq[2]
##set_property -dict { PACKAGE_PIN R21   IOSTANDARD LVCMOS33 } [get_ports { fpga_spi_flash_dq[3] }]; #IO_L2N_T0_D03_14 Sch=qspi_dq[3]
#
#create_clock -add -name fpga_spi_flash_clk_pin -period 20.00 -waveform {0 10}    [get_ports { spi_flash_sclk }];
#
####################
## Quad SPI Flash ##
####################

set_property -dict { PACKAGE_PIN P25   IOSTANDARD LVCMOS18 } [get_ports { spi_flash_sclk }];

set_property -dict { PACKAGE_PIN G25   IOSTANDARD LVCMOS18   } [get_ports { spi_flash_scs }]; #IO_L6P_T0_FCS_B_14 Sch=flash_qspi_cs
set_property -dict { PACKAGE_PIN H27   IOSTANDARD LVCMOS18    PULLUP TRUE } [get_ports { spi_flash_sdq0 }]; #IO_L1P_T0_D00_MOSI_14 Sch=flash_qspi_dq[0]
set_property -dict { PACKAGE_PIN G27   IOSTANDARD LVCMOS18    PULLUP TRUE } [get_ports { spi_flash_sdq1 }]; #IO_L1N_T0_D01_DIN_14 Sch=flash_qspi_dq[1]
#set_property -dict { PACKAGE_PIN R21   IOSTANDARD LVCMOS18    PULLUP TRUE } [get_ports { spi_flash_dq[2] }]; #IO_L2P_T0_D02_14 Sch=flash_qspi_dq[2]
#set_property -dict { PACKAGE_PIN R22   IOSTANDARD LVCMOS18    PULLUP TRUE } [get_ports { spi_flash_dq[3] }]; #IO_L2N_T0_D03_14 Sch=flash_qspi_dq[3]

create_clock -add -name fpga_spi_flash_clk_pin -period 20.00 -waveform {0 10}    [get_ports { spi_flash_sclk }];


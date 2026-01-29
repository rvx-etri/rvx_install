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

####################
## Quad SPI Flash ##
####################

set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports { spi_flash_scs }]; #IO_L6P_T0_FCS_B_14 Sch=flash_qspi_cs
set_property -dict { PACKAGE_PIN P24   IOSTANDARD LVCMOS33 } [get_ports { spi_flash_sdq0 }]; #IO_L1P_T0_D00_MOSI_14 Sch=flash_qspi_dq[0]
set_property -dict { PACKAGE_PIN R25   IOSTANDARD LVCMOS33 } [get_ports { spi_flash_sdq1 }]; #IO_L1N_T0_D01_DIN_14 Sch=flash_qspi_dq[1]
set_property -dict { PACKAGE_PIN R20   IOSTANDARD LVCMOS33 } [get_ports { spi_flash_sdq[2] }]; #IO_L2P_T0_D02_14 Sch=flash_qspi_dq[2]
set_property -dict { PACKAGE_PIN R21   IOSTANDARD LVCMOS33 } [get_ports { spi_flash_sdq[3] }]; #IO_L2N_T0_D03_14 Sch=flash_qspi_dq[3]


# ## QSPI

#set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports { QSPI_CSN }]; #IO_L6P_T0_FCS_B_14 Sch=qspi_csn
#set_property -dict { PACKAGE_PIN P24   IOSTANDARD LVCMOS33 } [get_ports { QSPI_D[0] }]; #IO_L1P_T0_D00_MOSI_14 Sch=qspi_d[0]
#set_property -dict { PACKAGE_PIN R25   IOSTANDARD LVCMOS33 } [get_ports { QSPI_D[1] }]; #IO_L1N_T0_D01_DIN_14 Sch=qspi_d[1]
#set_property -dict { PACKAGE_PIN R20   IOSTANDARD LVCMOS33 } [get_ports { QSPI_D[2] }]; #IO_L2P_T0_D02_14 Sch=qspi_d[2]
#set_property -dict { PACKAGE_PIN R21   IOSTANDARD LVCMOS33 } [get_ports { QSPI_D[3] }]; #IO_L2N_T0_D03_14 Sch=qspi_d[3]


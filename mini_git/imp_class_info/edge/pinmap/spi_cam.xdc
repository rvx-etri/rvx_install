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
## 2018-04-17 S.Lee (shlee99@etri.re.kr)
## ****************************************************************************
## ****************************************************************************
#Pmod-2

set_property -dict { PACKAGE_PIN AL13   IOSTANDARD LVCMOS33 } [get_ports { spi_dma_cs }];  # pin 1
set_property -dict { PACKAGE_PIN AL12   IOSTANDARD LVCMOS33 } [get_ports { spi_dma_dq0 }]; # pin 2 (MOSI)
set_property -dict { PACKAGE_PIN AK13   IOSTANDARD LVCMOS33 } [get_ports { spi_dma_dq1 }]; # pin 3 (MISO)
set_property -dict { PACKAGE_PIN AN13   IOSTANDARD LVCMOS33 } [get_ports { spi_dma_ck }]; # pin 4

set_property -dict { PACKAGE_PIN AF13   IOSTANDARD LVCMOS33 } [get_ports { spi_dma_dq2 }]; # pin 9
set_property -dict { PACKAGE_PIN AE13   IOSTANDARD LVCMOS33 } [get_ports { spi_dma_dq3 }]; # pin 10


#BASEADDR_COMMON_PERI_GROUP_SPI_GROUP0 16'ha000


#SPI I2C
#set_property -dict { PACKAGE_PIN AJ13   IOSTANDARD LVCMOS33 } [get_ports { fpga_i2c0_data }]; #pin 7 #IO_L24P_T3_RS1_15 Sch=jb_p[4]
#set_property -dict { PACKAGE_PIN AH13   IOSTANDARD LVCMOS33 } [get_ports { fpga_i2c0_clk }];  #pin 8 #IO_L24N_T3_RS0_15 Sch=jb_n[4]

#set_property PULLUP true [get_ports fpga_i2c0_clk]
#set_property PULLUP true [get_ports fpga_i2c0_data]


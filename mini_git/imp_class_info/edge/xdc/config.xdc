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
## 2019-04 : S.Lee (shlee99@etri.re.kr)
## ****************************************************************************
## ****************************************************************************

set_property CONFIG_VOLTAGE 1.8     [current_design]
set_property CFGBVS GND             [current_design]

## single flash SPIx4, dual flash SPIx8
#set_property CONFIG_MODE SPIx4 [current_design]

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 36.4 [current_design]

# dual flash
set_property CONFIG_MODE SPIx8 [current_design]

#set_property BITSTREAM.CONFIG.CONFIGRATE 32 [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES [current_design]
#single flash
#set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
#dual flash
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 8 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE NO [current_design]

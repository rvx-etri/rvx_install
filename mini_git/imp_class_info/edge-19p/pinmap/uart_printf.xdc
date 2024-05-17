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
## 2024-01-24 : Sukho Lee (shle99@etri.re.kr)
## ****************************************************************************
## ****************************************************************************

#######################
## PRINTF USING UART ##
#######################

## Pmod JA 
set_property -dict { PACKAGE_PIN BA22   IOSTANDARD LVCMOS18 } [get_ports { printf_tx }];
set_property -dict { PACKAGE_PIN BA23   IOSTANDARD LVCMOS18 } [get_ports { printf_rx }];


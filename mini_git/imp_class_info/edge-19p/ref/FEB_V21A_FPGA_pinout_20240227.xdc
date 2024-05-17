#########################################################
#	Board  : 		FEB V21A                          				#
#	FPGA   :		XCKU19P-3FFVJ1760E                    		#
#	Author :		Hoon Baek	                            		#
#	Date    :		2024.2.26                                 #
#########################################################



#####################################################################
#	CLOCK  (bank 69,71 : 1.2V, 300MHz), (Bank 73 : 1.35V, 200MHz),
#        (Bank 68 : 1.8V, 156.25MHz), (Bank 65 : 1.8V, 50 & 100MHz)
#####################################################################

set_property PACKAGE_PIN 	AR23	[get_ports {	CLK_50M			}]	
set_property PACKAGE_PIN 	AT25	[get_ports {	CLK_100M		}]
set_property PACKAGE_PIN 	AL36	[get_ports {	CLK_REF3_156M25_N	}]	
set_property PACKAGE_PIN 	AK36	[get_ports {	CLK_REF3_156M25_P		}]	
set_property PACKAGE_PIN 	AE38	[get_ports {	CLK_REF0_300M_N		}]	
set_property PACKAGE_PIN 	AD38	[get_ports {	CLK_REF0_300M_P		}]	
set_property PACKAGE_PIN 	M39	[get_ports {	CLK_REF1_300M_N		}]	
set_property PACKAGE_PIN 	M38	[get_ports {	CLK_REF1_300M_P		}]	
set_property PACKAGE_PIN 	G32	[get_ports {	CLK_REF1_200M_N		}]	
set_property PACKAGE_PIN 	H32	[get_ports {	CLK_REF1_200M_P		}]	

set_property IOSTANDARD LVCMOS18 	[get_ports {	CLK_50M			}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	CLK_100M		}]
set_property IOSTANDARD DIFF_SSTL18_II 	[get_ports {	CLK_REF3_156M25_N	}]
set_property IOSTANDARD DIFF_SSTL18_II 	[get_ports {	CLK_REF3_156M25_P 	}]
set_property IOSTANDARD DIFF_SSTL12 	[get_ports {	CLK_REF0_300M_N		}]
set_property IOSTANDARD DIFF_SSTL12 	[get_ports {	CLK_REF0_300M_P		}]
set_property IOSTANDARD DIFF_SSTL12 	[get_ports {	CLK_REF1_300M_N		}]
set_property IOSTANDARD DIFF_SSTL12 	[get_ports {	CLK_REF1_300M_P		}]
set_property IOSTANDARD DIFF_SSTL135 	[get_ports {	CLK_REF1_200M_N		}]
set_property IOSTANDARD DIFF_SSTL135 	[get_ports {	CLK_REF1_200M_P		}]





################################################################################
#	RESET   (Bank 92 :  3.3V)
################################################################################

set_property PACKAGE_PIN 	D16	[get_ports {	FPGA_POR_RESET_N	}]
set_property PACKAGE_PIN 	D14	[get_ports {	FPGA_SW_RESET_N	}]

set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_POR_RESET_N	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_SW_RESET_N	}]





################################################################################
#	QSPI ROM Interface for CFG (Bank 65 : 1.8V, CS & DATA), (Bank 0 : 1.8V, CLK)
################################################################################

set_property PACKAGE_PIN 	AT16	[get_ports {	QSPI1_CLK	}]
set_property PACKAGE_PIN 	BB25	[get_ports {	QSPI1_CS_B	}]
set_property PACKAGE_PIN 	AN24	[get_ports {	QSPI1_D00	}]
set_property PACKAGE_PIN 	AN25	[get_ports {	QSPI1_D01	}]
set_property PACKAGE_PIN 	AP28	[get_ports {	QSPI1_D02	}]
set_property PACKAGE_PIN 	AR28	[get_ports {	QSPI1_D03	}]

set_property IOSTANDARD LVCMOS18 	[get_ports {	QSPI1_CLK	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	QSPI1_CS_B	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	QSPI1_D00	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	QSPI1_D01	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	QSPI1_D02	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	QSPI1_D03	}]





################################################################################
#	QSPI ROM Interface for CPU (Bank 92 : 3.3V)
################################################################################

set_property PACKAGE_PIN 	E18	[get_ports {	QSPI2_CLK	}]
set_property PACKAGE_PIN 	D18	[get_ports {	QSPI2_CS_B	}]
set_property PACKAGE_PIN 	F18	[get_ports {	QSPI2_D00	}]
set_property PACKAGE_PIN 	F17	[get_ports {	QSPI2_D01	}]
set_property PACKAGE_PIN 	F16	[get_ports {	QSPI2_D02	}]
set_property PACKAGE_PIN 	E16	[get_ports {	QSPI2_D03	}]

set_property IOSTANDARD LVCMOS33 	[get_ports {	QSPI2_CLK	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	QSPI2_CS_B	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	QSPI2_D00	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	QSPI2_D01	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	QSPI2_D02	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	QSPI2_D03	}]







################################################################################
#	DDR4 Interface  (Bank 69,70,71 : 1.2V)
################################################################################

set_property PACKAGE_PIN 	AG39	[get_ports {	DDR4_0_ADR0		}]	
set_property PACKAGE_PIN 	AG40	[get_ports {	DDR4_0_ADR1		}]	
set_property PACKAGE_PIN 	AD39	[get_ports {	DDR4_0_ADR2		}]	
set_property PACKAGE_PIN 	AE39	[get_ports {	DDR4_0_ADR3		}]	
set_property PACKAGE_PIN 	AB39	[get_ports {	DDR4_0_ADR4		}]	
set_property PACKAGE_PIN 	AC39	[get_ports {	DDR4_0_ADR5		}]	
set_property PACKAGE_PIN 	AF37	[get_ports {	DDR4_0_ADR6		}]	
set_property PACKAGE_PIN 	AG37	[get_ports {	DDR4_0_ADR7		}]	
set_property PACKAGE_PIN 	AB38	[get_ports {	DDR4_0_ADR8		}]	
set_property PACKAGE_PIN 	AC37	[get_ports {	DDR4_0_ADR9		}]	
set_property PACKAGE_PIN 	AD37	[get_ports {	DDR4_0_ADR10		}]	
set_property PACKAGE_PIN 	AE36	[get_ports {	DDR4_0_ADR11		}]	
set_property PACKAGE_PIN 	AF36	[get_ports {	DDR4_0_ADR12		}]	
set_property PACKAGE_PIN 	AC36	[get_ports {	DDR4_0_ADR13		}]	
set_property PACKAGE_PIN 	AD36	[get_ports {	DDR4_0_ADR14_WE_N	}]	
set_property PACKAGE_PIN 	AF35	[get_ports {	DDR4_0_ADR15_CAS_N	}]	
set_property PACKAGE_PIN 	AG35	[get_ports {	DDR4_0_ADR16_RAS_N	}]	

set_property PACKAGE_PIN 	AG34	[get_ports {	DDR4_0_ACT_N		}]	
set_property PACKAGE_PIN 	AE34	[get_ports {	DDR4_0_BA0		}]	
set_property PACKAGE_PIN 	AE35	[get_ports {	DDR4_0_BA1		}]	
set_property PACKAGE_PIN 	AC34	[get_ports {	DDR4_0_BG0		}]	
set_property PACKAGE_PIN 	AC35	[get_ports {	DDR4_0_CKE		}]	
set_property PACKAGE_PIN 	AD34	[get_ports {	DDR4_0_CS_N		}]	
set_property PACKAGE_PIN 	AG42	[get_ports {	DDR4_0_ODT		}]	
set_property PACKAGE_PIN 	AF32	[get_ports {	DDR4_0_RESET_N		}]	
set_property PACKAGE_PIN 	AD42	[get_ports {	DDR4_0_VRP_69		}]	
set_property PACKAGE_PIN 	W42	[get_ports {	DDR4_0_VRP_70		}]	
set_property PACKAGE_PIN 	AG38	[get_ports {	DDR4_0_CK_C		}]	
set_property PACKAGE_PIN 	AF38	[get_ports {	DDR4_0_CK_T		}]	

set_property PACKAGE_PIN 	AF42	[get_ports {	DDR4_0_DM_DBI0_N		}]	
set_property PACKAGE_PIN 	AB42	[get_ports {	DDR4_0_DQ0		}]	
set_property PACKAGE_PIN 	AC42	[get_ports {	DDR4_0_DQ1		}]	
set_property PACKAGE_PIN 	AE41	[get_ports {	DDR4_0_DQ2		}]	
set_property PACKAGE_PIN 	AF41	[get_ports {	DDR4_0_DQ3		}]	
set_property PACKAGE_PIN 	AE40	[get_ports {	DDR4_0_DQ4		}]	
set_property PACKAGE_PIN 	AF40	[get_ports {	DDR4_0_DQ5		}]	
set_property PACKAGE_PIN 	AB40	[get_ports {	DDR4_0_DQ6		}]	
set_property PACKAGE_PIN 	AC40	[get_ports {	DDR4_0_DQ7		}]	
set_property PACKAGE_PIN 	AD41	[get_ports {	DDR4_0_DQS0_C		}]	
set_property PACKAGE_PIN 	AC41	[get_ports {	DDR4_0_DQS0_T		}]	

set_property PACKAGE_PIN 	AG33	[get_ports {	DDR4_0_DM_DBI1_N		}]	
set_property PACKAGE_PIN 	AE33	[get_ports {	DDR4_0_DQ8		}]	
set_property PACKAGE_PIN 	AF33	[get_ports {	DDR4_0_DQ9		}]	
set_property PACKAGE_PIN 	AD32	[get_ports {	DDR4_0_DQ10		}]	
set_property PACKAGE_PIN 	AD33	[get_ports {	DDR4_0_DQ11		}]	
set_property PACKAGE_PIN 	AE31	[get_ports {	DDR4_0_DQ12		}]	
set_property PACKAGE_PIN 	AF31	[get_ports {	DDR4_0_DQ13		}]	
set_property PACKAGE_PIN 	AC31	[get_ports {	DDR4_0_DQ14		}]	
set_property PACKAGE_PIN 	AD31	[get_ports {	DDR4_0_DQ15		}]	
set_property PACKAGE_PIN 	AC32	[get_ports {	DDR4_0_DQS1_C		}]	
set_property PACKAGE_PIN 	AB32	[get_ports {	DDR4_0_DQS1_T		}]	

set_property PACKAGE_PIN 	V42	[get_ports {	DDR4_0_DM_DBI2_N		}]	
set_property PACKAGE_PIN 	AA41	[get_ports {	DDR4_0_DQ16		}]	
set_property PACKAGE_PIN 	AA42	[get_ports {	DDR4_0_DQ17		}]	
set_property PACKAGE_PIN 	W41	[get_ports {	DDR4_0_DQ18		}]	
set_property PACKAGE_PIN 	V41	[get_ports {	DDR4_0_DQ19		}]	
set_property PACKAGE_PIN 	V40	[get_ports {	DDR4_0_DQ20		}]	
set_property PACKAGE_PIN 	U40	[get_ports {	DDR4_0_DQ21		}]	
set_property PACKAGE_PIN 	Y39	[get_ports {	DDR4_0_DQ22		}]	
set_property PACKAGE_PIN 	Y40	[get_ports {	DDR4_0_DQ23		}]	
set_property PACKAGE_PIN 	Y41	[get_ports {	DDR4_0_DQS2_C		}]	
set_property PACKAGE_PIN 	AA40	[get_ports {	DDR4_0_DQS2_T		}]	

set_property PACKAGE_PIN 	W39	[get_ports {	DDR4_0_DM_DBI3_N		}]	
set_property PACKAGE_PIN 	U38	[get_ports {	DDR4_0_DQ24		}]	
set_property PACKAGE_PIN 	U39	[get_ports {	DDR4_0_DQ25		}]	
set_property PACKAGE_PIN 	AB37	[get_ports {	DDR4_0_DQ26		}]	
set_property PACKAGE_PIN 	AA38	[get_ports {	DDR4_0_DQ27		}]	
set_property PACKAGE_PIN 	V37	[get_ports {	DDR4_0_DQ28		}]	
set_property PACKAGE_PIN 	U37	[get_ports {	DDR4_0_DQ29		}]	
set_property PACKAGE_PIN 	AA36	[get_ports {	DDR4_0_DQ30		}]	
set_property PACKAGE_PIN 	AA37	[get_ports {	DDR4_0_DQ31		}]	
set_property PACKAGE_PIN 	W38	[get_ports {	DDR4_0_DQS3_C		}]	
set_property PACKAGE_PIN 	W37	[get_ports {	DDR4_0_DQS3_T		}]



set_property PACKAGE_PIN 	T41	[get_ports {	DDR4_1_ADR0		}]	
set_property PACKAGE_PIN 	T42	[get_ports {	DDR4_1_ADR1		}]	
set_property PACKAGE_PIN 	R41	[get_ports {	DDR4_1_ADR2		}]	
set_property PACKAGE_PIN 	P41	[get_ports {	DDR4_1_ADR3		}]	
set_property PACKAGE_PIN 	P42	[get_ports {	DDR4_1_ADR4		}]	
set_property PACKAGE_PIN 	N42	[get_ports {	DDR4_1_ADR5		}]	
set_property PACKAGE_PIN 	T40	[get_ports {	DDR4_1_ADR6		}]	
set_property PACKAGE_PIN 	R40	[get_ports {	DDR4_1_ADR7		}]	
set_property PACKAGE_PIN 	N40	[get_ports {	DDR4_1_ADR8		}]	
set_property PACKAGE_PIN 	N41	[get_ports {	DDR4_1_ADR9		}]	
set_property PACKAGE_PIN 	M40	[get_ports {	DDR4_1_ADR10		}]	
set_property PACKAGE_PIN 	L40	[get_ports {	DDR4_1_ADR11		}]	
set_property PACKAGE_PIN 	R39	[get_ports {	DDR4_1_ADR12		}]	
set_property PACKAGE_PIN 	P39	[get_ports {	DDR4_1_ADR13		}]	
set_property PACKAGE_PIN 	T38	[get_ports {	DDR4_1_ADR14_WE_N	}]	
set_property PACKAGE_PIN 	R38	[get_ports {	DDR4_1_ADR15_CAS_N	}]	
set_property PACKAGE_PIN 	P38	[get_ports {	DDR4_1_ADR16_RAS_N	}]	

set_property PACKAGE_PIN 	N35	[get_ports {	DDR4_1_ACT_N		}]	
set_property PACKAGE_PIN 	N39	[get_ports {	DDR4_1_BA0		}]	
set_property PACKAGE_PIN 	N37	[get_ports {	DDR4_1_BA1		}]	
set_property PACKAGE_PIN 	M37	[get_ports {	DDR4_1_BG0		}]	
set_property PACKAGE_PIN 	L37	[get_ports {	DDR4_1_CKE		}]	
set_property PACKAGE_PIN 	P37	[get_ports {	DDR4_1_CS_N		}]	
set_property PACKAGE_PIN 	N36	[get_ports {	DDR4_1_ODT		}]	
set_property PACKAGE_PIN 	P32	[get_ports {	DDR4_1_RESET_N		}]	
set_property PACKAGE_PIN 	M42	[get_ports {	DDR4_1_VRP_71		}]	
set_property PACKAGE_PIN 	L42	[get_ports {	DDR4_1_CK_C		}]	
set_property PACKAGE_PIN 	L41	[get_ports {	DDR4_1_CK_T		}]	

set_property PACKAGE_PIN 	W36	[get_ports {	DDR4_1_DM_DBI0_N		}]	
set_property PACKAGE_PIN 	AA35	[get_ports {	DDR4_1_DQ0		}]	
set_property PACKAGE_PIN 	Y36	[get_ports {	DDR4_1_DQ1		}]	
set_property PACKAGE_PIN 	V35	[get_ports {	DDR4_1_DQ2		}]	
set_property PACKAGE_PIN 	U35	[get_ports {	DDR4_1_DQ3		}]	
set_property PACKAGE_PIN 	Y34	[get_ports {	DDR4_1_DQ4		}]	
set_property PACKAGE_PIN 	Y35	[get_ports {	DDR4_1_DQ5		}]	
set_property PACKAGE_PIN 	V34	[get_ports {	DDR4_1_DQ6		}]	
set_property PACKAGE_PIN 	U34	[get_ports {	DDR4_1_DQ7		}]	
set_property PACKAGE_PIN 	AB34	[get_ports {	DDR4_1_DQS0_C		}]	
set_property PACKAGE_PIN 	AB33	[get_ports {	DDR4_1_DQS0_T		}]	

set_property PACKAGE_PIN 	AA33	[get_ports {	DDR4_1_DM_DBI1_N		}]	
set_property PACKAGE_PIN 	W33	[get_ports {	DDR4_1_DQ8		}]	
set_property PACKAGE_PIN 	W34	[get_ports {	DDR4_1_DQ9		}]	
set_property PACKAGE_PIN 	W32	[get_ports {	DDR4_1_DQ10		}]	
set_property PACKAGE_PIN 	Y32	[get_ports {	DDR4_1_DQ11		}]	
set_property PACKAGE_PIN 	AA31	[get_ports {	DDR4_1_DQ12		}]	
set_property PACKAGE_PIN 	Y31	[get_ports {	DDR4_1_DQ13		}]	
set_property PACKAGE_PIN 	W31	[get_ports {	DDR4_1_DQ14		}]	
set_property PACKAGE_PIN 	V31	[get_ports {	DDR4_1_DQ15		}]	
set_property PACKAGE_PIN 	T33	[get_ports {	DDR4_1_DQS1_C		}]	
set_property PACKAGE_PIN 	U33 [get_ports {	DDR4_1_DQS1_T		}]	

set_property PACKAGE_PIN 	L36	[get_ports {	DDR4_1_DM_DBI2_N		}]	
set_property PACKAGE_PIN 	T36	[get_ports {	DDR4_1_DQ16		}]	
set_property PACKAGE_PIN 	T37	[get_ports {	DDR4_1_DQ17		}]	
set_property PACKAGE_PIN 	R36	[get_ports {	DDR4_1_DQ18		}]	
set_property PACKAGE_PIN 	P36	[get_ports {	DDR4_1_DQ19		}]	
set_property PACKAGE_PIN 	M35	[get_ports {	DDR4_1_DQ20		}]	
set_property PACKAGE_PIN 	L35	[get_ports {	DDR4_1_DQ21		}]	
set_property PACKAGE_PIN 	R34	[get_ports {	DDR4_1_DQ22		}]	
set_property PACKAGE_PIN 	P34	[get_ports {	DDR4_1_DQ23		}]	
set_property PACKAGE_PIN 	R35	[get_ports {	DDR4_1_DQS2_C		}]	
set_property PACKAGE_PIN 	T35	[get_ports {	DDR4_1_DQS2_T		}]	

set_property PACKAGE_PIN 	N34	[get_ports {	DDR4_1_DM_DBI3_N		}]	
set_property PACKAGE_PIN 	R33	[get_ports {	DDR4_1_DQ24		}]	
set_property PACKAGE_PIN 	P33	[get_ports {	DDR4_1_DQ25		}]	
set_property PACKAGE_PIN 	T31	[get_ports {	DDR4_1_DQ26		}]	
set_property PACKAGE_PIN 	T32	[get_ports {	DDR4_1_DQ27		}]	
set_property PACKAGE_PIN 	R31	[get_ports {	DDR4_1_DQ28		}]	
set_property PACKAGE_PIN 	P31	[get_ports {	DDR4_1_DQ29		}]	
set_property PACKAGE_PIN 	N31	[get_ports {	DDR4_1_DQ30		}]	
set_property PACKAGE_PIN 	N32	[get_ports {	DDR4_1_DQ31		}]	
set_property PACKAGE_PIN 	M34	[get_ports {	DDR4_1_DQS3_C		}]	
set_property PACKAGE_PIN 	M33	[get_ports {	DDR4_1_DQS3_T		}]



set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_0_ACT_N		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_0_ADR0		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_0_ADR1		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_0_ADR2		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_0_ADR3		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_0_ADR4		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_0_ADR5		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_0_ADR6		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_0_ADR7		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_0_ADR8		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_0_ADR9		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_0_ADR10		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_0_ADR11		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_0_ADR12		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_0_ADR13		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_0_ADR14_WE_N	}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_0_ADR15_CAS_N	}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_0_ADR16_RAS_N	}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_0_BA0		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_0_BA1		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_0_BG0		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_0_CKE		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_0_CS_N		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DM_DBI0_N		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DM_DBI1_N		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DM_DBI2_N		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DM_DBI3_N		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ0		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ1		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ2		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ3		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ4		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ5		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ6		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ7		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ8		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ9		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ10		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ11		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ12		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ13		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ14		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ15		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ16		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ17		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ18		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ19		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ20		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ21		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ22		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ23		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ24		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ25		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ26		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ27		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ28		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ29		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ30		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_DQ31		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_0_ODT		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_0_RESET_N		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_VRP_69		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_0_VRP_70		}]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports {	DDR4_0_CK_C		}]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports {	DDR4_0_CK_T		}]
set_property IOSTANDARD DIFF_POD12_DCI [get_ports {	DDR4_0_DQS0_C		}]
set_property IOSTANDARD DIFF_POD12_DCI [get_ports {	DDR4_0_DQS0_T		}]
set_property IOSTANDARD DIFF_POD12_DCI [get_ports {	DDR4_0_DQS1_C		}]
set_property IOSTANDARD DIFF_POD12_DCI [get_ports {	DDR4_0_DQS1_T		}]
set_property IOSTANDARD DIFF_POD12_DCI [get_ports {	DDR4_0_DQS2_C		}]
set_property IOSTANDARD DIFF_POD12_DCI [get_ports {	DDR4_0_DQS2_T		}]
set_property IOSTANDARD DIFF_POD12_DCI [get_ports {	DDR4_0_DQS3_C		}]
set_property IOSTANDARD DIFF_POD12_DCI [get_ports {	DDR4_0_DQS3_T		}]


set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_1_ACT_N		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_1_ADR0		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_1_ADR1		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_1_ADR2		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_1_ADR3		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_1_ADR4		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_1_ADR5		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_1_ADR6		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_1_ADR7		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_1_ADR8		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_1_ADR9		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_1_ADR10		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_1_ADR11		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_1_ADR12		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_1_ADR13		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_1_ADR14_WE_N	}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_1_ADR15_CAS_N	}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_1_ADR16_RAS_N	}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_1_BA0		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_1_BA1		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_1_BG0		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_1_CKE		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_1_CS_N		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DM_DBI0_N		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DM_DBI1_N		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DM_DBI2_N		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DM_DBI3_N		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ0		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ1		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ2		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ3		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ4		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ5		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ6		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ7		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ8		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ9		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ10		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ11		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ12		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ13		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ14		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ15		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ16		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ17		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ18		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ19		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ20		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ21		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ22		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ23		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ24		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ25		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ26		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ27		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ28		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ29		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ30		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_DQ31		}]
set_property IOSTANDARD SSTL12_DCI 	[get_ports {	DDR4_1_ODT		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_1_RESET_N		}]
set_property IOSTANDARD POD12_DCI 	[get_ports {	DDR4_1_VRP_71		}]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports {	DDR4_1_CK_C		}]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports {	DDR4_1_CK_T		}]
set_property IOSTANDARD DIFF_POD12_DCI [get_ports {	DDR4_1_DQS0_C		}]
set_property IOSTANDARD DIFF_POD12_DCI [get_ports {	DDR4_1_DQS0_T		}]
set_property IOSTANDARD DIFF_POD12_DCI [get_ports {	DDR4_1_DQS1_C		}]
set_property IOSTANDARD DIFF_POD12_DCI [get_ports {	DDR4_1_DQS1_T		}]
set_property IOSTANDARD DIFF_POD12_DCI [get_ports {	DDR4_1_DQS2_C		}]
set_property IOSTANDARD DIFF_POD12_DCI [get_ports {	DDR4_1_DQS2_T		}]
set_property IOSTANDARD DIFF_POD12_DCI [get_ports {	DDR4_1_DQS3_C		}]
set_property IOSTANDARD DIFF_POD12_DCI [get_ports {	DDR4_1_DQS3_T		}]





################################################################################
#	DDR3 Interface  (Bank 72,73 : 1.35V)
################################################################################

set_property PACKAGE_PIN 	F31	[get_ports {	DDR3_ADR0		}]	
set_property PACKAGE_PIN 	F32	[get_ports {	DDR3_ADR1		}]	
set_property PACKAGE_PIN 	L30	[get_ports {	DDR3_ADR2		}]	
set_property PACKAGE_PIN 	L31	[get_ports {	DDR3_ADR3		}]	
set_property PACKAGE_PIN 	H30	[get_ports {	DDR3_ADR4		}]	
set_property PACKAGE_PIN 	H31	[get_ports {	DDR3_ADR5		}]	
set_property PACKAGE_PIN 	G30	[get_ports {	DDR3_ADR6		}]	
set_property PACKAGE_PIN 	F30	[get_ports {	DDR3_ADR7		}]	
set_property PACKAGE_PIN 	K30	[get_ports {	DDR3_ADR8		}]	
set_property PACKAGE_PIN 	C34	[get_ports {	DDR3_ADR9		}]	
set_property PACKAGE_PIN 	C35	[get_ports {	DDR3_ADR10	}]	
set_property PACKAGE_PIN 	B34	[get_ports {	DDR3_ADR11	}]	
set_property PACKAGE_PIN 	B35	[get_ports {	DDR3_ADR12	}]	
set_property PACKAGE_PIN 	A35	[get_ports {	DDR3_ADR13	}]	
set_property PACKAGE_PIN 	A36	[get_ports {	DDR3_ADR14	}]	
set_property PACKAGE_PIN 	D32	[get_ports {	DDR3_CAS_N	}]	
set_property PACKAGE_PIN 	L33	[get_ports {	DDR3_RAS_N	}]	

set_property PACKAGE_PIN 	B33	[get_ports {	DDR3_BA0		}]	
set_property PACKAGE_PIN 	A33	[get_ports {	DDR3_BA1		}]	
set_property PACKAGE_PIN 	F33	[get_ports {	DDR3_BA2		}]	
set_property PACKAGE_PIN 	E33	[get_ports {	DDR3_CKE		}]	
set_property PACKAGE_PIN 	E34	[get_ports {	DDR3_CS_N		}]	
set_property PACKAGE_PIN 	D34	[get_ports {	DDR3_ODT		}]	
set_property PACKAGE_PIN 	E35	[get_ports {	DDR3_RESET_N		}]	
set_property PACKAGE_PIN 	K39	[get_ports {	DDR3_VRP_72		}]	
set_property PACKAGE_PIN 	J34	[get_ports {	DDR3_VRP_73		}]	
set_property PACKAGE_PIN 	J31	[get_ports {	DDR3_CK_N		}]	
set_property PACKAGE_PIN 	J32	[get_ports {	DDR3_CK_P		}]	

set_property PACKAGE_PIN 	D31	[get_ports {	DDR3_DM0		}]	
set_property PACKAGE_PIN 	E30	[get_ports {	DDR3_DQ0		}]	
set_property PACKAGE_PIN 	E31	[get_ports {	DDR3_DQ1		}]	
set_property PACKAGE_PIN 	C30	[get_ports {	DDR3_DQ2		}]	
set_property PACKAGE_PIN 	C31	[get_ports {	DDR3_DQ3		}]	
set_property PACKAGE_PIN 	A31	[get_ports {	DDR3_DQ4		}]	
set_property PACKAGE_PIN 	A32	[get_ports {	DDR3_DQ5		}]	
set_property PACKAGE_PIN 	B30	[get_ports {	DDR3_DQ6		}]	
set_property PACKAGE_PIN 	A30	[get_ports {	DDR3_DQ7		}]	
set_property PACKAGE_PIN 	B32	[get_ports {	DDR3_DQS0_N		}]	
set_property PACKAGE_PIN 	C32	[get_ports {	DDR3_DQS0_P		}]	

set_property PACKAGE_PIN 	L32	[get_ports {	DDR3_DM1		}]	
set_property PACKAGE_PIN 	K34	[get_ports {	DDR3_DQ8		}]	
set_property PACKAGE_PIN 	K35	[get_ports {	DDR3_DQ9		}]	
set_property PACKAGE_PIN 	K33	[get_ports {	DDR3_DQ10		}]	
set_property PACKAGE_PIN 	J33	[get_ports {	DDR3_DQ11		}]	
set_property PACKAGE_PIN 	G33	[get_ports {	DDR3_DQ12		}]	
set_property PACKAGE_PIN 	G34	[get_ports {	DDR3_DQ13		}]	
set_property PACKAGE_PIN 	G35	[get_ports {	DDR3_DQ14		}]	
set_property PACKAGE_PIN 	F35	[get_ports {	DDR3_DQ15		}]	
set_property PACKAGE_PIN 	H35	[get_ports {	DDR3_DQS1_N		}]	
set_property PACKAGE_PIN 	H34	[get_ports {	DDR3_DQS1_P		}]	

set_property PACKAGE_PIN 	E36	[get_ports {	DDR3_DM2		}]	
set_property PACKAGE_PIN 	D37	[get_ports {	DDR3_DQ16		}]	
set_property PACKAGE_PIN 	D38	[get_ports {	DDR3_DQ17		}]	
set_property PACKAGE_PIN 	E38	[get_ports {	DDR3_DQ18		}]	
set_property PACKAGE_PIN 	E37	[get_ports {	DDR3_DQ19		}]	
set_property PACKAGE_PIN 	B38	[get_ports {	DDR3_DQ20		}]	
set_property PACKAGE_PIN 	A38	[get_ports {	DDR3_DQ21		}]	
set_property PACKAGE_PIN 	B37	[get_ports {	DDR3_DQ22		}]	
set_property PACKAGE_PIN 	A37	[get_ports {	DDR3_DQ23		}]	
set_property PACKAGE_PIN 	C37	[get_ports {	DDR3_DQS2_N		}]	
set_property PACKAGE_PIN 	C36	[get_ports {	DDR3_DQS2_P		}]	

set_property PACKAGE_PIN 	J38	[get_ports {	DDR3_DM3		}]	
set_property PACKAGE_PIN 	G38	[get_ports {	DDR3_DQ24		}]	
set_property PACKAGE_PIN 	F38	[get_ports {	DDR3_DQ25		}]	
set_property PACKAGE_PIN 	L38	[get_ports {	DDR3_DQ26		}]	
set_property PACKAGE_PIN 	K38	[get_ports {	DDR3_DQ27		}]	
set_property PACKAGE_PIN 	H36	[get_ports {	DDR3_DQ28		}]	
set_property PACKAGE_PIN 	G37	[get_ports {	DDR3_DQ29		}]	
set_property PACKAGE_PIN 	F36	[get_ports {	DDR3_DQ30		}]	
set_property PACKAGE_PIN 	F37	[get_ports {	DDR3_DQ31		}]	
set_property PACKAGE_PIN 	J37	[get_ports {	DDR3_DQS3_N		}]	
set_property PACKAGE_PIN 	J36	[get_ports {	DDR3_DQS3_P		}]



set_property IOSTANDARD SSTL135_DCI 	[get_ports {	DDR3_ADR0		}]
set_property IOSTANDARD SSTL135_DCI 	[get_ports {	DDR3_ADR1		}]
set_property IOSTANDARD SSTL135_DCI 	[get_ports {	DDR3_ADR2		}]
set_property IOSTANDARD SSTL135_DCI 	[get_ports {	DDR3_ADR3		}]
set_property IOSTANDARD SSTL135_DCI 	[get_ports {	DDR3_ADR4		}]
set_property IOSTANDARD SSTL135_DCI 	[get_ports {	DDR3_ADR5		}]
set_property IOSTANDARD SSTL135_DCI 	[get_ports {	DDR3_ADR6		}]
set_property IOSTANDARD SSTL135_DCI 	[get_ports {	DDR3_ADR7		}]
set_property IOSTANDARD SSTL135_DCI 	[get_ports {	DDR3_ADR8		}]
set_property IOSTANDARD SSTL135_DCI 	[get_ports {	DDR3_ADR9		}]
set_property IOSTANDARD SSTL135_DCI 	[get_ports {	DDR3_ADR10	}]
set_property IOSTANDARD SSTL135_DCI 	[get_ports {	DDR3_ADR11	}]
set_property IOSTANDARD SSTL135_DCI 	[get_ports {	DDR3_ADR12	}]
set_property IOSTANDARD SSTL135_DCI 	[get_ports {	DDR3_ADR13	}]
set_property IOSTANDARD SSTL135_DCI 	[get_ports {	DDR3_ADR14	}]
set_property IOSTANDARD SSTL135_DCI 	[get_ports {	DDR3_CAS_N	}]
set_property IOSTANDARD SSTL135_DCI 	[get_ports {	DDR3_RAS_N	}]
set_property IOSTANDARD SSTL135_DCI 	[get_ports {	DDR3_BA0		}]
set_property IOSTANDARD SSTL135_DCI 	[get_ports {	DDR3_BA1		}]
set_property IOSTANDARD SSTL135_DCI 	[get_ports {	DDR3_BA2		}]
set_property IOSTANDARD SSTL135_DCI 	[get_ports {	DDR3_CKE		}]
set_property IOSTANDARD SSTL135_DCI 	[get_ports {	DDR3_CS_N		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DM0		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DM1		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DM2		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DM3		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ0		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ1		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ2		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ3		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ4		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ5		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ6		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ7		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ8		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ9		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ10		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ11		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ12		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ13		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ14		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ15		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ16		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ17		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ18		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ19		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ20		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ21		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ22		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ23		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ24		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ25		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ26		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ27		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ28		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ29		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ30		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_DQ31		}]
set_property IOSTANDARD SSTL135_DCI 	[get_ports {	DDR3_ODT		}]
set_property IOSTANDARD LVCMOS135 	[get_ports {	DDR3_RESET_N		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_VRP_72		}]
set_property IOSTANDARD POD135_DCI 	[get_ports {	DDR3_VRP_73		}]
set_property IOSTANDARD DIFF_SSTL135_DCI [get_ports {	DDR3_CK_N		}]
set_property IOSTANDARD DIFF_SSTL135_DCI [get_ports {	DDR3_CK_P		}]
set_property IOSTANDARD DIFF_POD135_DCI [get_ports {	DDR3_DQS0_N		}]
set_property IOSTANDARD DIFF_POD135_DCI [get_ports {	DDR3_DQS0_P		}]
set_property IOSTANDARD DIFF_POD135_DCI [get_ports {	DDR3_DQS1_N		}]
set_property IOSTANDARD DIFF_POD135_DCI [get_ports {	DDR3_DQS1_P		}]
set_property IOSTANDARD DIFF_POD135_DCI [get_ports {	DDR3_DQS2_N		}]
set_property IOSTANDARD DIFF_POD135_DCI [get_ports {	DDR3_DQS2_P		}]
set_property IOSTANDARD DIFF_POD135_DCI [get_ports {	DDR3_DQS3_N		}]
set_property IOSTANDARD DIFF_POD135_DCI [get_ports {	DDR3_DQS3_P		}]





################################################################################
#	LPSDRAM Interface  (Bank 65,66 :  1.8V)
################################################################################

set_property PACKAGE_PIN 	AT33	[get_ports {	LPSDR_A0	}]		
set_property PACKAGE_PIN 	AT35	[get_ports {	LPSDR_A1	}]		
set_property PACKAGE_PIN 	BB28	[get_ports {	LPSDR_A2	}]		
set_property PACKAGE_PIN 	AW32	[get_ports {	LPSDR_A3	}]		
set_property PACKAGE_PIN 	AV30	[get_ports {	LPSDR_A4	}]		
set_property PACKAGE_PIN 	AU33	[get_ports {	LPSDR_A5 	}]		
set_property PACKAGE_PIN 	AW29	[get_ports {	LPSDR_A6	}]		
set_property PACKAGE_PIN 	AV29	[get_ports {	LPSDR_A7	}]		
set_property PACKAGE_PIN 	AV31	[get_ports {	LPSDR_A8	}]		
set_property PACKAGE_PIN 	BB29	[get_ports {	LPSDR_A9	}]		
set_property PACKAGE_PIN 	AW31	[get_ports {	LPSDR_A10	}]		
set_property PACKAGE_PIN 	AY31	[get_ports {	LPSDR_A11	}]		
set_property PACKAGE_PIN 	AU34	[get_ports {	LPSDR_A12	}]		

set_property PACKAGE_PIN 	BA30	[get_ports {	LPSDR_BA0	}]		
set_property PACKAGE_PIN 	BB30	[get_ports {	LPSDR_BA1	}]	

set_property PACKAGE_PIN 	AV34	[get_ports {	LPSDR_DQ0	}]		
set_property PACKAGE_PIN 	AY33	[get_ports {	LPSDR_DQ1	}]		
set_property PACKAGE_PIN 	AP33	[get_ports {	LPSDR_DQ2	}]		
set_property PACKAGE_PIN 	AV32	[get_ports {	LPSDR_DQ3	}]		
set_property PACKAGE_PIN 	AR34	[get_ports {	LPSDR_DQ4	}]		
set_property PACKAGE_PIN 	BA33	[get_ports {	LPSDR_DQ5	}]		
set_property PACKAGE_PIN 	AU32	[get_ports {	LPSDR_DQ6	}]		
set_property PACKAGE_PIN 	BA32	[get_ports {	LPSDR_DQ7	}]		
set_property PACKAGE_PIN 	BB33	[get_ports {	LPSDR_DQ8	}]		
set_property PACKAGE_PIN 	AP32	[get_ports {	LPSDR_DQ9	}]		
set_property PACKAGE_PIN 	BB34	[get_ports {	LPSDR_DQ10	}]		
set_property PACKAGE_PIN 	AR33	[get_ports {	LPSDR_DQ11	}]		
set_property PACKAGE_PIN 	BB32	[get_ports {	LPSDR_DQ12	}]		
set_property PACKAGE_PIN 	AW33	[get_ports {	LPSDR_DQ13]	}]		
set_property PACKAGE_PIN 	AY34	[get_ports {	LPSDR_DQ14	}]		
set_property PACKAGE_PIN 	AW34	[get_ports {	LPSDR_DQ15	}]		
set_property PACKAGE_PIN 	BA28	[get_ports {	LPSDR_DQ16	}]		
set_property PACKAGE_PIN 	AP34	[get_ports {	LPSDR_DQ17	}]		
set_property PACKAGE_PIN 	AT27	[get_ports {	LPSDR_DQ18	}]		
set_property PACKAGE_PIN 	AY28	[get_ports {	LPSDR_DQ19	}]		
set_property PACKAGE_PIN 	AM23	[get_ports {	LPSDR_DQ20	}]		
set_property PACKAGE_PIN 	AR25	[get_ports {	LPSDR_DQ21	}]		
set_property PACKAGE_PIN 	AP24	[get_ports {	LPSDR_DQ22	}]		
set_property PACKAGE_PIN 	AW28	[get_ports {	LPSDR_DQ23	}]		
set_property PACKAGE_PIN 	AP23	[get_ports {	LPSDR_DQ24	}]		
set_property PACKAGE_PIN 	AP27	[get_ports {	LPSDR_DQ25	}]		
set_property PACKAGE_PIN 	AV27	[get_ports {	LPSDR_DQ26	}]		
set_property PACKAGE_PIN 	AU28	[get_ports {	LPSDR_DQ27	}]		
set_property PACKAGE_PIN 	AN26	[get_ports {	LPSDR_DQ28	}]		
set_property PACKAGE_PIN 	AT28	[get_ports {	LPSDR_DQ29	}]		
set_property PACKAGE_PIN 	AU27	[get_ports {	LPSDR_DQ30	}]		
set_property PACKAGE_PIN 	AV26	[get_ports {	LPSDR_DQ31	}]	

set_property PACKAGE_PIN 	AN34	[get_ports {	LPSDR_DQM0	}]		
set_property PACKAGE_PIN 	AV35	[get_ports {	LPSDR_DQM1	}]		
set_property PACKAGE_PIN 	AP26	[get_ports {	LPSDR_DQM2	}]		
set_property PACKAGE_PIN 	AR26	[get_ports {	LPSDR_DQM3	}]		

set_property PACKAGE_PIN 	BA31	[get_ports {	LPSDR_CKE0	}]	
set_property PACKAGE_PIN 	AU35	[get_ports {	LPSDR_CLK	}]	
set_property PACKAGE_PIN 	AT32	[get_ports {	LPSDR_CLK_FB	}]	
set_property PACKAGE_PIN 	AR35	[get_ports {	LPSDR_CS0_N	}]	
set_property PACKAGE_PIN 	AY29	[get_ports {	LPSDR_RAS_N	}]
set_property PACKAGE_PIN 	AY30	[get_ports {	LPSDR_CAS_N	}]	
set_property PACKAGE_PIN 	AM24	[get_ports {	LPSDR_WE_N	}]


set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_A0	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_A1	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_A2	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_A3	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_A4	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_A5	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_A6	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_A7	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_A8	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_A9	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_A10	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_A11	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_A12	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_BA0	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_BA1	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ0	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ1	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ2	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ3	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ4	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ5	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ6	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ7	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ8	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ9	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ10	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ11	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ12	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ13	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ14	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ15	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ16	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ17	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ18	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ19	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ20	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ21	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ22	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ23	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ24	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ25	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ26	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ27	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ28	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ29	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ30	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQ31	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQM0	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQM1	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQM2	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_DQM3	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_CAS_N	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_CKE0	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_CLK	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_CLK_FB	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_CS0_N	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_RAS_N	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_WE_N	}]





################################################################################
#	FT4232H Interface  (Bank 65 :  1.8V)
################################################################################

set_property PACKAGE_PIN 	AU25	[get_ports {	USB_JTAG_TCK	}]	
set_property PACKAGE_PIN 	AU23	[get_ports {	USB_JTAG_TDI	}]	
set_property PACKAGE_PIN 	AU24	[get_ports {	USB_JTAG_TDO	}]	
set_property PACKAGE_PIN 	AV24	[get_ports {	USB_JTAG_TMS	}]
	
# set_property PACKAGE_PIN 	xxxx	[get_ports {	USB_JTAG_TRST	}]
	
set_property PACKAGE_PIN 	BA23	[get_ports {	USB_UART_RX	}]	
set_property PACKAGE_PIN 	BA22	[get_ports {	USB_UART_TX	}]


set_property IOSTANDARD LVCMOS18 	[get_ports {	USB_JTAG_TCK	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	USB_JTAG_TDI	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	USB_JTAG_TDO	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	USB_JTAG_TMS	}]

# set_property IOSTANDARD LVCMOS18 	[get_ports {	USB_JTAG_TRST	}]

set_property IOSTANDARD LVCMOS18 	[get_ports {	USB_UART_RX	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	USB_UART_TX	}]






################################################################################
#	HDMI_RX Interface   (Bank 66,67 :  1.8V)
################################################################################

set_property PACKAGE_PIN 	AW41	[get_ports {	FPGA_HDMI_SCL		}]		
set_property PACKAGE_PIN 	AT41	[get_ports {	FPGA_HDMI_SDA		}]		
set_property PACKAGE_PIN 	AY36	[get_ports {	HDMI_RX_AP0		}]		
set_property PACKAGE_PIN 	AV37	[get_ports {	HDMI_RX_AP1		}]		
set_property PACKAGE_PIN 	AV36	[get_ports {	HDMI_RX_AP2		}]		
set_property PACKAGE_PIN 	AN37	[get_ports {	HDMI_RX_AP3		}]		
set_property PACKAGE_PIN 	AP37	[get_ports {	HDMI_RX_AP4		}]		
set_property PACKAGE_PIN 	AY35	[get_ports {	HDMI_RX_AP5		}]
set_property PACKAGE_PIN 	AP42	[get_ports {	HDMI_RX_DE		}]		
set_property PACKAGE_PIN 	AT42	[get_ports {	HDMI_RX_HS		}]		
set_property PACKAGE_PIN 	AV40	[get_ports {	HDMI_RX_VS		}]		
set_property PACKAGE_PIN 	AW38	[get_ports {	HDMI_RX_MCLK		}]		
set_property PACKAGE_PIN 	AW36	[get_ports {	HDMI_RX_SCLK		}]		
set_property PACKAGE_PIN 	AU39	[get_ports {	HDMI_RX_PCLK		}]		
set_property PACKAGE_PIN 	AV41	[get_ports {	HDMI_RX_INT		}]		
set_property PACKAGE_PIN 	AP41	[get_ports {	HDMI_RX_RST_N		}]

set_property PACKAGE_PIN		AY41	[get_ports {	HDMI_RX_PD0	}]
set_property PACKAGE_PIN		AU38	[get_ports {	HDMI_RX_PD1	}]
set_property PACKAGE_PIN		AU37	[get_ports {	HDMI_RX_PD2	}]
set_property PACKAGE_PIN		BB35	[get_ports {	HDMI_RX_PD3	}]
set_property PACKAGE_PIN		BA35	[get_ports {	HDMI_RX_PD4	}]
set_property PACKAGE_PIN		BB38	[get_ports {	HDMI_RX_PD5	}]
set_property PACKAGE_PIN		AW42	[get_ports {	HDMI_RX_PD6	}]
set_property PACKAGE_PIN		AP29	[get_ports {	HDMI_RX_PD7	}]
set_property PACKAGE_PIN		AR29	[get_ports {	HDMI_RX_PD8	}]
set_property PACKAGE_PIN		AR30	[get_ports {	HDMI_RX_PD9	}]

set_property PACKAGE_PIN		AT30	[get_ports {	HDMI_RX_PD10	}]
set_property PACKAGE_PIN		AP31	[get_ports {	HDMI_RX_PD11	}]
set_property PACKAGE_PIN		AU30	[get_ports {	HDMI_RX_PD12	}]
set_property PACKAGE_PIN		AR31	[get_ports {	HDMI_RX_PD13	}]
set_property PACKAGE_PIN		AU29	[get_ports {	HDMI_RX_PD14	}]
set_property PACKAGE_PIN		AT40	[get_ports {	HDMI_RX_PD15	}]
set_property PACKAGE_PIN		BA37	[get_ports {	HDMI_RX_PD16	}]
set_property PACKAGE_PIN		AR41	[get_ports {	HDMI_RX_PD17	}]
set_property PACKAGE_PIN		BB40	[get_ports {	HDMI_RX_PD18	}]
set_property PACKAGE_PIN		AY39	[get_ports {	HDMI_RX_PD19	}]

set_property PACKAGE_PIN		AY40	[get_ports {	HDMI_RX_PD20	}]
set_property PACKAGE_PIN		AV39	[get_ports {	HDMI_RX_PD21	}]
set_property PACKAGE_PIN		AW39	[get_ports {	HDMI_RX_PD22	}]
set_property PACKAGE_PIN		BB39	[get_ports {	HDMI_RX_PD23	}]
set_property PACKAGE_PIN		BA41	[get_ports {	HDMI_RX_PD24	}]
set_property PACKAGE_PIN		AP39	[get_ports {	HDMI_RX_PD25	}]
set_property PACKAGE_PIN		AU42	[get_ports {	HDMI_RX_PD26	}]
set_property PACKAGE_PIN		AV42	[get_ports {	HDMI_RX_PD27	}]
set_property PACKAGE_PIN		AR40	[get_ports {	HDMI_RX_PD28	}]
set_property PACKAGE_PIN		AR39	[get_ports {	HDMI_RX_PD29	}]

set_property PACKAGE_PIN		AN29	[get_ports {	HDMI_RX_PD30	}]
set_property PACKAGE_PIN		AT31	[get_ports {	HDMI_RX_PD31	}]
set_property PACKAGE_PIN		AN31	[get_ports {	HDMI_RX_PD32	}]
set_property PACKAGE_PIN		AN30	[get_ports {	HDMI_RX_PD33	}]
set_property PACKAGE_PIN		BA38	[get_ports {	HDMI_RX_PD34	}]
set_property PACKAGE_PIN		BB37	[get_ports {	HDMI_RX_PD35	}]
set_property PACKAGE_PIN		BA36	[get_ports {	HDMI_RX_PD36	}]
set_property PACKAGE_PIN		AP38	[get_ports {	HDMI_RX_PD37	}]
set_property PACKAGE_PIN		AT36	[get_ports {	HDMI_RX_PD38	}]
set_property PACKAGE_PIN		AT37	[get_ports {	HDMI_RX_PD39	}]

set_property PACKAGE_PIN		AT38	[get_ports {	HDMI_RX_PD40	}]
set_property PACKAGE_PIN		AR38	[get_ports {	HDMI_RX_PD41	}]
set_property PACKAGE_PIN		AR36	[get_ports {	HDMI_RX_PD42	}]
set_property PACKAGE_PIN		AW37	[get_ports {	HDMI_RX_PD43	}]
set_property PACKAGE_PIN		AN36	[get_ports {	HDMI_RX_PD44	}]
set_property PACKAGE_PIN		AY38	[get_ports {	HDMI_RX_PD45	}]
set_property PACKAGE_PIN		AU40	[get_ports {	HDMI_RX_PD46	}]
set_property PACKAGE_PIN		BA40	[get_ports {	HDMI_RX_PD47	}]


set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_HDMI_SCL		}]		
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_HDMI_SDA		}]		
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_AP0		}]		
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_AP1		}]		
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_AP2		}]		
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_AP3		}]		
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_AP4		}]		
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_AP5		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_DE		}]		
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_HS		}]		
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_VS		}]		
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_MCLK		}]		
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_SCLK		}]		
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PCLK		}]		
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_INT		}]		
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_RST_N		}]

set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD0	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD1	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD2	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD3	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD4	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD5	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD6	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD7	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD8	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD9	}]

set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD10	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD11	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD12	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD13	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD14	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD15	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD16	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD17	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD18	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD19	}]

set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD20	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD21	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD22	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD23	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD24	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD25	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD26	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD27	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD28	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD29	}]

set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD30	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD31	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD32	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD33	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD34	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD35	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD36	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD37	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD38	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD39	}]

set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD40	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD41	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD42	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD43	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD44	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD45	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD46	}]
set_property IOSTANDARD LVCMOS18	[get_ports {	HDMI_RX_PD47	}]





################################################################################
#	HDMI_TX Interface  (Bank 68 :  1.8V)
################################################################################

set_property PACKAGE_PIN 	AK31	[get_ports {	HDMI_TX_SCK	}]
set_property PACKAGE_PIN 	AM32	[get_ports {	HDMI_TX_SD0	}]
set_property PACKAGE_PIN 	AL32	[get_ports {	HDMI_TX_SD1	}]
set_property PACKAGE_PIN 	AJ38	[get_ports {	HDMI_TX_SD2	}]
set_property PACKAGE_PIN 	AL40	[get_ports {	HDMI_TX_SD3	}]
set_property PACKAGE_PIN 	AM39	[get_ports {	HDMI_TX_SPDIF	}]
set_property PACKAGE_PIN 	AL31	[get_ports {	HDMI_TX_WS	}]
set_property PACKAGE_PIN 	AN40	[get_ports {	HDMI_TX_IDCK	}]
set_property PACKAGE_PIN 	AH32	[get_ports {	HDMI_TX_MCLK	}]
set_property PACKAGE_PIN 	AJ42	[get_ports {	HDMI_TX_DE	}]
set_property PACKAGE_PIN 	AM40	[get_ports {	HDMI_TX_HS	}]
set_property PACKAGE_PIN 	AH37	[get_ports {	HDMI_TX_VS	}]
set_property PACKAGE_PIN 	AJ31	[get_ports {	HDMI_TX_INT	}]
set_property PACKAGE_PIN 	AH31	[get_ports {	HDMI_TX_RST_N	}]

#set_property PACKAGE_PIN 	XXX	[get_ports {	HDMI_TX_IDCK_FB		}]

	
set_property PACKAGE_PIN 	AL42	[get_ports {	HDMI_TX_BD0	}]
set_property PACKAGE_PIN 	AN41	[get_ports {	HDMI_TX_BD1	}]
set_property PACKAGE_PIN 	AJ41	[get_ports {	HDMI_TX_BD2	}]
set_property PACKAGE_PIN 	AN39	[get_ports {	HDMI_TX_BD3	}]
set_property PACKAGE_PIN 	AH41	[get_ports {	HDMI_TX_BD4	}]
set_property PACKAGE_PIN 	AH39	[get_ports {	HDMI_TX_BD5	}]
set_property PACKAGE_PIN 	AK40	[get_ports {	HDMI_TX_BD6	}]
set_property PACKAGE_PIN 	AJ39	[get_ports {	HDMI_TX_BD7	}]
set_property PACKAGE_PIN 	AL38	[get_ports {	HDMI_TX_BD8	}]
set_property PACKAGE_PIN 	AM38	[get_ports {	HDMI_TX_BD9	}]
set_property PACKAGE_PIN 	AH40	[get_ports {	HDMI_TX_BD10	}]
set_property PACKAGE_PIN 	AK38	[get_ports {	HDMI_TX_BD11	}]
		
set_property PACKAGE_PIN 	AJ36	[get_ports {	HDMI_TX_GD0	}]
set_property PACKAGE_PIN 	AM35	[get_ports {	HDMI_TX_GD1	}]
set_property PACKAGE_PIN 	AH35	[get_ports {	HDMI_TX_GD2	}]
set_property PACKAGE_PIN 	AH36	[get_ports {	HDMI_TX_GD3	}]
set_property PACKAGE_PIN 	AM34	[get_ports {	HDMI_TX_GD4	}]
set_property PACKAGE_PIN 	AN35	[get_ports {	HDMI_TX_GD5	}]
set_property PACKAGE_PIN 	AK34	[get_ports {	HDMI_TX_GD6	}]
set_property PACKAGE_PIN 	AK35	[get_ports {	HDMI_TX_GD7	}]
set_property PACKAGE_PIN 	AL35	[get_ports {	HDMI_TX_GD8	}]
set_property PACKAGE_PIN 	AM33	[get_ports {	HDMI_TX_GD9	}]
set_property PACKAGE_PIN 	AH34	[get_ports {	HDMI_TX_GD10	}]
set_property PACKAGE_PIN 	AJ34	[get_ports {	HDMI_TX_GD11	}]

set_property PACKAGE_PIN 	AM42	[get_ports {	HDMI_TX_RD0	}]
set_property PACKAGE_PIN 	AN42	[get_ports {	HDMI_TX_RD1	}]
set_property PACKAGE_PIN 	AH42	[get_ports {	HDMI_TX_RD2	}]
set_property PACKAGE_PIN 	AK33	[get_ports {	HDMI_TX_RD3	}]
set_property PACKAGE_PIN 	AK41	[get_ports {	HDMI_TX_RD4	}]
set_property PACKAGE_PIN 	AL41	[get_ports {	HDMI_TX_RD5	}]
set_property PACKAGE_PIN 	AJ32	[get_ports {	HDMI_TX_RD6	}]
set_property PACKAGE_PIN 	AL33	[get_ports {	HDMI_TX_RD7	}]
set_property PACKAGE_PIN 	AM37	[get_ports {	HDMI_TX_RD8	}]
set_property PACKAGE_PIN 	AJ37	[get_ports {	HDMI_TX_RD9	}]
set_property PACKAGE_PIN 	AK39	[get_ports {	HDMI_TX_RD10	}]
set_property PACKAGE_PIN 	AL37	[get_ports {	HDMI_TX_RD11	}]


set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_SCK	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_SD0	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_SD1	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_SD2	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_SD3	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_SPDIF	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_WS	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_IDCK	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_MCLK	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_DE	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_HS	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_VS	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_INT	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_RST_N	}]

#set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_IDCK_FB		}]
	
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_BD0	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_BD1	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_BD2	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_BD3	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_BD4	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_BD5	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_BD6	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_BD7	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_BD8	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_BD9	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_BD10	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_BD11	}]
		
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_GD0	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_GD1	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_GD2	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_GD3	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_GD4	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_GD5	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_GD6	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_GD7	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_GD8	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_GD9	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_GD10	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_GD11	}]

set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_RD0	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_RD1	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_RD2	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_RD3	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_RD4	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_RD5	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_RD6	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_RD7	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_RD8	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_RD9	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_RD10	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	HDMI_TX_RD11	}]






################################################################################
#	user LED Interface   (Bank 88 :  3.3V)
################################################################################

set_property PACKAGE_PIN 	H20	[get_ports {	FPGA_SLED1	}]
set_property PACKAGE_PIN 	H21	[get_ports {	FPGA_SLED2	}]
set_property PACKAGE_PIN 	G22	[get_ports {	FPGA_SLED3	}]
set_property PACKAGE_PIN 	G23	[get_ports {	FPGA_SLED4	}]


set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_SLED1	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_SLED2	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_SLED3	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_SLED4	}]





################################################################################
#	user Switch Interface   (Bank 88 :  3.3V)
################################################################################

set_property PACKAGE_PIN 	D22	[get_ports {	FPGA_SW_PS1	}]
set_property PACKAGE_PIN 	C22	[get_ports {	FPGA_SW_PS2	}]
set_property PACKAGE_PIN 	B23	[get_ports {	FPGA_SW_PS3	}]
set_property PACKAGE_PIN 	A23	[get_ports {	FPGA_SW_PS4	}]

set_property PACKAGE_PIN 	E23	[get_ports {	FPGA_SW_SL1	}]
set_property PACKAGE_PIN 	F23	[get_ports {	FPGA_SW_SL2	}]
set_property PACKAGE_PIN 	D23	[get_ports {	FPGA_SW_SL3	}]
set_property PACKAGE_PIN 	E21	[get_ports {	FPGA_SW_SL4	}]


set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_SW_PS1	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_SW_PS2	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_SW_PS3	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_SW_PS4	}]

set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_SW_SL1	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_SW_SL2	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_SW_SL3	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_SW_SL4	}]






################################################################################
#	PMOD1 Interface (Bank 92 :  3.3V)
################################################################################

set_property PACKAGE_PIN 	A18	[get_ports {	FPGA_PMOD_11	}]
set_property PACKAGE_PIN 	A17	[get_ports {	FPGA_PMOD_12	}]
set_property PACKAGE_PIN 	A15	[get_ports {	FPGA_PMOD_13	}]
set_property PACKAGE_PIN 	A16	[get_ports {	FPGA_PMOD_14	}]
set_property PACKAGE_PIN 	B13	[get_ports {	FPGA_PMOD_15	}]
set_property PACKAGE_PIN 	B15	[get_ports {	FPGA_PMOD_16	}]
set_property PACKAGE_PIN 	B14	[get_ports {	FPGA_PMOD_17	}]
set_property PACKAGE_PIN 	A13	[get_ports {	FPGA_PMOD_18	}]


set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_11	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_12	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_13	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_14	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_15	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_16	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_17	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_18	}]




################################################################################
#	PMOD2,3,4 Interface (Bank 90 :  3.3V)
################################################################################

set_property PACKAGE_PIN 	K18	[get_ports {	FPGA_PMOD_21	}]
set_property PACKAGE_PIN 	K20	[get_ports {	FPGA_PMOD_22	}]
set_property PACKAGE_PIN 	L18	[get_ports {	FPGA_PMOD_23	}]
set_property PACKAGE_PIN 	L20	[get_ports {	FPGA_PMOD_24	}]
set_property PACKAGE_PIN 	H19	[get_ports {	FPGA_PMOD_25	}]
set_property PACKAGE_PIN 	J19	[get_ports {	FPGA_PMOD_26	}]
set_property PACKAGE_PIN 	J18	[get_ports {	FPGA_PMOD_27	}]
set_property PACKAGE_PIN 	K19	[get_ports {	FPGA_PMOD_28	}]

set_property PACKAGE_PIN 	F20	[get_ports {	FPGA_PMOD_31	}]
set_property PACKAGE_PIN 	E19	[get_ports {	FPGA_PMOD_32	}]
set_property PACKAGE_PIN 	F21	[get_ports {	FPGA_PMOD_33	}]
set_property PACKAGE_PIN 	E20	[get_ports {	FPGA_PMOD_34	}]
set_property PACKAGE_PIN 	G17	[get_ports {	FPGA_PMOD_35	}]
set_property PACKAGE_PIN 	G18	[get_ports {	FPGA_PMOD_36	}]
set_property PACKAGE_PIN 	G20	[get_ports {	FPGA_PMOD_37	}]
set_property PACKAGE_PIN 	G19	[get_ports {	FPGA_PMOD_38	}]

set_property PACKAGE_PIN 	C21	[get_ports {	FPGA_PMOD_41	}]
set_property PACKAGE_PIN 	C20	[get_ports {	FPGA_PMOD_42	}]
set_property PACKAGE_PIN 	D19	[get_ports {	FPGA_PMOD_43	}]
set_property PACKAGE_PIN 	C19	[get_ports {	FPGA_PMOD_44	}]
set_property PACKAGE_PIN 	B20	[get_ports {	FPGA_PMOD_45	}]
set_property PACKAGE_PIN 	B19	[get_ports {	FPGA_PMOD_46	}]
set_property PACKAGE_PIN 	A21	[get_ports {	FPGA_PMOD_47	}]
set_property PACKAGE_PIN 	A20	[get_ports {	FPGA_PMOD_48	}]


set_property IOSTANDARD LVCMOS33	[get_ports {	FPGA_PMOD_21	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_22	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_23	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_24	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_25	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_26	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_27	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_28	}]

set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_31	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_32	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_33	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_34	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_35	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_36	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_37	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_38	}]

set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_41	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_42	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_43	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_44	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_45	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_46	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_47	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_PMOD_48	}]





################################################################################
#	SD card Interface   (Bank 88 :  3.3V)
################################################################################

set_property PACKAGE_PIN 	J23	[get_ports {	FPGA_SD_CLK	}]
set_property PACKAGE_PIN 	J22	[get_ports {	FPGA_SD_CMD	}]
set_property PACKAGE_PIN 	L22	[get_ports {	FPGA_SD_DATA0	}]
set_property PACKAGE_PIN 	K23	[get_ports {	FPGA_SD_DATA1	}]
set_property PACKAGE_PIN 	L21	[get_ports {	FPGA_SD_DATA2	}]
set_property PACKAGE_PIN 	K21	[get_ports {	FPGA_SD_DATA3	}]
set_property PACKAGE_PIN 	J21	[get_ports {	FPGA_SD_DET	}]

set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_SD_CLK	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_SD_CMD	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_SD_DATA0	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_SD_DATA1	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_SD_DATA2	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_SD_DATA3	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_SD_DET	}]





################################################################################
#	old CIS CAM Interface 1  (Bank 65 :  1.8V)
################################################################################

set_property PACKAGE_PIN 	BB22	[get_ports {	FPGA_CAM_SCL	}]
set_property PACKAGE_PIN 	BB23	[get_ports {	FPGA_CAM_SDA	}]

set_property PACKAGE_PIN 	BA26	[get_ports {	FPGA_CIS_XCLK	}]
set_property PACKAGE_PIN 	AW27	[get_ports {	FPGA_CIS_RST_N	}]
set_property PACKAGE_PIN 	AR24	[get_ports {	FPGA_CIS_PWDN	}]
set_property PACKAGE_PIN 	AW26	[get_ports {	FPGA_CIS_PCLK	}]
set_property PACKAGE_PIN 	BB27	[get_ports {	FPGA_CIS_HREF	}]
set_property PACKAGE_PIN 	BA25	[get_ports {	FPGA_CIS_VSYNC	}]

set_property PACKAGE_PIN 	AY24	[get_ports {	FPGA_CIS_D0	}]
set_property PACKAGE_PIN 	AY25	[get_ports {	FPGA_CIS_D1	}]
set_property PACKAGE_PIN 	AY26	[get_ports {	FPGA_CIS_D2	}]
set_property PACKAGE_PIN 	AW24	[get_ports {	FPGA_CIS_D3	}]
set_property PACKAGE_PIN 	AW23	[get_ports {	FPGA_CIS_D4	}]
set_property PACKAGE_PIN 	AY23	[get_ports {	FPGA_CIS_D5	}]
set_property PACKAGE_PIN 	AV22	[get_ports {	FPGA_CIS_D6	}]
set_property PACKAGE_PIN 	AW22	[get_ports {	FPGA_CIS_D7	}]
set_property PACKAGE_PIN 	AT23	[get_ports {	FPGA_CIS_D8	}]
set_property PACKAGE_PIN 	AV25	[get_ports {	FPGA_CIS_D9	}]



set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_CAM_SCL	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_CAM_SDA	}]

set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_CIS_XCLK	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_CIS_RST_N	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_CIS_PWDN	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_CIS_PCLK	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_CIS_HREF	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_CIS_VSYNC	}]

set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_CIS_D0	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_CIS_D1	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_CIS_D2	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_CIS_D3	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_CIS_D4	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_CIS_D5	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_CIS_D6	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_CIS_D7	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_CIS_D8	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_CIS_D9	}]









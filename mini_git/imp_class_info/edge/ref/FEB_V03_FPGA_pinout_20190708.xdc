#########################################################
#	Board  : 		FEB V03				#
#	FPGA   :		XCKU15P-2FFVA1156E		#
#	Author :		Hoon Baek			#
#	Date    :		2019.07.08			#
#########################################################



################################################################################
#	CLOCK :  32.768KHz, 50MHz, User, 100MHz, 200MHz  (bank 65 :  1.8V)
################################################################################

set_property PACKAGE_PIN 	P24	[get_ports {	CLK_32K768		}]		
set_property PACKAGE_PIN 	P26	[get_ports {	CLK_50M			}]	
set_property PACKAGE_PIN 	N26	[get_ports {	CLK_USER			}]	
set_property PACKAGE_PIN 	M25	[get_ports {	CLK_REF2_100M		}]
set_property PACKAGE_PIN 	M24	[get_ports {	CLK_REF1_200M_N		}]	
set_property PACKAGE_PIN 	N24	[get_ports {	CLK_REF1_200M_P		}]	

set_property IOSTANDARD LVCMOS18 	[get_ports {	CLK_32K768		}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	CLK_50M			}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	CLK_USER			}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	CLK_REF2_100M		}]
set_property IOSTANDARD DIFF_SSTL15 	[get_ports {	CLK_REF1_200M_N		}]
set_property IOSTANDARD DIFF_SSTL15 	[get_ports {	CLK_REF1_200M_P		}]



################################################################################
#	CLOCK : DDR4 300MHz   (bank 70 :  1.2V)
################################################################################

set_property PACKAGE_PIN 	AB32	[get_ports {	CLK_REF0_300M_N		}]	
set_property PACKAGE_PIN 	AA32	[get_ports {	CLK_REF0_300M_P		}]	

set_property IOSTANDARD DIFF_SSTL12 	[get_ports {	CLK_REF0_300M_N		}]
set_property IOSTANDARD DIFF_SSTL12 	[get_ports {	CLK_REF0_300M_P		}]



################################################################################
#	CLOCK : HDMI 156.25MHz  (bank 71 :  1.8V)
################################################################################

set_property PACKAGE_PIN 	E23	[get_ports {	CLK_REF3_156M25_N	}]	
set_property PACKAGE_PIN 	E22	[get_ports {	CLK_REF3_156M25_P		}]	

set_property IOSTANDARD DIFF_SSTL18_II 	[get_ports {	CLK_REF3_156M25_N	}]
set_property IOSTANDARD DIFF_SSTL18_II 	[get_ports {	CLK_REF3_156M25_P 	}]





################################################################################
#	RESET   (Bank 65 :  1.8V)
################################################################################

set_property PACKAGE_PIN 	M21	[get_ports {	FPGA_POR_RESET_N	}]
set_property PACKAGE_PIN 	K20	[get_ports {	FPGA_SW_RESET_N	}]

set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_POR_RESET_N	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SW_RESET_N	}]





################################################################################
#	QSPI ROM Interface  (Bank 65 :  1.8V)
################################################################################

set_property PACKAGE_PIN 	P25	[get_ports {	QSPI1_CLK	}]
set_property PACKAGE_PIN 	G26	[get_ports {	QSPI1_CS_B	}]
set_property PACKAGE_PIN 	M20	[get_ports {	QSPI1_D00	}]
set_property PACKAGE_PIN 	L20	[get_ports {	QSPI1_D01	}]
set_property PACKAGE_PIN 	R21	[get_ports {	QSPI1_D02	}]
set_property PACKAGE_PIN 	R22	[get_ports {	QSPI1_D03	}]

set_property IOSTANDARD LVCMOS18 	[get_ports {	QSPI1_CLK	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	QSPI1_CS_B	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	QSPI1_D00	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	QSPI1_D01	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	QSPI1_D02	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	QSPI1_D03	}]





################################################################################
#	DDR4 Interface  (Bank 69,70 : 1.2V)
################################################################################

set_property PACKAGE_PIN 	V32	[get_ports {	DDR4_ADR0		}]	
set_property PACKAGE_PIN 	W31	[get_ports {	DDR4_ADR1		}]	
set_property PACKAGE_PIN 	V31	[get_ports {	DDR4_ADR2		}]	
set_property PACKAGE_PIN 	V34	[get_ports {	DDR4_ADR3		}]	
set_property PACKAGE_PIN 	U34	[get_ports {	DDR4_ADR4		}]	
set_property PACKAGE_PIN 	Y32	[get_ports {	DDR4_ADR5		}]	
set_property PACKAGE_PIN 	Y31	[get_ports {	DDR4_ADR6		}]	
set_property PACKAGE_PIN 	W34	[get_ports {	DDR4_ADR7		}]	
set_property PACKAGE_PIN 	V33	[get_ports {	DDR4_ADR8		}]	
set_property PACKAGE_PIN 	Y30	[get_ports {	DDR4_ADR9		}]	
set_property PACKAGE_PIN 	W30	[get_ports {	DDR4_ADR10		}]	
set_property PACKAGE_PIN 	Y33	[get_ports {	DDR4_ADR11		}]	
set_property PACKAGE_PIN 	W33	[get_ports {	DDR4_ADR12		}]	
set_property PACKAGE_PIN 	AA33	[get_ports {	DDR4_ADR13		}]	
set_property PACKAGE_PIN 	AD33	[get_ports {	DDR4_ADR14_WE_N	}]	
set_property PACKAGE_PIN 	AC33	[get_ports {	DDR4_ADR15_CAS_N	}]	
set_property PACKAGE_PIN 	AB34	[get_ports {	DDR4_ADR16_RAS_N	}]	

set_property PACKAGE_PIN 	AA34	[get_ports {	DDR4_ACT_N		}]	
set_property PACKAGE_PIN 	U21	[get_ports {	DDR4_ALERT_N		}]	
set_property PACKAGE_PIN 	AD34	[get_ports {	DDR4_BA0		}]	
set_property PACKAGE_PIN 	AC34	[get_ports {	DDR4_BA1		}]	
set_property PACKAGE_PIN 	AB31	[get_ports {	DDR4_BG0		}]	
set_property PACKAGE_PIN 	AF27	[get_ports {	DDR4_CKE		}]	
set_property PACKAGE_PIN 	AE31	[get_ports {	DDR4_CS_N		}]	
set_property PACKAGE_PIN 	AG32	[get_ports {	DDR4_ODT		}]	
set_property PACKAGE_PIN 	AB30	[get_ports {	DDR4_PAR		}]	
set_property PACKAGE_PIN 	Y22	[get_ports {	DDR4_RESET_N		}]	
set_property PACKAGE_PIN 	U22	[get_ports {	DDR4_TEN		}]	
set_property PACKAGE_PIN 	V24	[get_ports {	DDR4_VRP_69		}]	
set_property PACKAGE_PIN 	AA30	[get_ports {	DDR4_VRP_70		}]	
set_property PACKAGE_PIN 	AB29	[get_ports {	DDR4_CK_C		}]	
set_property PACKAGE_PIN 	AA29	[get_ports {	DDR4_CK_T		}]	

set_property PACKAGE_PIN 	AE27	[get_ports {	DDR4_DM_DBI0_N		}]	
set_property PACKAGE_PIN 	AE28	[get_ports {	DDR4_DQ0		}]	
set_property PACKAGE_PIN 	AF28	[get_ports {	DDR4_DQ1		}]	
set_property PACKAGE_PIN 	AC28	[get_ports {	DDR4_DQ2		}]	
set_property PACKAGE_PIN 	AD28	[get_ports {	DDR4_DQ3		}]	
set_property PACKAGE_PIN 	AD29	[get_ports {	DDR4_DQ4		}]	
set_property PACKAGE_PIN 	AE30	[get_ports {	DDR4_DQ5		}]	
set_property PACKAGE_PIN 	AF30	[get_ports {	DDR4_DQ6		}]	
set_property PACKAGE_PIN 	AG30	[get_ports {	DDR4_DQ7		}]	
set_property PACKAGE_PIN 	AG29	[get_ports {	DDR4_DQS0_C		}]	
set_property PACKAGE_PIN 	AF29	[get_ports {	DDR4_DQS0_T		}]	

set_property PACKAGE_PIN 	AG31	[get_ports {	DDR4_DM_DBI1_N		}]	
set_property PACKAGE_PIN 	AF33	[get_ports {	DDR4_DQ8		}]	
set_property PACKAGE_PIN 	AG34	[get_ports {	DDR4_DQ9		}]	
set_property PACKAGE_PIN 	AE32	[get_ports {	DDR4_DQ10		}]	
set_property PACKAGE_PIN 	AF32	[get_ports {	DDR4_DQ11		}]	
set_property PACKAGE_PIN 	AD30	[get_ports {	DDR4_DQ12		}]	
set_property PACKAGE_PIN 	AD31	[get_ports {	DDR4_DQ13		}]	
set_property PACKAGE_PIN 	AC31	[get_ports {	DDR4_DQ14		}]	
set_property PACKAGE_PIN 	AC32	[get_ports {	DDR4_DQ15		}]	
set_property PACKAGE_PIN 	AF34	[get_ports {	DDR4_DQS1_C		}]	
set_property PACKAGE_PIN 	AE33	[get_ports {	DDR4_DQS1_T		}]	

set_property PACKAGE_PIN 	Y26	[get_ports {	DDR4_DM_DBI2_N		}]	
set_property PACKAGE_PIN 	AD25	[get_ports {	DDR4_DQ16		}]	
set_property PACKAGE_PIN 	AD26	[get_ports {	DDR4_DQ17		}]	
set_property PACKAGE_PIN 	AB24	[get_ports {	DDR4_DQ18		}]	
set_property PACKAGE_PIN 	AC24	[get_ports {	DDR4_DQ19		}]	
set_property PACKAGE_PIN 	AA27	[get_ports {	DDR4_DQ20		}]	
set_property PACKAGE_PIN 	AB27	[get_ports {	DDR4_DQ21		}]	
set_property PACKAGE_PIN 	AB25	[get_ports {	DDR4_DQ22		}]	
set_property PACKAGE_PIN 	AB26	[get_ports {	DDR4_DQ23		}]	
set_property PACKAGE_PIN 	AC27	[get_ports {	DDR4_DQS2_C		}]	
set_property PACKAGE_PIN 	AC26	[get_ports {	DDR4_DQS2_T		}]	

set_property PACKAGE_PIN 	AA22	[get_ports {	DDR4_DM_DBI3_N		}]	
set_property PACKAGE_PIN 	AC22	[get_ports {	DDR4_DQ24		}]	
set_property PACKAGE_PIN 	AC23	[get_ports {	DDR4_DQ25		}]	
set_property PACKAGE_PIN 	AA20	[get_ports {	DDR4_DQ26		}]	
set_property PACKAGE_PIN 	AB20	[get_ports {	DDR4_DQ27		}]	
set_property PACKAGE_PIN 	Y23	[get_ports {	DDR4_DQ28		}]	
set_property PACKAGE_PIN 	AA23	[get_ports {	DDR4_DQ29		}]	
set_property PACKAGE_PIN 	AA24	[get_ports {	DDR4_DQ30		}]	
set_property PACKAGE_PIN 	AA25	[get_ports {	DDR4_DQ31		}]	
set_property PACKAGE_PIN 	AC21	[get_ports {	DDR4_DQS3_C		}]	
set_property PACKAGE_PIN 	AB21	[get_ports {	DDR4_DQS3_T		}]


set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_ACT_N		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_ADR0		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_ADR1		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_ADR2		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_ADR3		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_ADR4		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_ADR5		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_ADR6		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_ADR7		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_ADR8		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_ADR9		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_ADR10		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_ADR11		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_ADR12		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_ADR13		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_ADR14_WE_N	}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_ADR15_CAS_N	}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_ADR16_RAS_N	}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_ALERT		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_BA0		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_BA1		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_BG0		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_CKE		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_CS_N		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DM_DBI0_N		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DM_DBI1_N		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DM_DBI2_N		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DM_DBI3_N		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ0		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ1		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ2		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ3		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ4		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ5		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ6		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ7		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ8		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ9		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ10		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ11		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ12		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ13		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ14		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ15		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ16		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ17		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ18		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ19		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ20		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ21		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ22		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ23		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ24		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ25		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ26		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ27		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ28		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ29		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ30		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_DQ31		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_ODT		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_PAR		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_RESET_N		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_TEN		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_VRP_40		}]
set_property IOSTANDARD LVCMOS12 	[get_ports {	DDR4_VRP_41		}]
set_property IOSTANDARD DIFF_SSTL12 [get_ports {	DDR4_CK_C		}]
set_property IOSTANDARD DIFF_SSTL12 [get_ports {	DDR4_CK_T		}]
set_property IOSTANDARD DIFF_SSTL12 [get_ports {	DDR4_DQS0_C		}]
set_property IOSTANDARD DIFF_SSTL12 [get_ports {	DDR4_DQS0_T		}]
set_property IOSTANDARD DIFF_SSTL12 [get_ports {	DDR4_DQS1_C		}]
set_property IOSTANDARD DIFF_SSTL12 [get_ports {	DDR4_DQS1_T		}]
set_property IOSTANDARD DIFF_SSTL12 [get_ports {	DDR4_DQS2_C		}]
set_property IOSTANDARD DIFF_SSTL12 [get_ports {	DDR4_DQS2_T		}]
set_property IOSTANDARD DIFF_SSTL12 [get_ports {	DDR4_DQS3_C		}]
set_property IOSTANDARD DIFF_SSTL12 [get_ports {	DDR4_DQS3_T		}]





################################################################################
#	LPSDRAM Interface  (Bank 64,67 :  1.8V)
################################################################################

set_property PACKAGE_PIN 	AK23	[get_ports {	LPSDR_A0	}]		
set_property PACKAGE_PIN 	AJ20	[get_ports {	LPSDR_A1	}]		
set_property PACKAGE_PIN 	AG21	[get_ports {	LPSDR_A2	}]		
set_property PACKAGE_PIN 	AJ25	[get_ports {	LPSDR_A3	}]		
set_property PACKAGE_PIN 	AH22	[get_ports {	LPSDR_A4	}]		
set_property PACKAGE_PIN 	AF20	[get_ports {	LPSDR_A5 	}]		
set_property PACKAGE_PIN 	AJ24	[get_ports {	LPSDR_A6	}]		
set_property PACKAGE_PIN 	AJ23	[get_ports {	LPSDR_A7	}]		
set_property PACKAGE_PIN 	AF48	[get_ports {	LPSDR_A8	}]		
set_property PACKAGE_PIN 	AH21	[get_ports {	LPSDR_A9	}]		
set_property PACKAGE_PIN 	AK22	[get_ports {	LPSDR_A10	}]		
set_property PACKAGE_PIN 	AD20	[get_ports {	LPSDR_A11	}]		
set_property PACKAGE_PIN 	AJ21	[get_ports {	LPSDR_A12	}]		

set_property PACKAGE_PIN 	AE23	[get_ports {	LPSDR_BA0	}]		
set_property PACKAGE_PIN 	AG22	[get_ports {	LPSDR_BA1	}]	

set_property PACKAGE_PIN 	AN23	[get_ports {	LPSDR_DQ0	}]		
set_property PACKAGE_PIN 	AP24	[get_ports {	LPSDR_DQ1	}]		
set_property PACKAGE_PIN 	AL22	[get_ports {	LPSDR_DQ2	}]		
set_property PACKAGE_PIN 	AN24	[get_ports {	LPSDR_DQ3	}]		
set_property PACKAGE_PIN 	AL23	[get_ports {	LPSDR_DQ4	}]		
set_property PACKAGE_PIN 	AP25	[get_ports {	LPSDR_DQ5	}]		
set_property PACKAGE_PIN 	AM24	[get_ports {	LPSDR_DQ6	}]		
set_property PACKAGE_PIN 	AM25	[get_ports {	LPSDR_DQ7	}]		
set_property PACKAGE_PIN 	AP20	[get_ports {	LPSDR_DQ8	}]		
set_property PACKAGE_PIN 	AL20	[get_ports {	LPSDR_DQ9	}]		
set_property PACKAGE_PIN 	AP21	[get_ports {	LPSDR_DQ10	}]		
set_property PACKAGE_PIN 	AM20	[get_ports {	LPSDR_DQ11	}]		
set_property PACKAGE_PIN 	AN21	[get_ports {	LPSDR_DQ12	}]		
set_property PACKAGE_PIN 	AM22	[get_ports {	LPSDR_DQ13]	}]		
set_property PACKAGE_PIN 	AN22	[get_ports {	LPSDR_DQ14	}]		
set_property PACKAGE_PIN 	AP23	[get_ports {	LPSDR_DQ15	}]		
set_property PACKAGE_PIN 	AN17	[get_ports {	LPSDR_DQ16	}]		
set_property PACKAGE_PIN 	AP18	[get_ports {	LPSDR_DQ17	}]		
set_property PACKAGE_PIN 	AM17	[get_ports {	LPSDR_DQ18	}]		
set_property PACKAGE_PIN 	AN18	[get_ports {	LPSDR_DQ19	}]		
set_property PACKAGE_PIN 	AL17	[get_ports {	LPSDR_DQ20	}]		
set_property PACKAGE_PIN 	AP19	[get_ports {	LPSDR_DQ21	}]		
set_property PACKAGE_PIN 	AL18	[get_ports {	LPSDR_DQ22	}]		
set_property PACKAGE_PIN 	AN19	[get_ports {	LPSDR_DQ23	}]		
set_property PACKAGE_PIN 	AN14	[get_ports {	LPSDR_DQ24	}]		
set_property PACKAGE_PIN 	AM14	[get_ports {	LPSDR_DQ25	}]		
set_property PACKAGE_PIN 	AP14	[get_ports {	LPSDR_DQ26	}]		
set_property PACKAGE_PIN 	AM15	[get_ports {	LPSDR_DQ27	}]		
set_property PACKAGE_PIN 	AP15	[get_ports {	LPSDR_DQ28	}]		
set_property PACKAGE_PIN 	AM16	[get_ports {	LPSDR_DQ29	}]		
set_property PACKAGE_PIN 	AN16	[get_ports {	LPSDR_DQ30	}]		
set_property PACKAGE_PIN 	AP16	[get_ports {	LPSDR_DQ31	}]	

set_property PACKAGE_PIN 	AL24	[get_ports {	LPSDR_DQM0	}]		
set_property PACKAGE_PIN 	AK21	[get_ports {	LPSDR_DQM1	}]		
set_property PACKAGE_PIN 	AM19	[get_ports {	LPSDR_DQM2	}]		
set_property PACKAGE_PIN 	AL14	[get_ports {	LPSDR_DQM3	}]		

set_property PACKAGE_PIN 	AK18	[get_ports {	LPSDR_CAS_N	}]	
set_property PACKAGE_PIN 	AG25	[get_ports {	LPSDR_CKE0	}]	
set_property PACKAGE_PIN 	AG24	[get_ports {	LPSDR_CKE1	}]	
set_property PACKAGE_PIN 	AK20	[get_ports {	LPSDR_CLK	}]	
set_property PACKAGE_PIN 	AM21	[get_ports {	LPSDR_CLK_FB	}]	
set_property PACKAGE_PIN 	AK25	[get_ports {	LPSDR_CS0_N	}]	
set_property PACKAGE_PIN 	AK15	[get_ports {	FLPSDR_CS1_N	}]	
set_property PACKAGE_PIN 	AJ18	[get_ports {	LPSDR_RAS_N	}]	
set_property PACKAGE_PIN 	AK17	[get_ports {	LPSDR_WE_N	}]	


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
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_CKE1	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_CLK	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_CLK_FB	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_CS0_N	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_CS1_N	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_RAS_N	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	LPSDR_WE_N	}]





################################################################################
#	FT4232H Interface  (Bank 90,91 :  3.3V)
################################################################################

set_property PACKAGE_PIN 	AH8	[get_ports {	FT_RESET_N	}]
set_property PACKAGE_PIN 	AK12	[get_ports {	USB_JTAG_TCK	}]	
set_property PACKAGE_PIN 	AP13	[get_ports {	USB_JTAG_TDI	}]	
set_property PACKAGE_PIN 	AM11	[get_ports {	USB_JTAG_TDO	}]	
set_property PACKAGE_PIN 	AN11	[get_ports {	USB_JTAG_TMS	}]
	
# set_property PACKAGE_PIN 	xxxx	[get_ports {	USB_JTAG_TRST	}]
	
set_property PACKAGE_PIN 	AN12	[get_ports {	USB_UART_RX	}]	
set_property PACKAGE_PIN 	AM12	[get_ports {	USB_UART_TX	}]


set_property IOSTANDARD LVCMOS33 	[get_ports {	FT_RESET_N	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	USB_JTAG_TCK	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	USB_JTAG_TDI	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	USB_JTAG_TDO	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	USB_JTAG_TMS	}]

# set_property IOSTANDARD LVCMOS33 	[get_ports {	USB_JTAG_TRST	}]

set_property IOSTANDARD LVCMOS33 	[get_ports {	USB_UART_RX	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	USB_UART_TX	}]






################################################################################
#	new LCD Interface  (Bank 68 :  1.8V)
################################################################################

set_property PACKAGE_PIN 	AJ28		[get_ports {	FPGA_LCD_CS_N		}]	
set_property PACKAGE_PIN 	AK28		[get_ports {	FPGA_LCD_SCK		}]	
set_property PACKAGE_PIN 	AH27		[get_ports {	FPGA_LCD_MOSI_IO0	}]	
set_property PACKAGE_PIN 	AH28		[get_ports {	FPGA_LCD_MISO_IO1	}]
set_property PACKAGE_PIN 	AL34		[get_ports {	FPGA_LCD_IO2		}]	
set_property PACKAGE_PIN 	AM34		[get_ports {	FPGA_LCD_IO3		}]		


set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_CS_N			}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_SCK			}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_MOSI_IO0		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_MISO_IO1		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_IO2			}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_IO3			}]




################################################################################
#	old LCD Interface  (Bank 66 :  1.8V)
################################################################################

set_property PACKAGE_PIN 	B11		[get_ports {	FPGA_LCD_DCLK		}]	
set_property PACKAGE_PIN 	B12		[get_ports {	FPGA_LCD_DE		}]	
set_property PACKAGE_PIN 	C12		[get_ports {	FPGA_LCD_HS		}]	
set_property PACKAGE_PIN 	C11		[get_ports {	FPGA_LCD_VS		}]	
set_property PACKAGE_PIN 	A12		[get_ports {	FPGA_LCD_PWM		}]	
set_property PACKAGE_PIN 	A13		[get_ports {	FPGA_LCD_RST		}]	
set_property PACKAGE_PIN 	E13		[get_ports {	FPGA_LCD_TS_INT		}]	
set_property PACKAGE_PIN 	F13		[get_ports {	FPGA_LCD_TS_RST		}]

set_property PACKAGE_PIN 	D13		[get_ports {	FPGA_LCD_SCL		}]	
set_property PACKAGE_PIN 	C13		[get_ports {	FPGA_LCD_SDA		}]	


set_property PACKAGE_PIN 	K11		[get_ports {	FPGA_LCD_BD0		}]	
set_property PACKAGE_PIN 	J8		[get_ports {	FPGA_LCD_BD1		}]	
set_property PACKAGE_PIN 	F9		[get_ports {	FPGA_LCD_BD2		}]	
set_property PACKAGE_PIN 	E11		[get_ports {	FPGA_LCD_BD3		}]	
set_property PACKAGE_PIN 	E12		[get_ports {	FPGA_LCD_BD4		}]	
set_property PACKAGE_PIN 	D11		[get_ports {	FPGA_LCD_BD5		}]	
set_property PACKAGE_PIN 	J10		[get_ports {	FPGA_LCD_BD6		}]	
set_property PACKAGE_PIN 	G9		[get_ports {	FPGA_LCD_BD7		}]
	
set_property PACKAGE_PIN 	F10		[get_ports {	FPGA_LCD_GD0		}]	
set_property PACKAGE_PIN 	H11		[get_ports {	FPGA_LCD_GD1		}]	
set_property PACKAGE_PIN 	G11		[get_ports {	FPGA_LCD_GD2		}]	
set_property PACKAGE_PIN 	J11		[get_ports {	FPGA_LCD_GD3		}]	
set_property PACKAGE_PIN 	L12		[get_ports {	FPGA_LCD_GD4		}]	
set_property PACKAGE_PIN 	K10		[get_ports {	FPGA_LCD_GD5		}]	
set_property PACKAGE_PIN 	H12		[get_ports {	FPGA_LCD_GD6		}]	
set_property PACKAGE_PIN 	L13		[get_ports {	FPGA_LCD_GD7		}]	

set_property PACKAGE_PIN 	G12		[get_ports {	FPGA_LCD_RD0		}]	
set_property PACKAGE_PIN 	H13		[get_ports {	FPGA_LCD_RD1		}]	
set_property PACKAGE_PIN 	J13		[get_ports {	FPGA_LCD_RD2		}]	
set_property PACKAGE_PIN 	K13		[get_ports {	FPGA_LCD_RD3		}]	
set_property PACKAGE_PIN 	K12		[get_ports {	FPGA_LCD_RD4		}]	
set_property PACKAGE_PIN 	G10		[get_ports {	FPGA_LCD_RD5		}]	
set_property PACKAGE_PIN 	F12		[get_ports {	FPGA_LCD_RD6		}]	
set_property PACKAGE_PIN 	H8		[get_ports {	FPGA_LCD_RD7		}]


set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_DCLK		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_DE		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_HS		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_VS		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_PWM		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_RST		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_TS_INT		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_TS_RST		}]

set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_SCL		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_SDA		}]

set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_BD0		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_BD1		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_BD2		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_BD3		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_BD4		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_BD5		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_BD6		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_BD7		}]

set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_GD0		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_GD1		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_GD2		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_GD3		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_GD4		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_GD5		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_GD6		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_GD7		}]

set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_RD0		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_RD1		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_RD2		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_RD3		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_RD4		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_RD5		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_RD6		}]
set_property IOSTANDARD LVCMOS18	[get_ports {	FPGA_LCD_RD7		}]




################################################################################
#	HDMI_RX Interface   (Bank 66,72 :  1.8V)
################################################################################

set_property PACKAGE_PIN 	J19	[get_ports {	FPGA_HDMI_SCL		}]		
set_property PACKAGE_PIN 	G19	[get_ports {	FPGA_HDMI_SDA		}]		
set_property PACKAGE_PIN 	D18	[get_ports {	HDMI_RX_AP0		}]		
set_property PACKAGE_PIN 	A18	[get_ports {	HDMI_RX_AP1		}]		
set_property PACKAGE_PIN 	A19	[get_ports {	HDMI_RX_AP2		}]		
set_property PACKAGE_PIN 	B19	[get_ports {	HDMI_RX_AP3		}]		
set_property PACKAGE_PIN 	C18	[get_ports {	HDMI_RX_AP4		}]		
set_property PACKAGE_PIN 	D19	[get_ports {	HDMI_RX_AP5		}]
set_property PACKAGE_PIN 	H18	[get_ports {	HDMI_RX_DE		}]		
set_property PACKAGE_PIN 	E18	[get_ports {	HDMI_RX_HS		}]		
set_property PACKAGE_PIN 	F18	[get_ports {	HDMI_RX_VS		}]		
set_property PACKAGE_PIN 	F19	[get_ports {	HDMI_RX_MCLK		}]		
set_property PACKAGE_PIN 	C19	[get_ports {	HDMI_RX_SCLK		}]		
set_property PACKAGE_PIN 	J16	[get_ports {	HDMI_RX_PCLK		}]		
set_property PACKAGE_PIN 	L19	[get_ports {	HDMI_RX_INT		}]		
set_property PACKAGE_PIN 	H19	[get_ports {	HDMI_RX_RST_N		}]

set_property PACKAGE_PIN		J18	[get_ports {	HDMI_RX_PD0	}]
set_property PACKAGE_PIN		A14	[get_ports {	HDMI_RX_PD1	}]
set_property PACKAGE_PIN		B14	[get_ports {	HDMI_RX_PD2	}]
set_property PACKAGE_PIN		C14	[get_ports {	HDMI_RX_PD3	}]
set_property PACKAGE_PIN		D14	[get_ports {	HDMI_RX_PD4	}]
set_property PACKAGE_PIN		F14	[get_ports {	HDMI_RX_PD5	}]
set_property PACKAGE_PIN		L18	[get_ports {	HDMI_RX_PD6	}]
set_property PACKAGE_PIN		B10	[get_ports {	HDMI_RX_PD7	}]
set_property PACKAGE_PIN		A10	[get_ports {	HDMI_RX_PD8	}]
set_property PACKAGE_PIN		B9	[get_ports {	HDMI_RX_PD9	}]

set_property PACKAGE_PIN		A9	[get_ports {	HDMI_RX_PD10	}]
set_property PACKAGE_PIN		C9	[get_ports {	HDMI_RX_PD11	}]
set_property PACKAGE_PIN		E8	[get_ports {	HDMI_RX_PD12	}]
set_property PACKAGE_PIN		D8	[get_ports {	HDMI_RX_PD13	}]
set_property PACKAGE_PIN		F8	[get_ports {	HDMI_RX_PD14	}]
set_property PACKAGE_PIN		G14	[get_ports {	HDMI_RX_PD15	}]
set_property PACKAGE_PIN		E15	[get_ports {	HDMI_RX_PD16	}]
set_property PACKAGE_PIN		H14	[get_ports {	HDMI_RX_PD17	}]
set_property PACKAGE_PIN		J14	[get_ports {	HDMI_RX_PD18	}]
set_property PACKAGE_PIN		L15	[get_ports {	HDMI_RX_PD19	}]

set_property PACKAGE_PIN		K15	[get_ports {	HDMI_RX_PD20	}]
set_property PACKAGE_PIN		K16	[get_ports {	HDMI_RX_PD21	}]
set_property PACKAGE_PIN		L17	[get_ports {	HDMI_RX_PD22	}]
set_property PACKAGE_PIN		J15	[get_ports {	HDMI_RX_PD23	}]
set_property PACKAGE_PIN		K17	[get_ports {	HDMI_RX_PD24	}]
set_property PACKAGE_PIN		H17	[get_ports {	HDMI_RX_PD25	}]
set_property PACKAGE_PIN		G17	[get_ports {	HDMI_RX_PD26	}]
set_property PACKAGE_PIN		G16	[get_ports {	HDMI_RX_PD27	}]
set_property PACKAGE_PIN		H16	[get_ports {	HDMI_RX_PD28	}]
set_property PACKAGE_PIN		G15	[get_ports {	HDMI_RX_PD29	}]

set_property PACKAGE_PIN		E10	[get_ports {	HDMI_RX_PD30	}]
set_property PACKAGE_PIN		C8	[get_ports {	HDMI_RX_PD31	}]
set_property PACKAGE_PIN		D9	[get_ports {	HDMI_RX_PD32	}]
set_property PACKAGE_PIN		D10	[get_ports {	HDMI_RX_PD33	}]
set_property PACKAGE_PIN		F15	[get_ports {	HDMI_RX_PD34	}]
set_property PACKAGE_PIN		D15	[get_ports {	HDMI_RX_PD35	}]
set_property PACKAGE_PIN		C16	[get_ports {	HDMI_RX_PD36	}]
set_property PACKAGE_PIN		C17	[get_ports {	HDMI_RX_PD37	}]
set_property PACKAGE_PIN		B15	[get_ports {	HDMI_RX_PD38	}]
set_property PACKAGE_PIN		A15	[get_ports {	HDMI_RX_PD39	}]

set_property PACKAGE_PIN		B16	[get_ports {	HDMI_RX_PD40	}]
set_property PACKAGE_PIN		B17	[get_ports {	HDMI_RX_PD41	}]
set_property PACKAGE_PIN		A17	[get_ports {	HDMI_RX_PD42	}]
set_property PACKAGE_PIN		D16	[get_ports {	HDMI_RX_PD43	}]
set_property PACKAGE_PIN		E16	[get_ports {	HDMI_RX_PD44	}]
set_property PACKAGE_PIN		E17	[get_ports {	HDMI_RX_PD45	}]
set_property PACKAGE_PIN		F17	[get_ports {	HDMI_RX_PD46	}]
set_property PACKAGE_PIN		K18	[get_ports {	HDMI_RX_PD47	}]


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
#	HDMI_TX Interface  (Bank 71 :  1.8V)
################################################################################

set_property PACKAGE_PIN 	G22	[get_ports {	HDMI_TX_SCK	}]
set_property PACKAGE_PIN 	F24	[get_ports {	HDMI_TX_SD0	}]
set_property PACKAGE_PIN 	F23	[get_ports {	HDMI_TX_SD1	}]
set_property PACKAGE_PIN 	E25	[get_ports {	HDMI_TX_SD2	}]
set_property PACKAGE_PIN 	D28	[get_ports {	HDMI_TX_SD3	}]
set_property PACKAGE_PIN 	E26	[get_ports {	HDMI_TX_SPDIF	}]
set_property PACKAGE_PIN 	F22	[get_ports {	HDMI_TX_WS	}]
set_property PACKAGE_PIN 	B29	[get_ports {	HDMI_TX_IDCK	}]
set_property PACKAGE_PIN 	G20	[get_ports {	HDMI_TX_MCLK	}]
set_property PACKAGE_PIN 	B27	[get_ports {	HDMI_TX_DE	}]
set_property PACKAGE_PIN 	C28	[get_ports {	HDMI_TX_HS	}]
set_property PACKAGE_PIN 	D23	[get_ports {	HDMI_TX_VS	}]
set_property PACKAGE_PIN 	G21	[get_ports {	HDMI_TX_INT	}]
set_property PACKAGE_PIN 	H21	[get_ports {	HDMI_TX_RST_N	}]

#set_property PACKAGE_PIN 	E8	[get_ports {	HDMI_TX_IDCK_FB		}]

	
set_property PACKAGE_PIN 	C29	[get_ports {	HDMI_TX_BD0	}]
set_property PACKAGE_PIN 	A29	[get_ports {	HDMI_TX_BD1	}]
set_property PACKAGE_PIN 	A28	[get_ports {	HDMI_TX_BD2	}]
set_property PACKAGE_PIN 	D26	[get_ports {	HDMI_TX_BD3	}]
set_property PACKAGE_PIN 	A27	[get_ports {	HDMI_TX_BD4	}]
set_property PACKAGE_PIN 	C26	[get_ports {	HDMI_TX_BD5	}]
set_property PACKAGE_PIN 	A25	[get_ports {	HDMI_TX_BD6	}]
set_property PACKAGE_PIN 	B26	[get_ports {	HDMI_TX_BD7	}]
set_property PACKAGE_PIN 	B24	[get_ports {	HDMI_TX_BD8	}]
set_property PACKAGE_PIN 	A24	[get_ports {	HDMI_TX_BD9	}]
set_property PACKAGE_PIN 	A23	[get_ports {	HDMI_TX_BD10	}]
set_property PACKAGE_PIN 	D25	[get_ports {	HDMI_TX_BD11	}]
		
set_property PACKAGE_PIN 	A22	[get_ports {	HDMI_TX_GD0	}]
set_property PACKAGE_PIN 	B22	[get_ports {	HDMI_TX_GD1	}]
set_property PACKAGE_PIN 	C21	[get_ports {	HDMI_TX_GD2	}]
set_property PACKAGE_PIN 	C22	[get_ports {	HDMI_TX_GD3	}]
set_property PACKAGE_PIN 	B20	[get_ports {	HDMI_TX_GD4	}]
set_property PACKAGE_PIN 	A20	[get_ports {	HDMI_TX_GD5	}]
set_property PACKAGE_PIN 	D20	[get_ports {	HDMI_TX_GD6	}]
set_property PACKAGE_PIN 	D21	[get_ports {	HDMI_TX_GD7	}]
set_property PACKAGE_PIN 	B21	[get_ports {	HDMI_TX_GD8	}]
set_property PACKAGE_PIN 	H22	[get_ports {	HDMI_TX_GD9	}]
set_property PACKAGE_PIN 	G24	[get_ports {	HDMI_TX_GD10	}]
set_property PACKAGE_PIN 	F25	[get_ports {	HDMI_TX_GD11	}]

set_property PACKAGE_PIN 	F27	[get_ports {	HDMI_TX_RD0	}]
set_property PACKAGE_PIN 	E27	[get_ports {	HDMI_TX_RD1	}]
set_property PACKAGE_PIN 	C27	[get_ports {	HDMI_TX_RD2	}]
set_property PACKAGE_PIN 	E20	[get_ports {	HDMI_TX_RD3	}]
set_property PACKAGE_PIN 	E28	[get_ports {	HDMI_TX_RD4	}]
set_property PACKAGE_PIN 	D29	[get_ports {	HDMI_TX_RD5	}]
set_property PACKAGE_PIN 	F20	[get_ports {	HDMI_TX_RD6	}]
set_property PACKAGE_PIN 	E21	[get_ports {	HDMI_TX_RD7	}]
set_property PACKAGE_PIN 	C24	[get_ports {	HDMI_TX_RD8	}]
set_property PACKAGE_PIN 	C23	[get_ports {	HDMI_TX_RD9	}]
set_property PACKAGE_PIN 	B25	[get_ports {	HDMI_TX_RD10	}]
set_property PACKAGE_PIN 	D24	[get_ports {	HDMI_TX_RD11	}]


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
#	PMBUS Interface  (Bank 65 :  1.8V)
################################################################################

set_property PACKAGE_PIN 	K26	[get_ports {	FPGA_PMBUS_SCL	}]		
set_property PACKAGE_PIN 	K27	[get_ports {	FPGA_PMBUS_SDA	}]		

set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMBUS_SCL	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMBUS_SDA	}]





################################################################################
#	user GPIO Interface  (Bank 68 :  1.8V)
################################################################################

set_property PACKAGE_PIN 	AG26		[get_ports {	FPGA_1.8V_GPIO_IO1	}]
set_property PACKAGE_PIN 	AM30		[get_ports {	FPGA_1.8V_GPIO_IO2	}]
set_property PACKAGE_PIN 	AL30		[get_ports {	FPGA_1.8V_GPIO_IO3	}]
set_property PACKAGE_PIN 	AL29		[get_ports {	FPGA_1.8V_GPIO_IO4	}]
set_property PACKAGE_PIN 	AM29		[get_ports {	FPGA_1.8V_GPIO_IO5	}]
set_property PACKAGE_PIN 	AP26		[get_ports {	FPGA_1.8V_GPIO_IO6	}]
set_property PACKAGE_PIN 	AH31		[get_ports {	FPGA_1.8V_GPIO_IO7	}]
set_property PACKAGE_PIN 	AH34		[get_ports {	FPGA_1.8V_GPIO_IO8	}]
set_property PACKAGE_PIN 	AJ34		[get_ports {	FPGA_1.8V_GPIO_IO9	}]
set_property PACKAGE_PIN 	AP29		[get_ports {	FPGA_1.8V_GPIO_IO10	}]

set_property PACKAGE_PIN 	AK32		[get_ports {	FPGA_3V_GPIO_IN1	}]
set_property PACKAGE_PIN 	AK31		[get_ports {	FPGA_3V_GPIO_IN2	}]
set_property PACKAGE_PIN 	AK30		[get_ports {	FPGA_3V_GPIO_IN3	}]
set_property PACKAGE_PIN 	AJ29		[get_ports {	FPGA_3V_GPIO_IN4	}]
set_property PACKAGE_PIN 	AJ31		[get_ports {	FPGA_3V_GPIO_IN5	}]
set_property PACKAGE_PIN 	AM31		[get_ports {	FPGA_3V_GPIO_IN6	}]
set_property PACKAGE_PIN 	AJ30		[get_ports {	FPGA_3V_GPIO_IN7	}]
set_property PACKAGE_PIN 	AN27		[get_ports {	FPGA_3V_GPIO_IN8	}]
set_property PACKAGE_PIN 	AN28		[get_ports {	FPGA_3V_GPIO_IN9	}]
set_property PACKAGE_PIN 	AP30		[get_ports {	FPGA_3V_GPIO_IN10	}]

set_property PACKAGE_PIN 	AL33		[get_ports {	FPGA_3V_GPIO_OUT1	}]
set_property PACKAGE_PIN 	AK33		[get_ports {	FPGA_3V_GPIO_OUT2	}]
set_property PACKAGE_PIN 	AL32		[get_ports {	FPGA_3V_GPIO_OUT3	}]
set_property PACKAGE_PIN 	AH32		[get_ports {	FPGA_3V_GPIO_OUT4	}]
set_property PACKAGE_PIN 	AJ33		[get_ports {	FPGA_3V_GPIO_OUT5	}]
set_property PACKAGE_PIN 	AH33		[get_ports {	FPGA_3V_GPIO_OUT6	}]
set_property PACKAGE_PIN 	AH29		[get_ports {	FPGA_3V_GPIO_OUT7	}]
set_property PACKAGE_PIN 	AN26		[get_ports {	FPGA_3V_GPIO_OUT8	}]
set_property PACKAGE_PIN 	AN29		[get_ports {	FPGA_3V_GPIO_OUT9	}]
set_property PACKAGE_PIN 	AP28		[get_ports {	FPGA_3V_GPIO_OUT10	}]


set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_1.8V_GPIO_IO1	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_1.8V_GPIO_IO2	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_1.8V_GPIO_IO3	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_1.8V_GPIO_IO4	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_1.8V_GPIO_IO5	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_1.8V_GPIO_IO6	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_1.8V_GPIO_IO7	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_1.8V_GPIO_IO8	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_1.8V_GPIO_IO9	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_1.8V_GPIO_IO10	}]
		
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_3V_GPIO_IN1	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_3V_GPIO_IN2	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_3V_GPIO_IN3	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_3V_GPIO_IN4	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_3V_GPIO_IN5	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_3V_GPIO_IN6	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_3V_GPIO_IN7	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_3V_GPIO_IN8	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_3V_GPIO_IN9	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_3V_GPIO_IN10	}]

set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_3V_GPIO_OUT1	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_3V_GPIO_OUT2	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_3V_GPIO_OUT3	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_3V_GPIO_OUT4	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_3V_GPIO_OUT5	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_3V_GPIO_OUT6	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_3V_GPIO_OUT7	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_3V_GPIO_OUT8	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_3V_GPIO_OUT9	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_3V_GPIO_OUT10	}]





################################################################################
#	user LED Interface   (Bank 64 :  1.8V)
################################################################################

set_property PACKAGE_PIN 	AH18	[get_ports {	FPGA_TLED_B1	}]
set_property PACKAGE_PIN 	AD19	[get_ports {	FPGA_TLED_B2	}]
set_property PACKAGE_PIN 	AG17	[get_ports {	FPGA_TLED_G1	}]
set_property PACKAGE_PIN 	AH19	[get_ports {	FPGA_TLED_G2	}]
set_property PACKAGE_PIN 	AG16	[get_ports {	FPGA_TLED_R1	}]
set_property PACKAGE_PIN 	AG19	[get_ports {	FPGA_TLED_R2	}]

set_property PACKAGE_PIN 	AH17	[get_ports {	FPGA_SLED1	}]
set_property PACKAGE_PIN 	AH16	[get_ports {	FPGA_SLED2	}]
set_property PACKAGE_PIN 	AJ16	[get_ports {	FPGA_SLED3	}]
set_property PACKAGE_PIN 	AJ15	[get_ports {	FPGA_SLED4	}]
set_property PACKAGE_PIN 	AJ14	[get_ports {	FPGA_SLED5	}]
set_property PACKAGE_PIN 	AH14	[get_ports {	FPGA_SLED6	}]
set_property PACKAGE_PIN 	AG14	[get_ports {	FPGA_SLED7	}]
set_property PACKAGE_PIN 	AG15	[get_ports {	FPGA_SLED8	}]
set_property PACKAGE_PIN 	AD14	[get_ports {	FPGA_SLED9	}]


set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_TLED_B1	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_TLED_B2	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_TLED_G1	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_TLED_G2	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_TLED_R1	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_TLED_R2	}]

set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SLED1	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SLED2	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SLED3	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SLED4	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SLED5	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SLED6	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SLED7	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SLED8	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SLED9	}]




################################################################################
#	user Switch Interface   (Bank 64 :  1.8V)
################################################################################

set_property PACKAGE_PIN 	AE16	[get_ports {	FPGA_SW_PS1	}]
set_property PACKAGE_PIN 	AD15	[get_ports {	FPGA_SW_PS2	}]
set_property PACKAGE_PIN 	AE15	[get_ports {	FPGA_SW_PS3	}]
set_property PACKAGE_PIN 	AF15	[get_ports {	FPGA_SW_PS4	}]
set_property PACKAGE_PIN 	AF14	[get_ports {	FPGA_SW_PS5	}]

set_property PACKAGE_PIN 	AF17	[get_ports {	FPGA_SW_SL1	}]
set_property PACKAGE_PIN 	AE17	[get_ports {	FPGA_SW_SL2	}]
set_property PACKAGE_PIN 	AD16	[get_ports {	FPGA_SW_SL3	}]
set_property PACKAGE_PIN 	AF18	[get_ports {	FPGA_SW_SL4	}]
set_property PACKAGE_PIN 	AE18	[get_ports {	FPGA_SW_SL5	}]


set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SW_PS1	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SW_PS2	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SW_PS3	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SW_PS4	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SW_PS5	}]

set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SW_SL1	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SW_SL2	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SW_SL3	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SW_SL4	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SW_SL5	}]





################################################################################
#	BLE Interface   (Bank 66 :  1.8V)
################################################################################

set_property PACKAGE_PIN 	K8	[get_ports {	FPGA_BLE_RST_N	}]
set_property PACKAGE_PIN 	L8	[get_ports {	FPGA_BLE_RX	}]
set_property PACKAGE_PIN 	L9	[get_ports {	FPGA_BLE_TX	}]


set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_BLE_RST_N	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_BLE_RX	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_BLE_TX	}]





################################################################################
#	PMOD1 Interface (Bank 68 :  1.8V)
################################################################################

set_property PACKAGE_PIN 	AM26	[get_ports {	FPGA_PMOD_11	}]
set_property PACKAGE_PIN 	AM27	[get_ports {	FPGA_PMOD_12	}]
set_property PACKAGE_PIN 	AK27	[get_ports {	FPGA_PMOD_13	}]
set_property PACKAGE_PIN 	AK26	[get_ports {	FPGA_PMOD_14	}]
set_property PACKAGE_PIN 	AL27	[get_ports {	FPGA_PMOD_15	}]
set_property PACKAGE_PIN 	AH26	[get_ports {	FPGA_PMOD_16	}]
set_property PACKAGE_PIN 	AJ26	[get_ports {	FPGA_PMOD_17	}]
set_property PACKAGE_PIN 	AL28	[get_ports {	FPGA_PMOD_18	}]


set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_11	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_12	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_13	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_14	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_15	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_16	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_17	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_18	}]




################################################################################
#	PMOD2,3 Interface (Bank 90 :  3.3V)
################################################################################

set_property PACKAGE_PIN 	AL13	[get_ports {	FPGA_PMOD_21	}]
set_property PACKAGE_PIN 	AL12	[get_ports {	FPGA_PMOD_22	}]
set_property PACKAGE_PIN 	AK13	[get_ports {	FPGA_PMOD_23	}]
set_property PACKAGE_PIN 	AN13	[get_ports {	FPGA_PMOD_24	}]
set_property PACKAGE_PIN 	AJ13	[get_ports {	FPGA_PMOD_25	}]
set_property PACKAGE_PIN 	AH13	[get_ports {	FPGA_PMOD_26	}]
set_property PACKAGE_PIN 	AF13	[get_ports {	FPGA_PMOD_27	}]
set_property PACKAGE_PIN 	AE13	[get_ports {	FPGA_PMOD_28	}]

set_property PACKAGE_PIN 	AH12	[get_ports {	FPGA_PMOD_31	}]
set_property PACKAGE_PIN 	AH11	[get_ports {	FPGA_PMOD_32	}]
set_property PACKAGE_PIN 	AG12	[get_ports {	FPGA_PMOD_33	}]
set_property PACKAGE_PIN 	AG11	[get_ports {	FPGA_PMOD_34	}]
set_property PACKAGE_PIN 	AE11	[get_ports {	FPGA_PMOD_35	}]
set_property PACKAGE_PIN 	AD11	[get_ports {	FPGA_PMOD_36	}]
set_property PACKAGE_PIN 	AE12	[get_ports {	FPGA_PMOD_37	}]
set_property PACKAGE_PIN 	AF12	[get_ports {	FPGA_PMOD_38	}]


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




################################################################################
#	PMOD4,5,6 Interface (Bank 65 :  1.8V)
################################################################################

set_property PACKAGE_PIN 	J24	[get_ports {	FPGA_PMOD_41	}]
set_property PACKAGE_PIN 	J25	[get_ports {	FPGA_PMOD_42	}]
set_property PACKAGE_PIN 	J26	[get_ports {	FPGA_PMOD_43	}]
set_property PACKAGE_PIN 	H26	[get_ports {	FPGA_PMOD_44	}]
set_property PACKAGE_PIN 	J23	[get_ports {	FPGA_PMOD_45	}]
set_property PACKAGE_PIN 	H24	[get_ports {	FPGA_PMOD_46	}]
set_property PACKAGE_PIN 	H23	[get_ports {	FPGA_PMOD_47	}]
set_property PACKAGE_PIN 	N23	[get_ports {	FPGA_PMOD_48	}]

set_property PACKAGE_PIN 	M27	[get_ports {	FPGA_PMOD_51	}]
set_property PACKAGE_PIN 	L27	[get_ports {	FPGA_PMOD_52	}]
set_property PACKAGE_PIN 	L23	[get_ports {	FPGA_PMOD_53	}]
set_property PACKAGE_PIN 	L24	[get_ports {	FPGA_PMOD_54	}]
set_property PACKAGE_PIN 	L25	[get_ports {	FPGA_PMOD_55	}]
set_property PACKAGE_PIN 	K25	[get_ports {	FPGA_PMOD_56	}]
set_property PACKAGE_PIN 	L22	[get_ports {	FPGA_PMOD_57	}]
set_property PACKAGE_PIN 	K23	[get_ports {	FPGA_PMOD_58	}]

set_property PACKAGE_PIN 	T27	[get_ports {	FPGA_PMOD_61	}]
set_property PACKAGE_PIN 	R27	[get_ports {	FPGA_PMOD_62	}]
set_property PACKAGE_PIN 	T24	[get_ports {	FPGA_PMOD_63	}]
set_property PACKAGE_PIN 	T25	[get_ports {	FPGA_PMOD_64	}]
set_property PACKAGE_PIN 	R25	[get_ports {	FPGA_PMOD_65	}]
set_property PACKAGE_PIN 	R26	[get_ports {	FPGA_PMOD_66	}]
set_property PACKAGE_PIN 	R23	[get_ports {	FPGA_PMOD_67	}]
set_property PACKAGE_PIN 	P23	[get_ports {	FPGA_PMOD_68	}]


set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_41	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_42	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_43	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_44	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_45	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_46	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_47	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_48	}]

set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_51	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_52	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_53	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_54	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_55	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_56	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_57	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_58	}]

set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_61	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_62	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_63	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_64	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_65	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_66	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_67	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_PMOD_68	}]





################################################################################
#	SD card Interface   (Bank 68 :  1.8V)
################################################################################

set_property PACKAGE_PIN 	AM32	[get_ports {	FPGA_SD_CLK	}]
set_property PACKAGE_PIN 	AP34	[get_ports {	FPGA_SD_CMD	}]
set_property PACKAGE_PIN 	AP33	[get_ports {	FPGA_SD_DATA0	}]
set_property PACKAGE_PIN 	AN31	[get_ports {	FPGA_SD_DATA1	}]
set_property PACKAGE_PIN 	AP31	[get_ports {	FPGA_SD_DATA2	}]
set_property PACKAGE_PIN 	AN34	[get_ports {	FPGA_SD_DATA3	}]
set_property PACKAGE_PIN 	AN32	[get_ports {	FPGA_SD_DET	}]

set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SD_CLK	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SD_CMD	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SD_DATA0	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SD_DATA1	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SD_DATA2	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SD_DATA3	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_SD_DET	}]




################################################################################
#	MIPI CSI2 CAM Interface   (Bank 90,91 :  3.3V)
################################################################################

set_property PACKAGE_PIN 	AP11	[get_ports {	MIPI_CAM_CLK	}]
set_property PACKAGE_PIN 	AP10	[get_ports {	MIPI_CAM_GPIO	}]
set_property PACKAGE_PIN 	AM10	[get_ports {	MIPI_CLK_N	}]
set_property PACKAGE_PIN 	AL10	[get_ports {	MIPI_CLK_P	}]
set_property PACKAGE_PIN 	AJ8	[get_ports {	MIPI_LANE0_N	}]
set_property PACKAGE_PIN 	AJ9	[get_ports {	MIPI_LANE0_P	}]
set_property PACKAGE_PIN 	AL9	[get_ports {	MIPI_LANE1_N	}]
set_property PACKAGE_PIN 	AK10	[get_ports {	MIPI_LANE1_P	}]

set_property PACKAGE_PIN 	AP9	[get_ports {	LP_CLK_N	}]
set_property PACKAGE_PIN 	AN9	[get_ports {	LP_CLK_P		}]
set_property PACKAGE_PIN 	AL8	[get_ports {	LP_LANE0_N	}]
set_property PACKAGE_PIN 	AK8	[get_ports {	LP_LANE0_P	}]
set_property PACKAGE_PIN 	AP8	[get_ports {	LP_LANE1_N	}]
set_property PACKAGE_PIN 	AN8	[get_ports {	LP_LANE1_P	}]


set_property IOSTANDARD LVCMOS33 	[get_ports {	MIPI_CAM_CLK	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	MIPI_CAM_GPIO	}]
set_property IOSTANDARD LVDS_25	 	[get_ports {	MIPI_CLK_N	}]
set_property IOSTANDARD LVDS_25	 	[get_ports {	MIPI_CLK_P	}]
set_property IOSTANDARD LVDS_25	 	[get_ports {	MIPI_LANE0_N	}]
set_property IOSTANDARD LVDS_25	 	[get_ports {	MIPI_LANE0_P	}]
set_property IOSTANDARD LVDS_25	 	[get_ports {	MIPI_LANE1_N	}]
set_property IOSTANDARD LVDS_25	 	[get_ports {	MIPI_LANE1_P	}]

set_property IOSTANDARD HSUL_12	 	[get_ports {	LP_CLK_N	}]
set_property IOSTANDARD HSUL_12	 	[get_ports {	LP_CLK_P		}]
set_property IOSTANDARD HSUL_12	 	[get_ports {	LP_LANE0_N	}]
set_property IOSTANDARD HSUL_12	 	[get_ports {	LP_LANE0_P	}]
set_property IOSTANDARD HSUL_12	 	[get_ports {	LP_LANE1_N	}]
set_property IOSTANDARD HSUL_12	 	[get_ports {	LP_LANE1_P	}]




################################################################################
#	old CIS CAM Interface 1  (Bank 65 :  1.8V)
################################################################################

set_property PACKAGE_PIN 	M22	[get_ports {	FPGA_CAM_SCL	}]
set_property PACKAGE_PIN 	P20	[get_ports {	FPGA_CAM_SDA	}]

set_property PACKAGE_PIN 	N27	[get_ports {	FPGA_CIS_XCLK	}]
set_property PACKAGE_PIN 	N22	[get_ports {	FPGA_CIS_RST_N	}]
set_property PACKAGE_PIN 	K22	[get_ports {	FPGA_CIS_PWDN	}]


set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_CAM_SCL	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_CAM_SDA	}]

set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_CIS_XCLK	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_CIS_RST_N	}]
set_property IOSTANDARD LVCMOS18 	[get_ports {	FPGA_CIS_PWDN	}]


################################################################################
#	old CIS CAM Interface 2   (Bank 91 :  3.3V)
################################################################################

set_property PACKAGE_PIN 	AE8	[get_ports {	FPGA_CIS_PCLK	}]
set_property PACKAGE_PIN 	AD9	[get_ports {	FPGA_CIS_HREF	}]
set_property PACKAGE_PIN 	AD8	[get_ports {	FPGA_CIS_VSYNC	}]

set_property PACKAGE_PIN 	AD10	[get_ports {	FPGA_CIS_D0	}]
set_property PACKAGE_PIN 	AE10	[get_ports {	FPGA_CIS_D1	}]
set_property PACKAGE_PIN 	AF10	[get_ports {	FPGA_CIS_D2	}]
set_property PACKAGE_PIN 	AG10	[get_ports {	FPGA_CIS_D3	}]
set_property PACKAGE_PIN 	AG9	[get_ports {	FPGA_CIS_D4	}]
set_property PACKAGE_PIN 	AH9	[get_ports {	FPGA_CIS_D5	}]
set_property PACKAGE_PIN 	AF9	[get_ports {	FPGA_CIS_D6	}]
set_property PACKAGE_PIN 	AF8	[get_ports {	FPGA_CIS_D7	}]


set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_CIS_PCLK	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_CIS_HREF	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_CIS_VSYNC	}]

set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_CIS_D0	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_CIS_D1	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_CIS_D2	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_CIS_D3	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_CIS_D4	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_CIS_D5	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_CIS_D6	}]
set_property IOSTANDARD LVCMOS33 	[get_ports {	FPGA_CIS_D7	}]


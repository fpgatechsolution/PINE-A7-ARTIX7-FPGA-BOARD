#######################################################################################
## WWW.FPGATECHSOLUTION.COM
## PINE ARTIX7 FPGA BOARD MASTER XDC
#######################################################################################
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

#######################################################################################
## Clock signal
#######################################################################################
set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]


# set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets inst_clk_wiz_0/inst/clk_in1_clk_wiz_0] 
# set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]

#######################################################################################
## LEDs
#######################################################################################
set_property -dict {PACKAGE_PIN F1 IOSTANDARD LVCMOS33} [get_ports {led[0]}];
set_property -dict {PACKAGE_PIN E1 IOSTANDARD LVCMOS33} [get_ports {led[1]}];
set_property -dict {PACKAGE_PIN J3 IOSTANDARD LVCMOS33} [get_ports {led[2]}];
set_property -dict {PACKAGE_PIN D2 IOSTANDARD LVCMOS33} [get_ports {led[3]}];
set_property -dict {PACKAGE_PIN C1 IOSTANDARD LVCMOS33} [get_ports {led[4]}];
set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVCMOS33} [get_ports {led[5]}];
set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS33} [get_ports {led[6]}];
set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS33} [get_ports {led[7]}];
set_property -dict {PACKAGE_PIN G3 IOSTANDARD LVCMOS33} [get_ports {led[8]}];
set_property -dict {PACKAGE_PIN G4 IOSTANDARD LVCMOS33} [get_ports {led[9]}];
set_property -dict {PACKAGE_PIN F3 IOSTANDARD LVCMOS33} [get_ports {led[10]}];
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports {led[11]}];
set_property -dict {PACKAGE_PIN F4 IOSTANDARD LVCMOS33} [get_ports {led[12]}];
set_property -dict {PACKAGE_PIN D3 IOSTANDARD LVCMOS33} [get_ports {led[13]}];
set_property -dict {PACKAGE_PIN D4 IOSTANDARD LVCMOS33} [get_ports {led[14]}];
set_property -dict {PACKAGE_PIN D7 IOSTANDARD LVCMOS33} [get_ports {led[15]}];

#######################################################################################
#Switches
#######################################################################################
set_property -dict { PACKAGE_PIN K1  IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[0] }]; 
set_property -dict { PACKAGE_PIN K2  IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[1] }]; 
set_property -dict { PACKAGE_PIN J2  IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[2] }]; 
set_property -dict { PACKAGE_PIN G2  IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[3] }]; 
set_property -dict { PACKAGE_PIN H6  IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[4] }]; 
set_property -dict { PACKAGE_PIN J5   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[5] }]; 
set_property -dict { PACKAGE_PIN F5   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[6] }]; 
set_property -dict { PACKAGE_PIN C7   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[7] }]; 
set_property -dict { PACKAGE_PIN H1   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[8] }]; 
set_property -dict { PACKAGE_PIN H2   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[9] }]; 
set_property -dict { PACKAGE_PIN G1   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[10] }]; 
set_property -dict { PACKAGE_PIN H5   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[11] }]; 
set_property -dict { PACKAGE_PIN G6   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[12] }]; 
set_property -dict { PACKAGE_PIN F6   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[13] }]; 
set_property -dict { PACKAGE_PIN E7   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[14] }]; 
set_property -dict { PACKAGE_PIN D5   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[15] }]; 

#######################################################################################
##Buttons
#######################################################################################
set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { KEY_0 }]; 
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { KEY_1 }]; 
set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { KEY_2 }]; 
set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { KEY_3 }]; 

#######################################################################################
##Seven Segment
#######################################################################################
set_property -dict { PACKAGE_PIN D13    IOSTANDARD LVCMOS33 } [get_ports { sig_a }];
set_property -dict { PACKAGE_PIN C16    IOSTANDARD LVCMOS33 } [get_ports { sig_b }];
set_property -dict { PACKAGE_PIN E15    IOSTANDARD LVCMOS33 } [get_ports { sig_c }];
set_property -dict { PACKAGE_PIN F16    IOSTANDARD LVCMOS33 } [get_ports { sig_d }];
set_property -dict { PACKAGE_PIN E16    IOSTANDARD LVCMOS33 } [get_ports { sig_e }];
set_property -dict { PACKAGE_PIN C15    IOSTANDARD LVCMOS33 } [get_ports { sig_f }];
set_property -dict { PACKAGE_PIN D15    IOSTANDARD LVCMOS33 } [get_ports { sig_g }];
set_property -dict { PACKAGE_PIN F15    IOSTANDARD LVCMOS33 } [get_ports { sig_pd }];

set_property -dict { PACKAGE_PIN D12    IOSTANDARD LVCMOS33 } [get_ports { sel_disp1 }];
set_property -dict { PACKAGE_PIN H14    IOSTANDARD LVCMOS33 } [get_ports { sel_disp2 }];
set_property -dict { PACKAGE_PIN G14    IOSTANDARD LVCMOS33 } [get_ports { sel_disp3 }];
set_property -dict { PACKAGE_PIN G13    IOSTANDARD LVCMOS33 } [get_ports { sel_disp4 }];

#######################################################################################
##relay
#######################################################################################
set_property -dict { PACKAGE_PIN M16    IOSTANDARD LVCMOS33 } [get_ports { relay}];

#######################################################################################
##Buzzer
#######################################################################################
set_property -dict { PACKAGE_PIN P14    IOSTANDARD LVCMOS33 } [get_ports { buzzer }];

#######################################################################################
##RGB LED
#######################################################################################
set_property -dict { PACKAGE_PIN R15    IOSTANDARD LVCMOS33 } [get_ports { led1_red }];
set_property -dict { PACKAGE_PIN P15    IOSTANDARD LVCMOS33 } [get_ports { led1green}];
set_property -dict { PACKAGE_PIN R16    IOSTANDARD LVCMOS33 } [get_ports { led1_blue}];
set_property -dict { PACKAGE_PIN N15    IOSTANDARD LVCMOS33 } [get_ports { led2_red }];
set_property -dict { PACKAGE_PIN N16    IOSTANDARD LVCMOS33 } [get_ports { led2green}];
set_property -dict { PACKAGE_PIN R18    IOSTANDARD LVCMOS33 } [get_ports { led2_blue}];
set_property -dict { PACKAGE_PIN P17    IOSTANDARD LVCMOS33 } [get_ports { led3_red }];
set_property -dict { PACKAGE_PIN P18    IOSTANDARD LVCMOS33 } [get_ports { led3green}];
set_property -dict { PACKAGE_PIN N17    IOSTANDARD LVCMOS33 } [get_ports { led3_blue}];

#######################################################################################
###UART usb to serial
#######################################################################################
set_property -dict { PACKAGE_PIN A11    IOSTANDARD LVCMOS33 } [get_ports { RX_232 }];
set_property -dict { PACKAGE_PIN B11    IOSTANDARD LVCMOS33 } [get_ports { TX_232 }];

#######################################################################################
###HDMI out  
#######################################################################################
set_property -dict { PACKAGE_PIN J15 IOSTANDARD TMDS_33 } [get_ports {data_n[0]}];
set_property -dict { PACKAGE_PIN K15 IOSTANDARD TMDS_33 } [get_ports {data_p[0]}];
set_property -dict { PACKAGE_PIN G16 IOSTANDARD TMDS_33 } [get_ports {data_n[1]}];
set_property -dict { PACKAGE_PIN H16 IOSTANDARD TMDS_33 } [get_ports {data_p[1]}];
set_property -dict { PACKAGE_PIN J13 IOSTANDARD TMDS_33 } [get_ports {data_n[2]}];
set_property -dict { PACKAGE_PIN K13 IOSTANDARD TMDS_33 } [get_ports {data_p[2]}];
set_property -dict { PACKAGE_PIN J18 IOSTANDARD TMDS_33 } [get_ports {clk_n}];
set_property -dict { PACKAGE_PIN J17 IOSTANDARD TMDS_33 } [get_ports {clk_p}];

#######################################################################################
## OV7670 ##J11           
#######################################################################################
set_property -dict { PACKAGE_PIN D17 IOSTANDARD LVCMOS33 } [get_ports {ov7670_data[0]}];
set_property -dict { PACKAGE_PIN C17 IOSTANDARD LVCMOS33 } [get_ports {ov7670_data[1]}];
set_property -dict { PACKAGE_PIN E17 IOSTANDARD LVCMOS33 } [get_ports {ov7670_data[2]}];
set_property -dict { PACKAGE_PIN D18 IOSTANDARD LVCMOS33 } [get_ports {ov7670_data[3]}];
set_property -dict { PACKAGE_PIN F18 IOSTANDARD LVCMOS33 } [get_ports {ov7670_data[4]}];
set_property -dict { PACKAGE_PIN E18 IOSTANDARD LVCMOS33 } [get_ports {ov7670_data[5]}];
set_property -dict { PACKAGE_PIN G18 IOSTANDARD LVCMOS33 } [get_ports {ov7670_data[6]}];
set_property -dict { PACKAGE_PIN G17 IOSTANDARD LVCMOS33 } [get_ports {ov7670_data[7]}];

set_property -dict { PACKAGE_PIN J14  IOSTANDARD LVCMOS33 } [get_ports {ov7670_href}];
set_property -dict { PACKAGE_PIN L18  IOSTANDARD LVCMOS33 } [get_ports {ov7670_sioc}];
set_property -dict { PACKAGE_PIN M18  IOSTANDARD LVCMOS33 } [get_ports {ov7670_siod}];
set_property -dict { PACKAGE_PIN K16  IOSTANDARD LVCMOS33 } [get_ports {ov7670_vsync}];
set_property -dict { PACKAGE_PIN H15  IOSTANDARD LVCMOS33 } [get_ports {ov7670_xclk}];
set_property -dict { PACKAGE_PIN H17  IOSTANDARD LVCMOS33 } [get_ports {ov7670_pclk}];
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {ov7670_pclk_IBUF}];

#######################################################################################
#Arduino Shield Connector 
#Note all IO have 3.3V logic level 
#Note VIN should not extend 5V
#######################################################################################
set_property -dict {PACKAGE_PIN T9 IOSTANDARD LVCMOS33} [get_ports {SHIELD_RESET}];

## WHEN USED AS DIGITAL IO
set_property -dict {PACKAGE_PIN T13 IOSTANDARD LVCMOS33} [get_ports {SHIELD_A0}]; #SHIELD_A0
set_property -dict {PACKAGE_PIN R12 IOSTANDARD LVCMOS33} [get_ports {SHIELD_A1}]; #SHIELD_A1
set_property -dict {PACKAGE_PIN R11 IOSTANDARD LVCMOS33} [get_ports {SHIELD_A2}]; #SHIELD_A2
set_property -dict {PACKAGE_PIN T11 IOSTANDARD LVCMOS33} [get_ports {SHIELD_A3}]; #SHIELD_A3
set_property -dict {PACKAGE_PIN R10 IOSTANDARD LVCMOS33} [get_ports {SHIELD_A4}]; #SHIELD_A4
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports {SHIELD_A5}]; #SHIELD_A5


## WHEN USED AS ANALOG IO
set_property -dict {PACKAGE_PIN C4 IOSTANDARD LVCMOS33} [get_ports vaxp6]    #SHIELD_A0
set_property -dict {PACKAGE_PIN B4 IOSTANDARD LVCMOS33} [get_ports vaxn6]    #SHIELD_A0
set_property -dict {PACKAGE_PIN B7 IOSTANDARD LVCMOS33} [get_ports vaxp12]   #SHIELD_A1
set_property -dict {PACKAGE_PIN B6 IOSTANDARD LVCMOS33} [get_ports vaxn12    #SHIELD_A1
set_property -dict {PACKAGE_PIN A6 IOSTANDARD LVCMOS33} [get_ports vaxp5]    #SHIELD_A2
set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS33} [get_ports vaxn5]    #SHIELD_A2
set_property -dict {PACKAGE_PIN A4 IOSTANDARD LVCMOS33} [get_ports vaxp14]   #SHIELD_A3
set_property -dict {PACKAGE_PIN A3 IOSTANDARD LVCMOS33} [get_ports vaxn14]   #SHIELD_A3
set_property -dict {PACKAGE_PIN B3 IOSTANDARD LVCMOS33} [get_ports vaxp15]   #SHIELD_A4
set_property -dict {PACKAGE_PIN B2 IOSTANDARD LVCMOS33} [get_ports vaxn15]   #SHIELD_A4
set_property -dict {PACKAGE_PIN B1 IOSTANDARD LVCMOS33} [get_ports vaxp7]    #SHIELD_A5
set_property -dict {PACKAGE_PIN A1 IOSTANDARD LVCMOS33} [get_ports vaxn7]    #SHIELD_A5

#DIGITAL IO
set_property -dict {PACKAGE_PIN V10 IOSTANDARD LVCMOS33} [get_ports {SHIELD_IO0}]; #SHIELD_IO0
set_property -dict {PACKAGE_PIN V11 IOSTANDARD LVCMOS33} [get_ports {SHIELD_IO1}]; #SHIELD_IO1
set_property -dict {PACKAGE_PIN U11 IOSTANDARD LVCMOS33} [get_ports {SHIELD_IO2}]; #SHIELD_IO2
set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports {SHIELD_IO3}]; #SHIELD_IO3
set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33} [get_ports {SHIELD_IO4}]; #SHIELD_IO4
set_property -dict {PACKAGE_PIN U13 IOSTANDARD LVCMOS33} [get_ports {SHIELD_IO5}]; #SHIELD_IO5
set_property -dict {PACKAGE_PIN V14 IOSTANDARD LVCMOS33} [get_ports {SHIELD_IO6}]; #SHIELD_IO6
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports {SHIELD_IO7}]; #SHIELD_IO7
set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports {SHIELD_IO8}]; #SHIELD_IO8
set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports {SHIELD_IO9}]; #SHIELD_IO9
set_property -dict {PACKAGE_PIN U16 IOSTANDARD LVCMOS33} [get_ports {SHIELD_IO10}]; #SHIELD_IO10
set_property -dict {PACKAGE_PIN V17 IOSTANDARD LVCMOS33} [get_ports {SHIELD_IO11}]; #SHIELD_IO11
set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports {SHIELD_IO12}]; #SHIELD_IO12
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports {SHIELD_IO13}]; #SHIELD_IO13

#DIGITAL IO
set_property -dict {PACKAGE_PIN T9 IOSTANDARD LVCMOS33} [get_ports {SHIELD_IO42}]; #SHIELD_IO42

#I2C
set_property -dict {PACKAGE_PIN R13 IOSTANDARD LVCMOS33} [get_ports {SHIELD_SCL}]; #SHIELD_SCL
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports {SHIELD_SDA}]; #SHIELD_SDA

#######################################################################################
##PMOD JA  J1
#######################################################################################
set_property -dict { PACKAGE_PIN A13    IOSTANDARD LVCMOS33 } [get_ports { JA_1 }]; #IO_L9P_T1_DQS_AD3P_15
set_property -dict { PACKAGE_PIN A14    IOSTANDARD LVCMOS33 } [get_ports { JA_2 }]; #IO_L9N_T1_DQS_AD3N_15
set_property -dict { PACKAGE_PIN A15    IOSTANDARD LVCMOS33 } [get_ports { JA_3 }]; #IO_L8P_T1_AD10P_15
set_property -dict { PACKAGE_PIN A16    IOSTANDARD LVCMOS33 } [get_ports { JA_4 }]; #IO_L8N_T1_AD10N_15
set_property -dict { PACKAGE_PIN C12    IOSTANDARD LVCMOS33 } [get_ports { JA_7 }]; #IO_L3P_T0_DQS_AD1P_15
set_property -dict { PACKAGE_PIN B12    IOSTANDARD LVCMOS33 } [get_ports { JA_8 }]; #IO_L3N_T0_DQS_AD1N_15
set_property -dict { PACKAGE_PIN B13    IOSTANDARD LVCMOS33 } [get_ports { JA_9 }]; #IO_L2P_T0_AD8P_15
set_property -dict { PACKAGE_PIN B14    IOSTANDARD LVCMOS33 } [get_ports { JA_10}]; #IO_L2N_T0_AD8N_15

#######################################################################################
##PMOD JB  J2
#######################################################################################
set_property -dict { PACKAGE_PIN B18    IOSTANDARD LVCMOS33 } [get_ports { JB_1 }]; #IO_L10P_T1_AD11P_15
set_property -dict { PACKAGE_PIN A18    IOSTANDARD LVCMOS33 } [get_ports { JB_2 }]; #IO_L10N_T1_AD11N_15
set_property -dict { PACKAGE_PIN B16    IOSTANDARD LVCMOS33 } [get_ports { JB_3 }]; #IO_L7P_T1_AD2P_15
set_property -dict { PACKAGE_PIN B17    IOSTANDARD LVCMOS33 } [get_ports { JB_4 }]; #IO_L7N_T1_AD2N_15
set_property -dict { PACKAGE_PIN D14    IOSTANDARD LVCMOS33 } [get_ports { JB_7 }]; #IO_L1P_T0_AD0P_15
set_property -dict { PACKAGE_PIN C14    IOSTANDARD LVCMOS33 } [get_ports { JB_8 }]; #IO_L1N_T0_AD0N_15
set_property -dict { PACKAGE_PIN F13    IOSTANDARD LVCMOS33 } [get_ports { JB_9 }]; #IO_L5P_T0_AD9P_15
set_property -dict { PACKAGE_PIN F14    IOSTANDARD LVCMOS33 } [get_ports { JB_10}]; #IO_L5N_T0_AD9N_15


#######################################################################################
##PMOD JC  # J3
#Avaliable when not using Arduino Shield Connector 
#######################################################################################
set_property -dict { PACKAGE_PIN V10    IOSTANDARD LVCMOS33 } [get_ports { JC_1 }];
set_property -dict { PACKAGE_PIN V11    IOSTANDARD LVCMOS33 } [get_ports { JC_2 }];
set_property -dict { PACKAGE_PIN U11    IOSTANDARD LVCMOS33 } [get_ports { JC_3 }];
set_property -dict { PACKAGE_PIN V12    IOSTANDARD LVCMOS33 } [get_ports { JC_4 }];
set_property -dict { PACKAGE_PIN U12    IOSTANDARD LVCMOS33 } [get_ports { JC_7 }];
set_property -dict { PACKAGE_PIN U13    IOSTANDARD LVCMOS33 } [get_ports { JC_8 }];
set_property -dict { PACKAGE_PIN V14    IOSTANDARD LVCMOS33 } [get_ports { JC_9 }];
set_property -dict { PACKAGE_PIN U14    IOSTANDARD LVCMOS33 } [get_ports { JC_10}]; 

####################################################################################### 
##PMOD JD  #J4 
#Avaliable when not using Arduino Shield Connector 
#######################################################################################
set_property -dict { PACKAGE_PIN V15    IOSTANDARD LVCMOS33 } [get_ports { JD_1 }];
set_property -dict { PACKAGE_PIN V16    IOSTANDARD LVCMOS33 } [get_ports { JD_2 }];
set_property -dict { PACKAGE_PIN U16    IOSTANDARD LVCMOS33 } [get_ports { JD_3 }];
set_property -dict { PACKAGE_PIN V17    IOSTANDARD LVCMOS33 } [get_ports { JD_4 }];
set_property -dict { PACKAGE_PIN U17    IOSTANDARD LVCMOS33 } [get_ports { JD_7 }];
set_property -dict { PACKAGE_PIN U18    IOSTANDARD LVCMOS33 } [get_ports { JD_8 }];
set_property -dict { PACKAGE_PIN R17    IOSTANDARD LVCMOS33 } [get_ports { JD_9 }];
set_property -dict { PACKAGE_PIN R13    IOSTANDARD LVCMOS33 } [get_ports { JD_10}]; 





####################################################################################### 
##XADC channal for LDR
#######################################################################################
set_property -dict {PACKAGE_PIN C6  IOSTANDARD LVCMOS33} [get_ports vaxp4]; #IO_L1P_T0_AD4P_35		
set_property -dict {PACKAGE_PIN C5  IOSTANDARD LVCMOS33} [get_ports vaxn4]; #IO_L1N_T0_AD4N_35

####################################################################################### 
##XADC channal for POT
#######################################################################################
set_property -dict {PACKAGE_PIN J10 IOSTANDARD LVCMOS33} [get_ports vp_in]; #VP_0
set_property -dict {PACKAGE_PIN K9  IOSTANDARD LVCMOS33} [get_ports vn_in]; #VP_N

####################################################################################### 
##XADC channal for LM35 temperature sensor
#######################################################################################
set_property -dict {PACKAGE_PIN E6  IOSTANDARD LVCMOS33} [get_ports vaxp13];#IO_L5P_T0_AD13P_35		
set_property -dict {PACKAGE_PIN E5  IOSTANDARD LVCMOS33} [get_ports vaxn13];#IO_L5N_T0_AD13N_35

####################################################################################### 
##QSPI FLASH
#######################################################################################
set_property -dict { PACKAGE_PIN E9    IOSTANDARD LVCMOS33 }  [get_ports { cclk }];
set_property -dict { PACKAGE_PIN L13    IOSTANDARD LVCMOS33 } [get_ports { flash_cs }];
set_property -dict { PACKAGE_PIN K17    IOSTANDARD LVCMOS33 } [get_ports { flash_d[0] }];
set_property -dict { PACKAGE_PIN K18    IOSTANDARD LVCMOS33 } [get_ports { flash_d[1] }];
set_property -dict { PACKAGE_PIN L14    IOSTANDARD LVCMOS33 } [get_ports { flash_d[2] }];
set_property -dict { PACKAGE_PIN M14    IOSTANDARD LVCMOS33 } [get_ports { flash_d[3] }];

####################################################################################### 
##SPI DAC
#######################################################################################
set_property -dict { PACKAGE_PIN E9    IOSTANDARD LVCMOS33 }  [get_ports { cclk }];
set_property -dict { PACKAGE_PIN M17    IOSTANDARD LVCMOS33 } [get_ports { DAC_CS }];
set_property -dict { PACKAGE_PIN K17    IOSTANDARD LVCMOS33 } [get_ports { DAC_DATA}];

####################################################################################### 
##ETHERNET
#######################################################################################

set_property -dict { PACKAGE_PIN C9    IOSTANDARD LVCMOS33 }  [get_ports { eth_mdc }];
set_property -dict { PACKAGE_PIN A9    IOSTANDARD LVCMOS33 }  [get_ports { eth_mdio_i }];
set_property -dict { PACKAGE_PIN D9    IOSTANDARD LVCMOS33 }  [get_ports { eth_rmii_crs_dv }]
set_property -dict { PACKAGE_PIN D10   IOSTANDARD LVCMOS33 }  [get_ports { eth_rmii_rxd_0 }]
set_property -dict { PACKAGE_PIN C11   IOSTANDARD LVCMOS33 }  [get_ports { eth_rmii_rxd_1 }]
set_property -dict { PACKAGE_PIN C10   IOSTANDARD LVCMOS33 }  [get_ports { eth_rmii_rx_er }]
set_property -dict { PACKAGE_PIN A10   IOSTANDARD LVCMOS33 }  [get_ports { eth_rmii_txd_0 }]
set_property -dict { PACKAGE_PIN A8    IOSTANDARD LVCMOS33 }  [get_ports { eth_rmii_txd_1 }]
set_property -dict { PACKAGE_PIN B9    IOSTANDARD LVCMOS33 }  [get_ports { eth_rmii_tx_en }]

set_property -dict { PACKAGE_PIN B8    IOSTANDARD LVCMOS33 }  [get_ports { eth_intn }]
set_property -dict { PACKAGE_PIN D8    IOSTANDARD LVCMOS33 }  [get_ports { eth_rst }]
set_property -dict { PACKAGE_PIN E2    IOSTANDARD LVCMOS33 }  [get_ports { eth_clk }]




#######################################################################################
## ALL XADC CHANNAL
#######################################################################################

set_property -dict {PACKAGE_PIN J10 IOSTANDARD LVCMOS33} [get_ports vp_in]; #VP_0
set_property -dict {PACKAGE_PIN K9  IOSTANDARD LVCMOS33} [get_ports vn_in]; #VP_N
set_property -dict {PACKAGE_PIN D14 IOSTANDARD LVCMOS33} [get_ports vaxp0]; #IO_L1P_T0_AD0P_15	    
set_property -dict {PACKAGE_PIN C14 IOSTANDARD LVCMOS33} [get_ports vaxn0]; #IO_L1N_T0_AD0N_15	
set_property -dict {PACKAGE_PIN C12 IOSTANDARD LVCMOS33} [get_ports vaxp1]; #IO_L3P_T0_DQS_AD1P_15	
set_property -dict {PACKAGE_PIN B12 IOSTANDARD LVCMOS33} [get_ports vaxn1]; #IO_L3N_T0_DQS_AD1N_15	
set_property -dict {PACKAGE_PIN B16 IOSTANDARD LVCMOS33} [get_ports vaxp2]; #IO_L7P_T1_AD2P_15	    
set_property -dict {PACKAGE_PIN B17 IOSTANDARD LVCMOS33} [get_ports vaxn2]; #IO_L7N_T1_AD2N_15		
set_property -dict {PACKAGE_PIN A13 IOSTANDARD LVCMOS33} [get_ports vaxp3]; #IO_L9P_T1_DQS_AD3P_15	
set_property -dict {PACKAGE_PIN A14 IOSTANDARD LVCMOS33} [get_ports vaxn3]; #IO_L9N_T1_DQS_AD3N_15	
set_property -dict {PACKAGE_PIN C6  IOSTANDARD LVCMOS33} [get_ports vaxp4]; #IO_L1P_T0_AD4P_35		
set_property -dict {PACKAGE_PIN C5  IOSTANDARD LVCMOS33} [get_ports vaxn4]; #IO_L1N_T0_AD4N_35		
set_property -dict {PACKAGE_PIN A6  IOSTANDARD LVCMOS33} [get_ports vaxp5]; #IO_L3P_T0_DQS_AD5P_35	
set_property -dict {PACKAGE_PIN A5  IOSTANDARD LVCMOS33} [get_ports vaxn5]; #IO_L3N_T0_DQS_AD5N_35	
set_property -dict {PACKAGE_PIN C4  IOSTANDARD LVCMOS33} [get_ports vaxp6]; #IO_L7P_T1_AD6P_35		
set_property -dict {PACKAGE_PIN B4  IOSTANDARD LVCMOS33} [get_ports vaxn6]; #IO_L7N_T1_AD6N_35		
set_property -dict {PACKAGE_PIN B1  IOSTANDARD LVCMOS33} [get_ports vaxp7]; #IO_L9P_T1_DQS_AD7P_35	
set_property -dict {PACKAGE_PIN A1  IOSTANDARD LVCMOS33} [get_ports vaxn7]; #IO_L9N_T1_DQS_AD7N_35	
set_property -dict {PACKAGE_PIN B13 IOSTANDARD LVCMOS33} [get_ports vaxp8]; #IO_L2P_T0_AD8P_15		
set_property -dict {PACKAGE_PIN B14 IOSTANDARD LVCMOS33} [get_ports vaxn8]; #IO_L2N_T0_AD8N_15		
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS33} [get_ports vaxp9]; #IO_L5P_T0_AD9P_15		
set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS33} [get_ports vaxn9]; #IO_L5N_T0_AD9N_15		
set_property -dict {PACKAGE_PIN A15 IOSTANDARD LVCMOS33} [get_ports vaxp10];#IO_L8P_T1_AD10P_15		
set_property -dict {PACKAGE_PIN A16 IOSTANDARD LVCMOS33} [get_ports vaxn10];#IO_L8N_T1_AD10N_15		
set_property -dict {PACKAGE_PIN B18 IOSTANDARD LVCMOS33} [get_ports vaxp11];#IO_L10P_T1_AD11P_15		
set_property -dict {PACKAGE_PIN A18 IOSTANDARD LVCMOS33} [get_ports vaxn11];#IO_L10N_T1_AD11N_15		
set_property -dict {PACKAGE_PIN B7  IOSTANDARD LVCMOS33} [get_ports vaxp12];#IO_L2P_T0_AD12P_35		
set_property -dict {PACKAGE_PIN B6  IOSTANDARD LVCMOS33} [get_ports vaxn12];#IO_L2N_T0_AD12N_35		
set_property -dict {PACKAGE_PIN E6  IOSTANDARD LVCMOS33} [get_ports vaxp13];#IO_L5P_T0_AD13P_35		
set_property -dict {PACKAGE_PIN E5  IOSTANDARD LVCMOS33} [get_ports vaxn13];#IO_L5N_T0_AD13N_35		
set_property -dict {PACKAGE_PIN A4  IOSTANDARD LVCMOS33} [get_ports vaxp14];#IO_L8P_T1_AD14P_35		
set_property -dict {PACKAGE_PIN A3  IOSTANDARD LVCMOS33} [get_ports vaxn14];#IO_L8N_T1_AD14N_35		
set_property -dict {PACKAGE_PIN B3  IOSTANDARD LVCMOS33} [get_ports vaxp15];#IO_L10P_T1_AD15P_35		
set_property -dict {PACKAGE_PIN B2  IOSTANDARD LVCMOS33} [get_ports vaxn15];#IO_L10N_T1_AD15N_35	 


	
    
set_property -dict { PACKAGE_PIN L16    IOSTANDARD LVCMOS33 } [get_ports { clk_in1_0 }];
#set_property -dict { PACKAGE_PIN P17    IOSTANDARD LVCMOS33 } [get_ports { clk_in1_0 }];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk_in1_0}];
 set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets design_1_i/clk_wiz_0/inst/clk_in1_design_1_clk_wiz_0_0] 




## LEDs
set_property -dict {PACKAGE_PIN F1 IOSTANDARD LVCMOS33} [get_ports {LED_tri_o[0]}];
set_property -dict {PACKAGE_PIN E1 IOSTANDARD LVCMOS33} [get_ports {LED_tri_o[1]}];
set_property -dict {PACKAGE_PIN J3 IOSTANDARD LVCMOS33} [get_ports {LED_tri_o[2]}];
set_property -dict {PACKAGE_PIN D2 IOSTANDARD LVCMOS33} [get_ports {LED_tri_o[3]}];
set_property -dict {PACKAGE_PIN C1 IOSTANDARD LVCMOS33} [get_ports {LED_tri_o[4]}];
set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVCMOS33} [get_ports {LED_tri_o[5]}];
set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS33} [get_ports {LED_tri_o[6]}];
set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS33} [get_ports {LED_tri_o[7]}];
set_property -dict {PACKAGE_PIN G3 IOSTANDARD LVCMOS33} [get_ports {LED_tri_o[8]}];
set_property -dict {PACKAGE_PIN G4 IOSTANDARD LVCMOS33} [get_ports {LED_tri_o[9]}];
set_property -dict {PACKAGE_PIN F3 IOSTANDARD LVCMOS33} [get_ports {LED_tri_o[10]}];
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports {LED_tri_o[11]}];
set_property -dict {PACKAGE_PIN F4 IOSTANDARD LVCMOS33} [get_ports {LED_tri_o[12]}];
set_property -dict {PACKAGE_PIN D3 IOSTANDARD LVCMOS33} [get_ports {LED_tri_o[13]}];
set_property -dict {PACKAGE_PIN D4 IOSTANDARD LVCMOS33} [get_ports {LED_tri_o[14]}];
set_property -dict {PACKAGE_PIN D7 IOSTANDARD LVCMOS33} [get_ports {LED_tri_o[15]}];



set_property -dict { PACKAGE_PIN A11    IOSTANDARD LVCMOS33 } [get_ports { usb_uart_rxd }];
set_property -dict { PACKAGE_PIN B11    IOSTANDARD LVCMOS33 } [get_ports { usb_uart_txd }];


set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { reset }];

set_property -dict { PACKAGE_PIN K2   IOSTANDARD LVCMOS33 } [get_ports { SW }];


#######################################################################################
###HDMI out  
#######################################################################################
set_property -dict { PACKAGE_PIN J15 IOSTANDARD TMDS_33 } [get_ports {TMDS_Data_n_0[0]}];
set_property -dict { PACKAGE_PIN K15 IOSTANDARD TMDS_33 } [get_ports {TMDS_Data_p_0[0]}];
set_property -dict { PACKAGE_PIN G16 IOSTANDARD TMDS_33 } [get_ports {TMDS_Data_n_0[1]}];
set_property -dict { PACKAGE_PIN H16 IOSTANDARD TMDS_33 } [get_ports {TMDS_Data_p_0[1]}];
set_property -dict { PACKAGE_PIN J13 IOSTANDARD TMDS_33 } [get_ports {TMDS_Data_n_0[2]}];
set_property -dict { PACKAGE_PIN K13 IOSTANDARD TMDS_33 } [get_ports {TMDS_Data_p_0[2]}];
set_property -dict { PACKAGE_PIN J18 IOSTANDARD TMDS_33 } [get_ports {TMDS_Clk_n_0}];
set_property -dict { PACKAGE_PIN J17 IOSTANDARD TMDS_33 } [get_ports {TMDS_Clk_p_0}];
   
#######################################################################################
##RGB LED
#######################################################################################
set_property -dict { PACKAGE_PIN R15    IOSTANDARD LVCMOS33 } [get_ports { rgb_led_tri_o[0]}];
set_property -dict { PACKAGE_PIN P15    IOSTANDARD LVCMOS33 } [get_ports { rgb_led_tri_o[1]}];
set_property -dict { PACKAGE_PIN R16    IOSTANDARD LVCMOS33 } [get_ports { rgb_led_tri_o[2]}];
set_property -dict { PACKAGE_PIN N15    IOSTANDARD LVCMOS33 } [get_ports { rgb_led_tri_o[3]}];
set_property -dict { PACKAGE_PIN N16    IOSTANDARD LVCMOS33 } [get_ports { rgb_led_tri_o[4]}];
set_property -dict { PACKAGE_PIN R18    IOSTANDARD LVCMOS33 } [get_ports { rgb_led_tri_o[5]}];
set_property -dict { PACKAGE_PIN P17    IOSTANDARD LVCMOS33 } [get_ports { rgb_led_tri_o[6]}];
set_property -dict { PACKAGE_PIN P18    IOSTANDARD LVCMOS33 } [get_ports { rgb_led_tri_o[7]}];
set_property -dict { PACKAGE_PIN N17    IOSTANDARD LVCMOS33 } [get_ports { rgb_led_tri_o[8]}];












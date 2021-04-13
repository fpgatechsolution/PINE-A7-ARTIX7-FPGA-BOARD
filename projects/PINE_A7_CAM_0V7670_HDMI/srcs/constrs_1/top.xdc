set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
# Clock signal

set_property -dict { PACKAGE_PIN L16    IOSTANDARD LVCMOS33 } [get_ports { clk100 }];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk100}];
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets INST_CLOCKING/inst/clk_in1_clk_wiz_0] 

##Buttons
set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { btnc }]; 

#Switches
set_property -dict { PACKAGE_PIN K1  IOSTANDARD LVCMOS33 } [get_ports { btnl }]; 
set_property -dict { PACKAGE_PIN K2  IOSTANDARD LVCMOS33 } [get_ports { btnr}]; 

set_property -dict { PACKAGE_PIN D5  IOSTANDARD LVCMOS33 } [get_ports { SW1}]; 


## LEDs
set_property -dict { PACKAGE_PIN D7   IOSTANDARD LVCMOS33 } [get_ports { config_finished }]; 


           
## OV7670            


set_property PACKAGE_PIN D17 [get_ports {ov7670_data[0]}]
set_property PACKAGE_PIN C17 [get_ports {ov7670_data[1]}]
set_property PACKAGE_PIN E17 [get_ports {ov7670_data[2]}]
set_property PACKAGE_PIN D18 [get_ports {ov7670_data[3]}]
set_property PACKAGE_PIN F18 [get_ports {ov7670_data[4]}]
set_property PACKAGE_PIN E18 [get_ports {ov7670_data[5]}]
set_property PACKAGE_PIN G18 [get_ports {ov7670_data[6]}]
set_property PACKAGE_PIN G17 [get_ports {ov7670_data[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_data[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_data[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_data[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_data[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_data[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_data[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_data[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_data[7]}]					
	
set_property PACKAGE_PIN J14 [get_ports ov7670_href]
set_property PACKAGE_PIN H17 [get_ports ov7670_pclk]
set_property PACKAGE_PIN L18 [get_ports ov7670_sioc]
set_property PACKAGE_PIN M18 [get_ports ov7670_siod]
set_property PACKAGE_PIN K16 [get_ports ov7670_vsync]
set_property PACKAGE_PIN H15 [get_ports ov7670_xclk]

set_property IOSTANDARD LVCMOS33 [get_ports ov7670_xclk]			
set_property IOSTANDARD LVCMOS33 [get_ports ov7670_href]
set_property IOSTANDARD LVCMOS33 [get_ports ov7670_siod]
#set_property PULLUP TRUE [get_ports ov7670_siod]
set_property IOSTANDARD LVCMOS33 [get_ports ov7670_pclk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {ov7670_pclk_IBUF}]	
set_property IOSTANDARD LVCMOS33 [get_ports ov7670_vsync]
set_property IOSTANDARD LVCMOS33 [get_ports ov7670_sioc]


###HDMI out  

set_property PACKAGE_PIN J15 [get_ports data_n[0]]
set_property PACKAGE_PIN K15 [get_ports data_p[0]]
set_property PACKAGE_PIN G16 [get_ports data_n[1]]
set_property PACKAGE_PIN H16 [get_ports data_p[1]]
set_property PACKAGE_PIN J13 [get_ports data_n[2]]
set_property PACKAGE_PIN K13 [get_ports data_p[2]]
set_property PACKAGE_PIN J18 [get_ports clk_n]
set_property PACKAGE_PIN J17 [get_ports clk_p]

set_property IOSTANDARD TMDS_33 [get_ports data_n[0]]
set_property IOSTANDARD TMDS_33 [get_ports data_p[0]]
set_property IOSTANDARD TMDS_33 [get_ports data_n[1]]
set_property IOSTANDARD TMDS_33 [get_ports data_p[1]]
set_property IOSTANDARD TMDS_33 [get_ports data_n[2]]
set_property IOSTANDARD TMDS_33 [get_ports data_p[2]]
set_property IOSTANDARD TMDS_33 [get_ports clk_n]
set_property IOSTANDARD TMDS_33 [get_ports clk_p]



set_property PACKAGE_PIN V15 [get_ports lcd_rs]
set_property IOSTANDARD LVCMOS33 [get_ports lcd_rs]

set_property PACKAGE_PIN V16 [get_ports lcd_en]
set_property IOSTANDARD LVCMOS33 [get_ports lcd_en]


set_property PACKAGE_PIN U12 [get_ports {lcd_data[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_data[4]}]

set_property PACKAGE_PIN U13 [get_ports {lcd_data[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_data[5]}]

set_property PACKAGE_PIN V14 [get_ports {lcd_data[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_data[6]}]

set_property PACKAGE_PIN U14 [get_ports {lcd_data[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_data[7]}]



			
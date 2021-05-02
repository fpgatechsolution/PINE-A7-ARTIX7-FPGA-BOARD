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
 set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]
 
 
set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { rst_hw }];  


 ## WHEN USED AS DIGITAL IO
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports {so}]; #SHIELD_A0
set_property -dict { PACKAGE_PIN K1  IOSTANDARD LVCMOS33 } [get_ports { btn_n }]; 
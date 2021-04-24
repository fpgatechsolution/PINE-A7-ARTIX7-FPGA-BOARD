--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Sat Apr 24 15:00:14 2021
--Host        : DESKTOP-7ASG104 running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    LED_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TMDS_Clk_n_0 : out STD_LOGIC;
    TMDS_Clk_p_0 : out STD_LOGIC;
    TMDS_Data_n_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_Data_p_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_in1_0 : in STD_LOGIC;
    reset : in STD_LOGIC;
    rgb_led_tri_o : out STD_LOGIC_VECTOR ( 8 downto 0 );
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    TMDS_Clk_n_0 : out STD_LOGIC;
    TMDS_Clk_p_0 : out STD_LOGIC;
    TMDS_Data_n_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_Data_p_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_in1_0 : in STD_LOGIC;
    reset : in STD_LOGIC;
    LED_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rgb_led_tri_o : out STD_LOGIC_VECTOR ( 8 downto 0 );
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      LED_tri_o(15 downto 0) => LED_tri_o(15 downto 0),
      TMDS_Clk_n_0 => TMDS_Clk_n_0,
      TMDS_Clk_p_0 => TMDS_Clk_p_0,
      TMDS_Data_n_0(2 downto 0) => TMDS_Data_n_0(2 downto 0),
      TMDS_Data_p_0(2 downto 0) => TMDS_Data_p_0(2 downto 0),
      clk_in1_0 => clk_in1_0,
      reset => reset,
      rgb_led_tri_o(8 downto 0) => rgb_led_tri_o(8 downto 0),
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd
    );
end STRUCTURE;

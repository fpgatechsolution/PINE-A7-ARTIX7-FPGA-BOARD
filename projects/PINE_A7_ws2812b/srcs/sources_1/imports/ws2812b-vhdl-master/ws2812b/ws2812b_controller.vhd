library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
library xil_defaultlib;
use xil_defaultlib.all;


entity ws2812b_controller is
	generic(
		length : integer := 25        -- Amount of LEDs on the link
--		f_clk  : natural := 50000000;
--		T0H    : real    := 0.00000035;
--		T1H    : real    := 0.0000009;
--		T0L    : real    := 0.0000009;
--		T1L    : real    := 0.00000035;
--		DEL    : real    := 0.0000001;  -- Must be bigger than others
--		RES    : real    := 0.0000050
	);
	port(
		clk           : in  std_logic;
		rst           : in  std_logic;
		-- Hardware Connection
		
		pixData_red   : out  std_logic_vector(7 downto 0);
		pixData_green : out  std_logic_vector(7 downto 0);
		pixData_blue  : out  std_logic_vector(7 downto 0);
		pixData_valid : out  std_logic;
		pixData_next  : in std_logic

	);
end entity ws2812b_controller;

architecture RTL of ws2812b_controller is
	type memory_t is array (length - 1 downto 0) of std_logic_vector(23 downto 0);
	signal memory : memory_t;
	signal rdaddr : std_logic_vector(integer(ceil(log2(real(length - 1)))) downto 0);
	type state_t is (IDLE, PRESENT, WAITEMPTY);
	signal state         : state_t;
--	signal pixData_red   : std_logic_vector(7 downto 0);
--	signal pixData_green : std_logic_vector(7 downto 0);
--	signal pixData_blue  : std_logic_vector(7 downto 0);
--	signal pixData_valid : std_logic;
--	signal pixData_next  : std_logic;
	
	
	
	signal   addr         :std_logic_vector(integer(ceil(log2(real(length - 1)))) downto 0); -- Address of the LED
	signal	data_red      :std_logic_vector(7 downto 0);
	signal	data_green    :std_logic_vector(7 downto 0);
	signal	data_blue     :std_logic_vector(7 downto 0);
	signal	dataOut_red   :std_logic_vector(7 downto 0);
	signal	dataOut_green :std_logic_vector(7 downto 0);
	signal	dataOut_blue  :std_logic_vector(7 downto 0);
	signal	we            :std_logic;  -- Write to RAM
	signal	render        :std_logic;  -- Send data to LE Ds
	signal	vsync         :std_logic;   -- Finished sendin g data out 
	signal done          : std_logic;
	signal colIdx        : std_logic_vector(1 downto 0);
	
	
	
		
		
begin
--	-- -----------------------
--	-- Bit Timing Driver
--	-- -----------------------
--	ws2812b_phy_inst : entity xil_defaultlib.ws2812b_phy
--		generic map(
--			f_clk => f_clk,
--			T0H   => T0H,
--			T1H   => T1H,
--			T0L   => T0L,
--			T1L   => T1L,
--			DEL   => DEL,
--			RES   => RES
--		)
--		port map(
--			clk           => clk,
--			rst           => rst,
--			so            => so,
--			pixData_red   => pixData_red,
--			pixData_green => pixData_green,
--			pixData_blue  => pixData_blue,
--			pixData_valid => pixData_valid,
--			pixData_next  => pixData_next
--		);

	-- -----------------------
	-- Memory Interface
	-- -----------------------
	mem_writer : process(rst, clk) is
	begin
		if rst = '1' then
			dataOut_red   <= (others => '0');
			dataOut_green <= (others => '0');
			dataOut_blue  <= (others => '0');
		elsif rising_edge(clk) then
			dataOut_red   <= memory(to_integer(unsigned(addr)))(23 downto 16);
			dataOut_green <= memory(to_integer(unsigned(addr)))(15 downto 8);
			dataOut_blue  <= memory(to_integer(unsigned(addr)))(7 downto 0);
			if we = '1' then
				memory(to_integer(unsigned(addr))) <= data_red & data_green & data_blue;
			end if;
		end if;
	end process mem_writer;

	-- -----------------------
	-- Main Controller FSM
	-- -----------------------
	main : process(rst, clk) is
	begin
		if rst = '1' then
			rdaddr <= (others => '0');
			state  <= IDLE;
			vsync  <= '0';
		elsif rising_edge(clk) then
			vsync <= '0';
			case state is
				when IDLE =>
					rdaddr <= (others => '0');
					if render = '1' then
						report "SIZE=" & integer'image(integer(ceil(log2(real(length - 1)))));
						state <= PRESENT;
					end if;
				when PRESENT =>
					if pixData_next = '1' then
						if to_integer(unsigned(rdaddr)) = length - 1 then
							rdaddr <= (others => '0');
							state  <= WAITEMPTY;
							vsync  <= '1';
						else
							rdaddr <= std_logic_vector(unsigned(rdaddr) + 1);
						end if;
					end if;
				when WAITEMPTY =>
					rdaddr <= (others => '0');
					if pixData_next = '1' then
						state <= IDLE;
					end if;
			end case;
		end if;
	end process main;

	pixData_valid <= '1' when state = PRESENT else '0';

	pixData_red   <= memory(to_integer(unsigned(rdaddr)))(23 downto 16);
	pixData_green <= memory(to_integer(unsigned(rdaddr)))(15 downto 8);
	pixData_blue  <= memory(to_integer(unsigned(rdaddr)))(7 downto 0);


colIdx <= addr(1 downto 0);

	prog : process(clk, rst) is
		variable colRot : unsigned(1 downto 0);
		variable c2     : integer range 0 to 25000000;
	begin
		if rst = '1' then
			addr       <= (others => '1');
			data_red   <= (others => '0');
			data_green <= (others => '0');
			data_blue  <= (others => '0');
			we         <= '0';
			done       <= '1';
			c2         := 0;
			colRot     := "00";
			render     <= '0';
		elsif rising_edge(clk) then
			we     <= '0';
			render <= '0';
			if done = '0' then
				addr <= std_logic_vector(unsigned(addr) + 1);

				-- If we wrote the entire strip, render the data!
				if to_integer(unsigned(addr)) = length - 1 then
					done   <= '1';
					render <= '1';
				end if;

				if unsigned(colIdx) = colRot then
					data_red   <= (others => '1');
					data_green <= (others => '0');
					data_blue  <= (others => '0');
				elsif unsigned(colIdx) = colRot + 1 then
					data_red   <= (others => '0');
					data_green <= (others => '1');
					data_blue  <= (others => '0');
				elsif unsigned(colIdx) = colRot + 2 then
					data_red   <= (others => '0');
					data_green <= (others => '0');
					data_blue  <= (others => '1');
				else
					data_red   <= std_logic_vector(to_unsigned(127, 8));
					data_green <= std_logic_vector(to_unsigned(127, 8));
					data_blue  <= (others => '0');
				end if;

--				if (btn_n = '0') then
--					data_red   <= (others => '1');
--					data_green <= (others => '1');
--					data_blue  <= (others => '1');
--				end if;
				we <= '1';
			else
				if c2 = 10000000 then
					done   <= '0';
					c2     := 0;
					colRot := colRot + 1;
				else
					c2 := c2 + 1;
				end if;
			end if;
		end if;
	end process prog;


end architecture RTL;

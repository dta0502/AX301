library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_signed.all;

entity uart_rx is
	port (
	clk          : in std_logic;
	rst_n        : in std_logic;
	rx_data_en   : out std_logic;
	rx_data      : out std_logic_vector(7  downto 0);
	rxd          : in std_logic
	);
end entity;
architecture rtl of uart_rx is
--定义状态机状态类型
type SM_STATES is (S_IDLE,S_START,S_BIT0,S_BIT1,S_BIT2,S_BIT3,S_BIT4,S_BIT5,S_BIT6,S_BIT7,S_STOP);
signal state       :SM_STATES;
signal rxd_d0       : std_logic;
signal rxd_d1       : std_logic;
signal bit_cnt      : std_logic_vector(15 downto 0);
signal rxd_negedge  : std_logic;
begin
	--RXD下降沿
	rxd_negedge <= rxd_d1 and  not rxd_d0;
	
	process(clk,rst_n) is
	begin
		if rst_n = '0' then
			rxd_d0 <= '0';
			rxd_d1 <= '0';
		elsif clk'event and clk = '1' then
			rxd_d0 <= rxd;
			rxd_d1 <= rxd_d0;
		end if;
	end process;
	
	process(clk,rst_n) is
	begin
		if rst_n = '0' then
			state <= S_IDLE;
			rx_data <= (others => '0');
			rx_data_en <= '0';
		elsif clk'event and clk = '1' then
			case state is
				when S_IDLE =>
				if rxd_negedge = '1' then
					state <= S_START;
				end if;
				when S_START =>
					if bit_cnt = X"1458" then
						state <= S_BIT0;
						bit_cnt <= (others => '0');
					else
						bit_cnt <= bit_cnt + 1;
					end if;
				
				when S_BIT0 =>
					if bit_cnt = X"1458" then
						state <= S_BIT1;
						bit_cnt <= (others => '0');
					else
						bit_cnt <= bit_cnt + 1;
					end if;
					if bit_cnt = X"0A2C" then 
						rx_data(0) <= rxd_d1;
					end if;
					
				
				when S_BIT1 =>
					if bit_cnt = X"1458" then
						state <= S_BIT2;
						bit_cnt <= (others => '0');
					else
						bit_cnt <= bit_cnt + 1;
					end if;
					if bit_cnt = X"0A2C" then 
						rx_data(1) <= rxd_d1;
					end if;
				
				when S_BIT2 =>
					if bit_cnt = X"1458" then
						state <= S_BIT3;
						bit_cnt <= (others => '0');
					else
						bit_cnt <= bit_cnt + 1;
					end if;
					if bit_cnt = X"0A2C" then 
						rx_data(2) <= rxd_d1;
					end if;
				
				when S_BIT3 =>
					if bit_cnt = X"1458" then
						state <= S_BIT4;
						bit_cnt <= (others => '0');
					else
						bit_cnt <= bit_cnt + 1;
					end if;
					if bit_cnt = X"0A2C" then 
						rx_data(3) <= rxd_d1;
					end if;
				
				when S_BIT4 =>
					if bit_cnt = X"1458" then
						state <= S_BIT5;
						bit_cnt <= (others => '0');
					else
						bit_cnt <= bit_cnt + 1;
					end if;
					if bit_cnt = X"0A2C" then 
						rx_data(4) <= rxd_d1;
					end if;
					
				when S_BIT5 =>
					if bit_cnt = X"1458" then
						state <= S_BIT6;
						bit_cnt <= (others => '0');
					else
						bit_cnt <= bit_cnt + 1;
					end if;
					if bit_cnt = X"0A2C" then 
						rx_data(5) <= rxd_d1;
					end if;
					
				when S_BIT6 =>
					if bit_cnt = X"1458" then
						state <= S_BIT7;
						bit_cnt <= (others => '0');
					else
						bit_cnt <= bit_cnt + 1;
					end if;
					if bit_cnt = X"0A2C" then 
						rx_data(6) <= rxd_d1;
					end if;
				
				when S_BIT7 =>
					if bit_cnt = X"1458" then
						state <= S_STOP;
						bit_cnt <= (others => '0');
					else
						bit_cnt <= bit_cnt + 1;
					end if;
					if bit_cnt = X"0A2C" then 
						rx_data(7) <= rxd_d1;
					end if;
				
				when S_STOP =>
					if bit_cnt  = X"0A2C" then
						state <= S_IDLE;
						bit_cnt <= (others => '0');
					else
						bit_cnt <= bit_cnt + 1;
					end if;
					
					if bit_cnt = X"0516" and rxd_d1 = '1' then
						rx_data_en <= '1';
					else
						rx_data_en <= '0';
					end if;
					
				when others => 
					state <= S_IDLE;
			end case;
		end if;
	end process;
end architecture;
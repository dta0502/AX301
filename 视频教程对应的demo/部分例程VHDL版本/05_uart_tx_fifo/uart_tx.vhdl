library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_signed.all;

entity uart_tx is
  port ( 
	clk          : in std_logic;
	rst_n        : in std_logic;
	tx_data_en   : in std_logic;
	tx_data      : in std_logic_vector(7  downto 0);
	ready        : out std_logic;
	txd          : out std_logic
	);
end entity;

architecture rtl of uart_tx is
--定义状态机状态类型
type SM_STATES is (S_IDLE,S_START,S_BIT0,S_BIT1,S_BIT2,S_BIT3,S_BIT4,S_BIT5,S_BIT6,S_BIT7,S_STOP);
signal state       :SM_STATES;
signal tx_data_latch   : std_logic_vector(7  downto 0);
signal bit_timer       : std_logic_vector(15 downto 0);
--signal tx_data         : std_logic_vector(7  downto 0);
begin
	--tx_data <= X"12";
	ready <= '1' when (state = S_IDLE) else '0';
	process(clk,rst_n) is
	begin
		if rst_n = '0' then
			state <= S_IDLE;
			bit_timer <= (others => '0');
			tx_data_latch <= (others => '0');
			txd <= '1';
		elsif clk'event and clk = '1' then
			case state is
				when S_IDLE =>
					txd <= '1';
					bit_timer <= (others => '0');
					if tx_data_en = '1' then  --按键处于按下状态
						state <= S_START;
						tx_data_latch <= tx_data;
					else
						state <= state;
					end if;
					
				when S_START =>
					txd <= '0';
					if bit_timer = X"1458" then--一个BIT的时间到了，状态转换
						state <= S_BIT0;
						bit_timer <= (others => '0');
					else
						state <= state;
						bit_timer <= bit_timer + 1;
					end if;
					
				when S_BIT0 =>
					txd <= tx_data_latch(0);
					if bit_timer = X"1458" then--一个BIT的时间到了，状态转换
						state <= S_BIT1;
						bit_timer <= (others => '0');
					else
						state <= state;
						bit_timer <= bit_timer + 1;
					end if;
					
				when S_BIT1 =>
					txd <= tx_data_latch(1);
					if bit_timer = X"1458" then--一个BIT的时间到了，状态转换
						state <= S_BIT2;
						bit_timer <= (others => '0');
					else
						state <= state;
						bit_timer <= bit_timer + 1;
					end if;	
				
				when S_BIT2 =>
					txd <= tx_data_latch(2);
					if bit_timer = X"1458" then--一个BIT的时间到了，状态转换
						state <= S_BIT3;
						bit_timer <= (others => '0');
					else
						state <= state;
						bit_timer <= bit_timer + 1;
					end if;
					
				when S_BIT3 =>
					txd <= tx_data_latch(3);
					if bit_timer = X"1458" then--一个BIT的时间到了，状态转换
						state <= S_BIT4;
						bit_timer <= (others => '0');
					else
						state <= state;
						bit_timer <= bit_timer + 1;
					end if;
					
				when S_BIT4 =>
					txd <= tx_data_latch(4);
					if bit_timer = X"1458" then--一个BIT的时间到了，状态转换
						state <= S_BIT5;
						bit_timer <= (others => '0');
					else
						state <= state;
						bit_timer <= bit_timer + 1;
					end if;
					
				when S_BIT5 =>
					txd <= tx_data_latch(5);
					if bit_timer = X"1458" then--一个BIT的时间到了，状态转换
						state <= S_BIT6;
						bit_timer <= (others => '0');
					else
						state <= state;
						bit_timer <= bit_timer + 1;
					end if;
					
				when S_BIT6 =>
					txd <= tx_data_latch(6);
					if bit_timer = X"1458" then--一个BIT的时间到了，状态转换
						state <= S_BIT7;
						bit_timer <= (others => '0');
					else
						state <= state;
						bit_timer <= bit_timer + 1;
					end if;
					
				when S_BIT7 =>
					txd <= tx_data_latch(7);
					if bit_timer = X"1458" then--一个BIT的时间到了，状态转换
						state <= S_STOP;
						bit_timer <= (others => '0');
					else
						state <= state;
						bit_timer <= bit_timer + 1;
					end if;
					
				when S_STOP =>
					txd <= '1';
					if bit_timer = X"1458" then--一个BIT的时间到了，状态转换
						state <= S_IDLE;
						bit_timer <= (others => '0');
					else
						state <= state;
						bit_timer <= bit_timer + 1;
					end if;
					
				when others => 
					state <= S_IDLE;
			end case;		
		end if;
	end process;

end architecture rtl;

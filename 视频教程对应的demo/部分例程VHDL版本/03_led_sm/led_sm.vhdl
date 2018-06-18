library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_signed.all;

entity led_sm is
  port ( 
    clk    : in std_logic;
    key    : in std_logic;
    led    : out std_logic_vector(3 downto 0)
	 );
end entity led_sm;

architecture rtl of led_sm is

--定义状态机状态类型
type SM_STATES is (S_IDLE,S_LED0,S_LED1,S_LED2,S_LED3);

signal count       : std_logic_vector(31 downto 0);
signal key_count   : std_logic_vector(31 downto 0);
signal state       :SM_STATES;
begin
	process(clk,key) is
	begin
		if clk'event and clk = '1' then
			case state is
				when S_IDLE =>
				
					if key = '0' then
						key_count <= key_count + 1;
					else
						key_count <= (others => '0');
					end if;
					
					if key_count >= X"02FAF07F" then 
						state <= S_LED0;
					else
						state <= state;
					end if;
					led <= "0000";
				when S_LED0 =>
					
					if count = X"02FAF07F" then
						state <= S_LED1;
						count <= (others => '0');
					else
						state <= state;
						count <= count + 1;
					end if;
					led <= "0001";
				when S_LED1 =>
					
					if count = X"02FAF07F" then
						state <= S_LED2;
						count <= (others => '0');
					else
						state <= state;
						count <= count + 1;
					end if;
					led <= "0010";

				when S_LED2 =>
					
					if count = X"02FAF07F" then
						state <= S_LED3;
						count <= (others => '0');
					else
						state <= state;
						count <= count + 1;
					end if;
					led <= "0100";

				when S_LED3 =>
					
					if count = X"02FAF07F" then
						state <= S_LED0;
						count <= (others => '0');
					else
						state <= state;
						count <= count + 1;
					end if;
					led <= "1000";
				when others => 
					state <= S_IDLE;
			end case;
					
		end if;
	end process;

end architecture rtl;
-- import std_logic from the IEEE library
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_signed.all;

-- this is the entity
entity led_test is
  port ( 
    clk   : in std_logic;
    rst_n : in std_logic;
    led   : out std_logic_vector(3 downto 0)
	 );
end entity led_test;

-- this is the architecture
architecture rtl of led_test is
signal timer: std_logic_vector(31 downto 0);
begin
	process(clk, rst_n) is
	begin
		if rst_n = '0' then
			timer <= (others => '0');
		elsif clk'event and clk = '1' then
			if timer = X"0BEBC1FF" then
				timer <= (others => '0');
			else
				timer <= timer + 1;
			end if;
		end if;
	end process;
	
	process(clk, rst_n) is
	begin
		if rst_n = '0' then
			led <= "0000";
		elsif clk'event and clk = '1' then
			if timer = X"02FAF07F"  then
				led <= "0001";
			elsif timer = X"05F5E0FF" then
				led <= "0010";
			elsif timer = X"08F0D17F" then
				led <= "0100";
			elsif timer = X"0BEBC1FF" then
				led <= "1000";
			end if;
		end if;			
	end process;	

end architecture rtl;

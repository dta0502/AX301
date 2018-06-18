library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_signed.all;
use ieee.std_logic_arith.all;

entity uart_tx_fifo is
  port ( 
	clk          : in std_logic;
	rst_n        : in std_logic;
	txd          : out std_logic
	);
end entity;

architecture rtl of uart_tx_fifo is
component uart_tx is
  port ( 
	clk          : in std_logic;
	rst_n        : in std_logic;
	tx_data_en   : in std_logic;
	tx_data      : in std_logic_vector(7  downto 0);
	ready        : out std_logic;
	txd          : out std_logic
	);
end component;

component uart_buf is
	port
	(
		aclr		: in std_logic ;
		clock		: in std_logic ;
		data		: in std_logic_vector (7 downto 0);
		rdreq		: in std_logic ;
		wrreq		: in std_logic ;
		empty		: out std_logic ;
		full		: out std_logic ;
		q		    : out std_logic_vector (7 downto 0);
		usedw		: out std_logic_vector (7 downto 0)
	);
end component;

--定义状态机状态类型
type S_RD_STATES is (S_RD_IDLE,S_RD_FIFO,S_RD_SEND);
type S_WR_STATES is (S_WR_IDLE,S_WR_SEND);

signal uart_tx_data        : std_logic_vector(7  downto 0);
signal uart_tx_ready       : std_logic;
signal uart_tx_data_en     : std_logic;
signal buf_data            : std_logic_vector(7  downto 0);
signal buf_rdreq           : std_logic;
signal buf_wrreq           : std_logic;
signal buf_empty           : std_logic;

signal timer_cnt           : std_logic_vector(31  downto 0);

signal rd_state            : S_RD_STATES;
signal wr_state            : S_WR_STATES;

signal byte_cnt            : std_logic_vector(7  downto 0);

begin
	uart_tx_data_en <= '1' when rd_state = S_RD_SEND else '0';
	
	process(clk,rst_n) is
	begin
		if rst_n = '0' then
			timer_cnt <= (others => '0');
			buf_wrreq <= '0';
			wr_state <= S_WR_IDLE;
			byte_cnt <= (others => '0');
			buf_data <= (others => '0');
		elsif clk'event and clk = '1' then
			case wr_state is
				when S_WR_IDLE =>
					if timer_cnt = X"2FAF07F" then --每秒发送一次
						wr_state <= S_WR_SEND;
						timer_cnt <= (others => '0');
					else
						wr_state <= S_WR_IDLE;
						timer_cnt <= timer_cnt + 1;
					end if;
					
				when S_WR_SEND =>
					if buf_data = CONV_STD_LOGIC_VECTOR(character'pos(LF),8) then --遇到换行自动停止发送
						buf_wrreq <= '0';
						byte_cnt <= (others => '0');
						wr_state <= S_WR_IDLE;
					else
						buf_wrreq <= '1';
						byte_cnt <= byte_cnt + 1;
					end if;
					case byte_cnt is
						when X"00" => buf_data <= CONV_STD_LOGIC_VECTOR(character'pos('H'),8);
						when X"01" => buf_data <= CONV_STD_LOGIC_VECTOR(character'pos('e'),8);
						when X"02" => buf_data <= CONV_STD_LOGIC_VECTOR(character'pos('l'),8);
						when X"03" => buf_data <= CONV_STD_LOGIC_VECTOR(character'pos('l'),8);
						when X"04" => buf_data <= CONV_STD_LOGIC_VECTOR(character'pos('o'),8);
						when X"05" => buf_data <= CONV_STD_LOGIC_VECTOR(character'pos(' '),8);
						when X"06" => buf_data <= CONV_STD_LOGIC_VECTOR(character'pos('A'),8);
						when X"07" => buf_data <= CONV_STD_LOGIC_VECTOR(character'pos('L'),8);
						when X"08" => buf_data <= CONV_STD_LOGIC_VECTOR(character'pos('I'),8);
						when X"09" => buf_data <= CONV_STD_LOGIC_VECTOR(character'pos('N'),8);
						when X"0a" => buf_data <= CONV_STD_LOGIC_VECTOR(character'pos('X'),8);
						when X"0b" => buf_data <= CONV_STD_LOGIC_VECTOR(character'pos(CR),8);
						when X"0c" => buf_data <= CONV_STD_LOGIC_VECTOR(character'pos(LF),8);
						when others => buf_data <= X"00";
					end case;
				when others => wr_state <= S_WR_IDLE;
			end case;
		end if;
	end process;
	
	
	process(clk,rst_n) is
	begin
		if rst_n = '0' then
			buf_rdreq <= '0';
			rd_state <= S_RD_IDLE;
		elsif clk'event and clk = '1' then
			case rd_state is
				when S_RD_IDLE =>
					if buf_empty = '0' then
						buf_rdreq <= '1';
						rd_state <= S_RD_FIFO;
					end if;
					
				when S_RD_FIFO =>
					buf_rdreq <= '0';
					rd_state <= S_RD_SEND;

				when S_RD_SEND =>
					if uart_tx_ready = '1' then
						rd_state <= S_RD_IDLE;
					else
						rd_state <= S_RD_SEND;
					end if;
					
				when others => rd_state <= S_RD_IDLE;
			end case;
		end if;
	end process;

	uart_tx_m0 : uart_tx port map
	(
		clk            => clk,
		rst_n          => rst_n,
		tx_data_en     => uart_tx_data_en,
		tx_data        => uart_tx_data,
		ready          => uart_tx_ready,
		txd            => txd
	);

	uart_buf_m0 : uart_buf port map
	(
		aclr          => not rst_n,
		clock         => clk,
		data          => buf_data,
		rdreq         => buf_rdreq,
		wrreq         => buf_wrreq,
		empty         => buf_empty,
		full          => open,
		q             => uart_tx_data,
		usedw         => open
		);	
end architecture;
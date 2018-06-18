module uart_rx
(
	input clk,
	input rst_n,
	input rxd,
	output reg[7:0] rx_data,
	output reg rx_data_en
);
parameter S_IDLE   = 4'd0;
parameter S_START  = 4'd1;
parameter S_BIT0   = 4'd2;
parameter S_BIT1   = 4'd3;
parameter S_BIT2   = 4'd4;
parameter S_BIT3   = 4'd5;
parameter S_BIT4   = 4'd6;
parameter S_BIT5   = 4'd7;
parameter S_BIT6   = 4'd8;
parameter S_BIT7   = 4'd9;
parameter S_STOP   = 4'd10;

reg rxd_d0;
reg rxd_d1;

reg[3:0] state;

reg[15:0] bit_cnt;

wire rxd_negedge;
assign rxd_negedge = rxd_d1 & ~rxd_d0;

always@(posedge clk or negedge rst_n)
begin
	if(~rst_n)
	begin
		rxd_d0 <= 1'b0;
		rxd_d1 <= 1'b0;
	end
	else
	begin
		rxd_d0 <= rxd;
		rxd_d1 <= rxd_d0;
	end
end

always@(posedge clk or negedge rst_n)
begin
	if(~rst_n)
	begin
		state <= S_IDLE;
		rx_data <= 8'd0;
		rx_data_en <= 1'b0;
	end
	else
	begin
		case(state)
			S_IDLE:
			begin
				if(rxd_negedge)
					state <= S_START;
			end
			S_START:
			begin
				if(bit_cnt == 16'd5208)
				begin
					state <= S_BIT0;
					bit_cnt <= 16'd0;
				end
				else
				begin
					bit_cnt <= bit_cnt + 16'd1;
				end
			end
			
			S_BIT0:
			begin
				if(bit_cnt == 16'd5208)
				begin
					state <= S_BIT1;
					bit_cnt <= 16'd0;
				end
				else
				begin
					bit_cnt <= bit_cnt + 16'd1;
				end
				
				if(bit_cnt == 16'd2604)
					rx_data[0] <= rxd_d1;
			end

			S_BIT1:
			begin
				if(bit_cnt == 16'd5208)
				begin
					state <= S_BIT2;
					bit_cnt <= 16'd0;
				end
				else
				begin
					bit_cnt <= bit_cnt + 16'd1;
				end
				
				if(bit_cnt == 16'd2604)
					rx_data[1] <= rxd_d1;
			end

			S_BIT2:
			begin
				if(bit_cnt == 16'd5208)
				begin
					state <= S_BIT3;
					bit_cnt <= 16'd0;
				end
				else
				begin
					bit_cnt <= bit_cnt + 16'd1;
				end
				
				if(bit_cnt == 16'd2604)
					rx_data[2] <= rxd_d1;
			end

			S_BIT3:
			begin
				if(bit_cnt == 16'd5208)
				begin
					state <= S_BIT4;
					bit_cnt <= 16'd0;
				end
				else
				begin
					bit_cnt <= bit_cnt + 16'd1;
				end
				
				if(bit_cnt == 16'd2604)
					rx_data[3] <= rxd_d1;
			end

			S_BIT4:
			begin
				if(bit_cnt == 16'd5208)
				begin
					state <= S_BIT5;
					bit_cnt <= 16'd0;
				end
				else
				begin
					bit_cnt <= bit_cnt + 16'd1;
				end
				
				if(bit_cnt == 16'd2604)
					rx_data[4] <= rxd_d1;
			end

			S_BIT5:
			begin
				if(bit_cnt == 16'd5208)
				begin
					state <= S_BIT6;
					bit_cnt <= 16'd0;
				end
				else
				begin
					bit_cnt <= bit_cnt + 16'd1;
				end
				
				if(bit_cnt == 16'd2604)
					rx_data[5] <= rxd_d1;
			end

			S_BIT6:
			begin
				if(bit_cnt == 16'd5208)
				begin
					state <= S_BIT7;
					bit_cnt <= 16'd0;
				end
				else
				begin
					bit_cnt <= bit_cnt + 16'd1;
				end
				
				if(bit_cnt == 16'd2604)
					rx_data[6] <= rxd_d1;
			end

			S_BIT7:
			begin
				if(bit_cnt == 16'd5208)
				begin
					state <= S_STOP;
					bit_cnt <= 16'd0;
				end
				else
				begin
					bit_cnt <= bit_cnt + 16'd1;
				end
				
				if(bit_cnt == 16'd2604)
					rx_data[7] <= rxd_d1;
			end

			S_STOP:
			begin
				if(bit_cnt == 16'd2604 )
				begin
					state <= S_IDLE;
					bit_cnt <= 16'd0;
				end
				else
				begin
					bit_cnt <= bit_cnt + 16'd1;
				end
				
				if((bit_cnt == 16'd1302) & rxd_d1)
					rx_data_en <= 1'b1;
				else
					rx_data_en <= 1'b0;
			end
			
			default:
				state <= S_IDLE;
				
		endcase
	end
end
endmodule 
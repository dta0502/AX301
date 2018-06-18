module uart_tx(
	input      clk,
	input      rst_n,
	input      tx_data_en,
	input[7:0] tx_data,
	output     ready,
	output reg txd
);
parameter S_IDLE  = 4'd0;
parameter S_START = 4'd1;
parameter S_BIT0  = 4'd2;
parameter S_BIT1  = 4'd3;
parameter S_BIT2  = 4'd4;
parameter S_BIT3  = 4'd5;
parameter S_BIT4  = 4'd6;
parameter S_BIT5  = 4'd7;
parameter S_BIT6  = 4'd8;
parameter S_BIT7  = 4'd9;
parameter S_STOP  = 4'd10;

reg[3:0] state;
reg[15:0] bit_timer;
reg[7:0] tx_data_latch;
//wire[7:0] tx_data;
//assign tx_data = 8'h12;
assign ready = (state == S_IDLE);
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
	begin
		state <= S_IDLE;
		bit_timer <= 16'd0;
		txd <= 1'b1;
		tx_data_latch <= 8'h00;
	end
	else
	begin
		case(state)
			S_IDLE:
			begin
				txd <= 1'b1;
				bit_timer <= 16'd0;
				if(tx_data_en)
				begin
					state <= S_START;
					tx_data_latch <= tx_data;
				end
				else
					state <= state;
			end
			
			S_START:
			begin
				txd <= 1'b0;
				if(bit_timer == 16'd5208)
				begin
					state <= S_BIT0;
					bit_timer <= 16'd0;
				end
				else
				begin
					state <= state;
					bit_timer <= bit_timer + 16'd1;
				end
			end
			
			S_BIT0:
			begin
				txd <= tx_data_latch[0];
				if(bit_timer == 16'd5208)
				begin
					state <= S_BIT1;
					bit_timer <= 16'd0;
				end
				else
				begin
					state <= state;
					bit_timer <= bit_timer + 16'd1;
				end
			end
		

			S_BIT1:
			begin
				txd <= tx_data_latch[1];
				if(bit_timer == 16'd5208)
				begin
					state <= S_BIT2;
					bit_timer <= 16'd0;
				end
				else
				begin
					state <= state;
					bit_timer <= bit_timer + 16'd1;
				end
			end
	
			S_BIT2:
			begin
				txd <= tx_data_latch[2];
				if(bit_timer == 16'd5208)
				begin
					state <= S_BIT3;
					bit_timer <= 16'd0;
				end
				else
				begin
					state <= state;
					bit_timer <= bit_timer + 16'd1;
				end
			end
		
			S_BIT3:
			begin
				txd <= tx_data_latch[3];
				if(bit_timer == 16'd5208)
				begin
					state <= S_BIT4;
					bit_timer <= 16'd0;
				end
				else
				begin
					state <= state;
					bit_timer <= bit_timer + 16'd1;
				end
			end
		
			S_BIT4:
			begin
				txd <= tx_data_latch[4];
				if(bit_timer == 16'd5208)
				begin
					state <= S_BIT5;
					bit_timer <= 16'd0;
				end
				else
				begin
					state <= state;
					bit_timer <= bit_timer + 16'd1;
				end
			end
		
			S_BIT5:
			begin
				txd <= tx_data_latch[5];
				if(bit_timer == 16'd5208)
				begin
					state <= S_BIT6;
					bit_timer <= 16'd0;
				end
				else
				begin
					state <= state;
					bit_timer <= bit_timer + 16'd1;
				end
			end
		
			S_BIT6:
			begin
				txd <= tx_data_latch[6];
				if(bit_timer == 16'd5208)
				begin
					state <= S_BIT7;
					bit_timer <= 16'd0;
				end
				else
				begin
					state <= state;
					bit_timer <= bit_timer + 16'd1;
				end
			end
		
			S_BIT7:
			begin
				txd <= tx_data_latch[7];
				if(bit_timer == 16'd5208)
				begin
					state <= S_STOP;
					bit_timer <= 16'd0;
				end
				else
				begin
					state <= state;
					bit_timer <= bit_timer + 16'd1;
				end
			end
	
			S_STOP:
			begin
				txd <= 1'b1;
				if(bit_timer == 16'd5208)
				begin
					state <= S_IDLE;
					bit_timer <= 16'd0;
				end
				else
				begin
					state <= state;
					bit_timer <= bit_timer + 16'd1;
				end
			end
			default:
			begin
				state <= S_IDLE;
			end
		endcase
	end
end
endmodule 
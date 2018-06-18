module top
(
	input clk,
	input rst_n,
	input rxd,
	output txd
);
parameter S_RD_IDLE   = 2'd0;
parameter S_RD_FIFO   = 2'd1;
parameter S_RD_SEND   = 2'd2;

parameter S_WR_IDLE   = 2'd0;
parameter S_WR_SEND   = 2'd1;

wire[7:0] uart_tx_data;
wire uart_tx_ready;
wire uart_tx_data_en;
reg[7:0] buf_data;
reg buf_rdreq;
reg buf_wrreq;
wire buf_empty;

reg[31:0] timer_cnt;

reg[1:0] rd_state;
reg[1:0] wr_state;

reg[7:0] byte_cnt;
assign uart_tx_data_en = (rd_state == S_RD_SEND);


always@(posedge clk or negedge rst_n)
begin
	if(~rst_n)
	begin
		timer_cnt <= 32'd0;
		buf_wrreq <= 1'b0;
		wr_state <= S_WR_IDLE;
		byte_cnt <= 8'd0;
		buf_data <= 8'd0;
	end
	else
	begin
		case(wr_state)
			S_WR_IDLE:
			begin
				if(timer_cnt == 32'd49_999_999)
				begin
					wr_state <= S_WR_SEND;
					timer_cnt <= 32'd0;
				end
				else
				begin
					wr_state <= S_WR_IDLE;
					timer_cnt <= timer_cnt + 32'd1;
				end
			end
			
			S_WR_SEND:
			begin
				if(buf_data == "\n")
				begin
					buf_wrreq <= 1'b0;
					byte_cnt <= 8'd0;
					wr_state <= S_WR_IDLE;
				end
				else
				begin
					buf_wrreq <= 1'b1;
					byte_cnt <= byte_cnt + 8'd1;
				end
				
				case(byte_cnt)
					8'd0: buf_data <= "H";
					8'd1: buf_data <= "e";
					8'd2: buf_data <= "l";
					8'd3: buf_data <= "l";
					8'd4: buf_data <= "o";
					8'd5: buf_data <= " ";
					8'd6: buf_data <= "A";
					8'd7: buf_data <= "L";
					8'd8: buf_data <= "I";
					8'd9: buf_data <= "N";
					8'd10: buf_data <= "X";
					8'd11: buf_data <= "\r";
					8'd12: buf_data <= "\n";
					default:buf_data <= 8'd0;
				endcase
			end
			default:
				wr_state <= S_WR_IDLE;
		endcase
	end
end

always@(posedge clk or negedge rst_n)
begin
	if(~rst_n)
	begin
		buf_rdreq <= 1'b0;
		rd_state <= S_RD_IDLE;
	end
	else
	begin
		case(rd_state)
			S_RD_IDLE:
			begin
				if(~buf_empty)
				begin
					buf_rdreq <= 1'b1;
					rd_state <= S_RD_FIFO;
				end
			end
			S_RD_FIFO:
			begin
				buf_rdreq <= 1'b0;
				rd_state <= S_RD_SEND;
			end
			S_RD_SEND:
			begin
				if(uart_tx_ready)
					rd_state <= S_RD_IDLE;
				else
					rd_state <= S_RD_SEND;
			end
			default:
				rd_state <= S_RD_IDLE;
		endcase
	end
end
wire[7:0] rx_data;
wire rx_data_en;
uart_rx uart_rx_m0
(
	.clk(clk),
	.rst_n(rst_n),
	.rxd(rxd),
	.rx_data(rx_data),
	.rx_data_en(rx_data_en)
);
uart_tx uart_tx_m0(
	.clk(clk),
	.rst_n(rst_n),
	.tx_data_en(uart_tx_data_en),
	.tx_data(uart_tx_data),
	.ready(uart_tx_ready),
	.txd(txd)
);

uart_buf uart_buf_m0(
	.aclr(~rst_n),
	.clock(clk),
	.data(rx_data_en ? rx_data : buf_data),
	.rdreq(buf_rdreq),
	.wrreq(buf_wrreq | rx_data_en),
	.empty(buf_empty),
	.full(),
	.q(uart_tx_data),
	.usedw());
	
endmodule 
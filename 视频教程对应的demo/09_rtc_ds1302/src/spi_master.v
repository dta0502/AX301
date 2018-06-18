module spi_master(
	input sys_clk,
	input rst,
	output nCS,
	output DCLK,
	output MOSI,
	input MISO,
	
	input CPOL,
	input CPHA,
	
	input nCS_ctrl,
	input wr_req,
	output wr_ack,
	input[7:0] data_in,
	output[7:0] data_out
);
localparam IDLE = 0;
localparam DCLK_EDGE = 1;
localparam DCLK_IDLE = 2;
localparam ACK = 3;
localparam LAST_HALF_CYCLE = 4;
localparam ACK_WAIT = 5;


localparam DCLK_HALF_CYCLE = 50;
reg DCLK_reg;
reg[7:0] MOSI_shift;
(* keep *) reg[7:0] MISO_shift;
reg[3:0] state,next_state;
reg [15:0] clk_cnt;
reg[4:0] clk_edge_cnt;
assign MOSI = MOSI_shift[7];
assign DCLK = DCLK_reg;
assign data_out = MISO_shift;
assign wr_ack = (state == ACK);
assign nCS = nCS_ctrl;
always@(posedge sys_clk or posedge rst)
begin
	if(rst)
		state <= IDLE;
	else
		state <= next_state;
end

// always@(posedge sys_clk or posedge rst)
// begin
	// if(rst)
		// wr_ack <= 1'b0;
	// else
		// wr_ack <= (state == ACK);
// end

always@(*)
begin
	case(state)
		IDLE:
			if(wr_req)
				next_state <= DCLK_IDLE;
			else
				next_state <= IDLE;
		DCLK_IDLE:
			if(clk_cnt == DCLK_HALF_CYCLE)
				next_state <= DCLK_EDGE;
			else
				next_state <= DCLK_IDLE;
		DCLK_EDGE:
			if(clk_edge_cnt == 5'd15)
				next_state <= LAST_HALF_CYCLE;
			else
				next_state <= DCLK_IDLE;
		LAST_HALF_CYCLE:
			if(clk_cnt == DCLK_HALF_CYCLE)
				next_state <= ACK;
			else
				next_state <= LAST_HALF_CYCLE;			
		ACK:
			next_state <= ACK_WAIT;
		ACK_WAIT:
			next_state <= IDLE;
		default:
			next_state <= IDLE;
	endcase
end

always@(posedge sys_clk or posedge rst)
begin
	if(rst)
		DCLK_reg <= 1'b0;
	else if(state == IDLE)
		DCLK_reg <= CPOL;
	else if(state == DCLK_EDGE)
		DCLK_reg <= ~DCLK_reg;
end

always@(posedge sys_clk or posedge rst)
begin
	if(rst)
		clk_cnt <= 16'd0;
	else if(state == DCLK_IDLE || state == LAST_HALF_CYCLE) 
		clk_cnt <= clk_cnt + 16'd1;
	else
		clk_cnt <= 16'd0;
end

always@(posedge sys_clk or posedge rst)
begin
	if(rst)
		clk_edge_cnt <= 5'd0;
	else if(state == DCLK_EDGE)
		clk_edge_cnt <= clk_edge_cnt + 5'd1;
	else if(state == IDLE)
		clk_edge_cnt <= 5'd0;
end

always@(posedge sys_clk or posedge rst)
begin
	if(rst)
		MOSI_shift <= 8'd0;
	else if(state == IDLE && wr_req)
		MOSI_shift <= data_in;
	else if(state == DCLK_EDGE)
		if(CPHA == 1'b0 && clk_edge_cnt[0] == 1'b1)// 第二个沿发出数据 
			MOSI_shift <= {MOSI_shift[6:0],MOSI_shift[7]};
		else if(CPHA == 1'b1 && (clk_edge_cnt != 5'd0 && clk_edge_cnt[0] == 1'b0))
			MOSI_shift <= {MOSI_shift[6:0],MOSI_shift[7]};
end

always@(posedge sys_clk or posedge rst)
begin
	if(rst)
		MISO_shift <= 8'd0;
	else if(state == IDLE && wr_req)
		MISO_shift <= 8'h00;
	else if(state == DCLK_EDGE)
		if(CPHA == 1'b0 && clk_edge_cnt[0] == 1'b0)//  
			MISO_shift <= {MISO_shift[6:0],MISO};
		else if(CPHA == 1'b1 && (clk_edge_cnt[0] == 1'b1))
			MISO_shift <= {MISO_shift[6:0],MISO};
end
endmodule 
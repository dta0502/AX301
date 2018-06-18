module seg7_bcd(
	input clk,
	input rst_n,
	input[5:0] seg_blink,
	output [5:0] seg_sel,
	output [7:0] seg_data,
	
	input[23:0] seg_bcd
);
wire div_pluse;
reg blink_ctrl;
always@(posedge clk or negedge rst_n)
begin
	if(~rst_n)
		blink_ctrl <= 1'b0;
	else if(div_pluse)
		blink_ctrl <= ~blink_ctrl;
end
clock_div clock_div_m0
(
	.clk(clk),
	.rst_n(rst_n),
	.div(12500000),
	.div_pluse(div_pluse)
);
wire[6:0] seg7_data_0;
seg7_decoder seg7_decoder_m0(
	.bin_data(seg_bcd[23:20]),
	.seg7_data(seg7_data_0)
);
wire[6:0] seg7_data_1;
seg7_decoder seg7_decoder_m1(
	.bin_data(seg_bcd[19:16]),
	.seg7_data(seg7_data_1)
);
wire[6:0] seg7_data_2;
seg7_decoder seg7_decoder_m2(
	.bin_data(seg_bcd[15:12]),
	.seg7_data(seg7_data_2)
);
wire[6:0] seg7_data_3;
seg7_decoder seg7_decoder_m3(
	.bin_data(seg_bcd[11:8]),
	.seg7_data(seg7_data_3)
);
wire[6:0] seg7_data_4;
seg7_decoder seg7_decoder_m4(
	.bin_data(seg_bcd[7:4]),
	.seg7_data(seg7_data_4)
);

wire[6:0] seg7_data_5;
seg7_decoder seg7_decoder_m5(
	.bin_data(seg_bcd[3:0]),
	.seg7_data(seg7_data_5)
);
wire[7:0] seg_data_0;
wire[7:0] seg_data_1;
wire[7:0] seg_data_2;
wire[7:0] seg_data_3;
wire[7:0] seg_data_4;
wire[7:0] seg_data_5;
assign seg_data_0 = (seg_blink[0] && blink_ctrl) ? 8'hff : {1'b1,seg7_data_0};
assign seg_data_1 = (seg_blink[1] && blink_ctrl) ? 8'hff : {1'b1,seg7_data_1};
assign seg_data_2 = (seg_blink[2] && blink_ctrl) ? 8'hff : {1'b1,seg7_data_2};
assign seg_data_3 = (seg_blink[3] && blink_ctrl) ? 8'hff : {1'b1,seg7_data_3};
assign seg_data_4 = (seg_blink[4] && blink_ctrl) ? 8'hff : {1'b1,seg7_data_4};
assign seg_data_5 = (seg_blink[5] && blink_ctrl) ? 8'hff : {1'b1,seg7_data_5};
seg7_scan seg7_scan_m0(
	.clk(clk),
	.rst_n(rst_n),
	.seg_sel(seg_sel),
	.seg_data(seg_data),
	.seg_data_0(seg_data_0),
	.seg_data_1(seg_data_1),
	.seg_data_2(seg_data_2),
	.seg_data_3(seg_data_3),
	.seg_data_4(seg_data_4),
	.seg_data_5(seg_data_5)
);
endmodule 
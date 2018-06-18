module seg7_decoder
(
	input[3:0] bin_data,
	output reg[6:0] seg7_data
);

always@(*)
begin
	case(bin_data)
		4'd0:seg7_data <= 7'b100_0000;
		4'd1:seg7_data <= 7'b111_1001;
		4'd2:seg7_data <= 7'b010_0100;
		4'd3:seg7_data <= 7'b011_0000;
		4'd4:seg7_data <= 7'b001_1001;
		4'd5:seg7_data <= 7'b001_0010;
		4'd6:seg7_data <= 7'b000_0010;
		4'd7:seg7_data <= 7'b111_1000;
		4'd8:seg7_data <= 7'b000_0000;
		4'd9:seg7_data <= 7'b001_0000;
		default:seg7_data <= 7'b111_1111;
	endcase
end
endmodule 
module clock_div
(
	input clk,
	input rst_n,
	input[31:0] div,
	output reg div_pluse
);
reg[31:0] div_count;
always@(posedge clk or negedge rst_n)
begin
	if(~rst_n)
	begin
		div_count <= 32'd0;
		div_pluse <= 1'b0;
	end
	else if(div_count >= div)
	begin
		div_count <= 32'd0;
		div_pluse <= 1'b1;		
	end
	else
	begin
		div_count <= div_count + 32'd1;
		div_pluse <= 1'b0;		
	end	
end

endmodule
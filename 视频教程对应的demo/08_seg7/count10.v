module count10(
	input clk,
	input rst_n,
	input en,
	input clr,
	output reg[3:0] data,
	output reg t
);
always@(posedge clk or negedge rst_n)
begin
	if(~rst_n)
	begin
		data <= 4'd0;
		t <= 1'd0;
	end
	else if(clr)
	begin
		data <= 4'd0;
		t <= 1'd0;		
	end
	else if(en)
	begin
		if(data == 4'd9)
		begin
			t<= 1'b1;
			data <= 4'd0;
		end
		else
		begin
			t <= 1'b0;
			data <= data + 4'd1;
		end
	end
	else
		t <= 1'b0;
end

endmodule
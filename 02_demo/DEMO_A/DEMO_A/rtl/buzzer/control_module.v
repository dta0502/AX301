module control_module 
(
    CLK, RSTn, SOS_En_Sig
);

    input CLK;
	 input RSTn;
	 output SOS_En_Sig;

	 /********************************/
	 
	 parameter T3S = 28'd99_999_999;//开发板使用的晶振为50MHz，50M*2-1=149_999_999
	 
	 /********************************/
	 
	 reg isEn;
	 reg [27:0]Count1;
	 
	 always @ ( posedge CLK or negedge RSTn )
	     if( !RSTn )
		      begin
		          isEn <= 1'b0;
					 Count1 <= 28'd0;
				end
		  else if( Count1 == T3S )              //产生SOS信号
		      begin 
		          isEn <= 1'b1;
				    Count1 <=  Count1 + 1'b1;
			   end
		  else if( Count1 == T3S + 1'b1 )
		      begin 
		          isEn <= 1'b0;
				    Count1 <= Count1;             //计数停止
			   end				
		  else
		      begin 
		          isEn <= 1'b0;
				    Count1 <= Count1 + 1'b1;
			   end
				
	/*****************************************/
	
	assign SOS_En_Sig = isEn;
	
	/*****************************************/
	 
endmodule

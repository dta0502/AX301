/*------------ Function:smg refreash, avalon mm interface -------------------------------------------*/ 

module smg( 
     input csi_clk, 
	  input csi_reset_n, 
	  input avs_chipselect_n, 
	  input avs_address, 
	  input [3:0] avs_byteenable_n, 
	  input avs_write_n, 
	  input [31 :0] avs_writedata, 
	  input avs_read_n, 	  
	  output [31 :0] avs_readdata,
	  
	  output [5:0] coe_dsel_dig, 
	  output [7:0] coe_led_num_dig
	  ); 
	  
//段码寄存器，存储数码管的段码 
reg [7:0] r_dig0,r_dig1,r_dig2,r_dig3,r_dig4,r_dig5,r_dig6,r_dig7; 
	  
//Avalon总线写时序，给寄存器赋值 
always@(posedge csi_clk or negedge csi_reset_n) 
   if(~csi_reset_n) 
	   begin 
		   r_dig0 <= 8'b0; 
			r_dig1 <= 8'b0; 
			r_dig2 <= 8'b0; 
			r_dig3 <= 8'b0; 
		end 
	else if( ~avs_chipselect_n & ~avs_write_n & avs_address == 1'b0 ) 
	   begin 
		 if (~avs_byteenable_n[0]) 
		   r_dig0 <= avs_writedata[7:0]; 
		 if (~avs_byteenable_n[1]) 
		   r_dig1 <= avs_writedata[15:8]; 
		 if (~avs_byteenable_n[2]) 
		   r_dig2 <= avs_writedata[23:16]; 
		 if (~avs_byteenable_n[3])		 
		   r_dig3 <= avs_writedata[31:24]; 
		end 
		
always@(posedge csi_clk or negedge csi_reset_n) 
   if(~csi_reset_n) 
	   begin 
		  r_dig4 <= 8'b0; 
		  r_dig5 <= 8'b0; 
		  r_dig6 <= 8'b0; 
		  r_dig7 <= 8'b0;		  
		end 
	else if( ~avs_chipselect_n & ~avs_write_n & avs_address == 1'b1 ) 
	   begin 
		  if (~avs_byteenable_n[0]) 
		     r_dig4 <= avs_writedata[7:0]; 
		  if (~avs_byteenable_n[1]) 
		     r_dig5 <= avs_writedata[15:8]; 
		  if (~avs_byteenable_n[2]) 
		     r_dig6 <= avs_writedata[23:16]; 
		  if (~avs_byteenable_n[3]) 
		     r_dig7 <= avs_writedata[31:24]; 
		end 
		

//Avalon总线读时序，读寄存器值 
reg [31:0] readdata; 
always@( * ) 
   if(~avs_read_n & ~avs_chipselect_n) 
	  case(avs_address) 
	  1'b0: readdata = {r_dig3,r_dig2,r_dig1,r_dig0}; 
	  1'b1: readdata = {r_dig7,r_dig6,r_dig5,r_dig4}; 
	  endcase	  
	  
assign avs_readdata = readdata; 

//数码管动态扫描逻辑，实现6位数码管的动态显示 
reg[23:0] counter; 

always@(posedge csi_clk or negedge csi_reset_n) 
  if(~csi_reset_n) 
    counter <= 24'b0; 
  else 
    counter <= counter + 24'b1; 
	
assign coe_dsel_138 = counter[19:17]; 

reg [7:0] led_num_dig; 
reg [5:0] dsel_dig;

	 	 
parameter T1MS = 16'd49999;
	 
reg [15:0]C1;
	 
always @ ( posedge csi_clk or negedge csi_reset_n )
	     if( !csi_reset_n )
		      C1 <= 16'd0;
		  else if( C1 == T1MS )
		      C1 <= 16'd0;
		  else
		      C1 <= C1 + 1'b1;

reg [3:0]i;
 
always @ ( posedge csi_clk or negedge csi_reset_n )
	     if( ~csi_reset_n )
		      begin
		          i <= 4'd0;
		          dsel_dig <= 6'b100_000;
			   end
		  else 
		      case( i )
				    
					 0:
		          if( C1 == T1MS ) i <= i + 1'b1;
					 else begin led_num_dig <= r_dig0; dsel_dig <= 6'b011_111; end                     //第一个数码选通
					 
					 1:
					 if( C1 == T1MS ) i <= i + 1'b1;
					 else begin led_num_dig <= r_dig1; dsel_dig <= 6'b101_111; end                     //第二个数码选通
					 
					 2:
					 if( C1 == T1MS ) i <= i + 1'b1;
					 else begin led_num_dig <= r_dig2; dsel_dig <= 6'b110_111; end                     //第三个数码选通
					 
					 3:
					 if( C1 == T1MS ) i <= i + 1'b1;
					 else begin led_num_dig <= r_dig3; dsel_dig <= 6'b111_011; end                     //第四个数码选通
					 
					 4:
					 if( C1 == T1MS ) i <= i + 1'b1;
					 else begin led_num_dig <= r_dig4; dsel_dig <= 6'b111_101; end                     //第五个数码选通
					 
					 5:
					 if( C1 == T1MS ) i <= 4'd0;
					 else begin led_num_dig <= r_dig5; dsel_dig <= 6'b111_110; end                     //第六个数码选通
					 
					 
				endcase
 
 
 assign coe_led_num_dig = led_num_dig; 
 assign coe_dsel_dig = dsel_dig; 
 
 endmodule		
 
 
		
		
		
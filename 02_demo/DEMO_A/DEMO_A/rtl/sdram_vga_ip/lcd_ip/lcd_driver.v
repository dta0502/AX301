/*-------------------------------------------------------------------------
Filename			:		lcd_driver.v
Description			:		lcd/vga display.
Modification History	:
Data			By			Version			Change Description
===========================================================================
13/02/1
--------------------------------------------------------------------------*/
module lcd_driver
(  	
	//global clock
	input			clk,			//system clock
	input			rst_n,     		//sync reset
	input  [2:0] disp_mode, 	
	//lcd interface
	output			lcd_dclk,   	//lcd pixel clock
	output			lcd_blank,		//lcd blank
	output			lcd_sync,		//lcd sync
	output			lcd_hs,	    	//lcd horizontal sync
	output			lcd_vs,	    	//lcd vertical sync
	output			lcd_en,			//lcd display enable
	output	[15:0]	lcd_rgb,		//lcd display data

	//user interface
	output			lcd_request,	//lcd data request
	output			lcd_framesync,	//lcd frame sync
	output	[10:0]	lcd_xpos,		//lcd horizontal coordinate
	output	[10:0]	lcd_ypos,		//lcd vertical coordinate
	input	[15:0]	lcd_data		   //lcd data
);	 
`include "lcd_para.v"  

reg[15 : 0] lcd_out_reg; 

//--------LCD/VGA输出信号赋值-------------------------
assign	lcd_dclk = ~clk;
assign	lcd_blank = lcd_hs & lcd_vs;		
assign	lcd_sync = 1'b0;
assign	lcd_en		=	(hcnt >= `H_SYNC + `H_BACK  && hcnt < `H_SYNC + `H_BACK + `H_DISP) &&
						(vcnt >= `V_SYNC + `V_BACK  && vcnt < `V_SYNC + `V_BACK + `V_DISP) 
						? 1'b1 : 1'b0;
assign	lcd_rgb 	= 	lcd_out_reg;
//assign	lcd_rgb 	= 	lcd_en ? lcd_xpos : 16'd0;
assign	lcd_framesync = lcd_vs;


//------------------------------------------
//ahead a clock
assign	lcd_request	=	(hcnt >= `H_SYNC + `H_BACK - 1'b1 && hcnt < `H_SYNC + `H_BACK + `H_DISP - 1'b1) &&
						(vcnt >= `V_SYNC + `V_BACK && vcnt < `V_SYNC + `V_BACK + `V_DISP) 
						? 1'b1 : 1'b0;
						
assign	lcd_xpos	= 	lcd_request ? (hcnt - (`H_SYNC + `H_BACK - 1'b1)) : 11'd0;
assign	lcd_ypos	= 	lcd_request ? (vcnt - (`V_SYNC + `V_BACK - 1'b1)) : 11'd0;		


/*******************************************
		SYNC--BACK--DISP--FRONT
*******************************************/
//------------------------------------------
//h_sync counter & generator
reg [10:0] hcnt; 
always @ (posedge clk)
begin
	if (!rst_n)
		hcnt <= 11'd0;
	else
		begin
        if(hcnt < `H_TOTAL - 1'b1)		//line over			
            hcnt <= hcnt + 1'b1;
        else
            hcnt <= 11'd0;
		end
end 
assign	lcd_hs = (hcnt <= `H_SYNC - 1'b1) ? 1'b0 : 1'b1;

//------------------------------------------
//v_sync counter & generator
reg [10:0] vcnt;
always@(posedge clk)
begin
	if (!rst_n)
		vcnt <= 11'b0;
	else if(hcnt == `H_TOTAL - 1'b1)		//line over
		begin
		if(vcnt < `V_TOTAL - 1'b1)		//frame over
			vcnt <= vcnt + 1'b1;
		else
			vcnt <= 11'd0;
		end
end
assign	lcd_vs = (vcnt <= `V_SYNC - 1'b1) ? 1'b0 : 1'b1;

//----------------------------------------------------------------
////////// 格子测试图像产生
//----------------------------------------------------------------
reg[15 : 0] grid_data;
always @(posedge clk)   
begin		 
	  if ((hcnt[6]==1'b1) ^ (vcnt[6]==1'b1))            //产生格子图像 
			    grid_data<=16'h0000;
	  else
				 grid_data<=16'hffff;
   
end	
	
//----------------------------------------------------------------
////////// 彩色条测试图像产生
//----------------------------------------------------------------
reg[15 : 0] bar_data; 
always @(posedge clk)   
begin
     if (hcnt==300)            
			    bar_data<=16'hf800;
	  else if (hcnt==420)
			    bar_data<=16'h07e0;				 
	  else if (hcnt==540) 
			    bar_data<=16'h001f; 
	  else if (hcnt==660)            
			    bar_data<=16'hf81f;
	  else if (hcnt==780)            
			    bar_data<=16'hffe0;
	  else if (hcnt==900)            
			    bar_data<=16'h07ff;
	  else if (hcnt==1020)            
			    bar_data<=16'hffff;
	  else if (hcnt==1140)            
			    bar_data<=16'hfc00;
	  else if (hcnt==1260)            
			    bar_data<=16'h0000; 
   
end
	
//----------------------------------------------------------------
////////// VGA/LCD图像选择输出
//----------------------------------------------------------------

always @(negedge clk)  
 begin
     if (lcd_en==1'b1) begin     
		  case(disp_mode)
				3'b000:begin     
						  lcd_out_reg<=bar_data;              //按键1-VGA显示彩色条	
				end				  
				3'b001:begin     
						  lcd_out_reg<=grid_data;             //按键2- VGA显示方格2
				end
				3'b010:begin   
						  lcd_out_reg[4:0]<=hcnt[5:1];        //按键3-VGA显示水平渐变色
						  lcd_out_reg[10:5]<={hcnt[5:1],1'b0};
						  lcd_out_reg[15:11]<=hcnt[5:1];
				end
				3'b100:begin     
						  lcd_out_reg<=lcd_data;               //按键4-VGA显示SD卡图像
				end
				default:begin
						  lcd_out_reg<=bar_data;               //VGA显示彩色条	
				end					  
         endcase;
	 end
    else 
       lcd_out_reg<=16'd0;
		 		 
	 
end	

endmodule


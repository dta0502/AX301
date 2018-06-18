/*-------------------------------------------------------------------------
Filename			:		lcd_driver.v
Description			:		sdram vga controller with ov7670 display.
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
	
	//lcd interface
	output			lcd_dclk,   	//lcd pixel clock
	output			lcd_blank,		//lcd blank
	output			lcd_sync,		//lcd sync
	output			lcd_hs,	    	//lcd horizontal sync
	output			lcd_vs,	    	//lcd vertical sync
	output			lcd_en,			//lcd display enable
	output	[15:0]	lcd_rgb,		//lcd display data
	output         back_pwm,      //LCD back led control			

	//user interface
	output			lcd_request,	//lcd data request
	output			lcd_framesync,	//lcd frame sync
	output	[10:0]	lcd_xpos,		//lcd horizontal coordinate
	output	[10:0]	lcd_ypos,		//lcd vertical coordinate
	input	[15:0]	lcd_data		//lcd data
);	 
`include "lcd_para.v"  

//*******************************************
//LCD背光亮度控制
//*******************************************
  reg [15:0] pwm_counter;                  //背光控制寄存器
  reg back_pwm_r;	  
  always @(posedge clk)  
	begin
	 if(1'b0) pwm_counter <= 1;
	 else if(pwm_counter == 9999) pwm_counter <= 0;
	 else pwm_counter <= pwm_counter+1'b1;
	end 
		
	always @(posedge clk)  		
    begin
	  if(1'b0) begin
	     back_pwm_r <= 1'b0;
	  end	  
     else begin
	     if (pwm_counter==0)  
				back_pwm_r <= 1'b0;
		  else if (pwm_counter==2999) 		
	         back_pwm_r <= 1'b1;
		  else
		      back_pwm_r<= back_pwm_r;
		end
    end	

/*******************************************
		SYNC--BACK--DISP--FRONT
*******************************************/
//------------------------------------------
//h_sync counter & generator
reg [10:0] hcnt; 
always @ (posedge clk or negedge rst_n)
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
always@(posedge clk or negedge rst_n)
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

//------------------------------------------
//LCELL	LCELL(.in(clk),.out(lcd_dclk));
assign	lcd_dclk = ~clk;
assign	lcd_blank = lcd_en;//lcd_hs & lcd_vs;		
assign	lcd_sync = 1'b0;
assign	lcd_en		=	(hcnt >= `H_SYNC + `H_BACK  && hcnt < `H_SYNC + `H_BACK + `H_DISP) &&
						(vcnt >= `V_SYNC + `V_BACK  && vcnt < `V_SYNC + `V_BACK + `V_DISP) 
						? 1'b1 : 1'b0;
assign	lcd_rgb[15:11] =  (lcd_en && lcd_request) ? lcd_data[4:0] : 5'd0;
assign	lcd_rgb[10:5] 	=  (lcd_en && lcd_request) ? lcd_data[10:5] : 6'd0;
assign	lcd_rgb[4:0] 	=  (lcd_en && lcd_request) ? lcd_data[15:11] : 5'd0;
assign	lcd_framesync = lcd_vs;

assign back_pwm = back_pwm_r;


//------------------------------------------
//ahead a clock
assign	lcd_request	=	(hcnt >= `H_SYNC + `H_BACK   - 1'd1 && hcnt < `H_SYNC + `H_BACK + `H_DISP - 1'd1) &&
						(vcnt >= `V_SYNC + `V_BACK && vcnt < `V_SYNC + `V_BACK + `V_DISP) 
						? 1'b1 : 1'b0;
assign	lcd_xpos	= 	lcd_request ? (hcnt - (`H_SYNC + `H_BACK   - 1'b1)) : 11'd0;
assign	lcd_ypos	= 	lcd_request ? (vcnt - (`V_SYNC + `V_BACK - 1'b1)) : 11'd0;		

endmodule


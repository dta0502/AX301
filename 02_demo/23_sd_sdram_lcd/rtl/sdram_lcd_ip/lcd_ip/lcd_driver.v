`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    lcd_driver 
//////////////////////////////////////////////////////////////////////////////////
module lcd_driver(
	 input clk_lcd,                 //LCD的时钟输入
	 input lcd_rst,                 
 
	 output lcd_dclk,
	 output [7:0] lcd_r,
    output [7:0] lcd_g,
    output [7:0] lcd_b,
    output lcd_hsync,
    output lcd_vsync,
    output lcd_de,

	 input [95:0] lcd_data,         //SDRARM中的图像数据	 
	 output reg sdr_addr_set,       //ddr读地址复位信号
	 output lcd_framesync,
	 output lcd_rden
);

parameter HSYNC_WIDTH = 525;               //行周期数
parameter VSYNC_WIDTH = 288;               //列周期数	
parameter LCD_THP = 45;                    //行同步信号麦冲宽度
parameter LCD_THD = 480;                   //行数据显示宽度
parameter LCD_THB = 45;                    //行黑色区
parameter LCD_TVP = 16;                    //列同步信号脉冲宽度
parameter LCD_TVD = 272;                   //列数据显示宽度
parameter LCD_TVB = 16;                    //列黑色区
	

reg [95:0] lcd_data_reg;    //ddr的输入数据存储
reg [2:0] num_counter;       

reg [7:0] lcd_data_r;        //ddr红色图像数据
reg [7:0] lcd_data_g;        //ddr绿色图像数据
reg [7:0] lcd_data_b;        //ddr蓝色图像数据

reg lcd_hsync_reg;
reg [9:0] hcount;            // 行输出counter
reg lcd_hsync_de;

reg [9:0] vcount;            // 列输出counter
reg lcd_vsync_reg;
reg lcd_vsync_de;

reg lcd_de_reg;

reg lcd_vsync_reg_buf1;
reg lcd_vsync_reg_buf2; 

reg sdr_rd_req;               //ddr读数据请求



 //LCD输出信号赋值
  assign lcd_dclk=clk_lcd;
  assign lcd_hsync=1'bz;//lcd_en?lcd_hsync_reg:1'b0;
  assign lcd_vsync=1'bz;//lcd_en?lcd_vsync_reg:1'b0;
  assign lcd_de=lcd_hsync_de&lcd_vsync_de;
  assign lcd_r=lcd_data_r;
  assign lcd_g=lcd_data_g;
  assign lcd_b=lcd_data_b;
  
  assign lcd_rden=sdr_rd_req;
  
  assign lcd_framesync=lcd_vsync_de;
	  
 //产生行同步信号
 always @(negedge clk_lcd) 
    if (lcd_rst) 
	    begin 
	       hcount<=0; 
		    lcd_hsync_reg<=1'b0; 
			 lcd_hsync_de<=1'b0;
	    end
	 else 
       begin
          if (hcount==HSYNC_WIDTH-1)                 //一行525点
             hcount<=0;
          else
             hcount<=hcount+1'b1;
			
	       if (hcount>=LCD_THP)                               // 产生行同步信号HSYNC
             lcd_hsync_reg<=1'b1;
          else 
             lcd_hsync_reg<=1'b0;

          if(hcount<LCD_THB)                                // 产生行的DE信号
			    lcd_hsync_de<=1'b0;
          else 
             lcd_hsync_de<=1'b1;				 
	 
       end 
  
 //产生列同步信号
 always @(negedge lcd_hsync_reg)
  if (lcd_rst)
	    begin 
	       vcount<=0; 
		    lcd_vsync_reg<=1'b0; 
			 lcd_vsync_de<=1'b0;
	    end 
  else		 
    begin
       if (vcount==VSYNC_WIDTH-1)                     //288列
          vcount<=0;
       else
          vcount<=vcount+1'b1;      

       if (vcount>=LCD_TVP)                                //产生列同步信号VSYNC
          lcd_vsync_reg<=1'b1;
       else
          lcd_vsync_reg<=1'b0;
			
       if(vcount<LCD_TVB)                               // 产生列的DE信号
          lcd_vsync_de<=1'b0;			 
       else 
          lcd_vsync_de<=1'b1;	  
 
    end 
 

 //ddr地址复位处理程序	
  always @(posedge clk_lcd)
   if (lcd_rst) begin
	    lcd_vsync_reg_buf1<=1'b0;
		 lcd_vsync_reg_buf2<=1'b0;
	    sdr_addr_set<=1'b0;
     end
   else begin
		 lcd_vsync_reg_buf1<=lcd_vsync_reg;
		 lcd_vsync_reg_buf2<=lcd_vsync_reg_buf1;
       if (lcd_vsync_reg_buf2&~lcd_vsync_reg_buf1)      //检测vsync的下降沿,sdr的地址复位
		   sdr_addr_set<=1'b1;
		 else
		   sdr_addr_set<=1'b0;		   
	end
		
 //ddr读请求信号产生程序, 96bit的sdram数据转成4个像素输出
 always @(posedge clk_lcd)
 begin
   if (lcd_rst) begin
		 lcd_data_reg<=96'd0;
		 lcd_data_r<=8'd0;
		 lcd_data_g<=8'd0;
		 lcd_data_b<=8'd0;
		 num_counter<=3'b000;
		 sdr_rd_req<=1'b0;   
   end
   else begin
       if (lcd_hsync_de && lcd_vsync_de)              //如果LCD输出有效的图像数据
		   begin
			  case(num_counter)
			    3'b000:begin 
                  lcd_data_b<=lcd_data[95:88];         //第N个像数（1，6，12....)
                  lcd_data_g<=lcd_data[87:80];
                  lcd_data_r<=lcd_data[79:72];	
						num_counter<=3'b001;
						lcd_data_reg<=lcd_data;
				      sdr_rd_req<=1'b0;  						
						end
			    3'b001:begin                                  //第N+1个像数（2，7，13....)
                  lcd_data_b<=lcd_data_reg[71:64];
                  lcd_data_g<=lcd_data_reg[63:56];
                  lcd_data_r<=lcd_data_reg[55:48];
						num_counter<=3'b010;
						sdr_rd_req<=1'b0; 
                  end						
			    3'b010:begin                                 //第N+2个像数（3，8，14....)
                  lcd_data_b<=lcd_data_reg[47:40];
                  lcd_data_g<=lcd_data_reg[39:32];
                  lcd_data_r<=lcd_data_reg[31:24];
						num_counter<=3'b011;	
						sdr_rd_req<=1'b1;                        //ddr读数据请求
						end
			    3'b011:begin                                //第N+3个像数（4，9，15....)
                  lcd_data_b<=lcd_data_reg[23:16];
                  lcd_data_g<=lcd_data_reg[15:8];
                  lcd_data_r<=lcd_data_reg[7:0];
						num_counter<=3'b000;	
						sdr_rd_req<=1'b0;	


                  end		
            default:begin
					  lcd_data_b<=8'd0;                    
                 lcd_data_g<=8'd0;
                 lcd_data_r<=8'd0;
					  num_counter<=3'b000;	
					  sdr_rd_req<=1'b0;
					  end
				endcase;
			end
		else begin
			  lcd_data_b<=8'd0;                    
           lcd_data_g<=8'd0;
           lcd_data_r<=8'd0;
		     sdr_rd_req<=1'b0;
			  num_counter<=3'b000;	
			  lcd_data_reg<=lcd_data;                 //ddr数据改变
		end
	end
end

			
endmodule

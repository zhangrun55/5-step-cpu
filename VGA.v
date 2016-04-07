`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:31:18 01/10/2015 
// Design Name: 
// Module Name:    VGA 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module VGA(
				input clk ,rst_n,  
				input [3:0] ge_r,
				input [3:0] shi_r,
				input [3:0] bai_r,
				input [3:0] qian_r,
				output  hsync,vsync,
             output reg [2:0] vga_r,
				 output  reg [2:0] vga_g,
				 output reg [1:0] vga_b
               );
   //50MHz
 //低电平复位
  //行同步信号
//颜色信号线RGB

//----------------------------------------------------------------------
reg [10:0] x_cnt; //行坐标
reg [9:0] y_cnt;  //列坐标
//-----------------------------------------------------------------
wire [10:0]xpos;  //有效显示行坐标
wire [9:0]ypos;  //有效显示列坐标
//------------------------------------------------------------------
//reg hsync_r,vsync_r;           //同步信号
//wire valid;                    //有效显示区标志
//reg [2:0]vga_rgb;              //显示像素颜色
reg [5:0]char1_bit;             //取模的位数
//-------------------------------------------------------------------
//定义存放数据的寄存器
reg [15:0]char_line0[9:0];
reg [15:0]char_line1[9:0];
reg [15:0]char_line2[9:0];
reg [15:0]char_line3[9:0];
reg [15:0]char_line4[9:0];
reg [15:0]char_line5[9:0];
reg [15:0]char_line6[9:0];
reg [15:0]char_line7[9:0];
reg [15:0]char_line8[9:0];
reg [15:0]char_line9[9:0];
reg [15:0]char_line10[9:0];
reg [15:0]char_line11[9:0];
reg [15:0]char_line12[9:0];
reg [15:0]char_line13[9:0];
reg [15:0]char_line14[9:0];
reg [15:0]char_line15[9:0];
reg [15:0]char_line16[9:0];
reg [15:0]char_line17[9:0];
reg [15:0]char_line18[9:0];
reg [15:0]char_line19[9:0];
reg [15:0]char_line20[9:0];
reg [15:0]char_line21[9:0];
reg [15:0]char_line22[9:0];
reg [15:0]char_line23[9:0];
reg [15:0]char_line24[9:0];
reg [15:0]char_line25[9:0];
reg [15:0]char_line26[9:0];
reg [15:0]char_line27[9:0];
reg [15:0]char_line28[9:0];
reg [15:0]char_line29[9:0];
reg [15:0]char_line30[9:0];
reg [15:0]char_line31[9:0];
//-------------------------------------------------------------------------------------
//定义扫描显示的数据，wire型
wire [63:0]line0;                //第1行
wire [63:0]line1;                //第2行
wire [63:0]line2;                //第3行
wire [63:0]line3;                //第4行
wire [63:0]line4;                //第5行
wire [63:0]line5;                //第6行
wire [63:0]line6;                //第7行
wire [63:0]line7;                //第8行
wire [63:0]line8;                //第9行
wire [63:0]line9;                //第10行
wire [63:0]line10;               //第11行
wire [63:0]line11;               //第12行
wire [63:0]line12;               //第13行
wire [63:0]line13;               //第14行
wire [63:0]line14;               //第15行
wire [63:0]line15;               //第16行
wire [63:0]line16;               //第17行 
wire [63:0]line17;               //第18行
wire [63:0]line18;               //第19行
wire [63:0]line19;               //第20行
wire [63:0]line20;               //第21行
wire [63:0]line21;               //第22行
wire [63:0]line22;               //第23行 
wire [63:0]line23;               //第24行
wire [63:0]line24;               //第25行
wire [63:0]line25;               //第26行 
wire [63:0]line26;               //第27行
wire [63:0]line27;               //第28行 
wire [63:0]line28;               //第29行
wire [63:0]line29;               //第30行
wire [63:0]line30;               //第31行
wire [63:0]line31;               //第32行
//---------------------------------------------------------------------------------------
wire [3:0]ge,shi,bai,qian; 
//---------------------------------------------------------------------------------------
//将0123456789的取模数据存入到寄存器中，16*32
//每个字符将其最上面的数据存到line0中，然后依次往下推
//将数字x的取模数据存到地址为x的寄存器中，例如0的数据就存到地址为0的存储单元中
always 
begin
          char_line0[0] <= 16'h0000;    //0的字模
          char_line1[0] <= 16'h0000;
          char_line2[0] <= 16'h0000;
          char_line3[0] <= 16'h0000;
          char_line4[0] <= 16'h0000;
          char_line5[0] <= 16'h0000;
          char_line6[0] <= 16'h03f0;
          char_line7[0] <= 16'h0738;
          char_line8[0] <= 16'h0e1c;
          char_line9[0] <= 16'h1c0e;
          char_line10[0] <= 16'h1c0e;
          char_line11[0] <= 16'h1c06;
          char_line12[0] <= 16'h3807;
          char_line13[0] <= 16'h3807;
          char_line14[0] <= 16'h3807;
          char_line15[0] <= 16'h3807;
          char_line16[0] <= 16'h3807;
          char_line17[0] <= 16'h3807;
          char_line18[0] <= 16'h3807;
          char_line19[0] <= 16'h3807;
          char_line20[0] <= 16'h3807;
          char_line21[0] <= 16'h1c06;
          char_line22[0] <= 16'h1c0e;
          char_line23[0] <= 16'h1c0e;
          char_line24[0] <= 16'h0e1c;
          char_line25[0] <= 16'h0738;
          char_line26[0] <= 16'h03f0;
          char_line27[0] <= 16'h0000;
          char_line28[0] <= 16'h0000;
          char_line29[0] <= 16'h0000;
          char_line30[0] <= 16'h0000;  
          char_line31[0] <= 16'h0000; 
          
          char_line0[1] <= 16'h0000;    //1的字模
          char_line1[1] <= 16'h0000;
          char_line2[1] <= 16'h0000;
          char_line3[1] <= 16'h0000;
          char_line4[1] <= 16'h0000;
          char_line5[1] <= 16'h0000;
          char_line6[1] <= 16'h00c0;
          char_line7[1] <= 16'h01c0;
          char_line8[1] <= 16'h1fc0;
          char_line9[1] <= 16'h01c0;
          char_line10[1] <= 16'h01c0;
          char_line11[1] <= 16'h01c0;
          char_line12[1] <= 16'h01c0;
          char_line13[1] <= 16'h01c0;
          char_line14[1] <= 16'h01c0;
          char_line15[1] <= 16'h01c0;
          char_line16[1] <= 16'h01c0;
          char_line17[1] <= 16'h01c0;
          char_line18[1] <= 16'h01c0;
          char_line19[1] <= 16'h01c0;
          char_line20[1] <= 16'h01c0;
          char_line21[1] <= 16'h01c0;
          char_line22[1] <= 16'h01c0;
          char_line23[1] <= 16'h01c0;
          char_line24[1] <= 16'h01c0;
          char_line25[1] <= 16'h03e0;
          char_line26[1] <= 16'h1ffc;
          char_line27[1] <= 16'h0000;
          char_line28[1] <= 16'h0000;
          char_line29[1] <= 16'h0000;
          char_line30[1] <= 16'h0000;  
          char_line31[1] <= 16'h0000;
          char_line0[2] <= 16'h0000;    //2的字模
          char_line1[2] <= 16'h0000;
          char_line2[2] <= 16'h0000;
          char_line3[2] <= 16'h0000;
          char_line4[2] <= 16'h0000;
          char_line5[2] <= 16'h0000;
          char_line6[2] <= 16'h07f0;
          char_line7[2] <= 16'h0c3c;
          char_line8[2] <= 16'h181c;
          char_line9[2] <= 16'h300e;
          char_line10[2] <= 16'h300e;
          char_line11[2] <= 16'h380e;
          char_line12[2] <= 16'h380e;
          char_line13[2] <= 16'h000e;
          char_line14[2] <= 16'h001c;
          char_line15[2] <= 16'h0018;
          char_line16[2] <= 16'h0030;
          char_line17[2] <= 16'h0060;
          char_line18[2] <= 16'h00c0;
          char_line19[2] <= 16'h0180;
          char_line20[2] <= 16'h0300;
          char_line21[2] <= 16'h0606;
          char_line22[2] <= 16'h0c06;
          char_line23[2] <= 16'h1806;
          char_line24[2] <= 16'h300e;
          char_line25[2] <= 16'h3ffc;
          char_line26[2] <= 16'h3ffc;
          char_line27[2] <= 16'h0000;
          char_line28[2] <= 16'h0000;
          char_line29[2] <= 16'h0000;
          char_line30[2] <= 16'h0000;  
          char_line31[2] <= 16'h0000;
          char_line0[3] <= 16'h0000;    //3的字模
          char_line1[3] <= 16'h0000;
          char_line2[3] <= 16'h0000;
          char_line3[3] <= 16'h0000;
          char_line4[3] <= 16'h0000;
          char_line5[3] <= 16'h0000;
          char_line6[3] <= 16'h07e0;
          char_line7[3] <= 16'h1c78;
          char_line8[3] <= 16'h3838;
          char_line9[3] <= 16'h381c;
          char_line10[3] <= 16'h381c;
          char_line11[3] <= 16'h381c;
          char_line12[3] <= 16'h001c;
          char_line13[3] <= 16'h0038;
          char_line14[3] <= 16'h0070;
          char_line15[3] <= 16'h03e0;
          char_line16[3] <= 16'h0078;
          char_line17[3] <= 16'h001c;
          char_line18[3] <= 16'h000c;
          char_line19[3] <= 16'h000e;
          char_line20[3] <= 16'h000e;
          char_line21[3] <= 16'h380e;
          char_line22[3] <= 16'h380e;
          char_line23[3] <= 16'h380c;
          char_line24[3] <= 16'h381c;
          char_line25[3] <= 16'h1c38;
          char_line26[3] <= 16'h07e0;
          char_line27[3] <= 16'h0000;
          char_line28[3] <= 16'h0000;
          char_line29[3] <= 16'h0000;
          char_line30[3] <= 16'h0000;  
          char_line31[3] <= 16'h0000;
          char_line0[4] <= 16'h0000;    //4的字模
          char_line1[4] <= 16'h0000;
          char_line2[4] <= 16'h0000;
          char_line3[4] <= 16'h0000;
          char_line4[4] <= 16'h0000;
          char_line5[4] <= 16'h0000;
          char_line6[4] <= 16'h0038;
          char_line7[4] <= 16'h0078;
          char_line8[4] <= 16'h0078;
          char_line9[4] <= 16'h00f8;
          char_line10[4] <= 16'h01f8;
          char_line11[4] <= 16'h01f8;
          char_line12[4] <= 16'h0378;
          char_line13[4] <= 16'h0778;
          char_line14[4] <= 16'h0678;
          char_line15[4] <= 16'h0c78;
          char_line16[4] <= 16'h0c78;
          char_line17[4] <= 16'h1878;
          char_line18[4] <= 16'h3078;
          char_line19[4] <= 16'h3078;
          char_line20[4] <= 16'h7eff;
          char_line21[4] <= 16'h0078;
          char_line22[4] <= 16'h0078;
          char_line23[4] <= 16'h0078;
          char_line24[4] <= 16'h0078;
          char_line25[4] <= 16'h0078;
          char_line26[4] <= 16'h0078;
          char_line27[4] <= 16'h03ff;
          char_line28[4] <= 16'h0000;
          char_line29[4] <= 16'h0000;
          char_line30[4] <= 16'h0000;  
          char_line31[4] <= 16'h0000;
          char_line0[5] <= 16'h0000;    //5的字模
          char_line1[5] <= 16'h0000;
          char_line2[5] <= 16'h0000;
          char_line3[5] <= 16'h0000;
          char_line4[5] <= 16'h0000;
          char_line5[5] <= 16'h0000;
          char_line6[5] <= 16'h0ffe;
          char_line7[5] <= 16'h0ffe;
          char_line8[5] <= 16'h0c00;
          char_line9[5] <= 16'h0c00;
          char_line10[5] <= 16'h0c00;
          char_line11[5] <= 16'h1800;
          char_line12[5] <= 16'h1800;
          char_line13[5] <= 16'h1bf0;
          char_line14[5] <= 16'h1e38;
          char_line15[5] <= 16'h1c1c;
          char_line16[5] <= 16'h180c;
          char_line17[5] <= 16'h000e;
          char_line18[5] <= 16'h000e;
          char_line19[5] <= 16'h000e;
          char_line20[5] <= 16'h000e;
          char_line21[5] <= 16'h380e;
          char_line22[5] <= 16'h380e;
          char_line23[5] <= 16'h301c;
          char_line24[5] <= 16'h301c;
          char_line25[5] <= 16'h1838;
          char_line26[5] <= 16'h0fe0;
          char_line27[5] <= 16'h0000;
          char_line28[5] <= 16'h0000;
          char_line29[5] <= 16'h0000;
          char_line30[5] <= 16'h0000;  
          char_line31[5] <= 16'h0000;
          char_line0[6] <= 16'h0000;    //6的字模
          char_line1[6] <= 16'h0000;
          char_line2[6] <= 16'h0000;
          char_line3[6] <= 16'h0000;
          char_line4[6] <= 16'h0000;
          char_line5[6] <= 16'h0000;
          char_line6[6] <= 16'h01f8;
          char_line7[6] <= 16'h038c;
          char_line8[6] <= 16'h060e;
          char_line9[6] <= 16'h0c0e;
          char_line10[6] <= 16'h1c00;
          char_line11[6] <= 16'h1c00;
          char_line12[6] <= 16'h1800;
          char_line13[6] <= 16'h3800;
          char_line14[6] <= 16'h39f8;
          char_line15[6] <= 16'h3f1c;
          char_line16[6] <= 16'h3e0e;
          char_line17[6] <= 16'h3c07;
          char_line18[6] <= 16'h3807;
          char_line19[6] <= 16'h3807;
          char_line20[6] <= 16'h3807;
          char_line21[6] <= 16'h3807;
          char_line22[6] <= 16'h1c07;
          char_line23[6] <= 16'h1c06;
          char_line24[6] <= 16'h0e0e;
          char_line25[6] <= 16'h071c;
          char_line26[6] <= 16'h03f0;
          char_line27[6] <= 16'h0000;
          char_line28[6] <= 16'h0000;
          char_line29[6] <= 16'h0000;
          char_line30[6] <= 16'h0000;  
          char_line31[6] <= 16'h0000;
          char_line0[7] <= 16'h0000;    //7的字模
          char_line1[7] <= 16'h0000;
          char_line2[7] <= 16'h0000;
          char_line3[7] <= 16'h0000;
          char_line4[7] <= 16'h0000;
          char_line5[7] <= 16'h0000;
          char_line6[7] <= 16'h1ffe;
          char_line7[7] <= 16'h1ffe;
          char_line8[7] <= 16'h3c0c;
          char_line9[7] <= 16'h3818;
          char_line10[7] <= 16'h3018;
          char_line11[7] <= 16'h3030;
          char_line12[7] <= 16'h0030;
          char_line13[7] <= 16'h0060;
          char_line14[7] <= 16'h0060;
          char_line15[7] <= 16'h00c0;
          char_line16[7] <= 16'h00c0;
          char_line17[7] <= 16'h00c0;
          char_line18[7] <= 16'h0180;
          char_line19[7] <= 16'h0180;
          char_line20[7] <= 16'h0180;
          char_line21[7] <= 16'h0380;
          char_line22[7] <= 16'h0380;
          char_line23[7] <= 16'h0380;
          char_line24[7] <= 16'h0380;
          char_line25[7] <= 16'h0380;
          char_line26[7] <= 16'h0380;
          char_line27[7] <= 16'h0000;
          char_line28[7] <= 16'h0000;
          char_line29[7] <= 16'h0000;
          char_line30[7] <= 16'h0000;  
          char_line31[7] <= 16'h0000;
          char_line0[8] <= 16'h0000;    //8的字模
          char_line1[8] <= 16'h0000;
          char_line2[8] <= 16'h0000;
          char_line3[8] <= 16'h0000;
          char_line4[8] <= 16'h0000;
          char_line5[8] <= 16'h0000;
          char_line6[8] <= 16'h03f0;
          char_line7[8] <= 16'h07f0;
          char_line8[8] <= 16'h1c1c;
          char_line9[8] <= 16'h380e;
          char_line10[8] <= 16'h380e;
          char_line11[8] <= 16'h380e;
          char_line12[8] <= 16'h3c0e;
          char_line13[8] <= 16'h1e1c;
          char_line14[8] <= 16'h0f18;
          char_line15[8] <= 16'h07f0;
          char_line16[8] <= 16'h0ff0;
          char_line17[8] <= 16'h1c78;
          char_line18[8] <= 16'h383c;
          char_line19[8] <= 16'h701e;
          char_line20[8] <= 16'h700e;
          char_line21[8] <= 16'h700e;
          char_line22[8] <= 16'h700e;
          char_line23[8] <= 16'h700e;
          char_line24[8] <= 16'h381c;
          char_line25[8] <= 16'h1c38;
          char_line26[8] <= 16'h07e0;
          char_line27[8] <= 16'h0000;
          char_line28[8] <= 16'h0000;
          char_line29[8] <= 16'h0000;
          char_line30[8] <= 16'h0000;  
          char_line31[8] <= 16'h0000;
          char_line0[9] <= 16'h0000;    //9的字模
          char_line1[9] <= 16'h0000;
          char_line2[9] <= 16'h0000;
          char_line3[9] <= 16'h0000;
          char_line4[9] <= 16'h0000;
          char_line5[9] <= 16'h0000;
          char_line6[9] <= 16'h07e0;
          char_line7[9] <= 16'h1c30;
          char_line8[9] <= 16'h3818;
          char_line9[9] <= 16'h381c;
          char_line10[9] <= 16'h700c;
          char_line11[9] <= 16'h700e;
          char_line12[9] <= 16'h700e;
          char_line13[9] <= 16'h700e;
          char_line14[9] <= 16'h700e;
          char_line15[9] <= 16'h701e;
          char_line16[9] <= 16'h383e;
          char_line17[9] <= 16'h1c7e;
          char_line18[9] <= 16'h0fce;
          char_line19[9] <= 16'h000e;
          char_line20[9] <= 16'h001c;
          char_line21[9] <= 16'h001c;
          char_line22[9] <= 16'h001c;
          char_line23[9] <= 16'h3838;
          char_line24[9] <= 16'h3870;
          char_line25[9] <= 16'h38e0;
          char_line26[9] <= 16'h0fc0;
          char_line27[9] <= 16'h0000;
          char_line28[9] <= 16'h0000;
          char_line29[9] <= 16'h0000;
          char_line30[9] <= 16'h0000;  
          char_line31[9] <= 16'h0000;
end

//对时钟信号进行分频处理，并得到同步信号
wire pclk;
reg [10:0]count;
assign pclk = count[7];  
always @ (posedge clk)  
begin  
  if (rst_n)  
		count <= 0;  
  else  
		count <= count+1;  
end  

// 列计数与行同步  
assign hsync= (x_cnt < 96) ? 0 : 1;  
always @ (posedge pclk or posedge rst_n)  
begin  
  if (rst_n)  
		x_cnt <= 0;  
  else if (x_cnt== 799)  
		x_cnt <= 0;  
  else  
		x_cnt <= x_cnt+1;  
end  

// 行计数与场同步  
assign vsync = (y_cnt < 2) ? 0 : 1;  
always @ (posedge pclk or posedge rst_n)  
begin  
  if (rst_n)  
		y_cnt <= 0;  
  else if (x_cnt == 799) begin  
		if (y_cnt == 520)  
			 y_cnt <= 0;  
		else  
			 y_cnt <= y_cnt+1;  
  end  
  else  
		y_cnt <= y_cnt;  
end  

assign xpos = x_cnt - 11'd96;
assign ypos = y_cnt - 10'd31;

assign ge=ge_r;
assign shi=shi_r;
assign bai=bai_r;
assign qian=qian_r;

//-------------------------------------------------------------------------------------------
//采用查询的办法，来选择显示的字模
assign line0 = {char_line0[qian],char_line0[bai],char_line0[shi],char_line0[ge]};
assign line1 = {char_line1[qian],char_line1[bai],char_line1[shi],char_line1[ge]};
assign line2 = {char_line2[qian],char_line2[bai],char_line2[shi],char_line2[ge]};
assign line3 = {char_line3[qian],char_line3[bai],char_line3[shi],char_line3[ge]};
assign line4 = {char_line4[qian],char_line4[bai],char_line4[shi],char_line4[ge]};
assign line5 = {char_line5[qian],char_line5[bai],char_line5[shi],char_line5[ge]};
assign line6 = {char_line6[qian],char_line6[bai],char_line6[shi],char_line6[ge]};
assign line7 = {char_line7[qian],char_line7[bai],char_line7[shi],char_line7[ge]};
assign line8 = {char_line8[qian],char_line8[bai],char_line8[shi],char_line8[ge]};
assign line9 = {char_line9[qian],char_line9[bai],char_line9[shi],char_line9[ge]};
assign line10= {char_line10[qian],char_line10[bai],char_line10[shi],char_line10[ge]};
assign line11= {char_line11[qian],char_line11[bai],char_line11[shi],char_line11[ge]};
assign line12= {char_line12[qian],char_line12[bai],char_line12[shi],char_line12[ge]};
assign line13= {char_line13[qian],char_line13[bai],char_line13[shi],char_line13[ge]};
assign line14= {char_line14[qian],char_line14[bai],char_line14[shi],char_line14[ge]};
assign line15= {char_line15[qian],char_line15[bai],char_line15[shi],char_line15[ge]};
assign line16= {char_line16[qian],char_line16[bai],char_line16[shi],char_line16[ge]};
assign line17= {char_line17[qian],char_line17[bai],char_line17[shi],char_line17[ge]};
assign line18= {char_line18[qian],char_line18[bai],char_line18[shi],char_line18[ge]};
assign line19= {char_line19[qian],char_line19[bai],char_line19[shi],char_line19[ge]};
assign line20= {char_line20[qian],char_line20[bai],char_line20[shi],char_line20[ge]};
assign line21= {char_line21[qian],char_line21[bai],char_line21[shi],char_line21[ge]};
assign line22= {char_line22[qian],char_line22[bai],char_line22[shi],char_line22[ge]};
assign line23= {char_line23[qian],char_line23[bai],char_line23[shi],char_line23[ge]};
assign line24= {char_line24[qian],char_line24[bai],char_line24[shi],char_line24[ge]};
assign line25= {char_line25[qian],char_line25[bai],char_line25[shi],char_line25[ge]};
assign line26= {char_line26[qian],char_line26[bai],char_line26[shi],char_line26[ge]};
assign line27= {char_line27[qian],char_line27[bai],char_line27[shi],char_line27[ge]};
assign line28= {char_line28[qian],char_line28[bai],char_line28[shi],char_line28[ge]};
assign line29= {char_line29[qian],char_line29[bai],char_line29[shi],char_line29[ge]};
assign line30= {char_line30[qian],char_line30[bai],char_line30[shi],char_line30[ge]};
assign line31= {char_line31[qian],char_line31[bai],char_line31[shi],char_line31[ge]};
//-------------------------------------------------------------------------------------------
//显示位的计算，从高位到低位
always @ (posedge pclk or posedge rst_n)
begin
  if(rst_n)
    char1_bit<=63;
  else if(xpos==380)
    char1_bit<=63;
  else if(xpos>=380&&xpos<444)
    char1_bit<=char1_bit-1'b1;
end
/*--------------------------------------------------------------------------------------
VGA彩色信号
RGB = 000  黑色    RGB = 100   红色
    = 001  蓝色        = 101   紫色
    = 010  绿色        = 110   黄色
    = 011  青色        = 111   白色
----------------------------------------------------------------------------------------*/
//VGA显示的坐标定位，显示为绿色，背景为白色
always @ (posedge pclk)
begin
 if(!((x_cnt>=95) && (x_cnt<987) && (y_cnt>=31) && (y_cnt<631)) )
				begin vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;end
 else if(xpos>=381&&xpos<445)
 begin
  case(ypos)
    190 : if(line0[char1_bit])
				begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    191 : if(line1[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    192 : if(line2[char1_bit])
            begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    193 : if(line3[char1_bit])
            begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    194 : if(line4[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    195 : if(line5[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    196 : if(line6[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    197 : if(line7[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    198 : if(line8[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    199 : if(line9[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    200 : if(line10[char1_bit])
            begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    201 : if(line11[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    202 : if(line12[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    203 : if(line13[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    204 : if(line14[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    205 : if(line15[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    206 : if(line16[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    207 : if(line17[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    208 : if(line18[char1_bit])
            begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    209 : if(line19[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    210 : if(line20[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    211 : if(line21[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    212 : if(line22[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    213 : if(line23[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    214 : if(line24[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    215 : if(line25[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    216 : if(line26[char1_bit])
            begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    217 : if(line27[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    218 : if(line28[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    219 : if(line29[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    220 : if(line30[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
    221 : if(line31[char1_bit])
             begin
				 vga_r<=3'b000;
             vga_g<=3'b111;
				 vga_b<=2'b00;
				end
          else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
   default : 
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
  endcase
 end
  else
				begin
             vga_r<=3'b000;
             vga_g<=3'b000;
				 vga_b<=2'b00;
				end
end
 
endmodule




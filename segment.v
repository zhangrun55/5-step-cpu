`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:40:32 12/29/2014 
// Design Name: 
// Module Name:    segment 
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
module segment(
input clk,
input reset,
input [3:0] anw_0,
input [3:0] anw_1,
input [3:0] anw_2,
input [3:0] anw_3,
output reg [3:0]en,
output reg [6:0] num
    );
reg clock;

//七段译码管显示部分
reg [3:0]anw;
reg [13:0] _count;
always@(posedge clk or posedge reset)
	if(reset)
	begin
		_count <= 0;
		anw <= 0;
		en <=0;
	end	
	else if(_count <= 3000)
   begin 
	anw <= anw_3;
	en <= 4'b0111;
	_count <= _count+1;
   end
   else if(_count <=6000)
	begin
	anw <= anw_2;
   en <= 4'b1011;
	_count <= _count+1;
   end
	else if(_count <= 9000)
	begin
	anw <= anw_1;
   en <= 4'b1101;
	_count <= _count+1;
   end
	else if(_count <= 12000)
	begin
	anw <= anw_0;
   en <= 4'b1110;
	_count <= _count+1;
   end
	else
	begin
	_count <=0;
	end
	
always @ (*)
case(anw)
0:num=7'b0000001;
1:num=7'b1001111;
2:num=7'b0010010;
3:num=7'b0000110;
4:num=7'b1001100;
5:num=7'b0100100;
6:num=7'b0100000;
7:num=7'b0001111;
8:num=7'b0000000;
9:num=7'b0000100;
10:num=7'b0001000;
11:num=7'b1100000;
12:num=7'b0110001;
13:num=7'b1000010;
14:num=7'b0110000;
15:num=7'b0111000;
default: num=7'b1111111;
endcase
endmodule

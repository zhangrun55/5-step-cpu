`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:45:46 12/30/2014 
// Design Name: 
// Module Name:    clk 
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
module clk(input clk,reset,
input [20:0] num,
output reg clock
    );
reg [20:0] count;
always@(posedge clk or posedge reset)
begin
	if(reset)
		begin
		count <= 0;
		clock <= 0;
		end
	else if(count == num)
		begin
		clock <= ~clock;
		count <= 0;
		end
	else	
		count <= count+1;
end
endmodule

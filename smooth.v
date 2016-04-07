`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:58:10 01/08/2015 
// Design Name: 
// Module Name:    smooth 
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
module smooth(
			input clk,
			input reset,
			input button,
			output reg out
    );
reg [1:0] cunt;
always@(posedge clk )
begin	
//	if(reset)
//	cunt = 0;
//	else
//	begin
	cunt[1] <= cunt[0];
	cunt[0] <= button;
	//end
end
always@(*)
begin
if(cunt == 2'b01)
	out = 1'b1;
	else 
	out = 1'b0;
end

endmodule

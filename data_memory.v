`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:21:36 12/29/2014 
// Design Name: 
// Module Name:    data_memory 
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
module data_memory(
mem_clk,d_we,addr,wdata,rdata
    );
input mem_clk,d_we;
input [7:0] addr;
input [15:0] wdata;
output [15:0] rdata;
reg [15:0] d_mem[255:0];
assign rdata = d_mem[addr];
always @(posedge mem_clk )
begin

if(d_we)
	d_mem[addr] <= wdata;
else d_mem[addr] <= d_mem[addr];
end
endmodule

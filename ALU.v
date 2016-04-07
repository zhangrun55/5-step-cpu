`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:41:00 12/21/2014 
// Design Name: 
// Module Name:    ALU 
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
`include "cpu.v"
module ALU(
input [4:0]instruct,
input signed[15:0]in1,
input [15:0]in2,
input cf_in,
output reg[15:0]aluo,
output reg cf
);			
parameter ADD=4'h0;
parameter SUB=4'h1;
parameter ADDC=4'h2;
parameter SUBC=4'h3;
parameter LOAD=4'h4;
parameter CMP=4'h5;
parameter AND=4'h6;
parameter OR=4'h7;
parameter XOR=4'h8;
parameter SLL=4'h9;
parameter SLA=4'hA;
parameter SRL=4'hB;
parameter SRA=4'hC;
parameter SUBI=4'hD;
parameter LDIH=4'hE;
reg [3:0] sel;
always @(instruct)
begin
  case(instruct)
  `NOP:sel<=4'b1111;
  `HALT:sel<=4'b1111;
  `ADD:sel<=ADD;
  `LOAD:sel<=ADD;
  `STORE:sel<=ADD;
  `ADDI:sel<=ADD;
  `LDIH:sel<=ADD;
  `JMPR:sel<=ADD;
  `BZ:sel<=ADD;
  `BNZ:sel<=ADD;
  `BN:sel<=ADD;
  `BNN:sel<=ADD;
  `BC:sel<=ADD;
  `BNC:sel<=ADD;
  `ADDC:sel<=ADDC;
  `SUB:sel<=SUB;
  `SUBC:sel<=SUBC;
  `SUBI:sel<=SUBI;
  `CMP:sel<=CMP;
  `AND:sel<=AND;
  `OR:sel<=OR;
  `XOR:sel<=XOR;
  `SLL:sel<=SLL;
  `SLA:sel<=SLA;
  `SRA:sel<=SRA;
  `SRL:sel<=SRL;
  `JUMP:sel<=LOAD;
  
  default:sel<=LOAD;
  endcase
end
always @(*)
begin
 case(sel)
   ADD: {cf,aluo} <= in1 + in2;
	SUB: {cf,aluo} <= in1 - in2;
	ADDC:{cf,aluo} <= in1 + in2 + cf_in;
	SUBC:{cf,aluo} <= in1 - in2 + cf_in;
	LOAD: begin aluo <= in2;cf <= 1'b0;end
	CMP: {cf,aluo} <= in1 - in2;
	AND: begin aluo <= in1 & in2;cf <= 1'b0;end
	OR:  begin aluo <= in1 | in2;cf <= 1'b0;end
	XOR: begin aluo <= in1 ^ in2;cf <= 1'b0;end
	SLL: begin aluo <= in1 << in2;cf <= 1'b0;end
	SLA: begin aluo <= in1 << in2 | in1[15];cf <= 1'b0;end
	SRL: begin aluo <= in1 >> in2;cf<=1'b0;end
	SRA: begin aluo <= in1 >> in2 | in1[15];cf <=1'b0;end
	default:begin aluo<=aluo;end
	endcase
end
endmodule   

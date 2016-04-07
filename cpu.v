`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:10:34 12/25/2014 
// Design Name: 
// Module Name:    cpu 
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
`define exec 1'b1  
`define idle 1'b0  

`define NOP 5'b00000  
`define HALT 5'b00001  
`define LOAD 5'b00010  
`define STORE 5'b00011  
`define LDIH 5'b10000  
`define ADD 5'b01000  
`define ADDI 5'b01001  
`define ADDC  5'b10001  
`define SUB  5'b10010  
`define SUBI  5'b10011  
`define SUBC  5'b10100  
`define CMP  5'b01100  

`define AND  5'b01101  
`define OR  5'b01110  
`define XOR  5'b01111  
`define SRL  5'b00110  
`define SLA  5'b00101  
`define SRA  5'b00111  
`define SLL  5'b10101  

`define JUMP  5'b11000  
`define JMPR  5'b11001  
`define BZ  5'b11010  
`define BNZ  5'b11011  
`define BN  5'b11100  
`define BNN  5'b11101  
`define BC  5'b11110  
`define BNC  5'b11111  

`define gr0 3'b000
`define gr1 3'b001
`define gr2 3'b010
`define gr3 3'b011


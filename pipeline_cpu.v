`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:35:54 12/21/2014 
// Design Name: 
// Module Name:    yxq_cpu 
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
module pipeline_cpu(	
		input reset,
		input clock,
		input enable,
		input start,
		input [3:0] select,
		input [1:0] _select,
		output [7:0]pc_out,
		output reg [15:0] anw,
		output reg[15:0] _anw,
		input [15:0]i_datain,
		output d_we,
		output [7:0]d_addr,
		output [7:0]i_addr,
		output [15:0] d_dataout,
		input [15:0] d_datain
	//	output reg [6:0] num
    );
reg state;
reg next_state;
wire [15:0]wb_ir;
wire [15:0]mem_ir;
wire [15:0]id_ir;
reg [15:0]ex_ir;
wire [7:0]pc;//指令所在位置

reg [15:0]reg_B,reg_A;
wire [15:0] reg_C;
reg [15:0] gr[7:0];//general register
reg [15:0]smdr;//存储数据
wire [15:0] _smdr;
wire [15:0]smdr1;
wire dw;
wire [15:0]reg_C1;

wire nf,zf;//flag
reg cf;
reg [15:0]aluo;

always @(*)
begin
case(_select)
0:_anw = gr[1];
1:_anw = gr[2];
2:_anw = gr[3];
3:_anw = id_ir;
default :_anw = 16'b1111_1111_1111_1111;
endcase
end
assign pc_out = pc;
always @(*)
begin
case(select)
0:anw = d_addr;
1:anw = reg_C;
2:anw = reg_B;
3:anw = reg_A;
4:anw = reg_C1;
5:anw = gr[1];
6:anw = gr[2];
7:anw = gr[3];
8:anw = d_dataout;
9:anw = id_ir;
10:anw = gr[0];
default :anw = 16'b1111_1111_1111_1111;
endcase
end
//************* CPU control *************//
always @(posedge clock,posedge reset)
	begin
		if (reset)
			state <= `idle;
		else
			state <= next_state;
	end
always @(*)
	begin
		case (state)
			`idle: 
				if ((enable == 1'b1) 
				&& (start == 1'b1))
					next_state <= `exec;
				else	
					next_state <= `idle;
			`exec :
				if ((enable == 1'b0) 
				|| (wb_ir[15:11] == `HALT))
					next_state <= `idle;
				else
					next_state <= `exec;
		endcase
	end
//************* IF *************//
IF If(.clock(clock),
		.state(state),
		.reset(reset),
		.i_datain(i_datain),
		.pc(pc),
		.zf(zf),
		.nf(nf),
		.cf(cf),
		.i_addr(i_addr),
		.mem_ir(mem_ir),
		.reg_C(reg_C),
		.id_ir(id_ir)
		);
//************* ID *************//
assign _smdr = smdr;
always @(posedge clock,posedge reset)
   begin
	    if(reset)
		   begin
			 ex_ir<=16'b0000000000000000;
			 reg_B<=16'b0000000000000000;
			 reg_A<=16'b0000000000000000;
			 //smdr1<=16'b0000000000000000;
			 end
		else if (state == `exec)
			begin
				ex_ir <= id_ir;
				//reg_A action
				if ((id_ir[15:11] == `BZ) 
				|| (id_ir[15:11] == `BN)
				|| (id_ir[15:11] ==`LDIH)
				|| (id_ir[15:11] ==`ADDI)
				|| (id_ir[15:11] ==`SUBI)
				||(id_ir[15:11] ==`BNZ)
				||(id_ir[15:11] ==`BNC)
				||(id_ir[15:11] ==`JMPR)
				||(id_ir[15:11] ==`BNN)
				||(id_ir[15:11] ==`BC))
					reg_A <= gr[(id_ir[10:8])];
				else if(id_ir[15:11] == `ADD
				        || id_ir[15:11] == `SUB)
				  begin
						if(( ex_ir[15:11] == `ADD 
						|| ex_ir[15:11] == `SUB
						||ex_ir[15:11] == `AND)
						&& id_ir [6:4] == ex_ir[10:8])
						reg_A <= aluo;
						else 
						reg_A <= gr[id_ir[6:4]];
					end
				else	
					reg_A <= gr[id_ir[6:4]];
				
				if ((id_ir[15:11] == `LOAD)
				||(id_ir[15:11] ==`SRL)
				||(id_ir[15:11] == `SLL)
				||(id_ir[15:11] ==`SLA )
				||(id_ir[15:11] == `SRA))
					reg_B<={12'b0000_0000_0000, id_ir[3:0]};
				else if(id_ir[15:11]==`STORE)
					begin
						reg_B <= {12'b0000_0000_0000,id_ir[3:0]};
						smdr <= gr[id_ir[10:8]];
					end
				else if ((id_ir[15:11] == `BZ) 
						|| (id_ir[15:11] == `BN)			
				   ||(id_ir[15:11] ==`ADDI)
				   ||(id_ir[15:11] ==`SUBI)
				   ||(id_ir[15:11] ==`BNZ)
				   ||(id_ir[15:11] ==`BNC)
				   ||(id_ir[15:11] ==`JMPR)
					||(id_ir[15:11] ==`JUMP)
				   ||(id_ir[15:11] ==`BNN)
				   ||(id_ir[15:11] ==`BC))//以上这些指令对应r1<-r1+{val1,val2};
   					reg_B <= {8'b0000_0000, id_ir[7:0]};
			   else if(id_ir[15:11] ==`LDIH)//r1<-r1+{val1,val2,0000_0000};
						reg_B<={id_ir[7:0],8'b0000_0000};
				else if(id_ir[15:11] == `ADD
						|| id_ir[15:11] == `SUB)
					begin
					if(( ex_ir[15:11] == `ADD 
					|| ex_ir[15:11] == `SUB
					||ex_ir[15:11] == `AND) 
					&& id_ir [2:0] == ex_ir[10:8])
						reg_B <= aluo;
					else 
						reg_B <= gr[id_ir[2:0]];
					end
				else
					reg_B<= gr[id_ir[2:0]];
			
			end
			end		
//************* EX *************//	
EX ex(.clock(clock),
		.reset(reset),
		.state(state),
		.ex_ir(ex_ir),
		.ALUo(aluo),
		.smdr(_smdr),
		.mem_ir(mem_ir),
		.reg_C(reg_C),
		.nf(nf),
		.zf(zf),
		.smdr1(smdr1),
		.dw(dw)
	//	.first(first)
);
//*************ALU****************//
always @(*)
begin
 case(ex_ir[15:11])
   `ADD: {cf,aluo} <= reg_A +reg_B ;
   `LOAD,`STORE,`ADDI,`LDIH,`JMPR,`BZ,`BNZ,`BN,`BNN,`BC,`BNC,`SUBI:
			{cf,aluo} <= reg_A +reg_B ;
	`SUB: {cf,aluo} <= reg_A -reg_B ;
	`ADDC:{cf,aluo} <= reg_A + reg_B + cf;
	`SUBC:{cf,aluo} <= reg_A - reg_B + cf;
	`JUMP: begin aluo <= reg_B;cf <= 1'b0;end
	`CMP: {cf,aluo} <= reg_A - reg_B;
	`AND: begin aluo <= reg_A & reg_B;cf <= 1'b0;end
	`OR:  begin aluo <= reg_A | reg_B;cf <= 1'b0;end
	`XOR: begin aluo <= reg_A ^ reg_B;cf <= 1'b0;end
	`SLL: begin aluo <= reg_A << reg_B;cf <= 1'b0;end
	`SLA: begin aluo <=  reg_A << reg_B | {reg_A[15],15'b000_0000_0000_0000};cf <= 1'b0;end
	`SRL: begin aluo <= reg_A >> reg_B;cf<=1'b0;end
	`SRA: begin aluo <= reg_A >> reg_B | {reg_A[15],15'b000_0000_0000_0000};cf <=1'b0;end
	default:begin aluo<=aluo;end
	endcase
end  
//************* MEM *************//
assign d_dataout = smdr1;
assign d_we = dw;
assign d_addr = reg_C;
MEN men(.clock(clock),
		  .reset(reset),
		  .wb_ir(wb_ir),
		  .state(state),
		  .mem_ir(mem_ir),
		  .d_datain(d_datain),
		  .reg_C1(reg_C1),
		  .reg_C(reg_C)
		  );	
//************* WB *************//
always @(posedge clock,posedge reset)
      if(reset)
		  begin
		     gr[0]<=16'b0000_0000_0000_0000;
	        gr[1]<=16'b0000_0000_0000_0000;
			  gr[2]<=16'b0000_0000_0000_0000;
			  gr[3]<=16'b0000_0000_0000_0000;
			  gr[4]<=16'b0000_0000_0000_0000;
			  gr[5]<=16'b0000_0000_0000_0000;
			  gr[6]<=16'b0000_0000_0000_0000;
			  gr[7]<=16'b0000_0000_0000_0000;
		  end
		else if (state == `exec)
			begin
				if ((wb_ir[15:11] == `LOAD)
				|| (wb_ir[15:11] == `ADD)
				||(wb_ir[15:11] ==`ADDI)
				||(wb_ir[15:11] ==`LDIH)
				||(wb_ir[15:11] ==`ADDC)
				||(wb_ir[15:11] ==`SUB)
				||(wb_ir[15:11] ==`SUBC)
				||(wb_ir[15:11] ==`SUBI)
				||(wb_ir[15:11] ==`AND)
				||(wb_ir[15:11] ==`OR)
				||(wb_ir[15:11] ==`XOR)
				||(wb_ir[15:11] ==`SLL)
				||(wb_ir[15:11] ==`SRL)
				||(wb_ir[15:11] ==`SLA)
				||(wb_ir[15:11] ==`SRA))
					gr[wb_ir[10:8]] <= reg_C1;
				else gr[wb_ir[10:8]] <= gr[wb_ir[10:8]] ;
			end
endmodule

          




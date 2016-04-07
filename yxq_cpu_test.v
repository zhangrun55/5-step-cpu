`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:49:10 12/21/2014
// Design Name:   yxq_cpu
// Module Name:   D:/data/digital system design/yxq_cpu/yxq_cpu_test.v
// Project Name:  yxq_cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: yxq_cpu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`include"cpu.v"
 module pipeline_cpu_test;

	// Inputs
	reg [15:0] d_datain;
	reg reset;
	reg clock;
	reg enable;
	reg start;
	reg [15:0] i_datain;
	reg cf_in;
	// Outputs
	wire [7:0] d_addr;
	wire [15:0] d_dataout;
	wire [7:0] i_addr;
	//wire [15:0] y;
	wire d_we;

	// Instantiate the Unit Under Test (UUT)
	pipeline_cpu uut (
		.d_datain(d_datain), 
		.reset(reset), 
		.clock(clock), 
		.enable(enable), 
		.start(start), 
		//.cf_in(cf_in),
		.i_datain(i_datain), 
		.d_addr(d_addr), 
		.d_we(d_we),
		.d_dataout(d_dataout) 
	);
	
always #5 clock=~clock;
	initial begin
		// Initialize Inputs
		clock = 0;
$display("pc:     id_ir      :reg_A:reg_B:reg_C: da: dd  :w: reC1 :gr1 : gr2 : gr3 :cf :nf :zf:");
$monitor("%h:%b:%h: %h: %h:  %h: %h:%b:%h:%h: %h : %h :%b : %b:  %b", 
	uut.pc, uut.id_ir, uut.reg_A, uut.reg_B, uut.reg_C,
	d_addr, d_dataout, d_we, uut.reg_C1, uut.gr[1], uut.gr[2], uut.gr[3],uut.cf,uut.nf,uut.zf);
	
enable <= 1; start <= 0; i_datain <= 0; d_datain <= 0;

//add
#10 reset <= 1;
#10 reset <= 0;
#10 enable <= 1;
#10 start <=1;
#10 start <= 0;
	i_datain <= {`LOAD, `gr1, 1'b0, `gr0, 4'b0000};
#10 i_datain <= {`LOAD, `gr2, 1'b0, `gr0, 4'b0001};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
	d_datain <=16'h00AB;  // 3 clk later from LOAD
#10 i_datain <= {`NOP, 11'b000_0000_0000};
	d_datain <=16'h3C00;  // 3 clk later from LOAD
#10 i_datain <= {`ADD, `gr3, 1'b0, `gr1, 1'b0, `gr2};
#10 i_datain <= {`ADD, `gr3, 1'b0, `gr1, 1'b0, `gr3};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`STORE, `gr3, 1'b0, `gr0, 4'b0010};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`HALT, 11'b000_0000_0000};

/*
//sub
#100 reset <= 0;
#10 reset <= 1;
#10 enable <= 1;
#10 start <=1;
#10 start <= 0;
	i_datain <= {`LOAD, `gr1, 1'b0, `gr0, 4'b0000};
#10 i_datain <= {`LOAD, `gr2, 1'b0, `gr0, 4'b0001};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
	d_datain <=16'h00AB;  // 3 clk later from LOAD
#10 i_datain <= {`NOP, 11'b000_0000_0000};
	d_datain <=16'h3C00;  // 3 clk later from LOAD
#10 i_datain <= {`SUB, `gr3, 1'b0, `gr1, 1'b0, `gr2};
#10 i_datain <= {`SUB, `gr2, 1'b0, `gr1, 1'b0, `gr3};
#10 i_datain <= {`STORE, `gr2, 1'b0, `gr0, 4'b0011};
#10 i_datain <= {`HALT, 11'b000_0000_0000};
*/
/*

//cmp
#100 reset=0;
#10 reset=1;

#10 enable <= 1;
#10 start <=1;
#10 start <= 0;
	i_datain <= {`LOAD, `gr1, 1'b0, `gr0, 4'b0000};
#10 i_datain <= {`LOAD, `gr2, 1'b0, `gr0, 4'b0001};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
	d_datain <=16'h00AB;  // 3 clk later from LOAD
#10 i_datain <= {`NOP, 11'b000_0000_0000};
	d_datain <=16'h3C00;  // 3 clk later from LOAD
#10 i_datain <= {`CMP, 3'b000,1'b0, `gr1, 1'b0, `gr2};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`HALT, 11'b000_0000_0000};


//jump
#100 reset=0;
#10 reset=1;

#10 enable <= 1;
#10 start <=1;
#10 start <= 0;
#10 i_datain <= {`JUMP, 3'b000, 4'b0100,4'b0001};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`HALT, 11'b000_0000_0000};


//BNZ
#100 reset <= 0;
#10 reset <= 1;
#10 enable <= 1;
#10 start <=1;
#10 start <= 0;
	i_datain <= {`LOAD, `gr1, 1'b0, `gr0, 4'b0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
	d_datain <=16'h00AB;  // 3 clk later from LOAD
#10 i_datain <= {`BNZ, `gr1, 4'b0000,4'b0001};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`HALT, 11'b000_0000_0000};

//BZ
#100 reset <= 0;
#10 reset <= 1;
#10 enable <= 1;
#10 start <=1;
#10 start <= 0;
	i_datain <= {`LOAD, `gr1, 1'b0, `gr0, 4'b0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
	d_datain <=16'h00AB;  // 3 clk later from LOAD
#10 i_datain <= {`BZ, `gr1, 4'b0000,4'b0001};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`HALT, 11'b000_0000_0000};

//LDIH ºÍADDI
#100 reset <= 0;
#10 reset <= 1;
#10 enable <= 1;
#10 start <=1;
#10 start <= 0;
	i_datain <= {`LOAD, `gr1, 1'b0, `gr0, 4'b0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
	d_datain <=16'h0001;  // 3 clk later from LOAD
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`LDIH, `gr1,4'hA,4'hB};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`ADDI, `gr1,4'hC,4'hD};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`STORE, `gr3, 1'b0, `gr0, 4'b0001};
#10 i_datain <= {`HALT, 11'b000_0000_0000};
*/
/*
//ADDC
#100 reset <= 0;
#10 reset <= 1;
#10 enable <= 1;
#10 start <=1;
#10 start <= 0;
	i_datain <= {`LOAD, `gr1, 1'b0, `gr0, 4'b0000};
#10 i_datain <= {`LOAD, `gr2, 1'b0, `gr0, 4'b0001};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
	d_datain <=16'h00AB;  // 3 clk later from LOAD
#10 i_datain <= {`NOP, 11'b000_0000_0000};
	d_datain <=16'h3C00;  // 3 clk later from LOAD
#10 i_datain <= {`ADDC, `gr3, 1'b0, `gr1, 1'b0, `gr2};
	cf_in<= 1'b1;
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`STORE, `gr3, 1'b0, `gr0, 4'b0010};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`HALT, 11'b000_0000_0000};
*/
/*
//SLAºÍSLLÖ¸Áî
#100 reset <= 0;
#10 reset <= 1;
#10 enable <= 1;
#10 start <=1;
#10 start <= 0;
	i_datain <= {`LOAD, `gr1, 1'b0, `gr0, 4'b0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
	d_datain <=16'hf000;  // 3 clk later from LOAD
#10 i_datain <= {`SLA, `gr3, 1'b0, `gr1,4'b0100};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`SLL, `gr3, 1'b0, `gr3,4'b0001};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`STORE, `gr3, 1'b0, `gr0, 4'b0001};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`NOP, 11'b000_0000_0000};
#10 i_datain <= {`HALT, 11'b000_0000_0000};
*/
/*
#10 reset <= 0;
      #10 reset <= 1;
      #10 enable <= 1;
      #10 start <= 1; 
      #10 start <= 0; i_datain <= {`LOAD, `gr1, 1'b0, `gr0, 4'b0000};
      #10  i_datain <= {`LOAD, `gr2, 1'b0, `gr0, 4'b0001}; 
      #10 i_datain <= {`NOP, 11'b00000000000}; 
      #10 i_datain <= {`NOP, 11'b00000000000}; 
          d_datain <= 16'h0007; // 4 clock later from LOAD
      #10 i_datain <= {`NOP, 11'b00000000000}; 
          d_datain <= 16'h0002; // 4 clock later from LOAD

      #10 i_datain <= {`SRA, `gr3, 1'b0, `gr1, 1'b0, `gr2};
      #10 i_datain <= {`NOP, 11'b00000000000}; 
      #10 i_datain <= {`NOP, 11'b00000000000}; 
      #10 i_datain <= {`NOP, 11'b00000000000}; 

      #10 i_datain <= {`STORE, `gr3, 1'b0, `gr0, 4'b0010}; 
      #10 i_datain <= {`HALT, 11'b00000000000}; 
      #100
*/
end
endmodule


/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.76 %
// MAE = 128000 
// WCE% = 3.05 %
// WCE = 512001 
// WCRE% = 100.00 %
// EP% = 99.93 %
// MRE% = 9.02 %
// MSE = 22973.221e6 
// FPGA_POWER = 0.55
// FPGA_DELAY = 9.2
// FPGA_LUT = 35



module mul12u_33H(
	A, 
	B,
	Z
);

input [12-1:0] A;
input [12-1:0] B;
output [2*12-1:0] Z;

wire [12-1:0] tmpA;
wire [12-1:0] tmpB;
assign tmpA = {A[12-1:6],{6{1'b0}}};
assign tmpB = {B[12-1:6],{6{1'b0}}};
assign Z = tmpA * tmpB;
endmodule


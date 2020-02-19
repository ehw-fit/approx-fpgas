/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 5.85 %
// MAE = 980992 
// WCE% = 23.39 %
// WCE = 3923969 
// WCRE% = 100.00 %
// EP% = 99.95 %
// MRE% = 43.11 %
// MSE = 13857.988e8 
// FPGA_POWER = 0.28
// FPGA_DELAY = 6.7
// FPGA_LUT = 5.0



module mul12u_34H(
	A, 
	B,
	Z
);

input [12-1:0] A;
input [12-1:0] B;
output [2*12-1:0] Z;

wire [12-1:0] tmpA;
wire [12-1:0] tmpB;
assign tmpA = {A[12-1:9],{9{1'b0}}};
assign tmpB = {B[12-1:9],{9{1'b0}}};
assign Z = tmpA * tmpB;
endmodule


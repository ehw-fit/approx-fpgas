/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.38 %
// MAE = 63232 
// WCE% = 1.51 %
// WCE = 252929 
// WCRE% = 100.00 %
// EP% = 99.86 %
// MRE% = 5.01 %
// MSE = 56232.128e5 
// FPGA_POWER = 0.71
// FPGA_DELAY = 9.5
// FPGA_LUT = 48



module mul12u_368(
	A, 
	B,
	Z
);

input [12-1:0] A;
input [12-1:0] B;
output [2*12-1:0] Z;

wire [12-1:0] tmpA;
wire [12-1:0] tmpB;
assign tmpA = {A[12-1:5],{5{1'b0}}};
assign tmpB = {B[12-1:5],{5{1'b0}}};
assign Z = tmpA * tmpB;
endmodule


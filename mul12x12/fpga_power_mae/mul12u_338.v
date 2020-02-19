/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.037 %
// MAE = 6140 
// WCE% = 0.15 %
// WCE = 24561 
// WCRE% = 100.00 %
// EP% = 93.71 %
// MRE% = 0.65 %
// MSE = 57970.012e3 
// FPGA_POWER = 1.4
// FPGA_DELAY = 11
// FPGA_LUT = 121



module mul12u_338(
	A, 
	B,
	Z
);

input [12-1:0] A;
input [12-1:0] B;
output [2*12-1:0] Z;

wire [12-1:0] tmpA;
wire [12-1:0] tmpB;
assign tmpA = {A[12-1:2],{2{1'b0}}};
assign tmpB = {B[12-1:2],{2{1'b0}}};
assign Z = tmpA * tmpB;
endmodule


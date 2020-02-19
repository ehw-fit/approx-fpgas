/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.77 %
// MAE = 33259520 
// WCE% = 3.10 %
// WCE = 133038081 
// WCRE% = 100.00 %
// EP% = 100.00 %
// MRE% = 9.15 %
// MSE = 15436.2e11 
// FPGA_POWER = 0.57
// FPGA_DELAY = 10
// FPGA_LUT = 34



module mul16u_HDR(
	A, 
	B,
	Z
);

input [16-1:0] A;
input [16-1:0] B;
output [2*16-1:0] Z;

wire [16-1:0] tmpA;
wire [16-1:0] tmpB;
assign tmpA = {A[16-1:10],{10{1'b0}}};
assign tmpB = {B[16-1:10],{10{1'b0}}};
assign Z = tmpA * tmpB;
endmodule


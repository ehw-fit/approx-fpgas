/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.39 %
// MAE = 16678912 
// WCE% = 1.55 %
// WCE = 66715649 
// WCRE% = 100.00 %
// EP% = 100.00 %
// MRE% = 5.15 %
// MSE = 38746.053e10 
// FPGA_POWER = 0.69
// FPGA_DELAY = 10
// FPGA_LUT = 47



module mul16u_HFR(
	A, 
	B,
	Z
);

input [16-1:0] A;
input [16-1:0] B;
output [2*16-1:0] Z;

wire [16-1:0] tmpA;
wire [16-1:0] tmpB;
assign tmpA = {A[16-1:9],{9{1'b0}}};
assign tmpB = {B[16-1:9],{9{1'b0}}};
assign Z = tmpA * tmpB;
endmodule


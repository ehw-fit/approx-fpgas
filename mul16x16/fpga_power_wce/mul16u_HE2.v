/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.097 %
// MAE = 4157440 
// WCE% = 0.39 %
// WCE = 16629761 
// WCRE% = 100.00 %
// EP% = 99.99 %
// MRE% = 1.56 %
// MSE = 24079.74e9 
// FPGA_POWER = 1.0
// FPGA_DELAY = 11
// FPGA_LUT = 80



module mul16u_HE2(
	A, 
	B,
	Z
);

input [16-1:0] A;
input [16-1:0] B;
output [2*16-1:0] Z;

wire [2*(16-7)-1:0] tmpZ;
assign tmpZ = A[16-1:7] * B[16-1:7];
assign Z = {tmpZ,{14{1'b0}}};
endmodule


/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.085 %
// MAE = 14320 
// WCE% = 0.34 %
// WCE = 57281 
// WCRE% = 100.00 %
// EP% = 98.39 %
// MRE% = 1.38 %
// MSE = 29802.164e4 
// FPGA_POWER = 1.0
// FPGA_DELAY = 10
// FPGA_LUT = 80



module mul12u_343(
	A, 
	B,
	Z
);

input [12-1:0] A;
input [12-1:0] B;
output [2*12-1:0] Z;

wire [2*(12-3)-1:0] tmpZ;
assign tmpZ = A[12-1:3] * B[12-1:3];
assign Z = {tmpZ,{6{1'b0}}};
endmodule


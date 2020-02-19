/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.18 %
// MAE = 30656 
// WCE% = 0.73 %
// WCE = 122625 
// WCRE% = 100.00 %
// EP% = 99.56 %
// MRE% = 2.69 %
// MSE = 13346.794e5 
// FPGA_POWER = 0.93
// FPGA_DELAY = 11
// FPGA_LUT = 71



module mul12u_34Y(
	A, 
	B,
	Z
);

input [12-1:0] A;
input [12-1:0] B;
output [2*12-1:0] Z;

wire [2*(12-4)-1:0] tmpZ;
assign tmpZ = A[12-1:4] * B[12-1:4];
assign Z = {tmpZ,{8{1'b0}}};
endmodule


/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 18.74 %
// MAE = 3143680 
// WCE% = 74.95 %
// WCE = 12574721 
// WCRE% = 100.00 %
// EP% = 99.95 %
// MRE% = 87.98 %
// MSE = 15865.376e9 
// FPGA_POWER = 0.25
// FPGA_DELAY = 6.0
// FPGA_LUT = 1.0



module mul12u_35V(
	A, 
	B,
	Z
);

input [12-1:0] A;
input [12-1:0] B;
output [2*12-1:0] Z;

wire [12-1:0] tmpA;
wire [12-1:0] tmpB;
assign tmpA = {A[12-1:11],{11{1'b0}}};
assign tmpB = {B[12-1:11],{11{1'b0}}};
assign Z = tmpA * tmpB;
endmodule


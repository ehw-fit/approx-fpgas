/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 1.53 %
// MAE = 256000 
// WCE% = 6.10 %
// WCE = 1024001 
// WCRE% = 100.00 %
// EP% = 99.95 %
// MRE% = 15.79 %
// MSE = 92062.713e6 
// FPGA_POWER = 0.43
// FPGA_DELAY = 8.7
// FPGA_LUT = 22



module mul12u_34Q(
	A, 
	B,
	Z
);

input [12-1:0] A;
input [12-1:0] B;
output [2*12-1:0] Z;

wire [12-1:0] tmpA;
wire [12-1:0] tmpB;
assign tmpA = {A[12-1:7],{7{1'b0}}};
assign tmpB = {B[12-1:7],{7{1'b0}}};
assign Z = tmpA * tmpB;
endmodule


/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 8.08 %
// MAE = 5294 
// WCE% = 30.81 %
// WCE = 20193 
// WCRE% = 700.00 %
// EP% = 99.21 %
// MRE% = 64.52 %
// MSE = 47901.182e3 
// FPGA_POWER = 0.26
// FPGA_DELAY = 6.1
// FPGA_LUT = 3.0

module mul8u_19BL (
    A,
    B,
    O
);

input [7:0] A;
input [7:0] B;
output [15:0] O;

wire sig_242,sig_307,sig_327;

assign sig_242 = B[6] & A[6];
assign sig_307 = A[5] & B[5];
assign sig_327 = B[7] & A[7];

assign O[15] = sig_327;
assign O[14] = sig_242;
assign O[13] = sig_307;
assign O[12] = 1'b0;
assign O[11] = 1'b0;
assign O[10] = 1'b0;
assign O[9] = 1'b0;
assign O[8] = 1'b0;
assign O[7] = sig_242;
assign O[6] = 1'b0;
assign O[5] = 1'b0;
assign O[4] = 1'b0;
assign O[3] = 1'b0;
assign O[2] = 1'b0;
assign O[1] = 1'b0;
assign O[0] = 1'b0;

endmodule



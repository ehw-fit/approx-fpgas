/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 7.51 %
// MAE = 4924 
// WCE% = 25.01 %
// WCE = 16388 
// WCRE% = 100.10 %
// EP% = 99.22 %
// MRE% = 59.60 %
// MSE = 38114.505e3 
// FPGA_POWER = 0.26
// FPGA_DELAY = 6.2
// FPGA_LUT = 1.0

module mul8u_17A6 (
    A,
    B,
    O
);

input [7:0] A;
input [7:0] B;
output [15:0] O;

wire sig_78,sig_218,sig_296,sig_298,sig_299,sig_305,sig_318,sig_411,sig_504;

assign sig_78 = B[6] & A[7];
assign sig_218 = B[7] ^ sig_78;
assign sig_296 = sig_218 ^ A[6];
assign sig_298 = A[7] & B[7];
assign sig_299 = B[7] ^ A[6];
assign sig_305 = B[7] & sig_218;
assign sig_318 = sig_299 | sig_305;
assign sig_411 = sig_298 | sig_296;
assign sig_504 = sig_318 ^ sig_411;

assign O[15] = sig_298;
assign O[14] = sig_504;
assign O[13] = 1'b0;
assign O[12] = 1'b0;
assign O[11] = 1'b0;
assign O[10] = 1'b0;
assign O[9] = 1'b0;
assign O[8] = 1'b0;
assign O[7] = 1'b0;
assign O[6] = 1'b0;
assign O[5] = 1'b0;
assign O[4] = 1'b0;
assign O[3] = sig_504;
assign O[2] = sig_298;
assign O[1] = 1'b0;
assign O[0] = 1'b0;

endmodule



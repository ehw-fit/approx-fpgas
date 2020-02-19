/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 3.75 %
// MAE = 2456 
// WCE% = 13.58 %
// WCE = 8897 
// WCRE% = 100.00 %
// EP% = 99.21 %
// MRE% = 40.54 %
// MSE = 92693.902e2 
// FPGA_POWER = 0.27
// FPGA_DELAY = 6.2
// FPGA_LUT = 4.0

module mul8u_17L5 (
    A,
    B,
    O
);

input [7:0] A;
input [7:0] B;
output [15:0] O;

wire sig_214,sig_224,sig_225,sig_252,sig_267,sig_268,sig_299,sig_300,sig_301,sig_302,sig_303,sig_323,sig_324,sig_325,sig_327,sig_328,sig_329,sig_330,sig_331,sig_332;
wire sig_340;

assign sig_214 = B[7] & A[5];
assign sig_224 = B[6] & A[6];
assign sig_225 = B[7] & A[6];
assign sig_252 = A[7] & B[5];
assign sig_267 = B[6] & A[7];
assign sig_268 = B[7] & A[7];
assign sig_299 = sig_225 ^ sig_267;
assign sig_300 = sig_225 & sig_267;
assign sig_301 = sig_299 & sig_214;
assign sig_302 = sig_299 ^ sig_214;
assign sig_303 = sig_300 | sig_301;
assign sig_323 = sig_302 ^ sig_252;
assign sig_324 = sig_302 & sig_252;
assign sig_325 = sig_323 & sig_224;
assign sig_327 = sig_324 | sig_325;
assign sig_328 = sig_268 ^ sig_303;
assign sig_329 = A[7] & sig_303;
assign sig_330 = sig_328 & sig_324;
assign sig_331 = sig_328 ^ sig_327;
assign sig_332 = sig_329 | sig_330;
assign sig_340 = sig_323 ^ sig_224;

assign O[15] = sig_332;
assign O[14] = sig_331;
assign O[13] = sig_340;
assign O[12] = 1'b0;
assign O[11] = sig_299;
assign O[10] = 1'b0;
assign O[9] = 1'b0;
assign O[8] = 1'b0;
assign O[7] = 1'b0;
assign O[6] = 1'b0;
assign O[5] = 1'b0;
assign O[4] = 1'b0;
assign O[3] = 1'b0;
assign O[2] = 1'b0;
assign O[1] = 1'b0;
assign O[0] = 1'b0;

endmodule



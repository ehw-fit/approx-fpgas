/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 3.39 %
// MAE = 2220 
// WCE% = 13.56 %
// WCE = 8889 
// WCRE% = 200.37 %
// EP% = 99.21 %
// MRE% = 36.51 %
// MSE = 79737.894e2 
// FPGA_POWER = 0.31
// FPGA_DELAY = 6.4
// FPGA_LUT = 5.0

module mul8u_19SM (
    A,
    B,
    O
);

input [7:0] A;
input [7:0] B;
output [15:0] O;

wire sig_55,sig_63,sig_71,sig_76,sig_77,sig_78,sig_79,sig_127,sig_147,sig_171,sig_215,sig_216,sig_217,sig_218,sig_253,sig_254,sig_255,sig_256,sig_288,sig_293;
wire sig_294,sig_295,sig_296,sig_297,sig_298,sig_299,sig_316,sig_317,sig_318,sig_425,sig_435,sig_455,sig_462,sig_464,sig_502,sig_503,sig_504,sig_505;

assign sig_55 = B[5] & A[6];
assign sig_63 = B[7] & A[5];
assign sig_71 = B[7] & A[6];
assign sig_76 = B[4] & A[7];
assign sig_77 = B[5] & A[7];
assign sig_78 = B[6] & A[7];
assign sig_79 = B[7] & A[7];
assign sig_127 = ~B[3];
assign sig_147 = sig_55 | sig_63;
assign sig_171 = ~(B[3] | sig_127);
assign sig_215 = sig_171 | sig_77;
assign sig_216 = B[6] & A[6];
assign sig_217 = sig_71 & A[7];
assign sig_218 = sig_71 ^ sig_78;
assign sig_253 = sig_147 & sig_76;
assign sig_254 = sig_147 | sig_76;
assign sig_255 = sig_63 & sig_215;
assign sig_256 = sig_63 | sig_215;
assign sig_288 = sig_256 ^ sig_253;
assign sig_293 = sig_218 ^ sig_255;
assign sig_294 = sig_218 & sig_255;
assign sig_295 = sig_293 & sig_216;
assign sig_296 = sig_293 ^ sig_216;
assign sig_297 = sig_294 | sig_295;
assign sig_298 = B[6] & sig_217;
assign sig_299 = sig_79 ^ sig_298;
assign sig_316 = sig_296 ^ sig_253;
assign sig_317 = sig_296 & sig_253;
assign sig_318 = sig_299 ^ sig_297;
assign sig_425 = sig_316 & sig_288;
assign sig_435 = sig_317 | sig_425;
assign sig_455 = sig_318 & sig_425;
assign sig_462 = sig_294 | sig_455;
assign sig_464 = sig_462 | sig_317;
assign sig_502 = sig_288 ^ sig_254;
assign sig_503 = sig_316 ^ sig_288;
assign sig_504 = sig_318 ^ sig_435;
assign sig_505 = sig_298 | sig_464;

assign O[15] = sig_505;
assign O[14] = sig_504;
assign O[13] = sig_503;
assign O[12] = sig_502;
assign O[11] = 1'b0;
assign O[10] = 1'b0;
assign O[9] = 1'b0;
assign O[8] = 1'b0;
assign O[7] = sig_254;
assign O[6] = 1'b0;
assign O[5] = sig_254;
assign O[4] = sig_254;
assign O[3] = sig_502;
assign O[2] = sig_503;
assign O[1] = sig_503;
assign O[0] = sig_502;

endmodule



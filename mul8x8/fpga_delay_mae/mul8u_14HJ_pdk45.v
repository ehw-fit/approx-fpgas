/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 1.61 %
// MAE = 1058 
// WCE% = 7.57 %
// WCE = 4961 
// WCRE% = 100.00 %
// EP% = 99.19 %
// MRE% = 22.68 %
// MSE = 17428.185e2 
// FPGA_POWER = 0.37
// FPGA_DELAY = 7.7
// FPGA_LUT = 16

module mul8u_14HJ (
    A,
    B,
    O
);

input [7:0] A;
input [7:0] B;
output [15:0] O;

wire sig_47,sig_55,sig_62,sig_63,sig_69,sig_70,sig_71,sig_76,sig_77,sig_78,sig_79,sig_142,sig_143,sig_145,sig_146,sig_147,sig_203,sig_206,sig_207,sig_209;
wire sig_210,sig_212,sig_213,sig_214,sig_215,sig_216,sig_217,sig_218,sig_253,sig_254,sig_255,sig_256,sig_283,sig_285,sig_286,sig_287,sig_288,sig_289,sig_290,sig_291;
wire sig_292,sig_293,sig_294,sig_295,sig_296,sig_297,sig_298,sig_299,sig_332,sig_333,sig_337,sig_338,sig_339,sig_340,sig_341,sig_342,sig_343,sig_344,sig_345,sig_346;
wire sig_348;

assign sig_47 = B[7] & A[3];
assign sig_55 = B[7] & A[4];
assign sig_62 = B[6] & A[5];
assign sig_63 = B[7] & A[5];
assign sig_69 = B[4] & A[6];
assign sig_70 = B[6] & A[6];
assign sig_71 = B[7] & A[6];
assign sig_76 = B[4] & A[7];
assign sig_77 = B[5] & A[7];
assign sig_78 = B[6] & A[7];
assign sig_79 = B[7] & A[7];
assign sig_142 = A[7] & B[3];
assign sig_143 = A[7] & B[5];
assign sig_145 = sig_142 | sig_143;
assign sig_146 = sig_55 & sig_62;
assign sig_147 = sig_55 | sig_62;
assign sig_203 = B[5] & A[6];
assign sig_206 = sig_203 | sig_147;
assign sig_207 = sig_145 | sig_69;
assign sig_209 = sig_207 & sig_76;
assign sig_210 = sig_207 ^ sig_76;
assign sig_212 = sig_146 ^ sig_70;
assign sig_213 = sig_146 & A[6];
assign sig_214 = sig_212 & sig_77;
assign sig_215 = sig_212 ^ sig_77;
assign sig_216 = sig_213 | sig_214;
assign sig_217 = sig_71 & B[6];
assign sig_218 = sig_71 ^ sig_78;
assign sig_253 = sig_147 & sig_210;
assign sig_254 = sig_147 ^ sig_210;
assign sig_255 = sig_63 & sig_215;
assign sig_256 = sig_63 ^ sig_215;
assign sig_283 = sig_254 ^ sig_203;
assign sig_285 = sig_254 & sig_206;
assign sig_286 = sig_283 ^ sig_206;
assign sig_287 = sig_203 | sig_285;
assign sig_288 = sig_256 ^ sig_253;
assign sig_289 = sig_256 & sig_253;
assign sig_290 = sig_288 & sig_209;
assign sig_291 = sig_288 ^ sig_209;
assign sig_292 = sig_289 | sig_290;
assign sig_293 = sig_218 ^ sig_255;
assign sig_294 = sig_218 & sig_255;
assign sig_295 = sig_293 & sig_216;
assign sig_296 = sig_293 ^ sig_216;
assign sig_297 = sig_294 | sig_295;
assign sig_298 = A[7] & sig_217;
assign sig_299 = sig_79 ^ sig_298;
assign sig_332 = sig_291 ^ sig_287;
assign sig_333 = sig_291 & sig_287;
assign sig_337 = sig_296 ^ sig_292;
assign sig_338 = sig_296 & sig_292;
assign sig_339 = sig_296 & sig_333;
assign sig_340 = sig_337 ^ sig_333;
assign sig_341 = sig_338 | sig_339;
assign sig_342 = sig_299 ^ sig_297;
assign sig_343 = sig_299 & sig_297;
assign sig_344 = sig_342 & sig_341;
assign sig_345 = sig_342 ^ sig_341;
assign sig_346 = sig_343 | sig_344;
assign sig_348 = sig_298 | sig_346;

assign O[15] = sig_348;
assign O[14] = sig_345;
assign O[13] = sig_340;
assign O[12] = sig_332;
assign O[11] = sig_286;
assign O[10] = sig_47;
assign O[9] = sig_214;
assign O[8] = sig_209;
assign O[7] = 1'b0;
assign O[6] = 1'b0;
assign O[5] = sig_218;
assign O[4] = 1'b0;
assign O[3] = sig_298;
assign O[2] = sig_298;
assign O[1] = 1'b0;
assign O[0] = sig_71;

endmodule



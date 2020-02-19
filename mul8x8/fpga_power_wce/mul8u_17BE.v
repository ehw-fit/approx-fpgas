/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 2.27 %
// MAE = 1491 
// WCE% = 9.32 %
// WCE = 6109 
// WCRE% = 366.41 %
// EP% = 99.20 %
// MRE% = 28.93 %
// MSE = 35240.883e2 
// FPGA_POWER = 0.33
// FPGA_DELAY = 7.7
// FPGA_LUT = 10

module mul8u_17BE (
    A,
    B,
    O
);

input [7:0] A;
input [7:0] B;
output [15:0] O;

wire sig_16,sig_153,sig_155,sig_163,sig_200,sig_207,sig_208,sig_236,sig_237,sig_241,sig_244,sig_251,sig_252,sig_253,sig_277,sig_281,sig_282,sig_283,sig_284,sig_285;
wire sig_286,sig_287,sig_288,sig_289,sig_290,sig_295,sig_296,sig_297,sig_298,sig_321,sig_322,sig_323,sig_324,sig_325,sig_326,sig_327,sig_328,sig_329,sig_330,sig_331;
wire sig_332,sig_333,sig_334,sig_335;

assign sig_16 = B[7] & A[5];
assign sig_153 = A[6] & B[5];
assign sig_155 = sig_16 | sig_153;
assign sig_163 = B[7] & A[4];
assign sig_200 = sig_155 | sig_163;
assign sig_207 = B[3] & A[5];
assign sig_208 = B[7] & A[5];
assign sig_236 = sig_163 | A[5];
assign sig_237 = A[4] & B[6];
assign sig_241 = sig_200 ^ sig_208;
assign sig_244 = sig_241 | sig_237;
assign sig_251 = B[5] & A[6];
assign sig_252 = B[6] & A[6];
assign sig_253 = B[7] & A[6];
assign sig_277 = sig_236 & sig_251;
assign sig_281 = sig_244 ^ sig_252;
assign sig_282 = sig_244 & sig_252;
assign sig_283 = sig_281 & sig_277;
assign sig_284 = sig_281 ^ sig_277;
assign sig_285 = sig_282 | sig_283;
assign sig_286 = sig_208 ^ sig_253;
assign sig_287 = A[5] & sig_253;
assign sig_288 = B[7] & sig_285;
assign sig_289 = sig_286 ^ sig_285;
assign sig_290 = sig_287 | sig_288;
assign sig_295 = B[4] & A[7];
assign sig_296 = B[5] & A[7];
assign sig_297 = B[6] & A[7];
assign sig_298 = B[7] & A[7];
assign sig_321 = sig_284 ^ sig_296;
assign sig_322 = sig_284 & sig_296;
assign sig_323 = sig_321 & sig_295;
assign sig_324 = sig_321 ^ sig_295;
assign sig_325 = sig_322 | sig_323;
assign sig_326 = sig_289 ^ sig_297;
assign sig_327 = sig_289 & sig_297;
assign sig_328 = sig_326 & sig_325;
assign sig_329 = sig_326 ^ sig_325;
assign sig_330 = sig_327 | sig_328;
assign sig_331 = sig_290 ^ sig_298;
assign sig_332 = sig_290 & A[7];
assign sig_333 = B[7] & sig_330;
assign sig_334 = sig_331 ^ sig_330;
assign sig_335 = sig_332 | sig_333;

assign O[15] = sig_335;
assign O[14] = sig_334;
assign O[13] = sig_329;
assign O[12] = sig_324;
assign O[11] = 1'b0;
assign O[10] = sig_207;
assign O[9] = sig_237;
assign O[8] = 1'b0;
assign O[7] = sig_237;
assign O[6] = 1'b0;
assign O[5] = sig_237;
assign O[4] = 1'b0;
assign O[3] = sig_237;
assign O[2] = sig_329;
assign O[1] = 1'b0;
assign O[0] = sig_331;

endmodule



/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 1.17 %
// MAE = 765 
// WCE% = 5.18 %
// WCE = 3395 
// WCRE% = 150.20 %
// EP% = 99.17 %
// MRE% = 18.02 %
// MSE = 903134 
// FPGA_POWER = 0.42
// FPGA_DELAY = 8.4
// FPGA_LUT = 16

module mul8u_7T1 (
    A,
    B,
    O
);

input [7:0] A;
input [7:0] B;
output [15:0] O;

wire sig_65,sig_117,sig_154,sig_163,sig_206,sig_207,sig_208,sig_227,sig_236,sig_237,sig_238,sig_239,sig_240,sig_241,sig_242,sig_243,sig_244,sig_245,sig_250,sig_251;
wire sig_252,sig_253,sig_271,sig_276,sig_277,sig_278,sig_279,sig_280,sig_281,sig_282,sig_283,sig_284,sig_285,sig_286,sig_287,sig_288,sig_289,sig_290,sig_294,sig_295;
wire sig_296,sig_297,sig_298,sig_316,sig_317,sig_318,sig_319,sig_320,sig_321,sig_322,sig_323,sig_324,sig_325,sig_326,sig_327,sig_328,sig_329,sig_330,sig_331,sig_332;
wire sig_333,sig_334,sig_335;

assign sig_65 = A[4] & B[7];
assign sig_117 = B[7] & A[3];
assign sig_154 = sig_65 ^ sig_117;
assign sig_163 = A[3] & sig_65;
assign sig_206 = B[5] & A[5];
assign sig_207 = B[6] & A[4];
assign sig_208 = B[7] & A[5];
assign sig_227 = B[6] & A[5];
assign sig_236 = sig_154 ^ sig_207;
assign sig_237 = sig_154 & sig_207;
assign sig_238 = sig_236 & sig_227;
assign sig_239 = sig_236 ^ sig_227;
assign sig_240 = sig_237 | sig_238;
assign sig_241 = sig_163 ^ sig_208;
assign sig_242 = sig_163 & sig_208;
assign sig_243 = sig_208 & sig_240;
assign sig_244 = sig_241 ^ sig_240;
assign sig_245 = sig_242 | sig_243;
assign sig_250 = B[4] & A[6];
assign sig_251 = B[5] & A[6];
assign sig_252 = B[6] & A[6];
assign sig_253 = B[7] & A[6];
assign sig_271 = sig_206 | sig_250;
assign sig_276 = sig_239 ^ sig_251;
assign sig_277 = sig_239 & sig_251;
assign sig_278 = sig_276 & sig_271;
assign sig_279 = sig_276 ^ sig_271;
assign sig_280 = sig_277 | sig_278;
assign sig_281 = sig_244 ^ sig_252;
assign sig_282 = sig_244 & sig_252;
assign sig_283 = sig_281 & sig_280;
assign sig_284 = sig_281 ^ sig_280;
assign sig_285 = sig_282 | sig_283;
assign sig_286 = sig_245 ^ sig_253;
assign sig_287 = sig_245 & A[6];
assign sig_288 = sig_253 & sig_285;
assign sig_289 = sig_286 ^ sig_285;
assign sig_290 = sig_287 | sig_288;
assign sig_294 = B[3] & A[7];
assign sig_295 = B[4] & A[7];
assign sig_296 = B[5] & A[7];
assign sig_297 = B[6] & A[7];
assign sig_298 = B[7] & A[7];
assign sig_316 = sig_279 ^ sig_295;
assign sig_317 = sig_279 & sig_295;
assign sig_318 = sig_316 & sig_294;
assign sig_319 = sig_316 ^ sig_294;
assign sig_320 = sig_317 | sig_318;
assign sig_321 = sig_284 ^ sig_296;
assign sig_322 = sig_284 & sig_296;
assign sig_323 = sig_321 & sig_320;
assign sig_324 = sig_321 ^ sig_320;
assign sig_325 = sig_322 | sig_323;
assign sig_326 = sig_289 ^ sig_297;
assign sig_327 = sig_289 & sig_297;
assign sig_328 = sig_326 & sig_325;
assign sig_329 = sig_326 ^ sig_325;
assign sig_330 = sig_327 | sig_328;
assign sig_331 = sig_290 ^ sig_298;
assign sig_332 = sig_290 & sig_298;
assign sig_333 = B[7] & sig_330;
assign sig_334 = sig_331 ^ sig_330;
assign sig_335 = sig_332 | sig_333;

assign O[15] = sig_335;
assign O[14] = sig_334;
assign O[13] = sig_329;
assign O[12] = sig_324;
assign O[11] = sig_319;
assign O[10] = 1'b0;
assign O[9] = sig_206;
assign O[8] = sig_288;
assign O[7] = sig_250;
assign O[6] = sig_163;
assign O[5] = 1'b0;
assign O[4] = 1'b0;
assign O[3] = sig_322;
assign O[2] = sig_334;
assign O[1] = sig_319;
assign O[0] = sig_163;

endmodule



/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.33 %
// MAE = 218 
// WCE% = 1.40 %
// WCE = 918 
// WCRE% = 300.00 %
// EP% = 98.65 %
// MRE% = 7.10 %
// MSE = 74379 
// FPGA_POWER = 0.72
// FPGA_DELAY = 9.3
// FPGA_LUT = 42

module mul8u_QM8 (
    A,
    B,
    O
);

input [7:0] A;
input [7:0] B;
output [15:0] O;

wire sig_31,sig_38,sig_39,sig_46,sig_47,sig_53,sig_54,sig_55,sig_60,sig_61,sig_62,sig_63,sig_67,sig_68,sig_69,sig_70,sig_71,sig_75,sig_76,sig_77;
wire sig_78,sig_79,sig_112,sig_113,sig_132,sig_136,sig_137,sig_138,sig_139,sig_140,sig_141,sig_142,sig_143,sig_144,sig_145,sig_146,sig_147,sig_172,sig_177,sig_180;
wire sig_182,sig_183,sig_184,sig_193,sig_197,sig_198,sig_199,sig_200,sig_201,sig_202,sig_203,sig_204,sig_205,sig_206,sig_207,sig_208,sig_209,sig_210,sig_211,sig_212;
wire sig_213,sig_214,sig_215,sig_216,sig_217,sig_218,sig_234,sig_243,sig_244,sig_245,sig_246,sig_247,sig_248,sig_249,sig_250,sig_251,sig_252,sig_253,sig_254,sig_255;
wire sig_256,sig_268,sig_269,sig_273,sig_274,sig_275,sig_276,sig_277,sig_278,sig_279,sig_280,sig_281,sig_282,sig_283,sig_284,sig_285,sig_286,sig_287,sig_288,sig_289;
wire sig_290,sig_291,sig_292,sig_293,sig_294,sig_295,sig_296,sig_297,sig_298,sig_299,sig_330,sig_331,sig_335,sig_336,sig_337,sig_338,sig_339,sig_340,sig_341,sig_342;
wire sig_344,sig_352,sig_359,sig_362,sig_369,sig_384,sig_385,sig_386,sig_387,sig_388,sig_389,sig_390,sig_391,sig_392,sig_393,sig_394,sig_395,sig_397,sig_399,sig_400;
wire sig_404,sig_405,sig_406,sig_409,sig_410,sig_414,sig_415,sig_416,sig_417,sig_419,sig_420,sig_421,sig_423,sig_424,sig_425,sig_428,sig_429;

assign sig_31 = B[7] & A[1];
assign sig_38 = B[6] & A[2];
assign sig_39 = B[7] & A[2];
assign sig_46 = B[6] & A[3];
assign sig_47 = B[7] & A[3];
assign sig_53 = B[5] & A[4];
assign sig_54 = B[6] & A[4];
assign sig_55 = B[7] & A[4];
assign sig_60 = B[4] & A[5];
assign sig_61 = B[5] & A[5];
assign sig_62 = B[6] & A[5];
assign sig_63 = B[7] & A[5];
assign sig_67 = B[3] & A[6];
assign sig_68 = B[4] & A[6];
assign sig_69 = B[5] & A[6];
assign sig_70 = B[6] & A[6];
assign sig_71 = B[7] & A[6];
assign sig_75 = B[3] & A[7];
assign sig_76 = B[4] & A[7];
assign sig_77 = B[5] & A[7];
assign sig_78 = B[6] & A[7];
assign sig_79 = B[7] & A[7];
assign sig_112 = sig_31 & sig_38;
assign sig_113 = sig_31 | sig_38;
assign sig_132 = B[3] & A[5];
assign sig_136 = sig_46 ^ sig_53;
assign sig_137 = sig_46 & sig_53;
assign sig_138 = sig_136 & sig_60;
assign sig_139 = sig_136 ^ sig_60;
assign sig_140 = sig_137 | sig_138;
assign sig_141 = sig_47 ^ sig_54;
assign sig_142 = sig_47 & sig_54;
assign sig_143 = sig_141 & sig_61;
assign sig_144 = sig_141 ^ sig_61;
assign sig_145 = sig_142 | sig_143;
assign sig_146 = sig_55 & sig_62;
assign sig_147 = sig_55 ^ sig_62;
assign sig_172 = A[3] & B[5];
assign sig_177 = A[7] & B[2];
assign sig_180 = sig_39 ^ sig_112;
assign sig_182 = sig_180 & sig_139;
assign sig_183 = sig_180 ^ sig_139;
assign sig_184 = sig_112 | sig_182;
assign sig_193 = B[1] & A[6];
assign sig_197 = sig_132 ^ sig_67;
assign sig_198 = sig_132 & sig_67;
assign sig_199 = sig_197 & sig_177;
assign sig_200 = sig_197 ^ sig_177;
assign sig_201 = sig_198 | sig_199;
assign sig_202 = sig_140 ^ sig_68;
assign sig_203 = sig_140 & sig_68;
assign sig_204 = sig_202 & sig_75;
assign sig_205 = sig_202 ^ sig_75;
assign sig_206 = sig_203 | sig_204;
assign sig_207 = sig_145 ^ sig_69;
assign sig_208 = sig_145 & sig_69;
assign sig_209 = sig_207 & sig_76;
assign sig_210 = sig_207 ^ sig_76;
assign sig_211 = sig_208 | sig_209;
assign sig_212 = sig_146 ^ sig_70;
assign sig_213 = sig_146 & A[6];
assign sig_214 = sig_212 & sig_77;
assign sig_215 = sig_212 ^ sig_77;
assign sig_216 = sig_213 | sig_214;
assign sig_217 = sig_71 & B[6];
assign sig_218 = sig_71 ^ sig_78;
assign sig_234 = A[4] & B[4];
assign sig_243 = sig_183 ^ sig_177;
assign sig_244 = sig_183 & sig_177;
assign sig_245 = sig_243 & sig_200;
assign sig_246 = sig_243 ^ sig_200;
assign sig_247 = sig_244 | sig_245;
assign sig_248 = sig_144 ^ sig_184;
assign sig_249 = sig_144 & sig_184;
assign sig_250 = sig_248 & sig_205;
assign sig_251 = sig_248 ^ sig_205;
assign sig_252 = sig_249 | sig_250;
assign sig_253 = sig_147 & sig_210;
assign sig_254 = sig_147 ^ sig_210;
assign sig_255 = sig_63 & sig_215;
assign sig_256 = sig_63 ^ sig_215;
assign sig_268 = sig_113 | sig_234;
assign sig_269 = sig_113 & sig_234;
assign sig_273 = sig_246 ^ sig_172;
assign sig_274 = sig_246 & sig_172;
assign sig_275 = sig_273 & sig_193;
assign sig_276 = sig_273 ^ sig_193;
assign sig_277 = sig_274 | sig_275;
assign sig_278 = sig_251 ^ sig_247;
assign sig_279 = sig_251 & sig_247;
assign sig_280 = sig_278 & sig_201;
assign sig_281 = sig_278 ^ sig_201;
assign sig_282 = sig_279 | sig_280;
assign sig_283 = sig_254 ^ sig_252;
assign sig_284 = sig_254 & sig_252;
assign sig_285 = sig_283 & sig_206;
assign sig_286 = sig_283 ^ sig_206;
assign sig_287 = sig_284 | sig_285;
assign sig_288 = sig_256 ^ sig_253;
assign sig_289 = sig_256 & sig_253;
assign sig_290 = sig_288 & sig_211;
assign sig_291 = sig_288 ^ sig_211;
assign sig_292 = sig_289 | sig_290;
assign sig_293 = sig_218 ^ sig_255;
assign sig_294 = sig_218 & sig_255;
assign sig_295 = sig_293 & sig_216;
assign sig_296 = sig_293 ^ sig_216;
assign sig_297 = sig_294 | sig_295;
assign sig_298 = A[7] & sig_217;
assign sig_299 = sig_79 ^ sig_298;
assign sig_330 = sig_276 | sig_269;
assign sig_331 = sig_276 & sig_269;
assign sig_335 = sig_281 ^ sig_277;
assign sig_336 = sig_281 & sig_277;
assign sig_337 = sig_335 & sig_331;
assign sig_338 = sig_335 ^ sig_331;
assign sig_339 = sig_336 | sig_337;
assign sig_340 = sig_286 | sig_282;
assign sig_341 = sig_286 & sig_282;
assign sig_342 = sig_340 & sig_339;
assign sig_344 = sig_341 | sig_342;
assign sig_352 = ~sig_331;
assign sig_359 = sig_286 ^ sig_282;
assign sig_362 = sig_359 ^ sig_339;
assign sig_369 = sig_330 & sig_352;
assign sig_384 = sig_291 ^ sig_287;
assign sig_385 = sig_291 & sig_287;
assign sig_386 = sig_296 ^ sig_292;
assign sig_387 = sig_296 & sig_292;
assign sig_388 = sig_386 & sig_385;
assign sig_389 = sig_386 ^ sig_385;
assign sig_390 = sig_387 | sig_388;
assign sig_391 = sig_299 ^ sig_297;
assign sig_392 = sig_299 & sig_297;
assign sig_393 = sig_391 & sig_390;
assign sig_394 = sig_391 ^ sig_390;
assign sig_395 = sig_392 | sig_393;
assign sig_397 = sig_298 | sig_395;
assign sig_399 = sig_384 | sig_385;
assign sig_400 = ~sig_384;
assign sig_404 = sig_389 & sig_384;
assign sig_405 = sig_386 ^ sig_399;
assign sig_406 = sig_390 | sig_404;
assign sig_409 = sig_394 & sig_404;
assign sig_410 = sig_391 ^ sig_406;
assign sig_414 = ~sig_344;
assign sig_415 = sig_384 & sig_414;
assign sig_416 = sig_400 & sig_344;
assign sig_417 = sig_415 | sig_416;
assign sig_419 = sig_389 & sig_414;
assign sig_420 = sig_405 & sig_344;
assign sig_421 = sig_419 | sig_420;
assign sig_423 = sig_394 & sig_414;
assign sig_424 = sig_410 & sig_344;
assign sig_425 = sig_423 | sig_424;
assign sig_428 = sig_409 & sig_344;
assign sig_429 = sig_397 | sig_428;

assign O[15] = sig_429;
assign O[14] = sig_425;
assign O[13] = sig_421;
assign O[12] = sig_417;
assign O[11] = sig_362;
assign O[10] = sig_338;
assign O[9] = sig_369;
assign O[8] = sig_268;
assign O[7] = sig_268;
assign O[6] = sig_417;
assign O[5] = sig_244;
assign O[4] = 1'b0;
assign O[3] = sig_177;
assign O[2] = sig_113;
assign O[1] = sig_201;
assign O[0] = sig_409;

endmodule



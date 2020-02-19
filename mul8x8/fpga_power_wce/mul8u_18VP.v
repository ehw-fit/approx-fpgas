/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.22 %
// MAE = 147 
// WCE% = 0.94 %
// WCE = 614 
// WCRE% = 100.00 %
// EP% = 98.64 %
// MRE% = 4.98 %
// MSE = 33225 
// FPGA_POWER = 0.81
// FPGA_DELAY = 9.6
// FPGA_LUT = 42

module mul8u_18VP (
    A,
    B,
    O
);

input [7:0] A;
input [7:0] B;
output [15:0] O;

wire sig_23,sig_30,sig_42,sig_45,sig_51,sig_53,sig_82,sig_84,sig_85,sig_87,sig_88,sig_94,sig_95,sig_96,sig_118,sig_122,sig_123,sig_124,sig_125,sig_126;
wire sig_127,sig_128,sig_129,sig_130,sig_131,sig_135,sig_136,sig_137,sig_138,sig_139,sig_158,sig_160,sig_162,sig_163,sig_164,sig_165,sig_166,sig_167,sig_168,sig_169;
wire sig_170,sig_171,sig_172,sig_173,sig_174,sig_178,sig_179,sig_180,sig_181,sig_182,sig_198,sig_199,sig_200,sig_201,sig_202,sig_203,sig_204,sig_205,sig_206,sig_207;
wire sig_208,sig_209,sig_210,sig_211,sig_212,sig_213,sig_214,sig_215,sig_216,sig_217,sig_220,sig_221,sig_222,sig_223,sig_224,sig_225,sig_236,sig_237,sig_241,sig_242;
wire sig_243,sig_244,sig_245,sig_246,sig_247,sig_248,sig_249,sig_250,sig_251,sig_252,sig_253,sig_254,sig_255,sig_256,sig_257,sig_258,sig_259,sig_260,sig_263,sig_264;
wire sig_265,sig_266,sig_267,sig_268,sig_275,sig_279,sig_280,sig_281,sig_282,sig_283,sig_284,sig_285,sig_286,sig_287,sig_288,sig_289,sig_290,sig_291,sig_292,sig_293;
wire sig_294,sig_295,sig_296,sig_297,sig_298,sig_299,sig_300,sig_301,sig_302,sig_303,sig_306,sig_308,sig_311,sig_312,sig_313,sig_314,sig_315,sig_316,sig_317,sig_318;
wire sig_319,sig_320,sig_322,sig_323,sig_324,sig_325,sig_326,sig_327,sig_328,sig_329,sig_330,sig_331,sig_332,sig_333,sig_334,sig_335,sig_336,sig_339,sig_340,sig_341;
wire sig_344,sig_345,sig_348,sig_349,sig_350,sig_351,sig_352,sig_353,sig_354,sig_355,sig_356,sig_357,sig_358,sig_361,sig_362;

assign sig_23 = B[7] & A[1];
assign sig_30 = B[6] & A[1];
assign sig_42 = A[1] & B[7];
assign sig_45 = sig_23 | sig_30;
assign sig_51 = B[5] & A[2];
assign sig_53 = B[7] & A[2];
assign sig_82 = A[2] & B[6];
assign sig_84 = sig_42 ^ sig_82;
assign sig_85 = A[2] & sig_30;
assign sig_87 = sig_84 ^ sig_45;
assign sig_88 = sig_85 | sig_42;
assign sig_94 = B[5] & A[3];
assign sig_95 = B[6] & A[3];
assign sig_96 = B[7] & A[3];
assign sig_118 = A[3] & B[4];
assign sig_122 = sig_87 ^ sig_94;
assign sig_123 = sig_87 & sig_94;
assign sig_124 = sig_122 & sig_51;
assign sig_125 = sig_122 ^ sig_51;
assign sig_126 = sig_123 | sig_124;
assign sig_127 = sig_53 ^ sig_95;
assign sig_128 = sig_53 & sig_95;
assign sig_129 = sig_127 & sig_88;
assign sig_130 = sig_127 ^ sig_88;
assign sig_131 = sig_128 | sig_129;
assign sig_135 = A[4] & B[3];
assign sig_136 = B[4] & A[4];
assign sig_137 = B[5] & A[4];
assign sig_138 = B[6] & A[4];
assign sig_139 = B[7] & A[4];
assign sig_158 = sig_136 & sig_125;
assign sig_160 = sig_125 ^ sig_136;
assign sig_162 = sig_160 & sig_118;
assign sig_163 = sig_160 ^ sig_118;
assign sig_164 = sig_158 | sig_162;
assign sig_165 = sig_130 ^ sig_137;
assign sig_166 = sig_130 & sig_137;
assign sig_167 = sig_165 & sig_126;
assign sig_168 = sig_165 ^ sig_126;
assign sig_169 = sig_166 | sig_167;
assign sig_170 = sig_96 ^ sig_138;
assign sig_171 = sig_96 & sig_138;
assign sig_172 = sig_170 & sig_131;
assign sig_173 = sig_170 ^ sig_131;
assign sig_174 = sig_171 | sig_172;
assign sig_178 = B[3] & A[5];
assign sig_179 = B[4] & A[5];
assign sig_180 = B[5] & A[5];
assign sig_181 = B[6] & A[5];
assign sig_182 = B[7] & A[5];
assign sig_198 = sig_163 ^ sig_178;
assign sig_199 = sig_163 & sig_178;
assign sig_200 = sig_198 & sig_135;
assign sig_201 = sig_198 ^ sig_135;
assign sig_202 = sig_199 | sig_200;
assign sig_203 = sig_168 ^ sig_179;
assign sig_204 = sig_168 & sig_179;
assign sig_205 = sig_203 & sig_164;
assign sig_206 = sig_203 ^ sig_164;
assign sig_207 = sig_204 | sig_205;
assign sig_208 = sig_173 ^ sig_180;
assign sig_209 = sig_173 & sig_180;
assign sig_210 = sig_208 & sig_169;
assign sig_211 = sig_208 ^ sig_169;
assign sig_212 = sig_209 | sig_210;
assign sig_213 = sig_139 ^ sig_181;
assign sig_214 = sig_139 & sig_181;
assign sig_215 = sig_213 & sig_174;
assign sig_216 = sig_213 ^ sig_174;
assign sig_217 = sig_214 | sig_215;
assign sig_220 = B[2] & A[6];
assign sig_221 = B[3] & A[6];
assign sig_222 = B[4] & A[6];
assign sig_223 = B[5] & A[6];
assign sig_224 = B[6] & A[6];
assign sig_225 = B[7] & A[6];
assign sig_236 = sig_201 ^ sig_220;
assign sig_237 = sig_201 & sig_220;
assign sig_241 = sig_206 ^ sig_221;
assign sig_242 = sig_206 & sig_221;
assign sig_243 = sig_241 & sig_202;
assign sig_244 = sig_241 ^ sig_202;
assign sig_245 = sig_242 | sig_243;
assign sig_246 = sig_211 ^ sig_222;
assign sig_247 = sig_211 & sig_222;
assign sig_248 = sig_246 & sig_207;
assign sig_249 = sig_246 ^ sig_207;
assign sig_250 = sig_247 | sig_248;
assign sig_251 = sig_216 ^ sig_223;
assign sig_252 = sig_216 & sig_223;
assign sig_253 = sig_251 & sig_212;
assign sig_254 = sig_251 ^ sig_212;
assign sig_255 = sig_252 | sig_253;
assign sig_256 = sig_182 ^ sig_224;
assign sig_257 = sig_182 & sig_224;
assign sig_258 = sig_256 & sig_217;
assign sig_259 = sig_256 ^ sig_217;
assign sig_260 = sig_257 | sig_258;
assign sig_263 = B[2] & A[7];
assign sig_264 = B[3] & A[7];
assign sig_265 = B[4] & A[7];
assign sig_266 = B[5] & A[7];
assign sig_267 = B[6] & A[7];
assign sig_268 = B[7] & A[7];
assign sig_275 = B[1] & A[7];
assign sig_279 = sig_244 ^ sig_263;
assign sig_280 = sig_244 & sig_263;
assign sig_281 = sig_279 & sig_237;
assign sig_282 = sig_279 ^ sig_237;
assign sig_283 = sig_280 | sig_281;
assign sig_284 = sig_249 ^ sig_264;
assign sig_285 = sig_249 & sig_264;
assign sig_286 = sig_284 & sig_245;
assign sig_287 = sig_284 ^ sig_245;
assign sig_288 = sig_285 | sig_286;
assign sig_289 = sig_254 ^ sig_265;
assign sig_290 = sig_254 & sig_265;
assign sig_291 = sig_289 & sig_250;
assign sig_292 = sig_289 ^ sig_250;
assign sig_293 = sig_290 | sig_291;
assign sig_294 = sig_259 ^ sig_266;
assign sig_295 = sig_259 & sig_266;
assign sig_296 = sig_294 & sig_255;
assign sig_297 = sig_294 ^ sig_255;
assign sig_298 = sig_295 | sig_296;
assign sig_299 = sig_225 ^ sig_267;
assign sig_300 = sig_225 & sig_267;
assign sig_301 = sig_299 & sig_260;
assign sig_302 = sig_299 ^ sig_260;
assign sig_303 = sig_300 | sig_301;
assign sig_306 = sig_282 ^ sig_275;
assign sig_308 = sig_282 & sig_275;
assign sig_311 = sig_287 ^ sig_283;
assign sig_312 = sig_287 & sig_283;
assign sig_313 = sig_311 & sig_308;
assign sig_314 = sig_311 ^ sig_308;
assign sig_315 = sig_312 | sig_313;
assign sig_316 = sig_292 ^ sig_288;
assign sig_317 = sig_292 & sig_288;
assign sig_318 = sig_316 & sig_315;
assign sig_319 = sig_316 ^ sig_315;
assign sig_320 = sig_317 | sig_318;
assign sig_322 = sig_297 & sig_293;
assign sig_323 = sig_302 ^ sig_298;
assign sig_324 = sig_302 & sig_298;
assign sig_325 = sig_323 & sig_322;
assign sig_326 = sig_323 ^ sig_322;
assign sig_327 = sig_324 | sig_325;
assign sig_328 = sig_268 ^ sig_303;
assign sig_329 = sig_268 & sig_303;
assign sig_330 = sig_328 & sig_327;
assign sig_331 = sig_328 ^ sig_327;
assign sig_332 = sig_329 | sig_330;
assign sig_333 = sig_297 ^ sig_293;
assign sig_334 = ~sig_320;
assign sig_335 = ~sig_333;
assign sig_336 = sig_322 | sig_333;
assign sig_339 = sig_323 & sig_336;
assign sig_340 = sig_323 ^ sig_336;
assign sig_341 = sig_324 | sig_339;
assign sig_344 = sig_328 & sig_341;
assign sig_345 = sig_328 ^ sig_341;
assign sig_348 = sig_333 & sig_334;
assign sig_349 = sig_335 & sig_320;
assign sig_350 = sig_348 | sig_349;
assign sig_351 = ~sig_320;
assign sig_352 = sig_326 & sig_351;
assign sig_353 = sig_340 & sig_320;
assign sig_354 = sig_352 | sig_353;
assign sig_355 = ~sig_320;
assign sig_356 = sig_331 & sig_355;
assign sig_357 = sig_345 & sig_320;
assign sig_358 = sig_356 | sig_357;
assign sig_361 = sig_344 & sig_320;
assign sig_362 = sig_332 | sig_361;

assign O[15] = sig_362;
assign O[14] = sig_358;
assign O[13] = sig_354;
assign O[12] = sig_350;
assign O[11] = sig_319;
assign O[10] = sig_314;
assign O[9] = sig_306;
assign O[8] = sig_236;
assign O[7] = sig_220;
assign O[6] = sig_182;
assign O[5] = sig_214;
assign O[4] = sig_214;
assign O[3] = sig_302;
assign O[2] = sig_174;
assign O[1] = sig_53;
assign O[0] = sig_207;

endmodule



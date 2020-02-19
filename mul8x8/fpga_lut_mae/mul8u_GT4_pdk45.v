/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.16 %
// MAE = 104 
// WCE% = 0.73 %
// WCE = 481 
// WCRE% = 112.50 %
// EP% = 96.25 %
// MRE% = 3.68 %
// MSE = 17466 
// FPGA_POWER = 0.85
// FPGA_DELAY = 9.7
// FPGA_LUT = 48

module mul8u_GT4 (
    A,
    B,
    O
);

input [7:0] A;
input [7:0] B;
output [15:0] O;

wire sig_22,sig_23,sig_30,sig_31,sig_37,sig_38,sig_39,sig_44,sig_45,sig_46,sig_47,sig_52,sig_53,sig_54,sig_55,sig_57,sig_59,sig_60,sig_61,sig_62;
wire sig_63,sig_66,sig_67,sig_68,sig_69,sig_70,sig_71,sig_73,sig_74,sig_75,sig_76,sig_77,sig_78,sig_79,sig_103,sig_107,sig_109,sig_110,sig_112,sig_113;
wire sig_124,sig_126,sig_128,sig_131,sig_132,sig_133,sig_134,sig_135,sig_136,sig_137,sig_138,sig_139,sig_140,sig_141,sig_142,sig_143,sig_144,sig_145,sig_146,sig_147;
wire sig_171,sig_173,sig_175,sig_176,sig_177,sig_178,sig_179,sig_180,sig_182,sig_183,sig_184,sig_188,sig_192,sig_193,sig_194,sig_195,sig_196,sig_197,sig_198,sig_199;
wire sig_200,sig_201,sig_202,sig_203,sig_204,sig_205,sig_206,sig_207,sig_208,sig_209,sig_210,sig_211,sig_212,sig_213,sig_214,sig_215,sig_216,sig_217,sig_218,sig_238;
wire sig_239,sig_240,sig_241,sig_242,sig_243,sig_244,sig_245,sig_246,sig_247,sig_248,sig_249,sig_250,sig_251,sig_252,sig_253,sig_254,sig_255,sig_256,sig_265,sig_270;
wire sig_271,sig_273,sig_274,sig_275,sig_276,sig_277,sig_278,sig_279,sig_280,sig_281,sig_282,sig_283,sig_284,sig_285,sig_286,sig_287,sig_288,sig_289,sig_290,sig_291;
wire sig_292,sig_293,sig_294,sig_295,sig_296,sig_297,sig_298,sig_299,sig_312,sig_313,sig_317,sig_318,sig_319,sig_320,sig_321,sig_322,sig_323,sig_324,sig_325,sig_326;
wire sig_327,sig_328,sig_329,sig_330,sig_331,sig_332,sig_333,sig_334,sig_335,sig_336,sig_337,sig_338,sig_339,sig_340,sig_341,sig_342,sig_343,sig_344,sig_345,sig_346;
wire sig_348;

assign sig_22 = B[6] & A[0];
assign sig_23 = B[7] & A[0];
assign sig_30 = B[6] & A[1];
assign sig_31 = B[7] & A[1];
assign sig_37 = B[5] & A[2];
assign sig_38 = B[6] & A[2];
assign sig_39 = B[7] & A[2];
assign sig_44 = B[2] & A[5];
assign sig_45 = B[5] & A[3];
assign sig_46 = B[6] & A[3];
assign sig_47 = B[7] & A[3];
assign sig_52 = B[4] & A[4];
assign sig_53 = B[5] & A[4];
assign sig_54 = B[6] & A[4];
assign sig_55 = B[7] & A[4];
assign sig_57 = B[1] & A[6];
assign sig_59 = B[3] & A[5];
assign sig_60 = B[4] & A[5];
assign sig_61 = B[5] & A[5];
assign sig_62 = B[6] & A[5];
assign sig_63 = B[7] & A[5];
assign sig_66 = B[2] & A[6];
assign sig_67 = B[3] & A[6];
assign sig_68 = B[4] & A[6];
assign sig_69 = B[5] & A[6];
assign sig_70 = B[6] & A[6];
assign sig_71 = B[7] & A[6];
assign sig_73 = B[1] & A[7];
assign sig_74 = B[2] & A[7];
assign sig_75 = B[3] & A[7];
assign sig_76 = B[4] & A[7];
assign sig_77 = B[5] & A[7];
assign sig_78 = B[6] & A[7];
assign sig_79 = B[7] & A[7];
assign sig_103 = A[7] & B[0];
assign sig_107 = sig_23 | sig_30;
assign sig_109 = A[1] & sig_37;
assign sig_110 = sig_107 | sig_37;
assign sig_112 = sig_31 & sig_38;
assign sig_113 = sig_31 ^ sig_38;
assign sig_124 = sig_103 | sig_57;
assign sig_126 = sig_44 | sig_124;
assign sig_128 = A[4] & B[3];
assign sig_131 = sig_45 ^ sig_52;
assign sig_132 = sig_45 & sig_52;
assign sig_133 = sig_131 & sig_59;
assign sig_134 = sig_131 ^ sig_59;
assign sig_135 = sig_132 | sig_133;
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
assign sig_171 = sig_126 & sig_110;
assign sig_173 = sig_110 | sig_126;
assign sig_175 = sig_113 ^ sig_109;
assign sig_176 = sig_113 & sig_109;
assign sig_177 = sig_175 & sig_134;
assign sig_178 = sig_175 ^ sig_134;
assign sig_179 = sig_176 | sig_177;
assign sig_180 = sig_39 ^ sig_112;
assign sig_182 = sig_180 & sig_139;
assign sig_183 = sig_180 ^ sig_139;
assign sig_184 = sig_112 | sig_182;
assign sig_188 = B[1] & sig_44;
assign sig_192 = sig_128 ^ sig_66;
assign sig_193 = sig_128 & sig_66;
assign sig_194 = sig_192 & sig_73;
assign sig_195 = sig_192 ^ sig_73;
assign sig_196 = sig_193 | sig_194;
assign sig_197 = sig_135 ^ sig_67;
assign sig_198 = sig_135 & sig_67;
assign sig_199 = sig_197 & sig_74;
assign sig_200 = sig_197 ^ sig_74;
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
assign sig_238 = sig_178 ^ sig_171;
assign sig_239 = sig_178 & sig_171;
assign sig_240 = sig_238 & sig_195;
assign sig_241 = sig_238 ^ sig_195;
assign sig_242 = sig_239 | sig_240;
assign sig_243 = sig_183 ^ sig_179;
assign sig_244 = sig_183 & sig_179;
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
assign sig_265 = A[3] & B[4];
assign sig_270 = sig_241 & sig_188;
assign sig_271 = sig_241 ^ sig_188;
assign sig_273 = sig_246 ^ sig_242;
assign sig_274 = sig_246 & sig_242;
assign sig_275 = sig_273 & sig_196;
assign sig_276 = sig_273 ^ sig_196;
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
assign sig_312 = sig_271 ^ sig_265;
assign sig_313 = sig_271 & sig_265;
assign sig_317 = sig_276 ^ sig_270;
assign sig_318 = sig_276 & sig_270;
assign sig_319 = sig_276 & sig_313;
assign sig_320 = sig_317 ^ sig_313;
assign sig_321 = sig_318 | sig_319;
assign sig_322 = sig_281 ^ sig_277;
assign sig_323 = sig_281 & sig_277;
assign sig_324 = sig_322 & sig_321;
assign sig_325 = sig_322 ^ sig_321;
assign sig_326 = sig_323 | sig_324;
assign sig_327 = sig_286 ^ sig_282;
assign sig_328 = sig_286 & sig_282;
assign sig_329 = sig_327 & sig_326;
assign sig_330 = sig_327 ^ sig_326;
assign sig_331 = sig_328 | sig_329;
assign sig_332 = sig_291 ^ sig_287;
assign sig_333 = sig_291 & sig_287;
assign sig_334 = sig_332 & sig_331;
assign sig_335 = sig_332 ^ sig_331;
assign sig_336 = sig_333 | sig_334;
assign sig_337 = sig_296 ^ sig_292;
assign sig_338 = sig_296 & sig_292;
assign sig_339 = sig_337 & sig_336;
assign sig_340 = sig_337 ^ sig_336;
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
assign O[12] = sig_335;
assign O[11] = sig_330;
assign O[10] = sig_325;
assign O[9] = sig_320;
assign O[8] = sig_312;
assign O[7] = sig_173;
assign O[6] = sig_22;
assign O[5] = sig_57;
assign O[4] = sig_265;
assign O[3] = sig_128;
assign O[2] = sig_188;
assign O[1] = 1'b0;
assign O[0] = sig_171;

endmodule



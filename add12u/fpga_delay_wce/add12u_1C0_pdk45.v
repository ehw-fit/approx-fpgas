/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.0098 %
// MAE = 0.8 
// WCE% = 0.024 %
// WCE = 2.0 
// WCRE% = 100.00 %
// EP% = 62.50 %
// MRE% = 0.026 %
// MSE = 1.0 
// FPGA_POWER = 0.43
// FPGA_DELAY = 7.7
// FPGA_LUT = 17

module add12u_1C0(A, B, O);
  input [11:0] A, B;
  output [12:0] O;
  wire n_253, n_414, n_318, n_250, n_256, n_312, n_259, n_417, n_315, n_45;
  wire n_42, n_48, n_380, n_383, n_148, n_389, n_303, n_405, n_402, n_244;
  wire n_247, n_408, n_30, n_33, n_39, n_392, n_396, n_151, n_399, n_154;
  wire n_157, n_231, n_293, n_234, n_23, n_22, n_21, n_20, n_262, n_290;
  wire n_343, n_327, n_324, n_129, n_321, n_126, n_120, n_123, n_182, n_228;
  wire n_346, n_340, n_185, n_222, n_188, n_420, n_268, n_18, n_19, n_16;
  wire n_17, n_14, n_15, n_12, n_13, n_10, n_11, n_95, n_92, n_386;
  wire n_98, n_330, n_306, n_138, n_337, n_135, n_355, n_352, n_194, n_197;
  wire n_191, n_358, n_82, n_86, n_89, n_101, n_107, n_104, n_361, n_365;
  wire n_368, n_371, n_117, n_110, n_79, n_299, n_113, n_296, n_76, n_70;
  wire n_73, n_216, n_213, n_210, n_219, n_275, n_51, n_272, n_374, n_377;
  wire n_278, n_163, n_166, n_169, n_281, n_64, n_284, n_61, n_287, n_203;
  wire n_206, n_309, n_265, n_8, n_9, n_4, n_5, n_6, n_7, n_0;
  wire n_1, n_2, n_3, n_172, n_58, n_179, n_55, n_67;
  assign n_0 = A[0];
  assign n_1 = A[1];
  assign n_2 = A[2];
  assign n_3 = A[3];
  assign n_4 = A[4];
  assign n_5 = A[5];
  assign n_6 = A[6];
  assign n_7 = A[7];
  assign n_8 = A[8];
  assign n_9 = A[9];
  assign n_10 = A[10];
  assign n_11 = A[11];
  assign n_12 = B[0];
  assign n_13 = B[1];
  assign n_14 = B[2];
  assign n_15 = B[3];
  assign n_16 = B[4];
  assign n_17 = B[5];
  assign n_18 = B[6];
  assign n_19 = B[7];
  assign n_20 = B[8];
  assign n_21 = B[9];
  assign n_22 = B[10];
  assign n_23 = B[11];
  assign n_30 = n_1 ^ n_13;
  assign n_33 = n_1 & n_13;
  assign n_39 = n_30;
  assign n_42 = n_33;
  assign n_45 = n_2 ^ n_14;
  assign n_48 = n_2 & n_14;
  assign n_51 = n_45 & n_42;
  assign n_55 = n_45 ^ n_33;
  assign n_58 = n_48 | n_51;
  assign n_61 = n_3 ^ n_15;
  assign n_64 = n_3 & n_15;
  assign n_67 = n_61 & n_58;
  assign n_70 = n_61 ^ n_58;
  assign n_73 = n_64 | n_67;
  assign n_76 = n_4 ^ n_16;
  assign n_79 = n_4 & n_16;
  assign n_82 = n_5 ^ n_17;
  assign n_86 = n_5 & n_17;
  assign n_89 = n_82 & n_79;
  assign n_92 = n_82 ^ n_79;
  assign n_95 = n_86 | n_89;
  assign n_98 = n_6 ^ n_18;
  assign n_101 = n_6 & n_18;
  assign n_104 = n_98 & n_95;
  assign n_107 = n_98 ^ n_95;
  assign n_110 = n_101 | n_104;
  assign n_113 = n_7 ^ n_19;
  assign n_117 = n_7 & n_19;
  assign n_120 = n_113 & n_110;
  assign n_123 = n_113 ^ n_110;
  assign n_126 = n_117 | n_120;
  assign n_129 = n_4 ^ n_16;
  assign n_135 = ~n_129;
  assign n_138 = n_4 | n_76;
  assign n_148 = n_82 & n_138;
  assign n_151 = n_82 ^ n_138;
  assign n_154 = n_86 | n_148;
  assign n_157 = n_6 ^ n_18;
  assign n_163 = n_157 & n_154;
  assign n_166 = n_98 ^ n_154;
  assign n_169 = n_101 | n_163;
  assign n_172 = n_7 ^ n_19;
  assign n_179 = n_172 & n_163;
  assign n_182 = n_172 ^ n_169;
  assign n_185 = n_179;
  assign n_188 = ~n_73;
  assign n_191 = n_76 & n_188;
  assign n_194 = n_135 & n_73;
  assign n_197 = n_191 | n_194;
  assign n_203 = n_92 & n_188;
  assign n_206 = n_151 & n_73;
  assign n_210 = n_203 | n_206;
  assign n_213 = ~n_73;
  assign n_216 = n_107 & n_213;
  assign n_219 = n_166 & n_73;
  assign n_222 = n_216 | n_219;
  assign n_228 = n_123 & n_188;
  assign n_231 = n_182 & n_73;
  assign n_234 = n_228 | n_231;
  assign n_244 = n_185 & n_73;
  assign n_247 = n_126 | n_244;
  assign n_250 = n_8 ^ n_20;
  assign n_253 = n_8 & n_20;
  assign n_256 = n_9 ^ n_21;
  assign n_259 = n_9 & n_21;
  assign n_262 = n_256 & n_253;
  assign n_265 = n_256 ^ n_253;
  assign n_268 = n_259 | n_262;
  assign n_272 = n_10 ^ n_22;
  assign n_275 = n_10 & n_22;
  assign n_278 = n_272 & n_268;
  assign n_281 = n_272 ^ n_268;
  assign n_284 = n_275 | n_278;
  assign n_287 = n_11 ^ n_23;
  assign n_290 = n_11 & n_23;
  assign n_293 = n_287 & n_284;
  assign n_296 = n_287 ^ n_284;
  assign n_299 = n_290 | n_293;
  assign n_303 = n_8 ^ n_20;
  assign n_306 = n_8 & n_20;
  assign n_309 = ~n_303;
  assign n_312 = n_306 | n_303;
  assign n_315 = n_9 ^ n_21;
  assign n_318 = n_9 & n_21;
  assign n_321 = n_315 & n_312;
  assign n_324 = n_315 ^ n_312;
  assign n_327 = n_318 | n_321;
  assign n_330 = n_10 ^ n_22;
  assign n_337 = n_272 & n_327;
  assign n_340 = n_330 ^ n_327;
  assign n_343 = n_275 | n_337;
  assign n_346 = n_11 ^ n_23;
  assign n_352 = n_346 & n_343;
  assign n_355 = n_346 ^ n_343;
  assign n_358 = n_352;
  assign n_361 = ~n_247;
  assign n_365 = n_250 & n_361;
  assign n_368 = n_309 & n_247;
  assign n_371 = n_365 | n_368;
  assign n_374 = ~n_247;
  assign n_377 = n_265 & n_374;
  assign n_380 = n_324 & n_247;
  assign n_383 = n_377 | n_380;
  assign n_386 = ~n_247;
  assign n_389 = n_281 & n_386;
  assign n_392 = n_340 & n_247;
  assign n_396 = n_389 | n_392;
  assign n_399 = ~n_247;
  assign n_402 = n_296 & n_399;
  assign n_405 = n_355 & n_247;
  assign n_408 = n_402 | n_405;
  assign n_414 = n_299;
  assign n_417 = n_358 & n_247;
  assign n_420 = n_414 | n_417;
  assign O[0] = n_8;
  assign O[1] = n_39;
  assign O[2] = n_55;
  assign O[3] = n_70;
  assign O[4] = n_197;
  assign O[5] = n_210;
  assign O[6] = n_222;
  assign O[7] = n_234;
  assign O[8] = n_371;
  assign O[9] = n_383;
  assign O[10] = n_396;
  assign O[11] = n_408;
  assign O[12] = n_420;
endmodule


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
#include <stdint.h>
#include <stdlib.h>

uint64_t add12u_1C0(uint64_t a, uint64_t b) {
  uint64_t o = 0;
  int n_253=0, n_414=0, n_318=0, n_250=0, n_256=0, n_312=0, n_259=0, n_417=0, n_315=0, n_45=0;
  int n_42=0, n_48=0, n_380=0, n_383=0, n_148=0, n_389=0, n_303=0, n_405=0, n_402=0, n_244=0;
  int n_247=0, n_408=0, n_30=0, n_33=0, n_39=0, n_392=0, n_396=0, n_151=0, n_399=0, n_154=0;
  int n_157=0, n_231=0, n_293=0, n_234=0, n_23=0, n_22=0, n_21=0, n_20=0, n_262=0, n_290=0;
  int n_343=0, n_327=0, n_324=0, n_129=0, n_321=0, n_126=0, n_120=0, n_123=0, n_182=0, n_228=0;
  int n_346=0, n_340=0, n_185=0, n_222=0, n_188=0, n_420=0, n_268=0, n_18=0, n_19=0, n_16=0;
  int n_17=0, n_14=0, n_15=0, n_12=0, n_13=0, n_10=0, n_11=0, n_95=0, n_92=0, n_386=0;
  int n_98=0, n_330=0, n_306=0, n_138=0, n_337=0, n_135=0, n_355=0, n_352=0, n_194=0, n_197=0;
  int n_191=0, n_358=0, n_82=0, n_86=0, n_89=0, n_101=0, n_107=0, n_104=0, n_361=0, n_365=0;
  int n_368=0, n_371=0, n_117=0, n_110=0, n_79=0, n_299=0, n_113=0, n_296=0, n_76=0, n_70=0;
  int n_73=0, n_216=0, n_213=0, n_210=0, n_219=0, n_275=0, n_51=0, n_272=0, n_374=0, n_377=0;
  int n_278=0, n_163=0, n_166=0, n_169=0, n_281=0, n_64=0, n_284=0, n_61=0, n_287=0, n_203=0;
  int n_206=0, n_309=0, n_265=0, n_8=0, n_9=0, n_4=0, n_5=0, n_6=0, n_7=0, n_0=0;
  int n_1=0, n_2=0, n_3=0, n_172=0, n_58=0, n_179=0, n_55=0, n_67=0;
  n_0 = (a >> 0) & 0x1;
  n_1 = (a >> 1) & 0x1;
  n_2 = (a >> 2) & 0x1;
  n_3 = (a >> 3) & 0x1;
  n_4 = (a >> 4) & 0x1;
  n_5 = (a >> 5) & 0x1;
  n_6 = (a >> 6) & 0x1;
  n_7 = (a >> 7) & 0x1;
  n_8 = (a >> 8) & 0x1;
  n_9 = (a >> 9) & 0x1;
  n_10 = (a >> 10) & 0x1;
  n_11 = (a >> 11) & 0x1;
  n_12 = (b >> 0) & 0x1;
  n_13 = (b >> 1) & 0x1;
  n_14 = (b >> 2) & 0x1;
  n_15 = (b >> 3) & 0x1;
  n_16 = (b >> 4) & 0x1;
  n_17 = (b >> 5) & 0x1;
  n_18 = (b >> 6) & 0x1;
  n_19 = (b >> 7) & 0x1;
  n_20 = (b >> 8) & 0x1;
  n_21 = (b >> 9) & 0x1;
  n_22 = (b >> 10) & 0x1;
  n_23 = (b >> 11) & 0x1;
  n_30 = n_1 ^ n_13;
  n_33 = n_1 & n_13;
  n_39 = n_30;
  n_42 = n_33;
  n_45 = n_2 ^ n_14;
  n_48 = n_2 & n_14;
  n_51 = n_45 & n_42;
  n_55 = n_45 ^ n_33;
  n_58 = n_48 | n_51;
  n_61 = n_3 ^ n_15;
  n_64 = n_3 & n_15;
  n_67 = n_61 & n_58;
  n_70 = n_61 ^ n_58;
  n_73 = n_64 | n_67;
  n_76 = n_4 ^ n_16;
  n_79 = n_4 & n_16;
  n_82 = n_5 ^ n_17;
  n_86 = n_5 & n_17;
  n_89 = n_82 & n_79;
  n_92 = n_82 ^ n_79;
  n_95 = n_86 | n_89;
  n_98 = n_6 ^ n_18;
  n_101 = n_6 & n_18;
  n_104 = n_98 & n_95;
  n_107 = n_98 ^ n_95;
  n_110 = n_101 | n_104;
  n_113 = n_7 ^ n_19;
  n_117 = n_7 & n_19;
  n_120 = n_113 & n_110;
  n_123 = n_113 ^ n_110;
  n_126 = n_117 | n_120;
  n_129 = n_4 ^ n_16;
  n_135 = ~n_129;
  n_138 = n_4 | n_76;
  n_148 = n_82 & n_138;
  n_151 = n_82 ^ n_138;
  n_154 = n_86 | n_148;
  n_157 = n_6 ^ n_18;
  n_163 = n_157 & n_154;
  n_166 = n_98 ^ n_154;
  n_169 = n_101 | n_163;
  n_172 = n_7 ^ n_19;
  n_179 = n_172 & n_163;
  n_182 = n_172 ^ n_169;
  n_185 = n_179;
  n_188 = ~n_73;
  n_191 = n_76 & n_188;
  n_194 = n_135 & n_73;
  n_197 = n_191 | n_194;
  n_203 = n_92 & n_188;
  n_206 = n_151 & n_73;
  n_210 = n_203 | n_206;
  n_213 = ~n_73;
  n_216 = n_107 & n_213;
  n_219 = n_166 & n_73;
  n_222 = n_216 | n_219;
  n_228 = n_123 & n_188;
  n_231 = n_182 & n_73;
  n_234 = n_228 | n_231;
  n_244 = n_185 & n_73;
  n_247 = n_126 | n_244;
  n_250 = n_8 ^ n_20;
  n_253 = n_8 & n_20;
  n_256 = n_9 ^ n_21;
  n_259 = n_9 & n_21;
  n_262 = n_256 & n_253;
  n_265 = n_256 ^ n_253;
  n_268 = n_259 | n_262;
  n_272 = n_10 ^ n_22;
  n_275 = n_10 & n_22;
  n_278 = n_272 & n_268;
  n_281 = n_272 ^ n_268;
  n_284 = n_275 | n_278;
  n_287 = n_11 ^ n_23;
  n_290 = n_11 & n_23;
  n_293 = n_287 & n_284;
  n_296 = n_287 ^ n_284;
  n_299 = n_290 | n_293;
  n_303 = n_8 ^ n_20;
  n_306 = n_8 & n_20;
  n_309 = ~n_303;
  n_312 = n_306 | n_303;
  n_315 = n_9 ^ n_21;
  n_318 = n_9 & n_21;
  n_321 = n_315 & n_312;
  n_324 = n_315 ^ n_312;
  n_327 = n_318 | n_321;
  n_330 = n_10 ^ n_22;
  n_337 = n_272 & n_327;
  n_340 = n_330 ^ n_327;
  n_343 = n_275 | n_337;
  n_346 = n_11 ^ n_23;
  n_352 = n_346 & n_343;
  n_355 = n_346 ^ n_343;
  n_358 = n_352;
  n_361 = ~n_247;
  n_365 = n_250 & n_361;
  n_368 = n_309 & n_247;
  n_371 = n_365 | n_368;
  n_374 = ~n_247;
  n_377 = n_265 & n_374;
  n_380 = n_324 & n_247;
  n_383 = n_377 | n_380;
  n_386 = ~n_247;
  n_389 = n_281 & n_386;
  n_392 = n_340 & n_247;
  n_396 = n_389 | n_392;
  n_399 = ~n_247;
  n_402 = n_296 & n_399;
  n_405 = n_355 & n_247;
  n_408 = n_402 | n_405;
  n_414 = n_299;
  n_417 = n_358 & n_247;
  n_420 = n_414 | n_417;
  o |= (n_8 & 0x01) << 0;
  o |= (n_39 & 0x01) << 1;
  o |= (n_55 & 0x01) << 2;
  o |= (n_70 & 0x01) << 3;
  o |= (n_197 & 0x01) << 4;
  o |= (n_210 & 0x01) << 5;
  o |= (n_222 & 0x01) << 6;
  o |= (n_234 & 0x01) << 7;
  o |= (n_371 & 0x01) << 8;
  o |= (n_383 & 0x01) << 9;
  o |= (n_396 & 0x01) << 10;
  o |= (n_408 & 0x01) << 11;
  o |= (n_420 & 0x01) << 12;
  return o;
}

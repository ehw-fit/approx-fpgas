/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.91 %
// MAE = 75 
// WCE% = 2.40 %
// WCE = 197 
// WCRE% = 303.12 %
// EP% = 99.61 %
// MRE% = 2.53 %
// MSE = 8172 
// FPGA_POWER = 0.31
// FPGA_DELAY = 7.5
// FPGA_LUT = 5.0
#include <stdint.h>
#include <stdlib.h>

uint64_t add12u_1DY(uint64_t a, uint64_t b) {
  uint64_t o = 0;
  int n_415=0, n_406=0, n_354=0, n_250=0, n_410=0, n_350=0, n_310=0, n_232=0, n_419=0, n_237=0;
  int n_193=0, n_23=0, n_22=0, n_21=0, n_20=0, n_27=0, n_40=0, n_25=0, n_402=0, n_80=0;
  int n_84=0, n_202=0, n_245=0, n_102=0, n_106=0, n_241=0, n_363=0, n_228=0, n_8=0, n_9=0;
  int n_115=0, n_4=0, n_5=0, n_6=0, n_7=0, n_0=0, n_1=0, n_2=0, n_3=0, n_358=0;
  int n_18=0, n_19=0, n_16=0, n_17=0, n_14=0, n_15=0, n_12=0, n_13=0, n_10=0, n_11=0;
  int n_97=0, n_397=0, n_110=0, n_93=0, n_113=0, n_293=0, n_119=0, n_289=0, n_124=0;
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
  n_25 = ~(n_18 ^ n_18);
  n_27 = ~(n_13 | n_25);
  n_40 = n_19 | n_18;
  n_80 = n_6 | n_40;
  n_84 = ~n_25;
  n_93 = n_8 ^ n_20;
  n_97 = n_8 & n_20;
  n_102 = n_9 ^ n_21;
  n_106 = n_9 & n_21;
  n_110 = n_10 ^ n_22;
  n_113 = n_27;
  n_115 = n_10 & n_22;
  n_119 = n_11 ^ n_23;
  n_124 = n_11 & n_23;
  n_193 = n_7 | n_80;
  n_202 = n_193;
  n_228 = n_97 & n_102;
  n_232 = n_228 | n_106;
  n_237 = n_232 & n_110;
  n_241 = n_237 | n_115;
  n_245 = n_93 & n_102;
  n_250 = n_245 & n_110;
  n_289 = n_202 & n_250;
  n_293 = n_289 | n_241;
  n_310 = n_84 | n_293;
  n_350 = n_193 & n_93;
  n_354 = n_350 | n_97;
  n_358 = n_202 & n_245;
  n_363 = n_358 | n_232;
  n_397 = n_93 ^ n_202;
  n_402 = n_102 ^ n_354;
  n_406 = n_110 ^ n_363;
  n_410 = n_119 ^ n_293;
  n_415 = n_119 & n_310;
  n_419 = n_124 | n_415;
  o |= (n_10 & 0x01) << 0;
  o |= (n_6 & 0x01) << 1;
  o |= (n_13 & 0x01) << 2;
  o |= (n_7 & 0x01) << 3;
  o |= (n_4 & 0x01) << 4;
  o |= (n_17 & 0x01) << 5;
  o |= (n_113 & 0x01) << 6;
  o |= (n_113 & 0x01) << 7;
  o |= (n_397 & 0x01) << 8;
  o |= (n_402 & 0x01) << 9;
  o |= (n_406 & 0x01) << 10;
  o |= (n_410 & 0x01) << 11;
  o |= (n_419 & 0x01) << 12;
  return o;
}

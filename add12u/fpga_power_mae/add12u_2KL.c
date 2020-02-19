/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 3.59 %
// MAE = 294 
// WCE% = 9.83 %
// WCE = 805 
// WCRE% = 303.12 %
// EP% = 99.90 %
// MRE% = 10.05 %
// MSE = 126206 
// FPGA_POWER = 0.29
// FPGA_DELAY = 6.7
// FPGA_LUT = 3.0
#include <stdint.h>
#include <stdlib.h>

uint64_t add12u_2KL(uint64_t a, uint64_t b) {
  uint64_t o = 0;
  int n_415=0, n_410=0, n_419=0, n_23=0, n_22=0, n_21=0, n_20=0, n_24=0, n_29=0, n_86=0;
  int n_126=0, n_121=0, n_246=0, n_241=0, n_406=0, n_228=0, n_8=0, n_9=0, n_4=0, n_5=0;
  int n_6=0, n_7=0, n_0=0, n_1=0, n_2=0, n_3=0, n_18=0, n_19=0, n_16=0, n_17=0;
  int n_14=0, n_15=0, n_12=0, n_13=0, n_10=0, n_11=0, n_117=0, n_112=0, n_175=0, n_152=0;
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
  n_24 = ~(n_16 ^ n_16);
  n_29 = n_10 | n_22;
  n_86 = n_20 | n_8;
  n_112 = n_10 ^ n_22;
  n_117 = n_10 & n_22;
  n_121 = n_11 ^ n_23;
  n_126 = n_11 & n_23;
  n_152 = n_21 | n_86;
  n_175 = ~n_24;
  n_228 = n_152 | n_9;
  n_241 = n_228 & n_29;
  n_246 = n_241 | n_117;
  n_406 = n_112 ^ n_228;
  n_410 = n_121 ^ n_246;
  n_415 = n_121 & n_246;
  n_419 = n_126 | n_415;
  o |= (n_12 & 0x01) << 0;
  o |= (n_0 & 0x01) << 1;
  o |= (n_23 & 0x01) << 2;
  o |= (n_20 & 0x01) << 3;
  o |= (n_3 & 0x01) << 4;
  o |= (n_16 & 0x01) << 5;
  o |= (n_9 & 0x01) << 6;
  o |= (n_7 & 0x01) << 7;
  o |= (n_175 & 0x01) << 8;
  o |= (n_175 & 0x01) << 9;
  o |= (n_406 & 0x01) << 10;
  o |= (n_410 & 0x01) << 11;
  o |= (n_419 & 0x01) << 12;
  return o;
}

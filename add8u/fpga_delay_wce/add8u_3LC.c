/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.00 %
// MAE = 0 
// WCE% = 0.00 %
// WCE = 0 
// WCRE% = 0.00 %
// EP% = 0.00 %
// MRE% = 0.00 %
// MSE = 0 
// FPGA_POWER = 0.36
// FPGA_DELAY = 7.2
// FPGA_LUT = 11
#include <stdint.h>
#include <stdlib.h>

uint64_t add8u_3LC(uint64_t a, uint64_t b) {
  uint64_t o = 0;
  int n_199=0, n_194=0, n_118=0, n_37=0, n_21=0, n_46=0, n_26=0, n_43=0, n_151=0, n_48=0;
  int n_161=0, n_80=0, n_86=0, n_145=0, n_64=0, n_63=0, n_140=0, n_129=0, n_205=0, n_102=0;
  int n_107=0, n_183=0, n_188=0, n_8=0, n_9=0, n_4=0, n_5=0, n_6=0, n_7=0, n_0=0;
  int n_1=0, n_2=0, n_3=0, n_32=0, n_35=0, n_19=0, n_16=0, n_14=0, n_15=0, n_12=0;
  int n_13=0, n_10=0, n_11=0, n_172=0, n_97=0, n_59=0, n_91=0, n_53=0, n_178=0, n_113=0;
  int n_70=0, n_156=0, n_210=0, n_75=0, n_124=0, n_134=0;
  n_0 = (a >> 0) & 0x1;
  n_1 = (a >> 1) & 0x1;
  n_2 = (a >> 2) & 0x1;
  n_3 = (a >> 3) & 0x1;
  n_4 = (a >> 4) & 0x1;
  n_5 = (a >> 5) & 0x1;
  n_6 = (a >> 6) & 0x1;
  n_7 = (a >> 7) & 0x1;
  n_8 = (b >> 0) & 0x1;
  n_9 = (b >> 1) & 0x1;
  n_10 = (b >> 2) & 0x1;
  n_11 = (b >> 3) & 0x1;
  n_12 = (b >> 4) & 0x1;
  n_13 = (b >> 5) & 0x1;
  n_14 = (b >> 6) & 0x1;
  n_15 = (b >> 7) & 0x1;
  n_16 = n_0 ^ n_8;
  n_19 = n_11 | n_3;
  n_21 = n_0 & n_8;
  n_26 = n_1 ^ n_9;
  n_32 = n_1 & n_9;
  n_35 = n_6 | n_14;
  n_37 = n_26 & n_21;
  n_43 = n_26 ^ n_21;
  n_46 = n_10 | n_2;
  n_48 = n_32 | n_37;
  n_53 = n_2 ^ n_10;
  n_59 = n_2 & n_10;
  n_63 = n_14 & n_6;
  n_64 = n_46 & n_48;
  n_70 = n_53 ^ n_48;
  n_75 = n_59 | n_64;
  n_80 = n_3 ^ n_11;
  n_86 = n_3 & n_11;
  n_91 = n_19 & n_75;
  n_97 = n_80 ^ n_75;
  n_102 = n_86 | n_91;
  n_107 = n_4 ^ n_12;
  n_113 = n_4 & n_12;
  n_118 = n_107 & n_102;
  n_124 = n_107 ^ n_102;
  n_129 = n_113 | n_118;
  n_134 = n_5 ^ n_13;
  n_140 = n_5 & n_13;
  n_145 = n_134 & n_129;
  n_151 = n_134 ^ n_129;
  n_156 = n_140 | n_145;
  n_161 = n_6 ^ n_14;
  n_172 = n_35 & n_156;
  n_178 = n_161 ^ n_156;
  n_183 = n_63 | n_172;
  n_188 = n_7 ^ n_15;
  n_194 = n_7 & n_15;
  n_199 = n_188 & n_183;
  n_205 = n_188 ^ n_183;
  n_210 = n_194 | n_199;
  o |= (n_16 & 0x01) << 0;
  o |= (n_43 & 0x01) << 1;
  o |= (n_70 & 0x01) << 2;
  o |= (n_97 & 0x01) << 3;
  o |= (n_124 & 0x01) << 4;
  o |= (n_151 & 0x01) << 5;
  o |= (n_178 & 0x01) << 6;
  o |= (n_205 & 0x01) << 7;
  o |= (n_210 & 0x01) << 8;
  return o;
}

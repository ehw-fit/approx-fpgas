/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.098 %
// MAE = 0.5 
// WCE% = 0.20 %
// WCE = 1.0 
// WCRE% = 100.00 %
// EP% = 50.00 %
// MRE% = 0.27 %
// MSE = 0.5 
// FPGA_POWER = 0.34
// FPGA_DELAY = 7.8
// FPGA_LUT = 7.0
#include <stdint.h>
#include <stdlib.h>

uint64_t add8u_0EE(uint64_t a, uint64_t b) {
  uint64_t o = 0;
  int n_196=0, n_190=0, n_155=0, n_22=0, n_47=0, n_41=0, n_98=0, n_25=0, n_127=0, n_28=0;
  int n_200=0, n_162=0, n_85=0, n_149=0, n_89=0, n_63=0, n_60=0, n_193=0, n_203=0, n_206=0;
  int n_209=0, n_101=0, n_120=0, n_104=0, n_171=0, n_158=0, n_8=0, n_9=0, n_184=0, n_4=0;
  int n_5=0, n_6=0, n_7=0, n_0=0, n_1=0, n_2=0, n_3=0, n_31=0, n_117=0, n_35=0;
  int n_111=0, n_38=0, n_165=0, n_14=0, n_15=0, n_12=0, n_13=0, n_10=0, n_11=0, n_114=0;
  int n_95=0, n_92=0, n_79=0, n_174=0, n_44=0, n_50=0, n_56=0, n_57=0, n_54=0, n_212=0;
  int n_136=0, n_177=0;
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
  n_22 = n_1 ^ n_9;
  n_25 = n_1 & n_9;
  n_28 = n_2 ^ n_10;
  n_31 = n_2 & n_10;
  n_35 = n_3 ^ n_11;
  n_38 = n_3 & n_11;
  n_41 = n_4 ^ n_12;
  n_44 = n_4 & n_12;
  n_47 = n_5 ^ n_13;
  n_50 = n_5 & n_13;
  n_54 = n_6 ^ n_14;
  n_56 = n_7 | n_15;
  n_57 = n_6 & n_14;
  n_60 = n_7 ^ n_15;
  n_63 = n_7 & n_15;
  n_79 = n_28 & n_25;
  n_85 = n_35 & n_31;
  n_89 = n_35 & n_79;
  n_92 = n_38 | n_85;
  n_95 = n_41 & n_92;
  n_98 = n_41 & n_89;
  n_101 = n_44 | n_95;
  n_104 = n_47 & n_44;
  n_111 = n_50 | n_104;
  n_114 = n_54 & n_50;
  n_117 = n_54 & n_47;
  n_120 = n_57 | n_114;
  n_127 = n_31 | n_79;
  n_136 = ~(n_92 | n_89);
  n_149 = n_47 & n_95;
  n_155 = n_111 | n_149;
  n_158 = n_117 & n_101;
  n_162 = n_117 & n_98;
  n_165 = n_120 | n_158;
  n_171 = n_101 | n_98;
  n_174 = n_47 & n_98;
  n_177 = ~(n_155 | n_174);
  n_184 = n_165 | n_162;
  n_190 = n_28 ^ n_25;
  n_193 = n_35 ^ n_127;
  n_196 = ~(n_41 ^ n_136);
  n_200 = n_47 ^ n_171;
  n_203 = ~(n_54 ^ n_177);
  n_206 = n_60 ^ n_184;
  n_209 = n_56 & n_184;
  n_212 = n_63 | n_209;
  o |= (n_0 & 0x01) << 0;
  o |= (n_22 & 0x01) << 1;
  o |= (n_190 & 0x01) << 2;
  o |= (n_193 & 0x01) << 3;
  o |= (n_196 & 0x01) << 4;
  o |= (n_200 & 0x01) << 5;
  o |= (n_203 & 0x01) << 6;
  o |= (n_206 & 0x01) << 7;
  o |= (n_212 & 0x01) << 8;
  return o;
}

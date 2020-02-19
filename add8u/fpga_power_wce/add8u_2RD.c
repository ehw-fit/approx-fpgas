/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 1.62 %
// MAE = 8.3 
// WCE% = 4.49 %
// WCE = 23 
// WCRE% = 1900.00 %
// EP% = 96.88 %
// MRE% = 4.54 %
// MSE = 99 
// FPGA_POWER = 0.29
// FPGA_DELAY = 6.9
// FPGA_LUT = 4.0
#include <stdint.h>
#include <stdlib.h>

uint64_t add8u_2RD(uint64_t a, uint64_t b) {
  uint64_t o = 0;
  int n_25=0, n_195=0, n_21=0, n_20=0, n_43=0, n_42=0, n_80=0, n_64=0, n_60=0, n_109=0;
  int n_203=0, n_175=0, n_126=0, n_105=0, n_181=0, n_8=0, n_9=0, n_4=0, n_5=0, n_6=0;
  int n_7=0, n_0=0, n_1=0, n_2=0, n_3=0, n_35=0, n_14=0, n_15=0, n_12=0, n_13=0;
  int n_10=0, n_11=0, n_171=0, n_113=0, n_77=0, n_56=0, n_73=0, n_207=0, n_211=0, n_134=0;
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
  n_20 = ~(n_4 & n_3);
  n_21 = n_6 & n_14;
  n_25 = ~(n_13 ^ n_13);
  n_35 = ~(n_12 & n_11);
  n_42 = ~(n_35 | n_20);
  n_43 = n_13 | n_5;
  n_56 = n_5 ^ n_13;
  n_60 = n_5 & n_13;
  n_64 = n_6 ^ n_14;
  n_73 = n_7 ^ n_15;
  n_77 = n_7 & n_15;
  n_80 = n_7 | n_15;
  n_105 = n_64 & n_60;
  n_109 = n_64 & n_43;
  n_113 = n_21 | n_105;
  n_126 = n_109 & n_42;
  n_134 = n_113 | n_126;
  n_171 = n_43 & n_42;
  n_175 = n_60 | n_171;
  n_181 = n_64 ^ n_175;
  n_195 = n_56 ^ n_42;
  n_203 = n_73 ^ n_134;
  n_207 = n_80 & n_134;
  n_211 = n_77 | n_207;
  o |= (n_12 & 0x01) << 0;
  o |= (n_12 & 0x01) << 1;
  o |= (n_25 & 0x01) << 2;
  o |= (n_4 & 0x01) << 3;
  o |= (n_25 & 0x01) << 4;
  o |= (n_195 & 0x01) << 5;
  o |= (n_181 & 0x01) << 6;
  o |= (n_203 & 0x01) << 7;
  o |= (n_211 & 0x01) << 8;
  return o;
}

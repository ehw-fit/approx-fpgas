/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 7.80 %
// MAE = 1308672 
// WCE% = 31.20 %
// WCE = 5234689 
// WCRE% = 100.00 %
// EP% = 99.95 %
// MRE% = 53.70 %
// MSE = 24064.241e8 
// FPGA_POWER = 0.27
// FPGA_DELAY = 6.4
// FPGA_LUT = 4.0
#include <stdint.h>
#include <stdlib.h>

uint32_t mul12u_2E5(uint16_t A, uint16_t B)
{
  uint32_t P, P_;
  uint16_t tmp, C_10_10,C_11_10,C_11_9,S_10_10,S_10_11,S_11_10,S_11_11,S_11_9,S_12_10,S_12_11,S_12_8,S_12_9,S_9_11;
  S_9_11 = (((A>>9)&1) & ((B>>11)&1));
  S_10_10 = S_9_11^(((A>>10)&1) & ((B>>10)&1));
  C_10_10 = S_9_11&(((A>>10)&1) & ((B>>10)&1));
  S_10_11 = (((A>>10)&1) & ((B>>11)&1));
  S_11_9 = S_10_10^(((A>>11)&1) & ((B>>9)&1));
  C_11_9 = S_10_10&(((A>>11)&1) & ((B>>9)&1));
  tmp = S_10_11^C_10_10;
  S_11_10 = tmp^(((A>>11)&1) & ((B>>10)&1));
  C_11_10 = (tmp&(((A>>11)&1) & ((B>>10)&1)))|(S_10_11&C_10_10);
  S_11_11 = (((A>>11)&1) & ((B>>11)&1));
  P_ = (((C_11_9 & 1)<<1)|((C_11_10 & 1)<<2)) + (((S_11_9 & 1)<<0)|((S_11_10 & 1)<<1)|((S_11_11 & 1)<<2));
  S_12_8 = (P_ >> 0) & 1;
  S_12_9 = (P_ >> 1) & 1;
  S_12_10 = (P_ >> 2) & 1;
  S_12_11 = (P_ >> 3) & 1;
  P = 0;
  P |= (S_12_8 & 1) << 20;
  P |= (S_12_9 & 1) << 21;
  P |= (S_12_10 & 1) << 22;
  P |= (S_12_11 & 1) << 23;
  return P;
}

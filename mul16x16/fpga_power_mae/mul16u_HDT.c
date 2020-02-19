/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 5.86 %
// MAE = 251625472 
// WCE% = 23.43 %
// WCE = 1006501889 
// WCRE% = 100.00 %
// EP% = 100.00 %
// MRE% = 43.16 %
// MSE = 91115.598e12 
// FPGA_POWER = 0.28
// FPGA_DELAY = 6.8
// FPGA_LUT = 5.0
#include <stdint.h>
#include <stdlib.h>

uint32_t mul16u_HDT(uint16_t A, uint16_t B)
{
  uint32_t P, P_;
  uint16_t tmp, C_14_13,C_14_14,C_15_13,C_15_14,S_13_13,S_13_14,S_13_15,S_14_12,S_14_13,S_14_14,S_14_15,S_15_11,S_15_12,S_15_13,S_15_14,S_15_15,S_16_10,S_16_11,S_16_12,S_16_13,S_16_14,S_16_15;
  S_13_13 = (((A>>13)&1) & ((B>>13)&1));
  S_13_14 = (((A>>13)&1) & ((B>>14)&1));
  S_13_15 = (((A>>13)&1) & ((B>>15)&1));
  S_14_12 = S_13_13;
  S_14_13 = S_13_14^(((A>>14)&1) & ((B>>13)&1));
  C_14_13 = S_13_14&(((A>>14)&1) & ((B>>13)&1));
  S_14_14 = S_13_15^(((A>>14)&1) & ((B>>14)&1));
  C_14_14 = S_13_15&(((A>>14)&1) & ((B>>14)&1));
  S_14_15 = (((A>>14)&1) & ((B>>15)&1));
  S_15_11 = S_14_12;
  S_15_12 = S_14_13;
  tmp = S_14_14^C_14_13;
  S_15_13 = tmp^(((A>>15)&1) & ((B>>13)&1));
  C_15_13 = (tmp&(((A>>15)&1) & ((B>>13)&1)))|(S_14_14&C_14_13);
  tmp = S_14_15^C_14_14;
  S_15_14 = tmp^(((A>>15)&1) & ((B>>14)&1));
  C_15_14 = (tmp&(((A>>15)&1) & ((B>>14)&1)))|(S_14_15&C_14_14);
  S_15_15 = (((A>>15)&1) & ((B>>15)&1));
  S_16_10 = S_15_11;
  S_16_11 = S_15_12;
  S_16_12 = S_15_13;
  P_ = (((C_15_13 & 1)<<0)|((C_15_14 & 1)<<1)) + (((S_15_14 & 1)<<0)|((S_15_15 & 1)<<1));
  S_16_13 = (P_ >> 0) & 1;
  S_16_14 = (P_ >> 1) & 1;
  S_16_15 = (P_ >> 2) & 1;
  P = 0;
  P |= (S_16_10 & 1) << 26;
  P |= (S_16_11 & 1) << 27;
  P |= (S_16_12 & 1) << 28;
  P |= (S_16_13 & 1) << 29;
  P |= (S_16_14 & 1) << 30;
  P |= (S_16_15 & 1) << 31;
  return P;
}

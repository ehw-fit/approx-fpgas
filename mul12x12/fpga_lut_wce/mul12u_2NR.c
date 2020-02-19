/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 15.61 %
// MAE = 2619392 
// WCE% = 62.45 %
// WCE = 10477569 
// WCRE% = 100.00 %
// EP% = 99.95 %
// MRE% = 79.47 %
// MSE = 10920.526e9 
// FPGA_POWER = 0.25
// FPGA_DELAY = 6.3
// FPGA_LUT = 1.0
#include <stdint.h>
#include <stdlib.h>

uint32_t mul12u_2NR(uint16_t A, uint16_t B)
{
  uint32_t P, P_;
  uint16_t tmp, S_11_10,S_11_11,S_12_10,S_12_11,S_12_9;
  S_11_10 = (((A>>11)&1) & ((B>>10)&1));
  S_11_11 = (((A>>11)&1) & ((B>>11)&1));
  S_12_9 = S_11_10;
  S_12_10 = S_11_11;
  S_12_11 = 0;
  P = 0;
  P |= (S_12_9 & 1) << 21;
  P |= (S_12_10 & 1) << 22;
  P |= (S_12_11 & 1) << 23;
  return P;
}

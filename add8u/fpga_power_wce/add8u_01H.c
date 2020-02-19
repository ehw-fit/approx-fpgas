/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 18.87 %
// MAE = 97 
// WCE% = 54.69 %
// WCE = 280 
// WCRE% = 200.00 %
// EP% = 99.71 %
// MRE% = 45.94 %
// MSE = 13848 
// FPGA_POWER = 0.26
// FPGA_DELAY = 4.9
// FPGA_LUT = 0
#include <stdint.h>
#include <stdlib.h>

uint64_t add8u_01H(uint64_t a, uint64_t b) {
  int wa[8];
  int wb[8];
  uint64_t y = 0;
  wa[0] = (a >> 0) & 0x01;
  wb[0] = (b >> 0) & 0x01;
  wa[1] = (a >> 1) & 0x01;
  wb[1] = (b >> 1) & 0x01;
  wa[2] = (a >> 2) & 0x01;
  wb[2] = (b >> 2) & 0x01;
  wa[3] = (a >> 3) & 0x01;
  wb[3] = (b >> 3) & 0x01;
  wa[4] = (a >> 4) & 0x01;
  wb[4] = (b >> 4) & 0x01;
  wa[5] = (a >> 5) & 0x01;
  wb[5] = (b >> 5) & 0x01;
  wa[6] = (a >> 6) & 0x01;
  wb[6] = (b >> 6) & 0x01;
  wa[7] = (a >> 7) & 0x01;
  wb[7] = (b >> 7) & 0x01;
  int sig_27 = wb[4];
  int sig_34 = 0;
  int sig_50 = 0;
  y |=  (sig_34 & 0x01) << 0; // default output
  y |=  (wb[3] & 0x01) << 1; // default output
  y |=  (sig_27 & 0x01) << 2; // default output
  y |=  (sig_50 & 0x01) << 3; // default output
  y |=  (sig_34 & 0x01) << 4; // default output
  y |=  (wb[5] & 0x01) << 5; // default output
  y |=  (wa[6] & 0x01) << 6; // default output
  y |=  (wa[6] & 0x01) << 7; // default output
  y |=  (wa[7] & 0x01) << 8; // default output
   return y;
}

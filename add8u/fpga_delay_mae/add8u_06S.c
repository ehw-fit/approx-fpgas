/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 6.48 %
// MAE = 33 
// WCE% = 17.77 %
// WCE = 91 
// WCRE% = 125.00 %
// EP% = 99.22 %
// MRE% = 16.90 %
// MSE = 1520 
// FPGA_POWER = 0.28
// FPGA_DELAY = 5.8
// FPGA_LUT = 2.0
#include <stdint.h>
#include <stdlib.h>

uint64_t add8u_06S(uint64_t a, uint64_t b) {
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
  int sig_36 = ~((int)0);
  int sig_48 = wa[7] ^ wb[7];
  int sig_49 = wa[7] & wb[7];
  int sig_50 = sig_48 & wa[6];
  int sig_51 = sig_48 ^ wa[6];
  int sig_52 = sig_49 | sig_50;
  y |=  (sig_36 & 0x01) << 0; // default output
  y |=  (wb[7] & 0x01) << 1; // default output
  y |=  (sig_48 & 0x01) << 2; // default output
  y |=  (wa[2] & 0x01) << 3; // default output
  y |=  (wa[5] & 0x01) << 4; // default output
  y |=  (wb[4] & 0x01) << 5; // default output
  y |=  (wb[6] & 0x01) << 6; // default output
  y |=  (sig_51 & 0x01) << 7; // default output
  y |=  (sig_52 & 0x01) << 8; // default output
   return y;
}

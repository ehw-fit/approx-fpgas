/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 3.24 %
// MAE = 4252 
// WCE% = 9.06 %
// WCE = 11881 
// WCRE% = 300.00 %
// EP% = 99.99 %
// MRE% = 8.89 %
// MSE = 24918.624e3 
// FPGA_POWER = 0.32
// FPGA_DELAY = 6.4
// FPGA_LUT = 3.0
#include <stdint.h>
#include <stdlib.h>

uint64_t add16u_0K9(uint64_t a, uint64_t b) {
  int wa[16];
  int wb[16];
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
  wa[8] = (a >> 8) & 0x01;
  wb[8] = (b >> 8) & 0x01;
  wa[9] = (a >> 9) & 0x01;
  wb[9] = (b >> 9) & 0x01;
  wa[10] = (a >> 10) & 0x01;
  wb[10] = (b >> 10) & 0x01;
  wa[11] = (a >> 11) & 0x01;
  wb[11] = (b >> 11) & 0x01;
  wa[12] = (a >> 12) & 0x01;
  wb[12] = (b >> 12) & 0x01;
  wa[13] = (a >> 13) & 0x01;
  wb[13] = (b >> 13) & 0x01;
  wa[14] = (a >> 14) & 0x01;
  wb[14] = (b >> 14) & 0x01;
  wa[15] = (a >> 15) & 0x01;
  wb[15] = (b >> 15) & 0x01;
  int sig_62 = wb[13];
  int sig_67 = wa[4];
  int sig_92 = 0;
  int sig_99 = wa[14] ^ wb[14];
  int sig_100 = wa[14] & wb[14];
  int sig_101 = sig_99 & wa[13];
  int sig_102 = sig_99 ^ wa[13];
  int sig_103 = sig_100 | sig_101;
  int sig_104 = wa[15] ^ wb[15];
  int sig_105 = wa[15] & wb[15];
  int sig_106 = sig_104 & sig_103;
  int sig_107 = sig_104 ^ sig_103;
  int sig_108 = sig_105 | sig_106;
  y |=  (wb[11] & 0x01) << 0; // default output
  y |=  (sig_107 & 0x01) << 1; // default output
  y |=  (sig_104 & 0x01) << 2; // default output
  y |=  (wb[13] & 0x01) << 3; // default output
  y |=  (wa[2] & 0x01) << 4; // default output
  y |=  (sig_67 & 0x01) << 5; // default output
  y |=  (sig_99 & 0x01) << 6; // default output
  y |=  (wa[11] & 0x01) << 7; // default output
  y |=  (sig_92 & 0x01) << 8; // default output
  y |=  (sig_99 & 0x01) << 9; // default output
  y |=  (wa[8] & 0x01) << 10; // default output
  y |=  (wa[15] & 0x01) << 11; // default output
  y |=  (wb[12] & 0x01) << 12; // default output
  y |=  (sig_62 & 0x01) << 13; // default output
  y |=  (sig_102 & 0x01) << 14; // default output
  y |=  (sig_107 & 0x01) << 15; // default output
  y |=  (sig_108 & 0x01) << 16; // default output
   return y;
}

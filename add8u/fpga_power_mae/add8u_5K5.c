/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.039 %
// MAE = 0.2 
// WCE% = 0.20 %
// WCE = 1.0 
// WCRE% = 50.00 %
// EP% = 25.00 %
// MRE% = 0.14 %
// MSE = 0.2 
// FPGA_POWER = 0.34
// FPGA_DELAY = 7.4
// FPGA_LUT = 12
#include <stdint.h>
#include <stdlib.h>

uint16_t add8u_5K5(uint8_t a, uint8_t b)
{
  uint16_t c = 0;
  uint8_t n0 = (a >> 0) & 0x1;
  uint8_t n2 = (a >> 1) & 0x1;
  uint8_t n4 = (a >> 2) & 0x1;
  uint8_t n6 = (a >> 3) & 0x1;
  uint8_t n8 = (a >> 4) & 0x1;
  uint8_t n10 = (a >> 5) & 0x1;
  uint8_t n12 = (a >> 6) & 0x1;
  uint8_t n14 = (a >> 7) & 0x1;
  uint8_t n16 = (b >> 0) & 0x1;
  uint8_t n18 = (b >> 1) & 0x1;
  uint8_t n20 = (b >> 2) & 0x1;
  uint8_t n22 = (b >> 3) & 0x1;
  uint8_t n24 = (b >> 4) & 0x1;
  uint8_t n26 = (b >> 5) & 0x1;
  uint8_t n28 = (b >> 6) & 0x1;
  uint8_t n30 = (b >> 7) & 0x1;
  uint8_t n32;
  uint8_t n40;
  uint8_t n41;
  uint8_t n50;
  uint8_t n51;
  uint8_t n58;
  uint8_t n59;
  uint8_t n68;
  uint8_t n69;
  uint8_t n78;
  uint8_t n86;
  uint8_t n87;
  uint8_t n88;
  uint8_t n96;
  uint8_t n97;
  uint8_t n106;
  uint8_t n110;
  uint8_t n111;
  uint8_t n125;
  uint8_t n134;
  uint8_t n143;
  uint8_t n152;
  uint8_t n162;
  uint8_t n170;
  uint8_t n180;
  uint8_t n198;
  uint8_t n199;
  uint8_t n208;
  uint8_t n226;
  uint8_t n227;
  uint8_t n236;
  uint8_t n245;
  uint8_t n254;
  uint8_t n293;
  uint8_t n320;
  uint8_t n329;
  uint8_t n338;
  uint8_t n348;
  uint8_t n366;
  uint8_t n376;
  uint8_t n384;
  uint8_t n394;
  uint8_t n404;
  uint8_t n412;
  uint8_t n413;
  uint8_t n422;

  n32 = n0 | n16;
  n40 = n2 ^ n18;
  n41 = n2 & n18;
  n50 = n4 ^ n20;
  n51 = n4 & n20;
  n58 = n6 ^ n22;
  n59 = n6 & n22;
  n68 = n8 ^ n24;
  n69 = n8 & n24;
  n78 = n10 ^ n26;
  n86 = n12 ^ n28;
  n87 = n12 & n28;
  n88 = n24 | n8;
  n96 = n14 ^ n30;
  n97 = n14 & n30;
  n106 = n50 & n41;
  n110 = n10 & n26;
  n111 = n10 & n26;
  n125 = n51 | n106;
  n134 = n88 & n59;
  n143 = n68 & n58;
  n152 = n69 | n134;
  n162 = n86 & n110;
  n170 = n86 & n78;
  n180 = n87 | n162;
  n198 = n125;
  n199 = n125;
  n208 = n143 & n125;
  n226 = n152 | n208;
  n227 = n152 | n208;
  n236 = n170 & n152;
  n245 = n170 & n208;
  n254 = n180 | n236;
  n293 = n254 | n245;
  n320 = n58 & n199;
  n329 = n59 | n320;
  n338 = n78 & n227;
  n348 = n111 | n338;
  n366 = n50 ^ n41;
  n376 = n58 ^ n198;
  n384 = n68 ^ n329;
  n394 = n78 ^ n226;
  n404 = n86 ^ n348;
  n412 = n96 ^ n293;
  n413 = n96 & n293;
  n422 = n97 | n413;

  c |= (n32 & 0x1) << 0;
  c |= (n40 & 0x1) << 1;
  c |= (n366 & 0x1) << 2;
  c |= (n376 & 0x1) << 3;
  c |= (n384 & 0x1) << 4;
  c |= (n394 & 0x1) << 5;
  c |= (n404 & 0x1) << 6;
  c |= (n412 & 0x1) << 7;
  c |= (n422 & 0x1) << 8;

  return c;
}

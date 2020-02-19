/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 7.51 %
// MAE = 4924 
// WCE% = 25.01 %
// WCE = 16388 
// WCRE% = 100.10 %
// EP% = 99.22 %
// MRE% = 59.60 %
// MSE = 38114.505e3 
// FPGA_POWER = 0.26
// FPGA_DELAY = 6.2
// FPGA_LUT = 1.0
#include <stdint.h>
#include <stdlib.h>

uint64_t mul8u_17A6(const uint64_t B,const uint64_t A)
{
   uint64_t O, dout_78, dout_218, dout_296, dout_298, dout_299, dout_305, dout_318, dout_411, dout_504;   int avg=0;

   dout_78=((B >> 6)&1)&((A >> 7)&1);
   dout_218=((B >> 7)&1)^dout_78;
   dout_296=dout_218^((A >> 6)&1);
   dout_298=((A >> 7)&1)&((B >> 7)&1);
   dout_299=((B >> 7)&1)^((A >> 6)&1);
   dout_305=((B >> 7)&1)&dout_218;
   dout_318=dout_299|dout_305;
   dout_411=dout_298|dout_296;
   dout_504=dout_318^dout_411;

   O = 0;
   O |= (0&1) << 0;
   O |= (0&1) << 1;
   O |= (dout_298&1) << 2;
   O |= (dout_504&1) << 3;
   O |= (0&1) << 4;
   O |= (0&1) << 5;
   O |= (0&1) << 6;
   O |= (0&1) << 7;
   O |= (0&1) << 8;
   O |= (0&1) << 9;
   O |= (0&1) << 10;
   O |= (0&1) << 11;
   O |= (0&1) << 12;
   O |= (0&1) << 13;
   O |= (dout_504&1) << 14;
   O |= (dout_298&1) << 15;
   return O;
}

/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 4.16 %
// MAE = 2728 
// WCE% = 15.19 %
// WCE = 9953 
// WCRE% = 100.00 %
// EP% = 99.20 %
// MRE% = 41.93 %
// MSE = 11489.87e3 
// FPGA_POWER = 0.28
// FPGA_DELAY = 6.2
// FPGA_LUT = 5.0
#include <stdint.h>
#include <stdlib.h>

uint64_t mul8u_L42(const uint64_t B,const uint64_t A)
{
   uint64_t O, dout_117, dout_207, dout_253, dout_285, dout_286, dout_288, dout_289, dout_296, dout_297, dout_298, dout_326, dout_327, dout_328, dout_329, dout_330, dout_331, dout_333, dout_334, dout_335;   int avg=0;

   dout_117=((B >> 6)&1)&((A >> 6)&1);
   dout_207=((B >> 7)&1)&((A >> 5)&1);
   dout_253=((B >> 7)&1)&((A >> 6)&1);
   dout_285=dout_253&((A >> 5)&1);
   dout_286=dout_207|dout_253;
   dout_288=((A >> 7)&1)&dout_285;
   dout_289=dout_286^dout_285;
   dout_296=((B >> 5)&1)&((A >> 7)&1);
   dout_297=((B >> 6)&1)&((A >> 7)&1);
   dout_298=((B >> 7)&1)&((A >> 7)&1);
   dout_326=dout_289^dout_297;
   dout_327=dout_289&dout_297;
   dout_328=dout_326&dout_296;
   dout_329=dout_326^dout_296;
   dout_330=dout_327|dout_328;
   dout_331=dout_285^dout_298;
   dout_333=((B >> 7)&1)&dout_330;
   dout_334=dout_331^dout_330;
   dout_335=dout_288|dout_333;

   O = 0;
   O |= (0&1) << 0;
   O |= (0&1) << 1;
   O |= (0&1) << 2;
   O |= (0&1) << 3;
   O |= (0&1) << 4;
   O |= (0&1) << 5;
   O |= (0&1) << 6;
   O |= (0&1) << 7;
   O |= (0&1) << 8;
   O |= (dout_117&1) << 9;
   O |= (dout_298&1) << 10;
   O |= (dout_117&1) << 11;
   O |= (dout_117&1) << 12;
   O |= (dout_329&1) << 13;
   O |= (dout_334&1) << 14;
   O |= (dout_335&1) << 15;
   return O;
}

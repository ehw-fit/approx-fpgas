/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 3.75 %
// MAE = 2456 
// WCE% = 13.58 %
// WCE = 8897 
// WCRE% = 100.00 %
// EP% = 99.21 %
// MRE% = 40.54 %
// MSE = 92693.902e2 
// FPGA_POWER = 0.27
// FPGA_DELAY = 6.2
// FPGA_LUT = 4.0
#include <stdint.h>
#include <stdlib.h>

uint64_t mul8u_17L5(const uint64_t B,const uint64_t A)
{
   uint64_t O, dout_214, dout_224, dout_225, dout_252, dout_267, dout_268, dout_299, dout_300, dout_301, dout_302, dout_303, dout_323, dout_324, dout_325, dout_327, dout_328, dout_329, dout_330, dout_331, dout_332, dout_340;   int avg=0;

   dout_214=((B >> 7)&1)&((A >> 5)&1);
   dout_224=((B >> 6)&1)&((A >> 6)&1);
   dout_225=((B >> 7)&1)&((A >> 6)&1);
   dout_252=((A >> 7)&1)&((B >> 5)&1);
   dout_267=((B >> 6)&1)&((A >> 7)&1);
   dout_268=((B >> 7)&1)&((A >> 7)&1);
   dout_299=dout_225^dout_267;
   dout_300=dout_225&dout_267;
   dout_301=dout_299&dout_214;
   dout_302=dout_299^dout_214;
   dout_303=dout_300|dout_301;
   dout_323=dout_302^dout_252;
   dout_324=dout_302&dout_252;
   dout_325=dout_323&dout_224;
   dout_327=dout_324|dout_325;
   dout_328=dout_268^dout_303;
   dout_329=((A >> 7)&1)&dout_303;
   dout_330=dout_328&dout_324;
   dout_331=dout_328^dout_327;
   dout_332=dout_329|dout_330;
   dout_340=dout_323^dout_224;

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
   O |= (0&1) << 9;
   O |= (0&1) << 10;
   O |= (dout_299&1) << 11;
   O |= (0&1) << 12;
   O |= (dout_340&1) << 13;
   O |= (dout_331&1) << 14;
   O |= (dout_332&1) << 15;
   return O;
}

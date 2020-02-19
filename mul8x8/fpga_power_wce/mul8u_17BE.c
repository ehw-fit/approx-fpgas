/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 2.27 %
// MAE = 1491 
// WCE% = 9.32 %
// WCE = 6109 
// WCRE% = 366.41 %
// EP% = 99.20 %
// MRE% = 28.93 %
// MSE = 35240.883e2 
// FPGA_POWER = 0.33
// FPGA_DELAY = 7.7
// FPGA_LUT = 10
#include <stdint.h>
#include <stdlib.h>

uint64_t mul8u_17BE(const uint64_t B,const uint64_t A)
{
   uint64_t O, dout_16, dout_153, dout_155, dout_163, dout_200, dout_207, dout_208, dout_236, dout_237, dout_241, dout_244, dout_251, dout_252, dout_253, dout_277, dout_281, dout_282, dout_283, dout_284, dout_285, dout_286, dout_287, dout_288, dout_289, dout_290, dout_295, dout_296, dout_297, dout_298, dout_321, dout_322, dout_323, dout_324, dout_325, dout_326, dout_327, dout_328, dout_329, dout_330, dout_331, dout_332, dout_333, dout_334, dout_335;   int avg=0;

   dout_16=((B >> 7)&1)&((A >> 5)&1);
   dout_153=((A >> 6)&1)&((B >> 5)&1);
   dout_155=dout_16|dout_153;
   dout_163=((B >> 7)&1)&((A >> 4)&1);
   dout_200=dout_155|dout_163;
   dout_207=((B >> 3)&1)&((A >> 5)&1);
   dout_208=((B >> 7)&1)&((A >> 5)&1);
   dout_236=dout_163|((A >> 5)&1);
   dout_237=((A >> 4)&1)&((B >> 6)&1);
   dout_241=dout_200^dout_208;
   dout_244=dout_241|dout_237;
   dout_251=((B >> 5)&1)&((A >> 6)&1);
   dout_252=((B >> 6)&1)&((A >> 6)&1);
   dout_253=((B >> 7)&1)&((A >> 6)&1);
   dout_277=dout_236&dout_251;
   dout_281=dout_244^dout_252;
   dout_282=dout_244&dout_252;
   dout_283=dout_281&dout_277;
   dout_284=dout_281^dout_277;
   dout_285=dout_282|dout_283;
   dout_286=dout_208^dout_253;
   dout_287=((A >> 5)&1)&dout_253;
   dout_288=((B >> 7)&1)&dout_285;
   dout_289=dout_286^dout_285;
   dout_290=dout_287|dout_288;
   dout_295=((B >> 4)&1)&((A >> 7)&1);
   dout_296=((B >> 5)&1)&((A >> 7)&1);
   dout_297=((B >> 6)&1)&((A >> 7)&1);
   dout_298=((B >> 7)&1)&((A >> 7)&1);
   dout_321=dout_284^dout_296;
   dout_322=dout_284&dout_296;
   dout_323=dout_321&dout_295;
   dout_324=dout_321^dout_295;
   dout_325=dout_322|dout_323;
   dout_326=dout_289^dout_297;
   dout_327=dout_289&dout_297;
   dout_328=dout_326&dout_325;
   dout_329=dout_326^dout_325;
   dout_330=dout_327|dout_328;
   dout_331=dout_290^dout_298;
   dout_332=dout_290&((A >> 7)&1);
   dout_333=((B >> 7)&1)&dout_330;
   dout_334=dout_331^dout_330;
   dout_335=dout_332|dout_333;

   O = 0;
   O |= (dout_331&1) << 0;
   O |= (0&1) << 1;
   O |= (dout_329&1) << 2;
   O |= (dout_237&1) << 3;
   O |= (0&1) << 4;
   O |= (dout_237&1) << 5;
   O |= (0&1) << 6;
   O |= (dout_237&1) << 7;
   O |= (0&1) << 8;
   O |= (dout_237&1) << 9;
   O |= (dout_207&1) << 10;
   O |= (0&1) << 11;
   O |= (dout_324&1) << 12;
   O |= (dout_329&1) << 13;
   O |= (dout_334&1) << 14;
   O |= (dout_335&1) << 15;
   return O;
}

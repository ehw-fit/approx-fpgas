/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 1.17 %
// MAE = 765 
// WCE% = 5.18 %
// WCE = 3395 
// WCRE% = 150.20 %
// EP% = 99.17 %
// MRE% = 18.02 %
// MSE = 903134 
// FPGA_POWER = 0.42
// FPGA_DELAY = 8.4
// FPGA_LUT = 16
#include <stdint.h>
#include <stdlib.h>

uint64_t mul8u_7T1(const uint64_t B,const uint64_t A)
{
   uint64_t O, dout_65, dout_117, dout_154, dout_163, dout_206, dout_207, dout_208, dout_227, dout_236, dout_237, dout_238, dout_239, dout_240, dout_241, dout_242, dout_243, dout_244, dout_245, dout_250, dout_251, dout_252, dout_253, dout_271, dout_276, dout_277, dout_278, dout_279, dout_280, dout_281, dout_282, dout_283, dout_284, dout_285, dout_286, dout_287, dout_288, dout_289, dout_290, dout_294, dout_295, dout_296, dout_297, dout_298, dout_316, dout_317, dout_318, dout_319, dout_320, dout_321, dout_322, dout_323, dout_324, dout_325, dout_326, dout_327, dout_328, dout_329, dout_330, dout_331, dout_332, dout_333, dout_334, dout_335;   int avg=0;

   dout_65=((A >> 4)&1)&((B >> 7)&1);
   dout_117=((B >> 7)&1)&((A >> 3)&1);
   dout_154=dout_65^dout_117;
   dout_163=((A >> 3)&1)&dout_65;
   dout_206=((B >> 5)&1)&((A >> 5)&1);
   dout_207=((B >> 6)&1)&((A >> 4)&1);
   dout_208=((B >> 7)&1)&((A >> 5)&1);
   dout_227=((B >> 6)&1)&((A >> 5)&1);
   dout_236=dout_154^dout_207;
   dout_237=dout_154&dout_207;
   dout_238=dout_236&dout_227;
   dout_239=dout_236^dout_227;
   dout_240=dout_237|dout_238;
   dout_241=dout_163^dout_208;
   dout_242=dout_163&dout_208;
   dout_243=dout_208&dout_240;
   dout_244=dout_241^dout_240;
   dout_245=dout_242|dout_243;
   dout_250=((B >> 4)&1)&((A >> 6)&1);
   dout_251=((B >> 5)&1)&((A >> 6)&1);
   dout_252=((B >> 6)&1)&((A >> 6)&1);
   dout_253=((B >> 7)&1)&((A >> 6)&1);
   dout_271=dout_206|dout_250;
   dout_276=dout_239^dout_251;
   dout_277=dout_239&dout_251;
   dout_278=dout_276&dout_271;
   dout_279=dout_276^dout_271;
   dout_280=dout_277|dout_278;
   dout_281=dout_244^dout_252;
   dout_282=dout_244&dout_252;
   dout_283=dout_281&dout_280;
   dout_284=dout_281^dout_280;
   dout_285=dout_282|dout_283;
   dout_286=dout_245^dout_253;
   dout_287=dout_245&((A >> 6)&1);
   dout_288=dout_253&dout_285;
   dout_289=dout_286^dout_285;
   dout_290=dout_287|dout_288;
   dout_294=((B >> 3)&1)&((A >> 7)&1);
   dout_295=((B >> 4)&1)&((A >> 7)&1);
   dout_296=((B >> 5)&1)&((A >> 7)&1);
   dout_297=((B >> 6)&1)&((A >> 7)&1);
   dout_298=((B >> 7)&1)&((A >> 7)&1);
   dout_316=dout_279^dout_295;
   dout_317=dout_279&dout_295;
   dout_318=dout_316&dout_294;
   dout_319=dout_316^dout_294;
   dout_320=dout_317|dout_318;
   dout_321=dout_284^dout_296;
   dout_322=dout_284&dout_296;
   dout_323=dout_321&dout_320;
   dout_324=dout_321^dout_320;
   dout_325=dout_322|dout_323;
   dout_326=dout_289^dout_297;
   dout_327=dout_289&dout_297;
   dout_328=dout_326&dout_325;
   dout_329=dout_326^dout_325;
   dout_330=dout_327|dout_328;
   dout_331=dout_290^dout_298;
   dout_332=dout_290&dout_298;
   dout_333=((B >> 7)&1)&dout_330;
   dout_334=dout_331^dout_330;
   dout_335=dout_332|dout_333;

   O = 0;
   O |= (dout_163&1) << 0;
   O |= (dout_319&1) << 1;
   O |= (dout_334&1) << 2;
   O |= (dout_322&1) << 3;
   O |= (0&1) << 4;
   O |= (0&1) << 5;
   O |= (dout_163&1) << 6;
   O |= (dout_250&1) << 7;
   O |= (dout_288&1) << 8;
   O |= (dout_206&1) << 9;
   O |= (0&1) << 10;
   O |= (dout_319&1) << 11;
   O |= (dout_324&1) << 12;
   O |= (dout_329&1) << 13;
   O |= (dout_334&1) << 14;
   O |= (dout_335&1) << 15;
   return O;
}

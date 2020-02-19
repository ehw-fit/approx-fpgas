/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 3.39 %
// MAE = 2220 
// WCE% = 13.56 %
// WCE = 8889 
// WCRE% = 200.37 %
// EP% = 99.21 %
// MRE% = 36.51 %
// MSE = 79737.894e2 
// FPGA_POWER = 0.31
// FPGA_DELAY = 6.4
// FPGA_LUT = 5.0
#include <stdint.h>
#include <stdlib.h>

uint64_t mul8u_19SM(const uint64_t B,const uint64_t A)
{
   uint64_t O, dout_55, dout_63, dout_71, dout_76, dout_77, dout_78, dout_79, dout_127, dout_147, dout_171, dout_215, dout_216, dout_217, dout_218, dout_253, dout_254, dout_255, dout_256, dout_288, dout_293, dout_294, dout_295, dout_296, dout_297, dout_298, dout_299, dout_316, dout_317, dout_318, dout_425, dout_435, dout_455, dout_462, dout_464, dout_502, dout_503, dout_504, dout_505;   int avg=0;

   dout_55=((B >> 5)&1)&((A >> 6)&1);
   dout_63=((B >> 7)&1)&((A >> 5)&1);
   dout_71=((B >> 7)&1)&((A >> 6)&1);
   dout_76=((B >> 4)&1)&((A >> 7)&1);
   dout_77=((B >> 5)&1)&((A >> 7)&1);
   dout_78=((B >> 6)&1)&((A >> 7)&1);
   dout_79=((B >> 7)&1)&((A >> 7)&1);
   dout_127=((B >> 3)&1)^0xFFFFFFFFFFFFFFFFU;
   dout_147=dout_55|dout_63;
   dout_171=(((B >> 3)&1)|dout_127)^0xFFFFFFFFFFFFFFFFU;
   dout_215=dout_171|dout_77;
   dout_216=((B >> 6)&1)&((A >> 6)&1);
   dout_217=dout_71&((A >> 7)&1);
   dout_218=dout_71^dout_78;
   dout_253=dout_147&dout_76;
   dout_254=dout_147|dout_76;
   dout_255=dout_63&dout_215;
   dout_256=dout_63|dout_215;
   dout_288=dout_256^dout_253;
   dout_293=dout_218^dout_255;
   dout_294=dout_218&dout_255;
   dout_295=dout_293&dout_216;
   dout_296=dout_293^dout_216;
   dout_297=dout_294|dout_295;
   dout_298=((B >> 6)&1)&dout_217;
   dout_299=dout_79^dout_298;
   dout_316=dout_296^dout_253;
   dout_317=dout_296&dout_253;
   dout_318=dout_299^dout_297;
   dout_425=dout_316&dout_288;
   dout_435=dout_317|dout_425;
   dout_455=dout_318&dout_425;
   dout_462=dout_294|dout_455;
   dout_464=dout_462|dout_317;
   dout_502=dout_288^dout_254;
   dout_503=dout_316^dout_288;
   dout_504=dout_318^dout_435;
   dout_505=dout_298|dout_464;

   O = 0;
   O |= (dout_502&1) << 0;
   O |= (dout_503&1) << 1;
   O |= (dout_503&1) << 2;
   O |= (dout_502&1) << 3;
   O |= (dout_254&1) << 4;
   O |= (dout_254&1) << 5;
   O |= (0&1) << 6;
   O |= (dout_254&1) << 7;
   O |= (0&1) << 8;
   O |= (0&1) << 9;
   O |= (0&1) << 10;
   O |= (0&1) << 11;
   O |= (dout_502&1) << 12;
   O |= (dout_503&1) << 13;
   O |= (dout_504&1) << 14;
   O |= (dout_505&1) << 15;
   return O;
}

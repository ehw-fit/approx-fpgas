/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 1.61 %
// MAE = 1058 
// WCE% = 7.57 %
// WCE = 4961 
// WCRE% = 100.00 %
// EP% = 99.19 %
// MRE% = 22.68 %
// MSE = 17428.185e2 
// FPGA_POWER = 0.37
// FPGA_DELAY = 7.7
// FPGA_LUT = 16
#include <stdint.h>
#include <stdlib.h>

uint64_t mul8u_14HJ(const uint64_t B,const uint64_t A)
{
   uint64_t O, dout_47, dout_55, dout_62, dout_63, dout_69, dout_70, dout_71, dout_76, dout_77, dout_78, dout_79, dout_142, dout_143, dout_145, dout_146, dout_147, dout_203, dout_206, dout_207, dout_209, dout_210, dout_212, dout_213, dout_214, dout_215, dout_216, dout_217, dout_218, dout_253, dout_254, dout_255, dout_256, dout_283, dout_285, dout_286, dout_287, dout_288, dout_289, dout_290, dout_291, dout_292, dout_293, dout_294, dout_295, dout_296, dout_297, dout_298, dout_299, dout_332, dout_333, dout_337, dout_338, dout_339, dout_340, dout_341, dout_342, dout_343, dout_344, dout_345, dout_346, dout_348;   int avg=0;

   dout_47=((B >> 7)&1)&((A >> 3)&1);
   dout_55=((B >> 7)&1)&((A >> 4)&1);
   dout_62=((B >> 6)&1)&((A >> 5)&1);
   dout_63=((B >> 7)&1)&((A >> 5)&1);
   dout_69=((B >> 4)&1)&((A >> 6)&1);
   dout_70=((B >> 6)&1)&((A >> 6)&1);
   dout_71=((B >> 7)&1)&((A >> 6)&1);
   dout_76=((B >> 4)&1)&((A >> 7)&1);
   dout_77=((B >> 5)&1)&((A >> 7)&1);
   dout_78=((B >> 6)&1)&((A >> 7)&1);
   dout_79=((B >> 7)&1)&((A >> 7)&1);
   dout_142=((A >> 7)&1)&((B >> 3)&1);
   dout_143=((A >> 7)&1)&((B >> 5)&1);
   dout_145=dout_142|dout_143;
   dout_146=dout_55&dout_62;
   dout_147=dout_55|dout_62;
   dout_203=((B >> 5)&1)&((A >> 6)&1);
   dout_206=dout_203|dout_147;
   dout_207=dout_145|dout_69;
   dout_209=dout_207&dout_76;
   dout_210=dout_207^dout_76;
   dout_212=dout_146^dout_70;
   dout_213=dout_146&((A >> 6)&1);
   dout_214=dout_212&dout_77;
   dout_215=dout_212^dout_77;
   dout_216=dout_213|dout_214;
   dout_217=dout_71&((B >> 6)&1);
   dout_218=dout_71^dout_78;
   dout_253=dout_147&dout_210;
   dout_254=dout_147^dout_210;
   dout_255=dout_63&dout_215;
   dout_256=dout_63^dout_215;
   dout_283=dout_254^dout_203;
   dout_285=dout_254&dout_206;
   dout_286=dout_283^dout_206;
   dout_287=dout_203|dout_285;
   dout_288=dout_256^dout_253;
   dout_289=dout_256&dout_253;
   dout_290=dout_288&dout_209;
   dout_291=dout_288^dout_209;
   dout_292=dout_289|dout_290;
   dout_293=dout_218^dout_255;
   dout_294=dout_218&dout_255;
   dout_295=dout_293&dout_216;
   dout_296=dout_293^dout_216;
   dout_297=dout_294|dout_295;
   dout_298=((A >> 7)&1)&dout_217;
   dout_299=dout_79^dout_298;
   dout_332=dout_291^dout_287;
   dout_333=dout_291&dout_287;
   dout_337=dout_296^dout_292;
   dout_338=dout_296&dout_292;
   dout_339=dout_296&dout_333;
   dout_340=dout_337^dout_333;
   dout_341=dout_338|dout_339;
   dout_342=dout_299^dout_297;
   dout_343=dout_299&dout_297;
   dout_344=dout_342&dout_341;
   dout_345=dout_342^dout_341;
   dout_346=dout_343|dout_344;
   dout_348=dout_298|dout_346;

   O = 0;
   O |= (dout_71&1) << 0;
   O |= (0&1) << 1;
   O |= (dout_298&1) << 2;
   O |= (dout_298&1) << 3;
   O |= (0&1) << 4;
   O |= (dout_218&1) << 5;
   O |= (0&1) << 6;
   O |= (0&1) << 7;
   O |= (dout_209&1) << 8;
   O |= (dout_214&1) << 9;
   O |= (dout_47&1) << 10;
   O |= (dout_286&1) << 11;
   O |= (dout_332&1) << 12;
   O |= (dout_340&1) << 13;
   O |= (dout_345&1) << 14;
   O |= (dout_348&1) << 15;
   return O;
}

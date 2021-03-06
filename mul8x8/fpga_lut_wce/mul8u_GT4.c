/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.16 %
// MAE = 104 
// WCE% = 0.73 %
// WCE = 481 
// WCRE% = 112.50 %
// EP% = 96.25 %
// MRE% = 3.68 %
// MSE = 17466 
// FPGA_POWER = 0.85
// FPGA_DELAY = 9.7
// FPGA_LUT = 48
#include <stdint.h>
#include <stdlib.h>

uint64_t mul8u_GT4(const uint64_t B,const uint64_t A)
{
   uint64_t O, dout_22, dout_23, dout_30, dout_31, dout_37, dout_38, dout_39, dout_44, dout_45, dout_46, dout_47, dout_52, dout_53, dout_54, dout_55, dout_57, dout_59, dout_60, dout_61, dout_62, dout_63, dout_66, dout_67, dout_68, dout_69, dout_70, dout_71, dout_73, dout_74, dout_75, dout_76, dout_77, dout_78, dout_79, dout_103, dout_107, dout_109, dout_110, dout_112, dout_113, dout_124, dout_126, dout_128, dout_131, dout_132, dout_133, dout_134, dout_135, dout_136, dout_137, dout_138, dout_139, dout_140, dout_141, dout_142, dout_143, dout_144, dout_145, dout_146, dout_147, dout_171, dout_173, dout_175, dout_176, dout_177, dout_178, dout_179, dout_180, dout_182, dout_183, dout_184, dout_188, dout_192, dout_193, dout_194, dout_195, dout_196, dout_197, dout_198, dout_199, dout_200, dout_201, dout_202, dout_203, dout_204, dout_205, dout_206, dout_207, dout_208, dout_209, dout_210, dout_211, dout_212, dout_213, dout_214, dout_215, dout_216, dout_217, dout_218, dout_238, dout_239, dout_240, dout_241, dout_242, dout_243, dout_244, dout_245, dout_246, dout_247, dout_248, dout_249, dout_250, dout_251, dout_252, dout_253, dout_254, dout_255, dout_256, dout_265, dout_270, dout_271, dout_273, dout_274, dout_275, dout_276, dout_277, dout_278, dout_279, dout_280, dout_281, dout_282, dout_283, dout_284, dout_285, dout_286, dout_287, dout_288, dout_289, dout_290, dout_291, dout_292, dout_293, dout_294, dout_295, dout_296, dout_297, dout_298, dout_299, dout_312, dout_313, dout_317, dout_318, dout_319, dout_320, dout_321, dout_322, dout_323, dout_324, dout_325, dout_326, dout_327, dout_328, dout_329, dout_330, dout_331, dout_332, dout_333, dout_334, dout_335, dout_336, dout_337, dout_338, dout_339, dout_340, dout_341, dout_342, dout_343, dout_344, dout_345, dout_346, dout_348;   int avg=0;

   dout_22=((B >> 6)&1)&((A >> 0)&1);
   dout_23=((B >> 7)&1)&((A >> 0)&1);
   dout_30=((B >> 6)&1)&((A >> 1)&1);
   dout_31=((B >> 7)&1)&((A >> 1)&1);
   dout_37=((B >> 5)&1)&((A >> 2)&1);
   dout_38=((B >> 6)&1)&((A >> 2)&1);
   dout_39=((B >> 7)&1)&((A >> 2)&1);
   dout_44=((B >> 2)&1)&((A >> 5)&1);
   dout_45=((B >> 5)&1)&((A >> 3)&1);
   dout_46=((B >> 6)&1)&((A >> 3)&1);
   dout_47=((B >> 7)&1)&((A >> 3)&1);
   dout_52=((B >> 4)&1)&((A >> 4)&1);
   dout_53=((B >> 5)&1)&((A >> 4)&1);
   dout_54=((B >> 6)&1)&((A >> 4)&1);
   dout_55=((B >> 7)&1)&((A >> 4)&1);
   dout_57=((B >> 1)&1)&((A >> 6)&1);
   dout_59=((B >> 3)&1)&((A >> 5)&1);
   dout_60=((B >> 4)&1)&((A >> 5)&1);
   dout_61=((B >> 5)&1)&((A >> 5)&1);
   dout_62=((B >> 6)&1)&((A >> 5)&1);
   dout_63=((B >> 7)&1)&((A >> 5)&1);
   dout_66=((B >> 2)&1)&((A >> 6)&1);
   dout_67=((B >> 3)&1)&((A >> 6)&1);
   dout_68=((B >> 4)&1)&((A >> 6)&1);
   dout_69=((B >> 5)&1)&((A >> 6)&1);
   dout_70=((B >> 6)&1)&((A >> 6)&1);
   dout_71=((B >> 7)&1)&((A >> 6)&1);
   dout_73=((B >> 1)&1)&((A >> 7)&1);
   dout_74=((B >> 2)&1)&((A >> 7)&1);
   dout_75=((B >> 3)&1)&((A >> 7)&1);
   dout_76=((B >> 4)&1)&((A >> 7)&1);
   dout_77=((B >> 5)&1)&((A >> 7)&1);
   dout_78=((B >> 6)&1)&((A >> 7)&1);
   dout_79=((B >> 7)&1)&((A >> 7)&1);
   dout_103=((A >> 7)&1)&((B >> 0)&1);
   dout_107=dout_23|dout_30;
   dout_109=((A >> 1)&1)&dout_37;
   dout_110=dout_107|dout_37;
   dout_112=dout_31&dout_38;
   dout_113=dout_31^dout_38;
   dout_124=dout_103|dout_57;
   dout_126=dout_44|dout_124;
   dout_128=((A >> 4)&1)&((B >> 3)&1);
   dout_131=dout_45^dout_52;
   dout_132=dout_45&dout_52;
   dout_133=dout_131&dout_59;
   dout_134=dout_131^dout_59;
   dout_135=dout_132|dout_133;
   dout_136=dout_46^dout_53;
   dout_137=dout_46&dout_53;
   dout_138=dout_136&dout_60;
   dout_139=dout_136^dout_60;
   dout_140=dout_137|dout_138;
   dout_141=dout_47^dout_54;
   dout_142=dout_47&dout_54;
   dout_143=dout_141&dout_61;
   dout_144=dout_141^dout_61;
   dout_145=dout_142|dout_143;
   dout_146=dout_55&dout_62;
   dout_147=dout_55^dout_62;
   dout_171=dout_126&dout_110;
   dout_173=dout_110|dout_126;
   dout_175=dout_113^dout_109;
   dout_176=dout_113&dout_109;
   dout_177=dout_175&dout_134;
   dout_178=dout_175^dout_134;
   dout_179=dout_176|dout_177;
   dout_180=dout_39^dout_112;
   dout_182=dout_180&dout_139;
   dout_183=dout_180^dout_139;
   dout_184=dout_112|dout_182;
   dout_188=((B >> 1)&1)&dout_44;
   dout_192=dout_128^dout_66;
   dout_193=dout_128&dout_66;
   dout_194=dout_192&dout_73;
   dout_195=dout_192^dout_73;
   dout_196=dout_193|dout_194;
   dout_197=dout_135^dout_67;
   dout_198=dout_135&dout_67;
   dout_199=dout_197&dout_74;
   dout_200=dout_197^dout_74;
   dout_201=dout_198|dout_199;
   dout_202=dout_140^dout_68;
   dout_203=dout_140&dout_68;
   dout_204=dout_202&dout_75;
   dout_205=dout_202^dout_75;
   dout_206=dout_203|dout_204;
   dout_207=dout_145^dout_69;
   dout_208=dout_145&dout_69;
   dout_209=dout_207&dout_76;
   dout_210=dout_207^dout_76;
   dout_211=dout_208|dout_209;
   dout_212=dout_146^dout_70;
   dout_213=dout_146&((A >> 6)&1);
   dout_214=dout_212&dout_77;
   dout_215=dout_212^dout_77;
   dout_216=dout_213|dout_214;
   dout_217=dout_71&((B >> 6)&1);
   dout_218=dout_71^dout_78;
   dout_238=dout_178^dout_171;
   dout_239=dout_178&dout_171;
   dout_240=dout_238&dout_195;
   dout_241=dout_238^dout_195;
   dout_242=dout_239|dout_240;
   dout_243=dout_183^dout_179;
   dout_244=dout_183&dout_179;
   dout_245=dout_243&dout_200;
   dout_246=dout_243^dout_200;
   dout_247=dout_244|dout_245;
   dout_248=dout_144^dout_184;
   dout_249=dout_144&dout_184;
   dout_250=dout_248&dout_205;
   dout_251=dout_248^dout_205;
   dout_252=dout_249|dout_250;
   dout_253=dout_147&dout_210;
   dout_254=dout_147^dout_210;
   dout_255=dout_63&dout_215;
   dout_256=dout_63^dout_215;
   dout_265=((A >> 3)&1)&((B >> 4)&1);
   dout_270=dout_241&dout_188;
   dout_271=dout_241^dout_188;
   dout_273=dout_246^dout_242;
   dout_274=dout_246&dout_242;
   dout_275=dout_273&dout_196;
   dout_276=dout_273^dout_196;
   dout_277=dout_274|dout_275;
   dout_278=dout_251^dout_247;
   dout_279=dout_251&dout_247;
   dout_280=dout_278&dout_201;
   dout_281=dout_278^dout_201;
   dout_282=dout_279|dout_280;
   dout_283=dout_254^dout_252;
   dout_284=dout_254&dout_252;
   dout_285=dout_283&dout_206;
   dout_286=dout_283^dout_206;
   dout_287=dout_284|dout_285;
   dout_288=dout_256^dout_253;
   dout_289=dout_256&dout_253;
   dout_290=dout_288&dout_211;
   dout_291=dout_288^dout_211;
   dout_292=dout_289|dout_290;
   dout_293=dout_218^dout_255;
   dout_294=dout_218&dout_255;
   dout_295=dout_293&dout_216;
   dout_296=dout_293^dout_216;
   dout_297=dout_294|dout_295;
   dout_298=((A >> 7)&1)&dout_217;
   dout_299=dout_79^dout_298;
   dout_312=dout_271^dout_265;
   dout_313=dout_271&dout_265;
   dout_317=dout_276^dout_270;
   dout_318=dout_276&dout_270;
   dout_319=dout_276&dout_313;
   dout_320=dout_317^dout_313;
   dout_321=dout_318|dout_319;
   dout_322=dout_281^dout_277;
   dout_323=dout_281&dout_277;
   dout_324=dout_322&dout_321;
   dout_325=dout_322^dout_321;
   dout_326=dout_323|dout_324;
   dout_327=dout_286^dout_282;
   dout_328=dout_286&dout_282;
   dout_329=dout_327&dout_326;
   dout_330=dout_327^dout_326;
   dout_331=dout_328|dout_329;
   dout_332=dout_291^dout_287;
   dout_333=dout_291&dout_287;
   dout_334=dout_332&dout_331;
   dout_335=dout_332^dout_331;
   dout_336=dout_333|dout_334;
   dout_337=dout_296^dout_292;
   dout_338=dout_296&dout_292;
   dout_339=dout_337&dout_336;
   dout_340=dout_337^dout_336;
   dout_341=dout_338|dout_339;
   dout_342=dout_299^dout_297;
   dout_343=dout_299&dout_297;
   dout_344=dout_342&dout_341;
   dout_345=dout_342^dout_341;
   dout_346=dout_343|dout_344;
   dout_348=dout_298|dout_346;

   O = 0;
   O |= (dout_171&1) << 0;
   O |= (0&1) << 1;
   O |= (dout_188&1) << 2;
   O |= (dout_128&1) << 3;
   O |= (dout_265&1) << 4;
   O |= (dout_57&1) << 5;
   O |= (dout_22&1) << 6;
   O |= (dout_173&1) << 7;
   O |= (dout_312&1) << 8;
   O |= (dout_320&1) << 9;
   O |= (dout_325&1) << 10;
   O |= (dout_330&1) << 11;
   O |= (dout_335&1) << 12;
   O |= (dout_340&1) << 13;
   O |= (dout_345&1) << 14;
   O |= (dout_348&1) << 15;
   return O;
}

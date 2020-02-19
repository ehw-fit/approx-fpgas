/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 8.08 %
// MAE = 5294 
// WCE% = 30.81 %
// WCE = 20193 
// WCRE% = 700.00 %
// EP% = 99.21 %
// MRE% = 64.52 %
// MSE = 47901.182e3 
// FPGA_POWER = 0.26
// FPGA_DELAY = 6.1
// FPGA_LUT = 3.0
#include <stdint.h>
#include <stdlib.h>

uint64_t mul8u_19BL(const uint64_t B,const uint64_t A)
{
   uint64_t O, dout_242, dout_307, dout_327;   int avg=0;

   dout_242=((B >> 6)&1)&((A >> 6)&1);
   dout_307=((A >> 5)&1)&((B >> 5)&1);
   dout_327=((B >> 7)&1)&((A >> 7)&1);

   O = 0;
   O |= (0&1) << 0;
   O |= (0&1) << 1;
   O |= (0&1) << 2;
   O |= (0&1) << 3;
   O |= (0&1) << 4;
   O |= (0&1) << 5;
   O |= (0&1) << 6;
   O |= (dout_242&1) << 7;
   O |= (0&1) << 8;
   O |= (0&1) << 9;
   O |= (0&1) << 10;
   O |= (0&1) << 11;
   O |= (0&1) << 12;
   O |= (dout_307&1) << 13;
   O |= (dout_242&1) << 14;
   O |= (dout_327&1) << 15;
   return O;
}

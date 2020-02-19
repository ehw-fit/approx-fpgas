/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.00 %
// MAE = 0 
// WCE% = 0.00 %
// WCE = 0 
// WCRE% = 0.00 %
// EP% = 0.00 %
// MRE% = 0.00 %
// MSE = 0 
// FPGA_POWER = 1.9
// FPGA_DELAY = 12
// FPGA_LUT = 161
#include <stdint.h>
#include <stdlib.h>

uint32_t mul12u_34M(uint16_t A, uint16_t B)
{
 return ((A >> 0) * (B >> 0)) << (2*0);
}

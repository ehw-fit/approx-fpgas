/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.18 %
// MAE = 30656 
// WCE% = 0.73 %
// WCE = 122625 
// WCRE% = 100.00 %
// EP% = 99.56 %
// MRE% = 2.69 %
// MSE = 13346.794e5 
// FPGA_POWER = 0.93
// FPGA_DELAY = 11
// FPGA_LUT = 71
#include <stdint.h>
#include <stdlib.h>

uint32_t mul12u_34Y(uint16_t A, uint16_t B)
{
 return ((A >> 4) * (B >> 4)) << (2*4);
}

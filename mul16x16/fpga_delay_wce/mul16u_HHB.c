/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.048 %
// MAE = 2063360 
// WCE% = 0.19 %
// WCE = 8253441 
// WCRE% = 100.00 %
// EP% = 99.97 %
// MRE% = 0.84 %
// MSE = 59448.176e8 
// FPGA_POWER = 1.4
// FPGA_DELAY = 11
// FPGA_LUT = 115
#include <stdint.h>
#include <stdlib.h>

uint32_t mul16u_HHB(uint16_t A, uint16_t B)
{
 return ((A >> 6) * (B >> 6)) << (2*6);
}

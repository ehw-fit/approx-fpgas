/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.097 %
// MAE = 4157440 
// WCE% = 0.39 %
// WCE = 16629761 
// WCRE% = 100.00 %
// EP% = 99.99 %
// MRE% = 1.56 %
// MSE = 24079.74e9 
// FPGA_POWER = 1.0
// FPGA_DELAY = 11
// FPGA_LUT = 80
#include <stdint.h>
#include <stdlib.h>

uint32_t mul16u_HE2(uint16_t A, uint16_t B)
{
 return ((A >> 7) * (B >> 7)) << (2*7);
}

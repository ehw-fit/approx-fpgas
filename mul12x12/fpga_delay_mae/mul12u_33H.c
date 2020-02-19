/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.76 %
// MAE = 128000 
// WCE% = 3.05 %
// WCE = 512001 
// WCRE% = 100.00 %
// EP% = 99.93 %
// MRE% = 9.02 %
// MSE = 22973.221e6 
// FPGA_POWER = 0.55
// FPGA_DELAY = 9.2
// FPGA_LUT = 35
#include <stdint.h>
#include <stdlib.h>

uint32_t mul12u_33H(uint16_t A, uint16_t B)
{
 return (A & 0xFC0) * (B & 0xFC0);
}

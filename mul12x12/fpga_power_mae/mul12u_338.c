/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.037 %
// MAE = 6140 
// WCE% = 0.15 %
// WCE = 24561 
// WCRE% = 100.00 %
// EP% = 93.71 %
// MRE% = 0.65 %
// MSE = 57970.012e3 
// FPGA_POWER = 1.4
// FPGA_DELAY = 11
// FPGA_LUT = 121
#include <stdint.h>
#include <stdlib.h>

uint32_t mul12u_338(uint16_t A, uint16_t B)
{
 return (A & 0xFFC) * (B & 0xFFC);
}

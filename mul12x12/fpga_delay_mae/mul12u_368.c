/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.38 %
// MAE = 63232 
// WCE% = 1.51 %
// WCE = 252929 
// WCRE% = 100.00 %
// EP% = 99.86 %
// MRE% = 5.01 %
// MSE = 56232.128e5 
// FPGA_POWER = 0.71
// FPGA_DELAY = 9.5
// FPGA_LUT = 48
#include <stdint.h>
#include <stdlib.h>

uint32_t mul12u_368(uint16_t A, uint16_t B)
{
 return (A & 0xFE0) * (B & 0xFE0);
}

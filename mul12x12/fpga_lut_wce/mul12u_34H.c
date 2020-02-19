/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 5.85 %
// MAE = 980992 
// WCE% = 23.39 %
// WCE = 3923969 
// WCRE% = 100.00 %
// EP% = 99.95 %
// MRE% = 43.11 %
// MSE = 13857.988e8 
// FPGA_POWER = 0.28
// FPGA_DELAY = 6.7
// FPGA_LUT = 5.0
#include <stdint.h>
#include <stdlib.h>

uint32_t mul12u_34H(uint16_t A, uint16_t B)
{
 return (A & 0xE00) * (B & 0xE00);
}

/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 1.53 %
// MAE = 256000 
// WCE% = 6.10 %
// WCE = 1024001 
// WCRE% = 100.00 %
// EP% = 99.95 %
// MRE% = 15.79 %
// MSE = 92062.713e6 
// FPGA_POWER = 0.43
// FPGA_DELAY = 8.7
// FPGA_LUT = 22
#include <stdint.h>
#include <stdlib.h>

uint32_t mul12u_34Q(uint16_t A, uint16_t B)
{
 return (A & 0xF80) * (B & 0xF80);
}

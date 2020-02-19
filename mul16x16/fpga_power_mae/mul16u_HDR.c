/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.77 %
// MAE = 33259520 
// WCE% = 3.10 %
// WCE = 133038081 
// WCRE% = 100.00 %
// EP% = 100.00 %
// MRE% = 9.15 %
// MSE = 15436.2e11 
// FPGA_POWER = 0.57
// FPGA_DELAY = 10
// FPGA_LUT = 34
#include <stdint.h>
#include <stdlib.h>

uint32_t mul16u_HDR(uint16_t A, uint16_t B)
{
 return (A & 0xFC00) * (B & 0xFC00);
}

/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 24.81 %
// MAE = 16256 
// WCE% = 99.22 %
// WCE = 65025 
// WCRE% = 100.00 %
// EP% = 99.22 %
// MRE% = 100.00 %
// MSE = 47164.981e4 
// FPGA_POWER = 0.24
// FPGA_DELAY = 0
// FPGA_LUT = 0

module mul8u_199Z (
    A,
    B,
    O
);

input [7:0] A;
input [7:0] B;
output [15:0] O;
assign O[15] = 1'b0;
assign O[14] = 1'b0;
assign O[13] = 1'b0;
assign O[12] = 1'b0;
assign O[11] = 1'b0;
assign O[10] = 1'b0;
assign O[9] = 1'b0;
assign O[8] = 1'b0;
assign O[7] = 1'b0;
assign O[6] = 1'b0;
assign O[5] = 1'b0;
assign O[4] = 1'b0;
assign O[3] = 1'b0;
assign O[2] = 1'b0;
assign O[1] = 1'b0;
assign O[0] = 1'b0;

endmodule



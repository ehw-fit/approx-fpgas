/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 15.62 %
// MAE = 671055872 
// WCE% = 62.50 %
// WCE = 2684223489 
// WCRE% = 100.00 %
// EP% = 100.00 %
// MRE% = 79.49 %
// MSE = 71651.74e13 
// FPGA_POWER = 0.25
// FPGA_DELAY = 6.5
// FPGA_LUT = 1.0


module mul16u_G9P ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [31:0] O;

  wire S_15_14,S_15_15,S_16_13,S_16_14,S_16_15;

  assign S_15_14 = (A[15] & B[14]);
  assign S_15_15 = (A[15] & B[15]);
  assign {S_16_15, S_16_14, S_16_13} = {1'b0, 1'b0} + {S_15_15, S_15_14};
  assign O = {S_16_15,S_16_14,S_16_13,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};

endmodule


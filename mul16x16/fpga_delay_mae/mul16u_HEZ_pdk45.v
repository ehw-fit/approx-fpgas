/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 18.75 %
// MAE = 805273600 
// WCE% = 75.00 %
// WCE = 3221094401 
// WCRE% = 100.00 %
// EP% = 100.00 %
// MRE% = 87.99 %
// MSE = 10407.645e14 
// FPGA_POWER = 0.25
// FPGA_DELAY = 6.0
// FPGA_LUT = 1.0


module mul16u_HEZ ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [31:0] O;

  wire S_15_15,S_16_14,S_16_15;

  assign S_15_15 = (A[15] & B[15]);
  assign S_16_14 = S_15_15;
  assign S_16_15 = 1'b0;
  assign O = {S_16_15,S_16_14,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};

endmodule


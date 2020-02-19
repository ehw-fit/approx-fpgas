/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 15.61 %
// MAE = 2619392 
// WCE% = 62.45 %
// WCE = 10477569 
// WCRE% = 100.00 %
// EP% = 99.95 %
// MRE% = 79.47 %
// MSE = 10920.526e9 
// FPGA_POWER = 0.25
// FPGA_DELAY = 6.3
// FPGA_LUT = 1.0


module mul12u_2NR ( A, B, O );
  input [11:0] A;
  input [11:0] B;
  output [23:0] O;

  wire S_11_10,S_11_11,S_12_10,S_12_11,S_12_9;

  assign S_11_10 = (A[11] & B[10]);
  assign S_11_11 = (A[11] & B[11]);
  assign {S_12_11, S_12_10, S_12_9} = {1'b0, 1'b0} + {S_11_11, S_11_10};
  assign O = {S_12_11,S_12_10,S_12_9,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};

endmodule


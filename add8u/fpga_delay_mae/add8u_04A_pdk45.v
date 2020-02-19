/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 14.06 %
// MAE = 72 
// WCE% = 42.38 %
// WCE = 217 
// WCRE% = 1300.00 %
// EP% = 99.61 %
// MRE% = 35.29 %
// MSE = 7477 
// FPGA_POWER = 0.26
// FPGA_DELAY = 4.9
// FPGA_LUT = 0


module add8u_04A(A, B, O);
  input [7:0] A, B;
  output [8:0] O;
  assign O[3] = 1'b1;
  assign O[2] = 1'b1;
  assign O[6] = 1'b0;
  assign O[0] = A[7];
  assign O[1] = A[0];
  assign O[4] = A[5];
  assign O[5] = A[3];
  assign O[7] = B[7];
  assign O[8] = O[0];
endmodule


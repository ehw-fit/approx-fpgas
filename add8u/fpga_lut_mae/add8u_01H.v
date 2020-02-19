/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 18.87 %
// MAE = 97 
// WCE% = 54.69 %
// WCE = 280 
// WCRE% = 200.00 %
// EP% = 99.71 %
// MRE% = 45.94 %
// MSE = 13848 
// FPGA_POWER = 0.26
// FPGA_DELAY = 4.9
// FPGA_LUT = 0


module add8u_01H(A, B, O);
  input [7:0] A, B;
  output [8:0] O;
  assign O[2] = B[4];
  assign O[0] = 1'b0;
  assign O[3] = 1'b0;
  assign O[1] = B[3];
  assign O[4] = O[0];
  assign O[5] = B[5];
  assign O[6] = A[6];
  assign O[7] = A[6];
  assign O[8] = A[7];
endmodule


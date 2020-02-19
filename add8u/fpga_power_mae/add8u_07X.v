/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 8.75 %
// MAE = 45 
// WCE% = 28.12 %
// WCE = 144 
// WCRE% = 9700.00 %
// EP% = 99.32 %
// MRE% = 25.92 %
// MSE = 3019 
// FPGA_POWER = 0.26
// FPGA_DELAY = 5.9
// FPGA_LUT = 1.0


module add8u_07X(A, B, O);
  input [7:0] A, B;
  output [8:0] O;
  assign O[1] = 1'b1;
  assign O[2] = 1'b0;
  assign O[6] = 1'b1;
  assign O[8] = B[7] & A[7];
  assign O[7] = B[7] ^ A[7];
  assign O[0] = A[3];
  assign O[3] = A[3];
  assign O[4] = A[2];
  assign O[5] = O[1];
endmodule


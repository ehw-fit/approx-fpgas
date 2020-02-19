/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 3.59 %
// MAE = 294 
// WCE% = 9.83 %
// WCE = 805 
// WCRE% = 303.12 %
// EP% = 99.90 %
// MRE% = 10.05 %
// MSE = 126206 
// FPGA_POWER = 0.29
// FPGA_DELAY = 6.7
// FPGA_LUT = 3.0

module add12u_2KL(A, B, O);
  input [11:0] A, B;
  output [12:0] O;
  wire n_415, n_410, n_419, n_23, n_22, n_21, n_20, n_24, n_29, n_86;
  wire n_126, n_121, n_246, n_241, n_406, n_228, n_8, n_9, n_4, n_5;
  wire n_6, n_7, n_0, n_1, n_2, n_3, n_18, n_19, n_16, n_17;
  wire n_14, n_15, n_12, n_13, n_10, n_11, n_117, n_112, n_175, n_152;
  assign n_0 = A[0];
  assign n_1 = A[1];
  assign n_2 = A[2];
  assign n_3 = A[3];
  assign n_4 = A[4];
  assign n_5 = A[5];
  assign n_6 = A[6];
  assign n_7 = A[7];
  assign n_8 = A[8];
  assign n_9 = A[9];
  assign n_10 = A[10];
  assign n_11 = A[11];
  assign n_12 = B[0];
  assign n_13 = B[1];
  assign n_14 = B[2];
  assign n_15 = B[3];
  assign n_16 = B[4];
  assign n_17 = B[5];
  assign n_18 = B[6];
  assign n_19 = B[7];
  assign n_20 = B[8];
  assign n_21 = B[9];
  assign n_22 = B[10];
  assign n_23 = B[11];
  assign n_24 = ~(n_16 ^ n_16);
  assign n_29 = n_10 | n_22;
  assign n_86 = n_20 | n_8;
  assign n_112 = n_10 ^ n_22;
  assign n_117 = n_10 & n_22;
  assign n_121 = n_11 ^ n_23;
  assign n_126 = n_11 & n_23;
  assign n_152 = n_21 | n_86;
  assign n_175 = ~n_24;
  assign n_228 = n_152 | n_9;
  assign n_241 = n_228 & n_29;
  assign n_246 = n_241 | n_117;
  assign n_406 = n_112 ^ n_228;
  assign n_410 = n_121 ^ n_246;
  assign n_415 = n_121 & n_246;
  assign n_419 = n_126 | n_415;
  assign O[0] = n_12;
  assign O[1] = n_0;
  assign O[2] = n_23;
  assign O[3] = n_20;
  assign O[4] = n_3;
  assign O[5] = n_16;
  assign O[6] = n_9;
  assign O[7] = n_7;
  assign O[8] = n_175;
  assign O[9] = n_175;
  assign O[10] = n_406;
  assign O[11] = n_410;
  assign O[12] = n_419;
endmodule


/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.91 %
// MAE = 75 
// WCE% = 2.40 %
// WCE = 197 
// WCRE% = 303.12 %
// EP% = 99.61 %
// MRE% = 2.53 %
// MSE = 8172 
// FPGA_POWER = 0.31
// FPGA_DELAY = 7.5
// FPGA_LUT = 5.0

module add12u_1DY(A, B, O);
  input [11:0] A, B;
  output [12:0] O;
  wire n_415, n_406, n_354, n_250, n_410, n_350, n_310, n_232, n_419, n_237;
  wire n_193, n_23, n_22, n_21, n_20, n_27, n_40, n_25, n_402, n_80;
  wire n_84, n_202, n_245, n_102, n_106, n_241, n_363, n_228, n_8, n_9;
  wire n_115, n_4, n_5, n_6, n_7, n_0, n_1, n_2, n_3, n_358;
  wire n_18, n_19, n_16, n_17, n_14, n_15, n_12, n_13, n_10, n_11;
  wire n_97, n_397, n_110, n_93, n_113, n_293, n_119, n_289, n_124;
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
  assign n_25 = ~(n_18 ^ n_18);
  assign n_27 = ~(n_13 | n_25);
  assign n_40 = n_19 | n_18;
  assign n_80 = n_6 | n_40;
  assign n_84 = ~n_25;
  assign n_93 = n_8 ^ n_20;
  assign n_97 = n_8 & n_20;
  assign n_102 = n_9 ^ n_21;
  assign n_106 = n_9 & n_21;
  assign n_110 = n_10 ^ n_22;
  assign n_113 = n_27;
  assign n_115 = n_10 & n_22;
  assign n_119 = n_11 ^ n_23;
  assign n_124 = n_11 & n_23;
  assign n_193 = n_7 | n_80;
  assign n_202 = n_193;
  assign n_228 = n_97 & n_102;
  assign n_232 = n_228 | n_106;
  assign n_237 = n_232 & n_110;
  assign n_241 = n_237 | n_115;
  assign n_245 = n_93 & n_102;
  assign n_250 = n_245 & n_110;
  assign n_289 = n_202 & n_250;
  assign n_293 = n_289 | n_241;
  assign n_310 = n_84 | n_293;
  assign n_350 = n_193 & n_93;
  assign n_354 = n_350 | n_97;
  assign n_358 = n_202 & n_245;
  assign n_363 = n_358 | n_232;
  assign n_397 = n_93 ^ n_202;
  assign n_402 = n_102 ^ n_354;
  assign n_406 = n_110 ^ n_363;
  assign n_410 = n_119 ^ n_293;
  assign n_415 = n_119 & n_310;
  assign n_419 = n_124 | n_415;
  assign O[0] = n_10;
  assign O[1] = n_6;
  assign O[2] = n_13;
  assign O[3] = n_7;
  assign O[4] = n_4;
  assign O[5] = n_17;
  assign O[6] = n_113;
  assign O[7] = n_113;
  assign O[8] = n_397;
  assign O[9] = n_402;
  assign O[10] = n_406;
  assign O[11] = n_410;
  assign O[12] = n_419;
endmodule


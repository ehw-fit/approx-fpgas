/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.20 %
// MAE = 1.0 
// WCE% = 0.39 %
// WCE = 2.0 
// WCRE% = 100.00 %
// EP% = 75.00 %
// MRE% = 0.54 %
// MSE = 1.5 
// FPGA_POWER = 0.35
// FPGA_DELAY = 6.9
// FPGA_LUT = 8.0

module add8u_174(A, B, O);
  input [7:0] A, B;
  output [8:0] O;
  wire n_410, n_23, n_22, n_21, n_20, n_27, n_26, n_25, n_24, n_262;
  wire n_29, n_28, n_263, n_389, n_388, n_284, n_285, n_200, n_326, n_368;
  wire n_369, n_347, n_346, n_8, n_9, n_304, n_4, n_5, n_6, n_7;
  wire n_0, n_1, n_2, n_3, n_30, n_31, n_117, n_18, n_19, n_16;
  wire n_17, n_14, n_15, n_12, n_13, n_10, n_11, n_158, n_159, n_94;
  wire n_95, n_74, n_75, n_178, n_179, n_156, n_136, n_137, n_305, n_116;
  assign n_0 = A[0];
  assign n_1 = A[0];
  assign n_2 = A[1];
  assign n_3 = A[1];
  assign n_4 = A[2];
  assign n_5 = A[2];
  assign n_6 = A[3];
  assign n_7 = A[3];
  assign n_8 = A[4];
  assign n_9 = A[4];
  assign n_10 = A[5];
  assign n_11 = A[5];
  assign n_12 = A[6];
  assign n_13 = A[6];
  assign n_14 = A[7];
  assign n_15 = A[7];
  assign n_16 = B[0];
  assign n_17 = B[0];
  assign n_18 = B[1];
  assign n_19 = B[1];
  assign n_20 = B[2];
  assign n_21 = B[2];
  assign n_22 = B[3];
  assign n_23 = B[3];
  assign n_24 = B[4];
  assign n_25 = B[4];
  assign n_26 = B[5];
  assign n_27 = B[5];
  assign n_28 = B[6];
  assign n_29 = B[6];
  assign n_30 = B[7];
  assign n_31 = B[7];
  FAX1 tmp43(.YS(n_74), .YC(n_75), .A(n_4), .B(n_20), .C(n_18));
  FAX1 tmp44(.YS(n_94), .YC(n_95), .A(n_6), .B(n_22), .C(n_75));
  HAX1 tmp45(.YS(n_116), .YC(n_117), .A(n_8), .B(n_24));
  FAX1 tmp46(.YS(n_136), .YC(n_137), .A(n_10), .B(n_26), .C(n_117));
  assign n_156 = ~n_116;
  FAX1 tmp48(.YS(n_158), .YC(n_159), .A(n_12), .B(n_28), .C(n_137));
  FAX1 tmp49(.YS(n_178), .YC(n_179), .A(n_14), .B(n_30), .C(n_159));
  assign n_200 = n_8 | n_24;
  FAX1 tmp51(.YS(n_262), .YC(n_263), .A(n_10), .B(n_26), .C(n_200));
  FAX1 tmp52(.YS(n_284), .YC(n_285), .A(n_12), .B(n_28), .C(n_263));
  FAX1 tmp53(.YS(n_304), .YC(n_305), .A(n_14), .B(n_30), .C(n_285));
  MUX2X1 tmp54(.Y(n_326), .A(n_116), .B(n_156), .S(n_95));
  MUX2X1 tmp55(.Y(n_346), .A(n_136), .B(n_262), .S(n_95));
  assign n_347 = n_346;
  MUX2X1 tmp57(.Y(n_368), .A(n_158), .B(n_284), .S(n_95));
  assign n_369 = n_368;
  MUX2X1 tmp59(.Y(n_388), .A(n_178), .B(n_304), .S(n_95));
  assign n_389 = n_388;
  MUX2X1 tmp61(.Y(n_410), .A(n_179), .B(n_305), .S(n_95));
  assign O[0] = n_0;
  assign O[1] = n_2;
  assign O[2] = n_74;
  assign O[3] = n_94;
  assign O[4] = n_326;
  assign O[5] = n_347;
  assign O[6] = n_369;
  assign O[7] = n_389;
  assign O[8] = n_410;
endmodule


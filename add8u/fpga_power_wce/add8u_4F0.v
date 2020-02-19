/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.78 %
// MAE = 4.0 
// WCE% = 1.56 %
// WCE = 8.0 
// WCRE% = 100.00 %
// EP% = 93.75 %
// MRE% = 2.18 %
// MSE = 22 
// FPGA_POWER = 0.3
// FPGA_DELAY = 6.8
// FPGA_LUT = 5.0

module add8u_4F0(A, B, O);
  input [7:0] A, B;
  output [8:0] O;
  wire n_413, n_412, n_233, n_232, n_192, n_163, n_23, n_22, n_21, n_20;
  wire n_27, n_26, n_25, n_24, n_262, n_29, n_28, n_49, n_48, n_263;
  wire n_402, n_83, n_82, n_382, n_282, n_283, n_143, n_142, n_193, n_222;
  wire n_323, n_322, n_223, n_38, n_102, n_403, n_183, n_182, n_8, n_9;
  wire n_343, n_342, n_4, n_5, n_6, n_7, n_0, n_1, n_2, n_3;
  wire n_30, n_31, n_162, n_242, n_18, n_19, n_16, n_17, n_14, n_15;
  wire n_12, n_13, n_10, n_11, n_172, n_393, n_92, n_93, n_152, n_72;
  wire n_73, n_422, n_332, n_392, n_383, n_243, n_103;
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
  assign n_38 = n_24 | n_8;
  PDKGENHAX1 tmp44(.YS(n_48), .YC(n_49), .A(n_0), .B(n_0));
  PDKGENHAX1 tmp45(.YS(n_72), .YC(n_73), .A(n_8), .B(n_24));
  PDKGENHAX1 tmp46(.YS(n_82), .YC(n_83), .A(n_10), .B(n_26));
  PDKGENHAX1 tmp47(.YS(n_92), .YC(n_93), .A(n_12), .B(n_28));
  PDKGENHAX1 tmp48(.YS(n_102), .YC(n_103), .A(n_14), .B(n_30));
  assign n_142 = n_38 & n_22;
  assign n_143 = n_142;
  assign n_152 = n_72 & n_6;
  assign n_162 = n_73 | n_143;
  assign n_163 = n_162;
  assign n_172 = n_92 & n_83;
  assign n_182 = n_92 & n_82;
  assign n_183 = n_182;
  assign n_192 = n_93 | n_172;
  assign n_193 = n_192;
  assign n_222 = n_182 & n_163;
  assign n_223 = n_222;
  assign n_232 = n_183 & n_152;
  assign n_233 = n_232;
  assign n_242 = n_193 | n_223;
  assign n_243 = n_242;
  assign n_262 = n_243 | n_233;
  assign n_263 = n_262;
  assign n_282 = n_162 | n_152;
  assign n_283 = n_282;
  assign n_322 = n_22 | n_6;
  assign n_323 = n_322;
  assign n_332 = n_82 & n_282;
  assign n_342 = n_83 | n_332;
  assign n_343 = n_342;
  PDKGENHAX1 tmp74(.YS(n_382), .YC(n_383), .A(n_72), .B(n_323));
  PDKGENHAX1 tmp75(.YS(n_392), .YC(n_393), .A(n_82), .B(n_283));
  PDKGENHAX1 tmp76(.YS(n_402), .YC(n_403), .A(n_92), .B(n_343));
  PDKGENHAX1 tmp77(.YS(n_412), .YC(n_413), .A(n_102), .B(n_263));
  assign n_422 = n_103 | n_413;
  assign O[0] = n_48;
  assign O[1] = n_2;
  assign O[2] = n_20;
  assign O[3] = n_48;
  assign O[4] = n_382;
  assign O[5] = n_392;
  assign O[6] = n_402;
  assign O[7] = n_412;
  assign O[8] = n_422;
endmodule

/* mod */
module PDKGENHAX1( input A, input B, output YS, output YC );
    assign YS = A ^ B;
    assign YC = A & B;
endmodule

/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.0061 %
// MAE = 0.5 
// WCE% = 0.012 %
// WCE = 1.0 
// WCRE% = 100.00 %
// EP% = 50.00 %
// MRE% = 0.017 %
// MSE = 0.5 
// FPGA_POWER = 0.44
// FPGA_DELAY = 8.0
// FPGA_LUT = 15

module add12u_1DL(A, B, O);
  input [11:0] A, B;
  output [12:0] O;
  wire n_543, n_542, n_707, n_258, n_45, n_44, n_47, n_46, n_41, n_40;
  wire n_43, n_42, n_824, n_752, n_143, n_142, n_776, n_777, n_706, n_400;
  wire n_30, n_31, n_32, n_33, n_34, n_35, n_36, n_37, n_38, n_39;
  wire n_494, n_70, n_119, n_23, n_22, n_21, n_20, n_27, n_26, n_25;
  wire n_24, n_29, n_28, n_659, n_658, n_636, n_424, n_425, n_189, n_188;
  wire n_2, n_18, n_19, n_16, n_17, n_14, n_3, n_12, n_13, n_10;
  wire n_11, n_94, n_95, n_330, n_331, n_352, n_353, n_589, n_588, n_15;
  wire n_730, n_731, n_448, n_612, n_118, n_71, n_213, n_212, n_565, n_564;
  wire n_376, n_377, n_800, n_682, n_683, n_165, n_164, n_282, n_283, n_518;
  wire n_519, n_8, n_9, n_4, n_5, n_6, n_7, n_0, n_1, n_307;
  wire n_306, n_471, n_470;
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
  assign n_16 = A[8];
  assign n_17 = A[8];
  assign n_18 = A[9];
  assign n_19 = A[9];
  assign n_20 = A[10];
  assign n_21 = A[10];
  assign n_22 = A[11];
  assign n_23 = A[11];
  assign n_24 = B[0];
  assign n_25 = B[0];
  assign n_26 = B[1];
  assign n_27 = B[1];
  assign n_28 = B[2];
  assign n_29 = B[2];
  assign n_30 = B[3];
  assign n_31 = B[3];
  assign n_32 = B[4];
  assign n_33 = B[4];
  assign n_34 = B[5];
  assign n_35 = B[5];
  assign n_36 = B[6];
  assign n_37 = B[6];
  assign n_38 = B[7];
  assign n_39 = B[7];
  assign n_40 = B[8];
  assign n_41 = B[8];
  assign n_42 = B[9];
  assign n_43 = B[9];
  assign n_44 = B[10];
  assign n_45 = B[10];
  assign n_46 = B[11];
  assign n_47 = B[11];
  HAX1 tmp59(.YS(n_70), .YC(n_71), .A(n_2), .B(n_26));
  FAX1 tmp60(.YS(n_94), .YC(n_95), .A(n_4), .B(n_28), .C(n_71));
  FAX1 tmp61(.YS(n_118), .YC(n_119), .A(n_6), .B(n_30), .C(n_95));
  HAX1 tmp62(.YS(n_142), .YC(n_143), .A(n_8), .B(n_32));
  FAX1 tmp63(.YS(n_164), .YC(n_165), .A(n_10), .B(n_34), .C(n_143));
  FAX1 tmp64(.YS(n_188), .YC(n_189), .A(n_12), .B(n_36), .C(n_165));
  FAX1 tmp65(.YS(n_212), .YC(n_213), .A(n_14), .B(n_38), .C(n_189));
  assign n_258 = ~n_142;
  assign n_282 = n_32 | n_8;
  assign n_283 = n_282;
  FAX1 tmp69(.YS(n_306), .YC(n_307), .A(n_10), .B(n_34), .C(n_283));
  FAX1 tmp70(.YS(n_330), .YC(n_331), .A(n_12), .B(n_36), .C(n_307));
  FAX1 tmp71(.YS(n_352), .YC(n_353), .A(n_14), .B(n_38), .C(n_331));
  MUX2X1 tmp72(.Y(n_376), .A(n_142), .B(n_258), .S(n_119));
  assign n_377 = n_376;
  MUX2X1 tmp74(.Y(n_400), .A(n_164), .B(n_306), .S(n_119));
  MUX2X1 tmp75(.Y(n_424), .A(n_188), .B(n_330), .S(n_119));
  assign n_425 = n_424;
  MUX2X1 tmp77(.Y(n_448), .A(n_212), .B(n_352), .S(n_119));
  MUX2X1 tmp78(.Y(n_470), .A(n_213), .B(n_353), .S(n_119));
  assign n_471 = n_470;
  assign n_494 = n_16 & n_40;
  FAX1 tmp81(.YS(n_518), .YC(n_519), .A(n_18), .B(n_42), .C(n_494));
  FAX1 tmp82(.YS(n_542), .YC(n_543), .A(n_20), .B(n_44), .C(n_519));
  FAX1 tmp83(.YS(n_564), .YC(n_565), .A(n_22), .B(n_46), .C(n_543));
  HAX1 tmp84(.YS(n_588), .YC(n_589), .A(n_16), .B(n_40));
  assign n_612 = ~n_588;
  assign n_636 = n_16 | n_40;
  FAX1 tmp87(.YS(n_658), .YC(n_659), .A(n_18), .B(n_42), .C(n_636));
  FAX1 tmp88(.YS(n_682), .YC(n_683), .A(n_20), .B(n_44), .C(n_659));
  FAX1 tmp89(.YS(n_706), .YC(n_707), .A(n_22), .B(n_46), .C(n_683));
  MUX2X1 tmp90(.Y(n_730), .A(n_588), .B(n_612), .S(n_471));
  assign n_731 = n_730;
  MUX2X1 tmp92(.Y(n_752), .A(n_518), .B(n_658), .S(n_470));
  MUX2X1 tmp93(.Y(n_776), .A(n_542), .B(n_682), .S(n_471));
  assign n_777 = n_776;
  MUX2X1 tmp95(.Y(n_800), .A(n_564), .B(n_706), .S(n_470));
  MUX2X1 tmp96(.Y(n_824), .A(n_565), .B(n_707), .S(n_471));
  assign O[0] = n_24;
  assign O[1] = n_70;
  assign O[2] = n_94;
  assign O[3] = n_118;
  assign O[4] = n_377;
  assign O[5] = n_400;
  assign O[6] = n_425;
  assign O[7] = n_448;
  assign O[8] = n_731;
  assign O[9] = n_752;
  assign O[10] = n_777;
  assign O[11] = n_800;
  assign O[12] = n_824;
endmodule


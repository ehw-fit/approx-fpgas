/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.14 %
// MAE = 11 
// WCE% = 0.46 %
// WCE = 38 
// WCRE% = 2300.00 %
// EP% = 97.31 %
// MRE% = 0.39 %
// MSE = 195 
// FPGA_POWER = 0.34
// FPGA_DELAY = 7.4
// FPGA_LUT = 7.0

module add12u_1KS(A, B, O);
  input [11:0] A, B;
  output [12:0] O;
  wire n_706, n_544, n_45, n_44, n_47, n_46, n_41, n_40, n_43, n_42;
  wire n_48, n_383, n_382, n_149, n_148, n_674, n_776, n_777, n_716, n_717;
  wire n_30, n_31, n_32, n_33, n_34, n_35, n_36, n_37, n_38, n_39;
  wire n_817, n_816, n_158, n_159, n_787, n_786, n_432, n_23, n_22, n_21;
  wire n_20, n_27, n_26, n_25, n_24, n_29, n_28, n_806, n_807, n_554;
  wire n_129, n_128, n_837, n_836, n_341, n_340, n_220, n_221, n_422, n_18;
  wire n_19, n_16, n_17, n_14, n_15, n_12, n_13, n_10, n_11, n_98;
  wire n_99, n_330, n_138, n_139, n_826, n_827, n_452, n_109, n_108, n_534;
  wire n_535, n_594, n_442, n_696, n_118, n_119, n_291, n_290, n_271, n_270;
  wire n_372, n_684, n_280, n_281, n_8, n_9, n_4, n_5, n_6, n_7;
  wire n_0, n_1, n_2, n_3, n_796, n_797, n_50, n_51, n_766;
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
  assign n_48 = ~(n_44 & n_18 & n_12);
  assign n_50 = ~(n_48 | n_12);
  assign n_51 = n_50;
  PDKGENHAX1 tmp62(.YS(n_98), .YC(n_99), .A(n_10), .B(n_34));
  PDKGENHAX1 tmp63(.YS(n_108), .YC(n_109), .A(n_12), .B(n_36));
  PDKGENHAX1 tmp64(.YS(n_118), .YC(n_119), .A(n_14), .B(n_38));
  PDKGENHAX1 tmp65(.YS(n_128), .YC(n_129), .A(n_16), .B(n_40));
  PDKGENHAX1 tmp66(.YS(n_138), .YC(n_139), .A(n_18), .B(n_42));
  PDKGENHAX1 tmp67(.YS(n_148), .YC(n_149), .A(n_20), .B(n_44));
  PDKGENHAX1 tmp68(.YS(n_158), .YC(n_159), .A(n_22), .B(n_46));
  assign n_220 = n_38 & n_50;
  assign n_221 = n_220;
  assign n_270 = ~n_220;
  assign n_271 = n_270;
  assign n_280 = n_99 & n_108;
  assign n_281 = n_280;
  assign n_290 = n_281 | n_109;
  assign n_291 = n_290;
  assign n_330 = n_290 & n_118;
  assign n_340 = n_330 | n_119;
  assign n_341 = n_340;
  assign n_372 = n_129 & n_138;
  assign n_382 = n_372 | n_139;
  assign n_383 = n_382;
  assign n_422 = n_382 & n_148;
  assign n_432 = n_422 | n_149;
  assign n_442 = n_128 & n_138;
  assign n_452 = n_442 & n_148;
  assign n_534 = n_220 | n_340;
  assign n_535 = n_534;
  assign n_544 = n_534 & n_452;
  assign n_554 = n_544 | n_432;
  assign n_594 = n_50 | n_554;
  assign n_674 = n_221 | n_291;
  assign n_684 = n_535 & n_128;
  assign n_696 = n_684 | n_129;
  assign n_706 = n_684 & n_442;
  assign n_716 = n_706 | n_383;
  assign n_717 = n_716;
  assign n_766 = n_98;
  PDKGENHAX1 tmp99(.YS(n_776), .YC(n_777), .A(n_108), .B(n_99));
  PDKGENHAX1 tmp100(.YS(n_786), .YC(n_787), .A(n_118), .B(n_674));
  PDKGENHAX1 tmp101(.YS(n_796), .YC(n_797), .A(n_128), .B(n_341));
  PDKGENHAX1 tmp102(.YS(n_806), .YC(n_807), .A(n_138), .B(n_696));
  PDKGENHAX1 tmp103(.YS(n_816), .YC(n_817), .A(n_148), .B(n_717));
  PDKGENHAX1 tmp104(.YS(n_826), .YC(n_827), .A(n_158), .B(n_594));
  assign n_836 = n_159 | n_827;
  assign n_837 = n_836;
  assign O[0] = n_10;
  assign O[1] = n_51;
  assign O[2] = n_42;
  assign O[3] = n_270;
  assign O[4] = n_271;
  assign O[5] = n_766;
  assign O[6] = n_776;
  assign O[7] = n_786;
  assign O[8] = n_796;
  assign O[9] = n_806;
  assign O[10] = n_816;
  assign O[11] = n_826;
  assign O[12] = n_837;
endmodule

/* mod */
module PDKGENHAX1( input A, input B, output YS, output YC );
    assign YS = A ^ B;
    assign YC = A & B;
endmodule

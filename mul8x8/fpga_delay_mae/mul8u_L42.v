/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 4.16 %
// MAE = 2728 
// WCE% = 15.19 %
// WCE = 9953 
// WCRE% = 100.00 %
// EP% = 99.20 %
// MRE% = 41.93 %
// MSE = 11489.87e3 
// FPGA_POWER = 0.28
// FPGA_DELAY = 6.2
// FPGA_LUT = 5.0

module mul8u_L42 (
    A,
    B,
    O
);

input [7:0] A;
input [7:0] B;
output [15:0] O;

wire sig_117,sig_207,sig_253,sig_285,sig_286,sig_288,sig_289,sig_296,sig_297,sig_298,sig_326,sig_327,sig_328,sig_329,sig_330,sig_331,sig_333,sig_334,sig_335;

assign sig_117 = B[6] & A[6];
assign sig_207 = B[7] & A[5];
assign sig_253 = B[7] & A[6];
assign sig_285 = sig_253 & A[5];
assign sig_286 = sig_207 | sig_253;
assign sig_288 = A[7] & sig_285;
assign sig_289 = sig_286 ^ sig_285;
assign sig_296 = B[5] & A[7];
assign sig_297 = B[6] & A[7];
assign sig_298 = B[7] & A[7];
assign sig_326 = sig_289 ^ sig_297;
assign sig_327 = sig_289 & sig_297;
assign sig_328 = sig_326 & sig_296;
assign sig_329 = sig_326 ^ sig_296;
assign sig_330 = sig_327 | sig_328;
assign sig_331 = sig_285 ^ sig_298;
assign sig_333 = B[7] & sig_330;
assign sig_334 = sig_331 ^ sig_330;
assign sig_335 = sig_288 | sig_333;

assign O[15] = sig_335;
assign O[14] = sig_334;
assign O[13] = sig_329;
assign O[12] = sig_117;
assign O[11] = sig_117;
assign O[10] = sig_298;
assign O[9] = sig_117;
assign O[8] = 1'b0;
assign O[7] = 1'b0;
assign O[6] = 1'b0;
assign O[5] = 1'b0;
assign O[4] = 1'b0;
assign O[3] = 1'b0;
assign O[2] = 1'b0;
assign O[1] = 1'b0;
assign O[0] = 1'b0;

endmodule




Selected circuits
===================
 - **Circuit**: 16-bit unsigned multipliers
 - **Selection criteria**: pareto optimal sub-set wrt. MED [%] and Latency parameters

Parameters of selected circuits
----------------------------

| Circuit name | MAE<sub>%</sub> | WCE<sub>%</sub> | EP<sub>%</sub> | MRE<sub>%</sub> | MSE | Power<sub>W</sub> | Delay<sub>ns</sub> | LUTs | Download |
| --- |  --- | --- | --- | --- | --- | --- | --- | --- | --- |
| mul16u_HFD | 0.00 | 0.00 | 0.00 | 0.00 | 0 | 3.4 | 15 | 292 |  [[Verilog](mul16u_HFD.v)] [[Verilog<sub>PDK45</sub>](mul16u_HFD_pdk45.v)] [[C](mul16u_HFD.c)] |
| mul16u_024 | 0.000002 | 0.0000097 | 99.14 | 0.00028 | 11045 | 8.8 | 15 | 426 |  [[Verilog](mul16u_024.v)] [[Verilog<sub>PDK45</sub>](mul16u_024_pdk45.v)] [[C](mul16u_024.c)] |
| mul16u_01G | 0.000061 | 0.00039 | 99.93 | 0.0044 | 11039.017e3 | 6.9 | 15 | 349 |  [[Verilog](mul16u_01G.v)] [[Verilog<sub>PDK45</sub>](mul16u_01G_pdk45.v)] [[C](mul16u_01G.c)] |
| mul16u_0CM | 0.00012 | 0.00068 | 99.97 | 0.012 | 43249.098e3 | 6.7 | 15 | 326 |  [[Verilog](mul16u_0CM.v)] [[Verilog<sub>PDK45</sub>](mul16u_0CM_pdk45.v)] [[C](mul16u_0CM.c)] |
| mul16u_4T4 | 0.0022 | 0.012 | 99.99 | 0.12 | 13238.435e6 | 3.7 | 14 | 228 |  [[Verilog](mul16u_4T4.v)] [[Verilog<sub>PDK45</sub>](mul16u_4T4_pdk45.v)] [[C](mul16u_4T4.c)] |
| mul16u_5N2 | 0.0041 | 0.022 | 99.99 | 0.20 | 46853.997e6 | 2.9 | 13 | 158 |  [[Verilog](mul16u_5N2.v)] [[Verilog<sub>PDK45</sub>](mul16u_5N2_pdk45.v)] [[C](mul16u_5N2.c)] |
| mul16u_HHB | 0.048 | 0.19 | 99.97 | 0.84 | 59448.176e8 | 1.4 | 11 | 115 |  [[Verilog](mul16u_HHB.v)] [[Verilog<sub>PDK45</sub>](mul16u_HHB_pdk45.v)] [[C](mul16u_HHB.c)] |
| mul16u_HFR | 0.39 | 1.55 | 100.00 | 5.15 | 38746.053e10 | 0.69 | 10 | 47 |  [[Verilog](mul16u_HFR.v)] [[Verilog<sub>PDK45</sub>](mul16u_HFR_pdk45.v)] [[C](mul16u_HFR.c)] |
| mul16u_HEN | 3.03 | 12.11 | 100.00 | 26.79 | 23887.935e12 | 0.36 | 8.0 | 15 |  [[Verilog](mul16u_HEN.v)] [[Verilog<sub>PDK45</sub>](mul16u_HEN_pdk45.v)] [[C](mul16u_HEN.c)] |
| mul16u_HEZ | 18.75 | 75.00 | 100.00 | 87.99 | 10407.645e14 | 0.25 | 6.0 | 1.0 |  [[Verilog](mul16u_HEZ.v)] [[Verilog<sub>PDK45</sub>](mul16u_HEZ_pdk45.v)] [[C](mul16u_HEZ.c)] |
    
Parameters
--------------
![Parameters figure](fig.png)

References
--------------
PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020.

             
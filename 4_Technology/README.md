EE 628 uses the IHP 130nm BiCMOS Open Source PDK available here: https://github.com/IHP-GmbH/IHP-Open-PDK.  

This folder contains some basic (low-voltage) MOSFET characterization data that is useful for analog/mixed-signal design. The subdirectories contain the following plots:  
* $g_m/I_D$ and $f_T$ versus gate bias and minimum channel length. This is useful as an overview and for NMOS vs. PMOS comparison.
* $f_T$ vs. $g_m/I_D$ tradeoff plot for various channel lengths.
* $g_m/g_{ds}$ (intrinsic gain) vs. $g_m/I_D$ for various channel lengths.
* $I_D/W$ (current density) vs. $g_m/I_D$ for various channel lengths. This plot is useful for device sizing.
* On-resistance of a transmission gate vs. input voltage (along with NMOS/PMOS resistances components). This is useful for switch sizing in switched-capacitor circuits.  

For the $g_m/I_D$-related plots, $V_{DS}$=1.2V, while $V_{DS}$=0V for the transmission gate data.

The figures below show the testbench setup in Xschem. The Ngspice output (text) data was read into Matlab to generate mat files as used in the "Book-on-gm-ID-design" repo (https://github.com/bmurmann/Book-on-gm-ID-design). The employed schematics, auxiliary files and output data are available in this folder.

<p align="center">
   <img src="./img/tb_sg13_lv_nmos.png" width="800" />
</p>

<p align="center">
   <img src="./img/tb_sg13_lv_tgate.png" width="800" />
</p>


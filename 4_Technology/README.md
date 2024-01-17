EE 628 uses the IHP 130nm BiCMOS Open Source PDK available here: https://github.com/IHP-GmbH/IHP-Open-PDK.  

This folder contains basic LV MOSFET characterization data that is useful for analog/mixed-signal design. The subdirectories contain the following plots:  
* $g_m/I_D$ and $f_T$ versus gate bias and minimum channel length. This is useful as an overview and for NMOS vs. PMOS comparison.
* $f_T$ vs. $g_m/I_D$ tradeoff plot for various channel lengths.
* $g_m/g_{ds}$ (intrinsic gain) vs. $g_m/I_D$ for various channel lengths.
* $I_D/W$ (current density) vs. $g_m/I_D$ for various channel lengths. This plot is useful for device sizing.
* $V_t$ vs. $L$. This is useful for checking how the threshold voltage varies with cannel length.
* On-resistance of a transmission gate vs. input voltage. This is useful for switch sizing in switched-capacitor circuits.  

The figures below show the testbench setup in Xschem. For the $g_m/I_D$-related plots the output data were processed as follows (see files in the src directory):
* Read the raw output data (txt) into Matlab
* Combine some of the data into the desired parameters (e.g., $CGG = cgg+cgsol  +cgdol$)
* Save each parameter set (NMOS, PMOS) in mat file format as used in the [Book-on-gm-ID-design](https://github.com/bmurmann/Book-on-gm-ID-design) repo
* Use the look_up function to read the mat file data and generate the example plots
* The generated mat files can of course be used for other purposes, such as circuit sizing scripts

The transmission gate simulation data is read into Matlab and plotted directly  


<p align="center">
   <img src="./img/tb_sg13_lv_nmos.png" width="800" />
</p>
<p align="center">
   <img src="./img/tb_sg13_lv_tgate.png" width="800" />
</p>


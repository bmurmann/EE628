# Modifications made to IO cells and cdl (to pass LVS)
Original files from the PDK's dev branch:  
sg13g2_io.gds  
sg13g2_io.spi  

Modified files:  
sg13g2_io_bm.oas  
sg13g2_io_bm.cdl  



* In cdl file, changed all X to M for MOSFETs  
* In cdl file, changed all X to D for diodes  
* In cdl file, changed rppd to res_rppd  
* In cdl file, flipped anode and cathode of all dantenna and dpantenna. The LVS is expecting a pin ordering that is the opposite of the spice standard (which is anode, cathode)!

* In oas file, IOPadAnalog/SecondaryProtection
  * Added required `heatres` and `polyres` layers to RPPD layout
  * Deleted `substrate` layer (to avoid unmatched PTAP1 instances in LVS)




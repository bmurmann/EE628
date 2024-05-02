# Modifications made to IO cell layout and cdl netlist (to pass LVS)

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
* In cdl files added A and P values to all diodes to eliminate warnings/LVS mismatches

* In oas file, SecondaryProtection
  * Added required `heatres` and `polyres` layers to RPPD layout
  * Deleted `substrate` layer (to avoid unmatched PTAP1 instances in LVS)

* In oas file, Clamp_N20N0D
  * Added required `heatres` and `polyres` layers to RPPD layout
  * Added `heattrans` layer on NMOS HV devices; this seems to be used to distinguish between NMOS and NMOS RF for HV devices. Without this layer, the LVS finds both types.

* In oas file, Clamp_P20N0D
  * Added required `heatres` and `polyres` layers to RPPD layout
  * Added `heatrans` layer on PMOS HV devices; this seems to be used to distinguish between PMOS and PMOS RF for HV devices. Without this layer, the LVS finds both types.

* In oas file, DCNDiode
  * Removed `recog.esd` so that this diode gets recognized as `dantenna` as defined in the netlist

* In oas file, DCPDiode
  * Removed `recog.esd` layer so that this diode gets recognized as `dpantenna` as defined in the netlist

* In oas file, IOPadAnalog
  * The cell needs a dummy connection between the two `IOVDD' rails. This connection is provided by other cells in the pad ring, so this is just a memo to self for for isolated checking of this cell.

  * In oas file, Clamp_N8N8D
  * Added `heattrans` layer on NMOS HV devices

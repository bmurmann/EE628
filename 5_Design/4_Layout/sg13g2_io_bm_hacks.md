# Modifications made to IO cell layout and CDL netlist (to pass KLayout LVS)

Original files from the PDK's dev branch:  
sg13g2_io.gds  
sg13g2_io.spi  

Modified files:  
sg13g2_io_bm.oas  
sg13g2_io_bm.cdl  


## CDL changes
* Changed all X to M for MOSFETs  
* Changed all X to D for diodes  
* Added some A and P values to all diodes to eliminate warnings/LVS mismatches


## Layout changes
* IOPadAnalog
  * The cell needs a dummy connection between the two `IOVDD' rails. This connection is provided by other cells in the pad ring, so this is just a memo to self for isolated checking of this cell.

* IOPadOut16mA
  * Ditto, the cell needs a dummy connection between the two `IOVDD' rails.

* DCNDiode
  * Removed `recog.esd` so that this diode gets recognized as `dantenna` as defined in the netlist

* DCPDiode
  * Removed `recog.esd` layer so that this diode gets recognized as `dpantenna` as defined in the netlist

* SecondaryProtection
  * Added required `heatres` and `polyres` layers to RPPD layout
  * Deleted `substrate` layer (to avoid unmatched PTAP1 instances in LVS)

* Clamp_N20N0D
  * Added required `heatres` and `polyres` layers to RPPD layout
  * Added `heattrans` layer on NMOS HV devices; this seems to be used to distinguish between NMOS and NMOS RF for HV devices. Without this layer, the LVS finds both types of transistors and connects them in parallel.

* Clamp_P20N0D
  * Added required `heatres` and `polyres` layers to RPPD layout
  * Added `heatrans` layer on PMOS HV devices.

* Clamp_N8N8D
  * Added `heattrans` layer on NMOS HV devices

* Clamp_P8N8D
  * Added `heattrans` layer on NMOS HV devices

* RCClampResistor
  * Replaced RPPD with a pycell-generated device (25 bends). The LVS currently has trouble matching series-connected resistors (they simplify in a an odd way)

* IOPadVDD
  * The original cell was buggy as documented here: https://github.com/IHP-GmbH/IHP-Open-PDK/issues/101#issuecomment-2095787568
  * Made appropriate fixes in the local cell

* Added M2 in corner cell to meet density requirements
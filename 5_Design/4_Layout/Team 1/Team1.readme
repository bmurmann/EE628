# EE628 Team 1
This repository contains the schematic and layout files for the Second-order Incremental Delta-Sigma Modulator (IDSM2)-based 
Analog-to-Digital Converter (ADC). It is the project for EE628 Analysis and Design of Integrated Circuits at the University of Hawaiʻi at Mānoa.

This modulator is an implementation of the design found in:

Y. Chae et al., "A 2.1 M Pixels, 120 Frame/s CMOS Image Sensor With Column-Parallel 
ADC Architecture," in IEEE Journal of Solid-State Circuits, Jan. 2011. https://ieeexplore.ieee.org/document/5641589

## Current Status:
These are preliminary files in need of fixes for lvs.

### clock_gen.oas
All LVS checks pass.

All DRC checks pass with the exception of:
- aFil.g2
- GFil.g
- M2.j
- M3.j
- M1Fil.h
- M2Fil.h
- M3Fil.h

### stage.oas
Not all LVS checks pass. Only some pins are recognized and we have not solved that issue. Overall we are also having issues of lvs providing different output depending on the machine it is run on.

All DRC checks pass with the exception of:
- aFil.g
- aFil.g2
- GFil.g
- M1.j
- M2.j
- M3.j
- M4.j
- M5.j
- M1Fil.h
- M2Fil.h
- M3Fil.h
- M4Fil.h
- M5Fil.h
- TM1.c

### comparator.oas
Not all LVS checks pass. Similar issues as the stage.

All DRC checks pass with the exception of:
- aFil.g
- aFil.g2
- GFil.g
- M1.j
- M2.j
- M3.j
- M4.j
- M5.j
- M1Fil.h
- M2Fil.h
- M3Fil.h
- M4Fil.h
- M5Fil.h
- TM1.c


## 📄 Deliverables
The deliverables for this project all have the filename "Team1":
- Team1.spice: The SPICE circuit schematic for the ADC, compatible with LVS.
- Team1_sim.spice: The SPICE circuit schematic for the ADC, with the SPICE header option enabled. Used for simulation but breaks LVS.
- Team1.sym: The top-level symbol for the ADC schematic.
- Team1.oas: The full OASIS layout file for the ADC.
- Team1.readme: A copy of this README file. Automatically kept up to date using GitHub Actions.

Individual OASIS layout files are included for the individual components of the ADC layout: 
- clock_gen.oas: The clock generator, which splits a single clock pulse into four pulses.
- comparator.oas: The comparator, which determines if the integrated sum of the stages exceeds the input voltage.
- stage.oas: The integrator, which sums samples of the input voltage.

## Team1 pin list:
Name|Type|Purpose
---|---|---
vin|input|Analog input of ADC
dd|output|Digital output of ADC
res|input|Digital reset signal (active high)
vdda|supply|Analog supply voltage
vssa|supply|Ground
vlo|input|Digital low signal
vhi|input|Digital high signal
clkin|input|Clock signal

## /gds3d
This directory contains files for 3D visualization of the layouts using the [GDS3D tool](https://github.com/trilomix/GDS3D). 

### 📄 sg13g2.txt
This directory contains a definition file for some, but not all, of the layers in the sg13g2 technology. The file defines the following layers:
- N-Well
- Active
- P-Plus
- N-Plus
- GatPoly
- Contact
- Metal 1
- Metal 2
- pSD
- Via 1
- Via 2
- Metal 3
- NWell
- MIM
- Via3
- Metal4
- Via4
- Metal5
- TopVia1
- TopMetal1
- Vmim

The layouts have been included in this directory in GDS format for convenience. To view the layouts, follow the following instructions:
1. Clone the [GDS3D tool](https://github.com/trilomix/GDS3D) to your machine. It does not function in the sg13g2 PDK Docker container as of now.
2. Copy the files in the `/gds3d` directory of this repository to the root of the cloned `GDS3D` repository.
3. Navigate to the `GDS3D` repository in your terminal.
4. Run the program, passing the technology file and the layout you'd like to view as arguments.

For Windows, an example would be
```
.\win32\GDS3D.exe -p .\sg13g2.txt -i .\clock_gen.gds
```
Note that the location of the executable depends on your operating system. For Linux machines, ensure that the file is made executable and that the correct libraries are installed.


|Name|Type|Purpose|
|----|----|-------|
|VDD|supply|Positive rail|
|VSS|supply|Ground|
|vdda|supply|Analog supply voltage|
|vssa|supply|Analog ground|
|vlo|reference|integrator reference DC voltage|
|vhi|reference|integrator reference DC voltage|
|clkin|clock|input to clock generator|
|res|reset|resets integrators when high|
|vin|input|input to the IDSM2|
|vout|output|output node. goes high when threshold voltage is met|

current status:
layout is done for the integrator, clock, and comparrator. Currently working on
getting those three components to pass LVS, and working on connecting them in top level
schematic in an orderly fashion.

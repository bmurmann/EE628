#!/bin/bash
cat ../3_Real_circuits/simulations/UHEE628_S2024.spice \
    Team1.cdl \
    Team2.cdl \
    Team3.cdl \
    Team4.cdl \
    Team5.cdl \
    Team6.cdl \
    sg13g2_io_bm.cdl \
    sg13g2_stdcell.cdl \
    > UHEE628_S2024.cdl
#!/bin/bash
# This script places layout library softlinks into $KLAYOUT_HOME/libraries
# Before doing this, set KLAYOUT_HOME to use the latest (hacked) setup files in this repo (for LVS, etc.)
# export KLAYOUT_HOME=$DESIGNS/EE628/5_Design/4_Layout/.klayout

ln -fs $DESIGNS/EE628/5_Design/4_Layout/sg13g2_io_bm.oas     $KLAYOUT_HOME/libraries
ln -fs $DESIGNS/EE628/5_Design/4_Layout/bondpad_80x80.gds    $KLAYOUT_HOME/libraries
ln -fs $DESIGNS/EE628/5_Design/4_Layout/padring.oas          $KLAYOUT_HOME/libraries
ln -fs $DESIGNS/EE628/5_Design/4_Layout/sg13g2_pr.gds        $KLAYOUT_HOME/libraries
ln -fs $DESIGNS/EE628/5_Design/4_Layout/sg13g2_stdcell.gds   $KLAYOUT_HOME/libraries

ln -fs $DESIGNS/EE628/5_Design/4_Layout/Team\ 1/Team1.oas $KLAYOUT_HOME/libraries
ln -fs $DESIGNS/EE628/5_Design/4_Layout/Team\ 2\ -\ Transformer\ Monster\ Tractors/Team2.oas $KLAYOUT_HOME/libraries
ln -fs $DESIGNS/EE628/5_Design/4_Layout/Team\ 3/Team3.oas $KLAYOUT_HOME/libraries
ln -fs $DESIGNS/EE628/5_Design/4_Layout/Team\ 4/Team4.oas $KLAYOUT_HOME/libraries
ln -fs $DESIGNS/EE628/5_Design/4_Layout/Team\ 5/Team5.oas $KLAYOUT_HOME/libraries
ln -fs $DESIGNS/EE628/5_Design/4_Layout/Team\ 6/Team6.oas $KLAYOUT_HOME/libraries

ln -fs $DESIGNS/EE628/5_Design/4_Layout/Team\ 1/Team1_logo.oas $KLAYOUT_HOME/libraries
ln -fs $DESIGNS/EE628/5_Design/4_Layout/Team\ 2\ -\ Transformer\ Monster\ Tractors/Team2_logo.oas $KLAYOUT_HOME/libraries
ln -fs $DESIGNS/EE628/5_Design/4_Layout/Team\ 3/Team3_logo.oas $KLAYOUT_HOME/libraries
ln -fs $DESIGNS/EE628/5_Design/4_Layout/Team\ 4/Team4_logo.oas $KLAYOUT_HOME/libraries
ln -fs $DESIGNS/EE628/5_Design/4_Layout/Team\ 5/Team5_logo.oas $KLAYOUT_HOME/libraries
ln -fs $DESIGNS/EE628/5_Design/4_Layout/Team\ 6/Team6_logo.oas $KLAYOUT_HOME/libraries

1\. Install Linux on your Windows computer using the "Windows Subsystem for Linux (WSL) feature." Follow the instructions here:
https://learn.microsoft.com/en-us/windows/wsl/tutorials/gui-apps. The default Linux distribution is Ubuntu, which is perfect for our use case.

2\. Restarting will open a shell that prompts you to set your UNIX user name and password. You now see your Linux prompt and you can run any command from here.

3\. Install git: `sudo apt install git-all`

4\. Install the Docker container from https://github.com/iic-jku/IIC-OSIC-TOOLS/tree/main. The essential steps are:    

* Clone the repository
     
  ```
  mkdir github
  cd github  
  git clone --depth=1 https://github.com/iic-jku/iic-osic-tools.git`
  ```
* Install Docker by following these steps: https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository. Test the installation using: `sudo docker run hello-world`

* Follow the post-install steps: https://docs.docker.com/engine/install/linux-postinstall/. You should now be able to run docker without sudo: `docker run hello-world`

5\. Type `./start_x.sh` to run the container. On first use, this downloads end extracts all the files (~18 GB or so), which will take time. Make sure that you have a fast internet connection!

6\. You will now see a terminal with the prompt `/foss/design`. This is your working directory where all your design data goes. You can also see this directory in your Linux terminal as `~/eda/designs`. Even if you update or uninstall the container, the files in the `foss` folder will stay on your machine.

7\. Type `iic-pdk sg13g2` to switch to the IHP PDK that we will use in this course. To skip typing this command every time, create a `.designinit` text file in your design directory with the following lines. The last line sets a variable that we will need for local KLayout setup files. 
```
PDK_ROOT=/foss/pdks
PDK=sg13g2
PDKPATH=/foss/pdks/sg13g2
export KLAYOUT_HOME=/foss/designs/.klayout
```

8\. Type `xschem` to see the schematic editor showing simulation testbenches for various components. Left-click "dc_lv_nmos" then right-click "descend schematic". Click netlist, then simulate and CTRL-click "load waves" to see the simulation output.

9\. The digital standard cell symbols in the container's `2023.12` version have the wrong spice pin order. To fix the problem, enter the container as root (from the WSL command line)
```
docker exec -u root -t -i iic-osic-tools_xserver_uid_1000 /bin/bash
```
Go to directory containing the IHP standard cell symbols
```
cd /foss/pdks/sg13g2/libs.tech/xschem/sg13g2_stdcells
```
Run the following command to fix the symbols’ pin order (courtesy Mitch Bailey)
```
sed -i  \
-e 's/@VGND @VNB @VPB @VPWR/@VDD @VSS/' \
-e 's/VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR/VDD=VDD VSS=VSS/' \
-e 's/VGND VNB VPB VPWR/VDD VSS/' \
-e 's/@VDD @VSS @@Q @@Q_N/@@Q @@Q_N @VDD @VSS/' \
-e 's/\(@@RESET.*\)@@Q @@Q_N /@@Q @@Q_N \1/' *.sym
```

10\. From within the container's command line, create a configuration directory for KLayout and populate it as detailed below. We fetch the latest versions of the python and tech directories directly from the IHP github instead of copying them form within the container (this fixes some bugs).
```
cd /foss/designs
mkdir ./.klayout
mkdir ./.klayout/libraries
ln -s $PDKPATH/libs.ref/sg13g2_pr/gds/sg13g2_pr.gds ./.klayout/libraries
ln -s $PDKPATH/libs.ref/sg13g2_stdcell/gds/sg13g2_stdcell.gds ./.klayout/libraries
mkdir temp
git clone https://github.com/IHP-GmbH/IHP-Open-PDK.git temp
cp -r ./temp/ihp-sg13g2/libs.tech/klayout/python/ ./.klayout/
cp -r ./temp/ihp-sg13g2/libs.tech/klayout/tech/ ./.klayout/
cd .klayout/python/sg13g2_pycell_lib/ihp/
mv pmos_code.py pmos_code_bak.py
curl -o pmos_code.py https://raw.githubusercontent.com/bmurmann/EE628/main/3_Tools/python/pmos_code.py
cd /foss/designs
```

11\. Create a subdirectory for your layout work and launch KLayout.
```
mkdir layout
cd layout
```
You can now start KLayout using the -e option (edit mode). Save your layouts as oas files (not gds).
```
klayout -e & 
```

12\. Add LVS scripts (released on 4/23/2024). We will make use of the PDK clone that we created in step 10 above (in the temp folder) to copy the latest version of the KLayout scripts from the dev branch.
```
cd /foss/designs/temp
git pull
git checkout dev
cd /foss/designs
/bin/cp -fr ./temp/ihp-sg13g2/libs.tech/klayout/python/ ./.klayout/
/bin/cp -fr ./temp/ihp-sg13g2/libs.tech/klayout/tech/ ./.klayout/
```
When you launch KLayout, you will now see a menu item saying "SG13G2 PDK." Click on "Load PDK options" which creates a new menu item "KLayout LVS Options." Everything should now be ready to use as described [here](https://github.com/IHP-GmbH/IHP-Open-PDK/tree/dev/ihp-sg13g2/libs.tech/klayout/tech/lvs). You can test the LVS setup using an example layout & netlist test case as follows:
```
cd /foss/designs/layout
cp ../temp/ihp-sg13g2/libs.tech/klayout/tech/lvs/testing/testcases/extraction_checking/sg13_lv_nmos.* .
```
Open sg13_lv_nmos.gds in KLayout. In the SG13G2 PDK menu, set the LVS option "Devices combine." Run the LVS and you will see the following output (abbreviated): 
```
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : Starting running SG13G2 Klayout LVS runset on 
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : Ruby Version for klayout: 3.0.2
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : Loading database to memory is complete.
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : SG13G2 Klayout LVS runset output at default location: sg13_lv_nmos.lvsdb
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : Evaluate switches.
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : Substrate name used: sub!
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : Extracted netlist with net names: false
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : Extracted netlist with comments in details: false
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : Selected SCH_SIMPLE option: true
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : Selected NET_ONLY option: false
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : Selected TOP_LVL_PINS option: true
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : Selected COMBINE option: true
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : Selected PURGE option: false
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : Selected PURGE_NETS option: false
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : Selected NETLIST_SIMPLIFY option: false
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : Verbose mode: false
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : deep  mode is enabled.
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : Netlist file: /foss/designs/layout/sg13_lv_nmos.cdl
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : SG13G2 Klayout LVS extracted netlist file at: sg13_lv_nmos_extracted.cir
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : Read in polygons from layers.
...
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : activ_drw has 35 polygons
...
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : gatpoly_drw has 15 polygons
...
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : cont_drw has 38 polygons
...
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : metal1_drw has 69 polygons
...
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : metal1_pin has 40 polygons
...
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : metal2_drw has 4 polygons
...
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : via1_drw has 4 polygons
...
2024-04-23 22:12:13 +0200: Memory Usage (1086048K) : heattrans_drw has 15 polygons
...
2024-04-23 22:12:14 +0200: Memory Usage (1086048K) : Total no. of polygons in the design is 220
2024-04-23 22:12:14 +0200: Memory Usage (1086048K) : Starting SG13G2 LVS runset
...
2024-04-23 22:12:15 +0200: Memory Usage (1086048K) : Starting Taps EXTRACTION
2024-04-23 22:12:15 +0200: Memory Usage (1086048K) : Extracting ntap1 device
2024-04-23 22:12:15 +0200: Memory Usage (1086048K) : Extracting ptap1 device
2024-04-23 22:12:15 +0200: Memory Usage (1086048K) : Starting SG13G2 LVS comparison section
2024-04-23 22:12:15 +0200: Memory Usage (1086048K) : ==========================================
2024-04-23 22:12:15 +0200: Memory Usage (1086048K) : INFO : Congratulations! Netlists match.
2024-04-23 22:12:15 +0200: Memory Usage (1086048K) : ==========================================
2024-04-23 22:12:15 +0200: Memory Usage (1086048K) : LVS Total Run time 2.082649 seconds
```
You can inspect the results more closely using Tools/Netlist Browser. Under Cross Reference, you can see how the LVS matched up the layout with the provided netlist (called "reference" in that sub-window). Under devices, you can see the MOSFETs that match between the layout and the reference. Under Nets, you see some warnings, since this particular layout does not have any pin labels. These can be added using text on Metal1.label (or Metal2.label, etc.). Speaking of the Metal1.label, there seems to a typo in the layer definition file `/foss/designs/.klayout/tech/sg13g2.lyp`:
```
<properties>
    <frame-color>#39bfff</frame-color>
    <fill-color>#39bfff</fill-color>
    <frame-brightness>0</frame-brightness>
    <fill-brightness>0</fill-brightness>
    <dither-pattern>C1</dither-pattern>
    <line-style>C0</line-style>
    <valid>false</valid>
    <visible>true</visible>
    <transparent>false</transparent>
    <width>1</width>
    <marked>false</marked>
    <animation>0</animation>
    <name>Metal1.label</name>
    <source>8/1</source>
  </properties>
```
The `valid` property should be set to `true` (and it's also good to change the `marked` property to `true`, so that you can see the text origins for this layer).

As of 4/25, the LVS still requires the "heattrans" layer to recognize MOSFETs. This is problematic since this layer does not exist in the standard cells (and it is anyway not required for our purposes). To fix this problem, run the following sed command:
```
sed -i 's/.and(heattrans_drw)//g' /foss/designs/.klayout/tech/lvs/rule_decks/mos_derivations.lvs
```
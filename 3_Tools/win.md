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
When you launch KLayout, you will now see a menu item saying "SG13G2 PDK." Click on "Load PDK options" which creates a new menu item "KLayout LVS Options." Everything should now be ready to use as described [here](https://github.com/IHP-GmbH/IHP-Open-PDK/tree/dev/ihp-sg13g2/libs.tech/klayout/tech/lvs). The documentation says that KLayout 0.28.14+ is required, but we are currently running version 0.28.13. We may need to update our tool container if any issues arise.
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

6\. You will now see a terminal with the prompt `foss/design`. This is your working directory where all your design data goes. You can also see this directory in your Linux terminal as `~/eda/designs`. Even if you update or uninstall the container, the files in the `foss` folder will stay on your machine.

7\. Type `iic-pdk sg13g2` to switch to the IHP PDK that we will use in this course. To skip typing this command every time, create a `.designinit` text file in your design directory with the following lines:  
```
PDK_ROOT=/foss/pdks
PDK=sg13g2
PDKPATH=/foss/pdks/sg13g2
```

8\. Type `xschem` to see the schematic editor showing simulation testbenches for various components. Left-click "dc_lv_nmos" then right-click "descend schematic". Click netlist, then simulate and CTRL-click "load waves" to see the simulation output.

9\. Create a configuration directory for KLayout and populate it as detailed below. We fetch the latest versions of the python and tech directories directly from the IHP github instead of copying them form within the container (this fixes some bugs).
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
```

10\. Create a subdirectory for your layout work.
```
cd /foss/designs
mkdir layout
cd layout
```

11\. To start KLayout with the proper technology setup, set the KLAYOUT_HOME environment variable, then launch using the -e option (edit mode). The environment variable must be set each time the container is started (this will be fixed in a future release, which will automatically set the proper environment variable for KLayout).
```
export KLAYOUT_HOME=/foss/designs/.klayout
klayout -e & 
```

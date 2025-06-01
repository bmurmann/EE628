1\. Install Linux on your Windows computer using the "Windows Subsystem for Linux (WSL) feature." Follow the instructions here:
https://learn.microsoft.com/en-us/windows/wsl/tutorials/gui-apps. The default Linux distribution is Ubuntu, which is perfect for our use case.

2\. Restarting will open a shell that prompts you to set your UNIX user name and password. You now see your Linux prompt and you can run any command from here.

3\. Install git: 

```
sudo apt update
sudo apt install git-all
```

4\. Install the Docker container from https://github.com/iic-jku/IIC-OSIC-TOOLS/tree/main. The essential steps are:    

* Clone the repository
     
  ```
  mkdir github
  cd github  
  git clone --depth=1 https://github.com/iic-jku/iic-osic-tools.git
  ```
* Install Docker by following these steps: https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository. Test the installation using: `sudo docker run hello-world`

* Follow the post-install steps: https://docs.docker.com/engine/install/linux-postinstall/. You should now be able to run docker without sudo: `docker run hello-world`

5\. Ensure that `~/.Xauthority` exists and run the container:
```
touch ~/.Xauthority
cd iic-osic-tools
./start_x.sh
```
On first use, this downloads end extracts all the files (~20 GB or so), which will take time. Make sure that you have a fast internet connection! Once everything is installed, the container starts very quickly after launching the `start_x.sh` command.

6\. You will now see a terminal with the prompt `/foss/design`. This is your working directory where all your design data goes. You can also see this directory in your Linux terminal as `~/eda/designs`. Even if you update or uninstall the container, the files in the `foss` folder will stay on your machine.

7\. The defult PDK of the tool container is SKY 130. Type `sak-pdk ihp-sg13g2` to switch to the IHP PDK that we will use in this course. To skip typing this command every time, create a `.designinit` text file in `/foss/design` with the following lines. See this [link](https://github.com/iic-jku/IIC-OSIC-TOOLS?tab=readme-ov-file#2-installed-pdks) for further details.
```
export PDK=ihp-sg13g2
export PDKPATH=$PDK_ROOT/$PDK
export STD_CELL_LIBRARY=sg13g2_stdcell
export SPICE_USERINIT_DIR=$PDKPATH/libs.tech/ngspice
export KLAYOUT_PATH=$PDKPATH/libs.tech/klayout:$PDKPATH/libs.tech/klayout/tech
```

8\. Type `xschem` to launch the schematic editor. By default, this shows simulation test setups provided by the foundry. Left click "NGSPICE", then right-click "descend schematic." You now see testbenches for the various components that are availbale in the PDK. 

9\. As an example, left-click "dc_lv_nmos" then right-click "descend schematic." Now click "IHP -> Create FET and BIP .save file" in the top menu to create an include file that is required for this particular simulation. Next, click "netlist," then "simulate" and CTRL-click "load waves" to see the simulation output.

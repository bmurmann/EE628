1. Install Linux on Windows using the "Windows Subsystem for Linux (WSL) feature." Follow the instructions here:
https://learn.microsoft.com/en-us/windows/wsl/tutorials/gui-apps. The default Linux distribution is Ubuntu, which is perfect for our use case.

2. Restarting will open a shell that prompts you to set your UNIX user name and password. You now see your Linux prompt and you can run any command from here.

3. Install git: `sudo apt install git-all`

4. Install the tool container from https://github.com/iic-jku/IIC-OSIC-TOOLS/tree/main. The essential steps are as follows:  

     a) Clone the repository  
     `mkdir github`  
     `cd github`  
     `git clone --depth=1 https://github.com/iic-jku/iic-osic-tools.git`

     b) Install docker by following the steps here: https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository. Test the installation using: `sudo docker run hello-world`

    c) Follow the post-install steps: https://docs.docker.com/engine/install/linux-postinstall/. You shuld now be able to run docker without sudo: `docker run hello-world`

5. Run `./start_x.sh` in the container to run the container. On first use, this downloads end extracts all the files (~18 GB), which will take time. Make sure you have a fast internet conenction!

6. You will now see a terminal with the prompt `foss/design`. This is your working directory where all your design data goes. You can also see this directory in your WSL Linux terminal as `~/eda/designs`. Even if you update or uninstall the container, the files in this folder will stay on our machine.

7. Type `iic-pdk ihp-sg13g2` to switch to the IHP PDK that we will use in this course. To skip typing this command every time, create a `.designinit` text file in your design directory with the following lines:  
`PDK_ROOT=/foss/pdks`  
`PDK=ihp-sg13g2`  
`PDKPATH=/foss/pdks/ihp-sg13g2`

7. Type `xschem` to see the schematic editor showing simulation testbenches for various components. Left-click "dc_lv_nmos" then right-click "descend schematic". Click netlist, then simulate and CTRL-click "load waves" to see the simulation output.
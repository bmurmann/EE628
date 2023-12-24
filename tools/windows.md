
How to install the EE 628 design tools on a Windows 10/11 computer

1) Install Linux on Windows using the "Windows Subsystem for Linux (WSL) feature." Follow the instructions here:
https://learn.microsoft.com/en-us/windows/wsl/tutorials/gui-apps. The default Linux distribution is Ubuntu, which is perfect for our use case.

2) Restart anddd click the WSL icon. This will open a shell that prompts you to set your UNIX user name and password. You now see your Linux command prompt and you can run any command from here.

3) Install git on WSL. $ sudo apt install git-all

4) Install the tool container, essentially following the instructions here: https://github.com/iic-jku/IIC-OSIC-TOOLS/tree/main
a) mkdir github
cd github
git clone --depth=1 https://github.com/iic-jku/iic-osic-tools.git

b) Install docker using the steps here: https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository
Test installation using: sudo docker run hello-world

c) Follow post-install steps: https://docs.docker.com/engine/install/linux-postinstall/
You shuld now be bale to run docker wthout sudo: docker run hello-world

5) run ./start_x.sh in the container to run the container. On fisrt use, this downloads all teh files (16 GB), whihc wil take time. Make sure you have a fact internet conenction.

6) You will now see a terminal with the prompt foss/design. This is your working directory inside the comtainer and wher all your user data should go. You can also see this directoroy in your WSL Linux terminal as ~/eda/designs. Type "iic-pdk ihp-sg13g2" to switch to the IHP PDK. To askip typing iic-pdk every time, place a .designinit file in the design directory with the folloing lines:
PDK_ROOT=/foss/pdks
PDK=ihp-sg13g2
PDKPATH=/foss/pdks/ihp-sg13g2

8) Type "xschem" to see simulation testbenches for various components. Left click on dc_lv_nmos then right click descend schematic. Click netlist, then simulate and CTRL-click load waves to the simuation output.









----------------------------
3) Install go https://go.dev/doc/install.

4) Install git https://git-scm.com/download/win.

5) Use the scripts available at the following link to download the osic-tools docker image: https://github.com/barakhoffer/osic-tools-wsl/tree/main. In powershell you may need to first allow execution of the scripts: Set-ExecutionPolicy -ExecutionPolicy RemoteSigned.
-----------------------------




References:
Efabless: https://docs.google.com/document/d/1QXi2kqWgQ8JR_BJCfUgFkQCSSxetXcnWrDHRJdLBsy0/edit

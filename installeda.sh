echo
echo
echo "|*********************************************************************************|"
echo "|                   WelCome to Open-source EDA tools Installation                 |"
echo "|                             Installation script                                 |"
echo "|                                                                                 |"
echo "|                                    By                                           |"
echo "|                                                                                 |"
echo "|                           Vision-VLSI Industry                                  |"
echo "|                      "An online only" Training Institute                        |"
echo "|                                                                                 |"
echo "|                            Contact at +918686429678                             |"
echo "|*********************************************************************************|"
echo
cd
echo "|**********************************************************************************|"
echo "|                                  Magic Installation  begins                      |"
echo "|**********************************************************************************|"
echo
cd
echo "|**********************************************************************************|"
echo "|                              Installing Magic dependancies                       |"
echo "|**********************************************************************************|"
echo
sudo apt-get update
sudo apt-get install m4 --assume-yes
sudo apt-get install tcsh --assume-yes
sudo apt-get install csh --assume-yes
sudo apt-get install libx11-dev --assume-yes
sudo apt-get install tcl-dev tk-dev --assume-yes
sudo apt-get install libcairo2-dev --assume-yes
sudo apt-get install mesa-common-dev libglu1-mesa-dev --assume-yes
sudo apt-get install libncurses-dev --assume-yes
##sudo apt install git --assume-yes
cd 
echo
echo "|**********************************************************************************|"
echo "|            Cloning magic and then will start the installation of magic           |"
echo "|**********************************************************************************|"
echo
cd
git clone https://github.com/RTimothyEdwards/magic.git
cd magic
./configure 
sudo make
sudo make install
cd
echo
echo "|**********************************************************************************|"
echo "|                  yosys – Yosys Open SYnthesis Suite - Installation               |"
echo "|                      Installing yosys dependancies                               |"
echo "|**********************************************************************************|"
echo
sudo apt-get install build-essential clang bison flex \
	libreadline-dev gawk tcl-dev libffi-dev git \
	graphviz xdot pkg-config python3 libboost-system-dev \
	libboost-python-dev libboost-filesystem-dev zlib1g-dev --assume-yes
cd
echo
echo "|**********************************************************************************|"
echo "|            Cloning yosys and then will start the installation of yosys           |"
echo "|**********************************************************************************|"
echo
cd
git clone https://github.com/YosysHQ/yosys.git
cd yosys
sudo make
sudo make install
cd
echo
echo "|**********************************************************************************|"
echo "|                              OpenSTA installation                                |"
echo "|**********************************************************************************|"
cd 
echo
echo "|**********************************************************************************|"
echo "|          Cloning OpenSTA and then will start the installation of OpenSTA         |"
echo "|**********************************************************************************|"
echo
cd
git clone https://github.com/The-OpenROAD-Project/OpenSTA.git
cd OpenSTA
mkdir build
cd build
sudo apt install cmake --assume-yes
sudo apt-get update -y --assume-yes
sudo apt-get install -y swig --assume-yes
cmake ..
sudo make
sudo make install
cd 
echo
##Install Icarus iverilog
echo "|**********************************************************************************|"
echo "|                               Installing iverilog                                |"
echo "|**********************************************************************************|"
echo
sudo apt-get install -y iverilog --assume-yes
echo "|**********************************************************************************|"
echo "|                                   Installing gtkwave                             |"
echo "|**********************************************************************************|"
echo
sudo apt install gtkwave --assume-yes
echo
echo "|**********************************************************************************|"
echo "|                                 Installing klayout                               |"
echo "|**********************************************************************************|"
echo
sudo apt install klayout --assume-yes
echo
cd

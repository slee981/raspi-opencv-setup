#
# BASE: Raspbian Lite OS
# GOAL: Setup a new raspberry pi with software 
#       necessary to run some basic video recording 
#       and image processing tasks. 
#
# SOFTWARE: 
#       - go 
#       - opencv 
#       - gocv
#
# NOTES
#       Because of the different architectures, using 
#       a raspberry pi for computer vision tasks can be
#       challenging. We therefore must do some compiling 
#       directly on the machine to ensure compatibility 
#       with the opencv library. 

# update apt repos
sudo apt update && sudo apt upgrade -y 

# set wifi and add camera manually 
raspi-config

# install git 
sudo apt install -y git vim golang

# make folders 
work_dir=$HOME/downloads
cd -
mkdir $work_dir && cd $work_dir
git clone https://github.com/hybridgroup/gocv.git

cd $work_dir/gocv
make install_raspi


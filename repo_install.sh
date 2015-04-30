# basic ros initialization (for this specific user)
source /opt/ros/hydro/setup.bash
rosdep update

# install catkin workspace
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
catkin_init_workspace

cd ~/catkin_ws/
catkin_make

source devel/setup.bash

# get ssh public keys to give to GitHub
cd
ssh-keygen -t rsa -C "sar.mit.yr3@gmail.com"
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub
echo "Goto GitHub, setting, SSH keys, Add SSH key, copy the above public key."
read -p "Press any key AFTER you have established Github SSH: "


# get custom messages repos
cd ~/catkin_ws/src
git clone git+ssh://git@github.com/personal-robots/r1d1_msgs
git clone git+ssh://git@github.com/personal-robots/sar_policy_msgs
git clone git+ssh://git@github.com/personal-robots/sar_opal_msgs
git clone git+ssh://git@github.com/personal-robots/affdex_sensing
catkin_make

# get eclipse
sudo apt-get install eclipse

# get eclipse project nodes
cd
mkdir eclipse_ws
cd eclipse_ws
git clone git+ssh://git@github.com/personal-robots/sar_agents_node
git clone git+ssh://git@github.com/personal-robots/sar_affpolicy_node
git clone git+ssh://git@github.com/personal-robots/sar_game_node
git clone git+ssh://git@github.com/personal-robots/sar_data_node
git clone git+ssh://git@github.com/personal-robots/sar_personalized_content_node
git clone git+ssh://git@github.com/personal-robots/sar_cognition_node
git clone git+ssh://git@github.com/personal-robots/timer_node
git clone git+ssh://git@github.com/personal-robots/sar_jar

# organize the sar project
mkdir -p ~/projects/sar/
cd ~/projects/sar






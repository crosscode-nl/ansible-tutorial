#!/bin/bash
echo 
echo '################################################################################'
echo '#                                                                              #'
echo '# Installing apt packages git and python-pip.                                  #'
echo '#                                                                              #'
echo '# You may need to provide your sudo password.                                  #'
echo '#                                                                              #'
echo '################################################################################'
echo 

sudo apt install python3-pip git 

echo 
echo '################################################################################'
echo '#                                                                              #'
echo '# Installing ansible for current user.                                         #'
echo '#                                                                              #'
echo '################################################################################'
echo 

sudo pip3 install ansible==5.5.0

echo 
echo '################################################################################'
echo '#                                                                              #'
echo '# Cloning the ansible tutorial repository into ~/Projects/                     #'
echo '#                                                                              #'
echo '################################################################################'
echo 

mkdir ~/Projects
cd ~/Projects
git clone git@github.com:crosscode-nl/ansible-tutorial.git

echo 
echo '################################################################################'
echo '#                                                                              #'
echo '# Running your first playbook to install more required packages.               #'
echo '#                                                                              #'
echo '# You may need to provide your sudo password.                                  #'
echo '#                                                                              #'
echo '################################################################################'
echo 

ansible-playbook ansible-tutorial/playbooks/00-install/site.yml -K 

echo Done. Your host is prepared for the tutorial.

#!/bin/bash
sudo apt install python3-pip git
sudo pip3 install ansible==5.5.0

mkdir ~/Projects
cd ~/Projects
git clone git@github.com:crosscode-nl/ansible-tutorial.git

ansible-playbook ansible-tutorial/playbooks/00-install/site.yml -K 

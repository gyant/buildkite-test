#!/bin/bash
PACKER_URL="https://releases.hashicorp.com/packer/1.5.1/packer_1.5.1_linux_amd64.zip"
# Update + Install Dependencies
sudo yum update -y
sudo yum install -y python3 python3-pip wget unzip
# Install Ansible
sudo pip3 install ansible
# Install Packer
wget --output-document=packer.zip $PACKER_URL
unzip packer.zip
sudo mv packer /usr/local/bin/packer
# Clean up
rm packer.zip
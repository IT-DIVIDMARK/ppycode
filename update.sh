#!/bin/bash
clear
echo "#####################################################################################"
echo "                                                                                    "
echo "           ||=======                                                                "
echo "           ||      ||                                                               "
echo "           ||      ||                                                               "
echo "           ||      ||                                                               "
echo "           ||======||  🥷 DEVID Security                      Installer Version 2023"
echo "                              This is a command line fot apt-get update && upgraded "
echo "                                                   Created by Prasad(DEVIDMARK)(^_^)"
echo "####################################################################################"
echo "hi welcom "
 sleep 2
 echo "updating is start......"
 apt-get update
 echo "apt-get is updated "
 sleep 2
 echo "Now Tray to  bluetooth service  starting....."
 sudo service bluetooth start 
 echo "bluetooth service is  start."
 sleep 2
 apt list --upgradable
 sleep 2
 clear
 #Upgrade installed packages
sudo apt upgrade -y

# Update network-related packages
sudo apt install --only-upgrade $(apt list --installed 2>/dev/null | grep -iE '(network|net-|tool|util)' | cut -d/ -f1)

# Update additional tools
sudo apt install --only-upgrade $(apt list --installed 2>/dev/null | grep -iE '(tool|util)' | cut -d/ -f1)

# Clean up obsolete packages
sudo apt autoremove -y

echo "Updates and upgrades completed."
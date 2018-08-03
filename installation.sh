#!/bin/bash
termux-setup-storage
apt-get update && apt-get upgrade -y
pkg install curl clang git wget python2 -y
pkg install python php fish bash ruby perl nmap proot w3m -y 
wget https://Auxilus.github.io/metasploit.sh
chmod +x metasploit.sh
bash metasploit.sh
cd $HOME

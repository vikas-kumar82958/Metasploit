#!/bin/bash
termux-setup-storage
apt-get update && apt-get upgrade -y
pkg install curl clang git wget python2 nano -y
pkg install python php fish bash ruby perl nmap proot w3m -y
pkg install db postgresql parallel -y
wget https://Auxilus.github.io/metasploit.sh
chmod +x metasploit.sh
bash metasploit.sh
ls
cd $HOME
mkdir -p $PREFIX/var/lib/postgresql
initdb $PREFIX/var/lib/postgresql
pg_ctl -D $PREFIX/var/lib/postgresql start
cd metasploit-framework
ls
./msfconsole
exit 0

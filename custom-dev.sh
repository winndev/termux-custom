#!/usr/bin/bash

echo ""
read -p $' \e[0m\e[1;92m Insira seu Usuário : \e[0m\e[1;96m\en' user
echo ""
echo ""
echo -e  $g "Instalando requisitos...."
echo ""
apt update 
apt upgrade -y 
pkg install figlet -y
pkg install python
pkg install python2
pip install pyfiglet
pip install termcolor
pkg install ncurses-utils -y 
pkg install ruby -y 
gem install lolcat 
figlet -f big Finalizando | lolcat
git clone https://github.com/winndev/custom-termux
sed 's+THBD+'$user'+g' custom-termux/bash.bashrc > /data/data/com.termux/files/usr/etc/bash.bashrc
sed 's+THBD+'$user'+g' custom-termux/t-c.py > /data/data/com.termux/files/usr/etc/t-c.py
rm -rf custom-termux
figlet -f big Finalizado | lolcat

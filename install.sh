#!/bin/bash

g="\e[1;32m"
reset="\e[0m"
r="\e[1;31m"

echo -e "$g[+] Installing packages."
echo -e "$r[*] Need sudo permissions.$reset"
sudo apt update
sudo apt install i3 i3blocks rofi feh lxappearance compton -y
# sudo apt install lm-sensors -y # only on laptop
echo -e "$g[*] Packages installed."
echo -e "[+] Creating dirs.$reset"
mkdir -p $HOME/.config
mkdir -p $HOME/.fonts
mkdir -p $HOME/Képek
echo -e "$g[*] Dirs created."
echo -e "[+] Copying configs, fonts and wallpapers.$reset"
sed -i "s/kali/$USER/g" ./config/i3/config
sed -i "s/kali/$USER/g" ./config/i3/wpc.sh
cp ./fonts/*.ttf $HOME/.fonts/
cp -R ./config/* $HOME/.config/
cp .vimrc $HOME/
cp .gtkrc-2.0 $HOME/ 
cp -R ./Wallpapers $HOME/Képek/
echo -e "$g[*] Configs and fonts copied."
echo -e "[+] Downloading and installing themes.$reset"
git clone https://github.com/umbrocker/Nordic.git
git clone https://github.com/umbrocker/Nordzy-icon.git
sudo mv Nordic /usr/share/themes
cd Nordzy-icon
chmod +x install.sh
./install.sh
cd ..
echo -e "$g[*] Themes downloaded and installed."
echo -e "[*] Installation completed.$reset"

read -p "[?] Do you want a clean-up (y/n): " clean

if [ $clean = "y" ]
then
	cd ..
	rm -rf dotfiles
fi

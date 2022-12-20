#!/bin/bash

g="\e[1;32m"
reset="\e[0m"

echo "$g[+] Installing packages."
echo "[*] Need sudo permissions.$reset"
sudo apt update
sudo apt install i3 i3blocks rofi feh lxappearance compton -y
echo "$g[*] Packages installed."
echo "[+] Creating dirs.$reset"
mkdir -p $HOME/.config
mkdir -p $HOME/.fonts
mkdir -p $HOME/Képek
echo "$g[*] Dirs created."
echo "[+] Copying configs, fonts and wallpapers.$reset"
sed -i "s/kali/$USER/g" ./config/i3/config
cp ./fonts/*.ttf $HOME/.fonts/
cp -R ./config/* $HOME/.config/
cp .vimrc $HOME/
cp .gtkrc-2.0 $HOME/ 
cp -R ./Wallpapers $HOME/Képek/
echo "$g[*] Configs and fonts copied."
echo "[+] Downloading and installing themes.$reset"
git clone https://github.com/umbrocker/Nordic.git
git clone https://github.com/umbrocker/Nordzy-icon.git
sudo mv Nordic /usr/share/themes
cd Nordzy-icon
chmod +x install.sh
./install.sh
cd ..
echo "$g[*] Themes downloaded and installed."
echo "[*] Installation completed.$reset"

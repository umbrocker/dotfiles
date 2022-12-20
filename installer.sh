#!/bin/bash

home=$HOME
user=$USER

echo "[+] Installing packages."
echo "[*] Need sudo permissions."
sudo apt update
sudo apt install i3 i3blocks rofi feh lxappearance -y
echo "[*] Packages installed."
echo "[+] Creating dirs."
mkdir -p $home/.config/i3
mkdir -p $home/.fonts
echo "[*] Dirs created."
echo "[+] Copying configs and fonts."
cp ./fonts/*.ttf $home/.fonts/
cp ./i3/config $home/.config/i3/
cp .vimrc $home/
echo "[*] Configs and fonts copied."
echo "[+] Downloading and installing themes."
git clone https://github.com/EliverLara/Nordic.git
git clone https://github.com/alvatip/Nordzy-icon
sudo mv Nordic /usr/share/themes
cd Nordzy-icon
chmod +x install.sh
./install.sh
cd ..
echo "[*] Themes downloaded and installed."
echo "[*] Installation completed."

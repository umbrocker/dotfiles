#!/bin/bash
#
num=$(i3-msg -t get_workspaces | jq '.[] | select(.focused==true).num')

echo $num


if [ $num -eq 1 ]
then
	feh --bg-fill /home/kali/Képek/Wallpapers/001.png	
elif [ $num -eq 2 ]
then
	feh --bg-fill /home/kali/Képek/Wallpapers/002.png
elif [ $num -eq 3 ]
then
	feh --bg-fill /home/kali/Képek/Wallpapers/003.png
elif [ $num -eq 4 ]
then
	feh --bg-fill /home/kali/Képek/Wallpapers/004.png
elif [ $num -eq 5 ]
then
	feh --bg-fill /home/kali/Képek/Wallpapers/005.png
elif [ $num -eq 6 ]
then
	feh --bg-fill /home/kali/Képek/Wallpapers/006.png
elif [ $num -eq 7 ]
then
	feh --bg-fill /home/kali/Képek/Wallpapers/007.png
elif [ $num -eq 8 ]
then
	feh --bg-fill /home/kali/Képek/Wallpapers/008.png
elif [ $num -eq 9 ]
then
	feh --bg-fill /home/kali/Képek/Wallpapers/009.png
else
	feh --bg-fill /home/kali/Képek/Wallpapers/010.png
fi

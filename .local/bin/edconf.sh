#!/bin/bash



# Dmenu script for editing some of my more frequently edited config files.


declare options=("alias
zsh
hlwm
profile
vifm
polybar
sxhkd
xprofile
quit")

choice=$(echo -e "${options[@]}" | dmenu -i -c -g 1 -l 20 -nb '#282a36' -sb '#bd93f9' -fn 'JetBrains Mono Nerd-13' -p 'Konfigfájlok: ')

case "$choice" in
	quit)
		echo "Program terminated." && exit 1
	;;
	alias)
		choice="$HOME/.config/aliasrc"
	;;
	zsh)
		choice="$HOME/.config/zsh/.zshrc"
	;;
	hlwm)
		choice="$HOME/.config/herbstluftwm/autostart"
	;;
	profile)
		choice="$HOME/.profile"
	;;
	vifm)
		choice="$HOME/.config/vifm/vifmrc"
	;;
	polybar)
		choice="$HOME/.config/polybar/config"
	;;
	sxhkd)
		choice="$HOME/.config/sxhkd/sxhkdrc"
	;;
	xprofile)
		choice="$HOME/.xprofile"
	;;
	*)
		exit 1
	;;
esac
subl -c "$choice"

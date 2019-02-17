#!/bin/sh

# locale
export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN:en_US
export LC_CTYPE=zh_CN.UTF-8
export LC_ALL=zh_CN.UTF-8

# fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
#export $XMODIFIERS

# disable beep
#xset -b # rmmod pcspkr #remove from kenel module
#rmmod pcspkr

#exec xrandr --output eDP1 --output HDMI1 --right-of eDP1

# start session
session=${1:-i3} # default session is i3

case $session in
	i3|i3wm		)
		#echo "case i3|i3wm starting i3" > ~/debug
		exec i3;;
	kde		) exec startkde;;
	xfce|xfce4	) exec startxfce4;;
	gnome|gnome3	) exec gnome-session;;
	# otherwise, run default
	*		)
		#echo "default case starting $1" > ~/debug
		exec $1;;
esac

# start i3 directly
#exec i3

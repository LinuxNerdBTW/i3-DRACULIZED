#!/bin/bash

FILENAME=$(date +%Y-%m-%d-%H-%M-%S).png


maim -o -b 3 -s | convert - \( +clone -background black -shadow 80x3+5+5 \) +swap -background none -layers merge +repage ~/Pictures/$FILENAME

dunstify -i /usr/share/icons/Papirus/64x64/apps/applets-screenshooter.svg "ScreenShoot Captured" "Saved As $FILENAME"

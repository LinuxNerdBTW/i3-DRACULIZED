#!/bin/bash
#

response=""

confirm ()
{
  message="${1:-"Confirm ? "}"
  response=$(echo -e "No\nYes" | rofi -dmenu -theme ~/.config/i3/conf/rofi/confirm.rasi -p "$message ")
  # echo $response
}


if [[ $1 == "shutdown" ]];then
  confirm
  if [[ $response == "Yes" ]]; then
    systemctl poweroff
  else
    exit
  fi
elif [[ $1 == "reboot" ]]; then
  confirm
  if [[ $response == "Yes" ]]; then
    systemctl reboot
  else
    exit
  fi
elif [[ $1 == "logout" ]]; then
  confirm
  if [[ $response == "Yes" ]]; then
    loginctl terminate-user $USER
  else
    exit
  fi
else 
  exit
fi







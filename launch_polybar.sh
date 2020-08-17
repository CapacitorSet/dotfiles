if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload -c ~/dotfiles/polybar.conf main &
  done
else
  polybar --reload -c ~/dotfiles/polybar.conf main &
fi

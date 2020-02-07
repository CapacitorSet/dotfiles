if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload -c ~/dotfiles/polybar.conf top &
  done
else
  polybar --reload -c ~/dotfiles/polybar.conf top &
fi

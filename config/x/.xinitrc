
# Cycle us an sk layouts with alt + shift
# setxkbmap -option grp:alt_shift_toggle "us,sk"

while true;
do
  xsetroot -name " [$(date +'%H:%M %F')] "
  sleep 60
done &

exec dwm

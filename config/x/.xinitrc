
while true;
do
  xsetroot -name " [$(date +'%H:%M %F')] "
  sleep 60
done &

exec dwm

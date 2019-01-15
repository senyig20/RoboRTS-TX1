#!/bin/bash
echo " "
echo "Start to copy script files to /home/nvidia"
echo ""
cp `rospack find roborts_bringup`/scripts/upstart/roborts-start.sh /home/nvidia
cp `rospack find roborts_bringup`/scripts/upstart/max_performance.sh /home/nvidia
echo " "
echo "Start to copy service files to /lib/systemd/system/"
echo ""
sudo cp `rospack find roborts_bringup`/scripts/upstart/max-performance.service  /lib/systemd/system/
sudo cp `rospack find roborts_bringup`/scripts/upstart/roborts.service  /lib/systemd/system/
echo " "
echo "Enable max-performance and roborts service for upstart! "
echo ""
sudo systemctl enable max-performance.service
sudo systemctl enable roborts.service
echo "Finish "

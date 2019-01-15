#!/bin/bash
echo " "
echo "Start to remove script files from /home/nvidia"
echo ""
rm  /home/nvidia/roborts-start.sh
rm  /home/nvidia/max_performance.sh
echo " "
echo "Start to remove service files from /lib/systemd/system/"
echo ""
sudo rm  /lib/systemd/system/max-performance.service
sudo rm  /lib/systemd/system/roborts.service
echo " "
echo "Disable max-performance and roborts service for upstart! "
echo ""
sudo systemctl disable max-performance.service
sudo systemctl disable roborts.service
echo "Finish"

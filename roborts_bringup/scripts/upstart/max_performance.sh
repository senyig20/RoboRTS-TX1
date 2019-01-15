#/usr/bash
sleep 10
echo nvidia | sudo -S sudo  "/home/nvidia/jetson_clocks.sh"
echo "Max performance"
# disable wifi power saving

echo nvidia | sudo -S sudo iw dev wlan0 set power_save off
echo "Set power_save off "

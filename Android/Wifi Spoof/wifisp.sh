#!/bin/sh

num=$1

echo "Current settings >>"
ifconfig wlan0 | grep HWaddr
echo
echo "Disabling WiFi..."
svc wifi disable
echo
echo "---MAC chosen is $num---"
echo
echo "Mounting system as rw..."
mount -o rw,remount /system
echo
echo "Swapping ini file..."
rm /system/vendor/etc/wifi/WCNSS_qcom_cfg.ini
cp /system/vendor/etc/wifi/w_ini/WCNSS_qcom_cfg.ini.$num /system/vendor/etc/wifi/WCNSS_qcom_cfg.ini
echo
echo "Swapping bin file..."
rm /mnt/vendor/persist/wlan_mac.bin
cp /mnt/vendor/persist/w_bin/wlan_mac.bin.$num /mnt/vendor/persist/wlan_mac.bin
echo
echo "Mounting system as ro..."
mount -o ro,remount /system
echo
echo "Enabling WiFi..."
svc wifi enable
echo
echo "Done!, waiting to get an update from the adapter..."
sleep 3
echo
echo "Current settings >>"
ifconfig wlan0 | grep HWaddr

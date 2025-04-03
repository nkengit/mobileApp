#!/bin/bash
#EBS Volume Auto Mount
#Author: Christian
lsblk
sleep 3
echo -n "Enter mount point directory name: "
read -r "dir_name"
sudo mkdir "/mnt/$dir_name"
echo "format EBS volume"
sudo mkfs -t ext4 "/dev/xvdf"
echo "Mounting EBS Volume"
sudo mount "/dev/xvdf" "/mnt/$dir_name"
lsblk
sleep 3
echo "persist drive in /etc/fstab file"
echo "/dev/xvdf /mnt/$dir_name ext4 defaults 0 1" | sudo tee -a "/etc/fstab"
sleep 3

echo "Now unmounting added drive"
sudo umount "/dev/xvdf" "/mnt/$dir_name" 
sudo rm -rf "/mnt/$dir_name"
lsblk
sleep 3
sudo sed -i "/$dir_name/d" "/etc/fstab"
cat "/etc/fstab"

#successful
#!/bin/bash
# Start SSH service
service ssh start
# Set the root password (replace your_password with a strong password)
echo 'root:your_password' | chpasswd
# Ensure root can log in via SSH
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
# Execute GoTTY
exec /run_gotty.sh


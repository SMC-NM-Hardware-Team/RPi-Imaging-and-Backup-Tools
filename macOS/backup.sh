#!/bin/bash
# Run 'chmod u+x deploy.sh' to enable permissions.

# List all devices
diskutil list

# Prompt user to choose a device identifier
echo "Choose disk #:(a single integer value)"
read diskNum

# Create and autoname image
cdt=$(date +"%Y-%m-%d_%H-%M")
cd ~/Downloads
hdiutil create RPi_BUILD_${cdt}_compressed -srcdevice /dev/disk$diskNum -format UDZO
cd ~
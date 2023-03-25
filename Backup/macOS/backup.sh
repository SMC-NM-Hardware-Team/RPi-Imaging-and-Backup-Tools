#!/bin/bash
# Run 'chmod u+x deploy.sh' to enable permissions.

# List all devices
diskutil list

# Prompt user to choose a device identifier
echo "Choose disk #:(a single integer value)"
read diskNum
echo "OS: 'RPiOS' or 'RFR'?"
read OS

# Create and autoname image
cdt=$(date +"%Y-%m-%d_%H-%M")
cd ~/Downloads
hdiutil create ${OS}_Build_${cdt}_compressed -srcdevice /dev/disk$diskNum -format UDZO
cd ~
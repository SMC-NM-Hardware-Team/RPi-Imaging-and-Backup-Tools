# Requirements
1. Local copy of repository

# Install
To set up a fresh install (not to be confused with image restore) on the Raspberry Pi,
run the following commands in the RPi terminal:

```chmod u+x setup.sh```

```./setup.sh```

# Backup
1. Connect the microSD card to your computer using an adapter.
## macOS
2. Start a terminal session inside the "macOS" folder.
3. Run the following terminal commands. Respond to script prompts.

```chmod u+x backup.sh```

```./backup.sh```

4. You now have a bootable image in your "Downloads" folder. It should have the format "[OS]_Build_YYYY-MM-DD_HH-MM_compressed.dmg"

## Windows
2. Download Win32 Disk Imager (not in this repository)
3. Follow a guide. e.g. https://raspberrytips.com/create-image-sd-card/

# Restore
Windows: https://learn.adafruit.com/adafruit-raspberry-pi-lesson-1-preparing-and-sd-card-for-your-raspberry-pi/making-an-sd-card-using-a-windows-vista-slash-7
Mac: https://learn.adafruit.com/adafruit-raspberry-pi-lesson-1-preparing-and-sd-card-for-your-raspberry-pi/making-an-sd-card-using-a-mac

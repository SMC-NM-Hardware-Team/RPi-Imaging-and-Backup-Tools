
# Install
To set up a newly imaged Raspberry Pi,
run the following commands in the RPi terminal:

```chmod u+x setup.sh```

```./setup.sh```



# Backup
## macOS
To back up a Raspberry Pi disk image on macOS,
1. Connect the microSD card to your Mac using an adapter.
2. Start a terminal session inside the "macOS" folder.
3. Run the following terminal commands. Respond to script prompts.

```chmod u+x backup.sh```

```./backup.sh```

4. You now have a bootable image in your "Downloads" folder. It should have the format "[OS]_Build_YYYY-MM-DD_HH-MM_compressed.dmg"

For information on how to flash an image to your RPi, see: https://learn.adafruit.com/adafruit-raspberry-pi-lesson-1-preparing-and-sd-card-for-your-raspberry-pi/making-an-sd-card-using-a-mac
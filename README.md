# adsb-rcvr
Linux image of an ADS-B receiver on Raspberry Pi Zero W

## Cloning the repository and submodules
```
git clone --recurse-submodules <method of accessing the repository>
```

## Image customization
Copy the following files by removing the .example extension then adapt them to meet your needs :
- ./br2-ext-dflt/board/my_board/overlay/root/.ssh/authorized_keys.example: public keys authorized to connect via ssh with the root account
- ./br2-ext-dflt/board/my_board/overlay/etc/wpa_supplicant.conf.example: Wi-Fi network connection information

## Compilation
```
cd buildroot
make BR2_EXTERNAL=../br2-ext-dflt my_board_defconfig
make
```
The image to be written to the SD card is located: ./buildroot/output/images/sdcard.img

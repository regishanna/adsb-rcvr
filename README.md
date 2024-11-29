# adsb-rcvr
Image Linux d'un recepteur ADSB sur Raspberry Pi

## Clonage du dépôt et des sous-modules
```
git clone --recurse-submodules <methode d'acces au depot>
```

## Personnalisation de l'image
Copier les fichiers suivants en supprimant l'extension .example puis les adapter pour correspondre a votre besoin :
- ./br2-ext-dflt/board/my_board/overlay/root/.ssh/authorized_keys.example : clés publiques authorisées a se connecter en ssh avec le compte root
- ./br2-ext-dflt/board/my_board/overlay/etc/wpa_supplicant.conf.example : informations de connexion aux réseaux Wi-Fi

## Compilation
```
cd buildroot
make BR2_EXTERNAL=../br2-ext-dflt my_board_defconfig
make
```
L'image à écrire sur la carte SD est située : ./buildroot/output/images/sdcard.img

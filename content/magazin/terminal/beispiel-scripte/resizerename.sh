#!/bin/sh
#
#   Dieses Skript erstellt neue Bilder und hängt am Ende der neuen
#   Bilder die neue Größe der Bilder in Breite und Höhe an.
#
#   Beispiel: bild.jpg wird zu bild-360x202.jpg
#

# Farben in Variablen schreiben (schönerer Output)
reset='\x1B[0m'
yellow='\x1b[0;33m'
boldyellow='\x1b[1;33m'
white='\x1b[0;37m'
boldwhite='\x1b[1;37m'
grey='\x1b[1;30m'

clear
echo "\n\n${boldyellow}sips ResizeRename\n"
read -p "$(echo ${boldyellow}"Welche Art von Bilddateien? (JPG/PNG) ›" ${white})" dateiformat
read -p "$(echo ${boldyellow}"Pixel der maximalen Breite bzw. Höhe? ›" ${white})" maximalebreitehoehe
read -p "$(echo ${boldyellow}"Verzeichnisname für neue Bilder? ›" ${white})" verzeichnisname

echo "\n${boldyellow}Soll ich starten?\n"
select yn in "Ja" "Nein"; do
    case $yn in
        Ja ) break;;
        Nein ) echo "\nNa gut…";exit;;
    esac
done

# Erstelle einen Ordner
mkdir $verzeichnisname

# Kopiere alle Bilder in den neuen Ordner
for i in *.$dateiformat
  do
    cp *.$dateiformat $verzeichnisname
  done

# Wechsle in den neuen Ordner
cd $verzeichnisname

# Berechne alle Bilder mit der eingebenen Pixelgröße neu
for i in *.$dateiformat
  do
    sips -Z $maximalebreitehoehe $i
  done

# Benenne die Bilddateien um und nutze Informationen für die
# Dimensionen via
for i in *.$dateiformat
  do
    pixelWidth=$(sips -g pixelWidth $i | awk '/pixelWidth:/{print $2}')
    pixelHeight=$(sips -g pixelHeight $i | awk '/pixelHeight:/{print $2}')
    # Endung löschen, weil sie sonst mitten im Dateinamen auftaucht
    filename=${i%.$dateiformat}
    # Jetzt mit Informationen neu benennen
    mv $i ${filename##*/}-${pixelWidth}x${pixelHeight}.$dateiformat
  done

echo -e "\n\n${white}Neue Bilder im Ordner ${yellow}$verzeichnisname ${white}erstellt:\n"
ls -1

# Farben zurücksetzen
echo "\nFertig!\n${reset}"

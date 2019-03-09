#!/bin/bash
# Rename Files with Date from File plus Extra Characters
clear;
# Farben zurücksetzen
printf '\e[0m'
echo "    ____ ____ ____ ____ ____ ____ ____ "
echo "   ||R |||e |||n |||a |||m |||e |||r ||"
echo "   ||__|||__|||__|||__|||__|||__|||__||"
echo "   |/__\|/__\|/__\|/__\|/__\|/__\|/__\|"
echo
echo "   RenameDate benennt Dateien um und nutzt"
echo "   dazu Entstehungsdatum plus einen Namen."
echo
echo "   Beispiel: 2016-10-26-12-37-33-bild.jpg"
echo
read -p $'\e[33m   Welche Dateiendung (Bsp: jpg): ' dateiformat
read -p $'\e[33m   Wie sollen die Dateien benannt werden: ' dateiname

# Farbe Grün für Ergebnisse
printf '\n\e[32m \e[01m  Ergebnisse \n\n \e[22m'
for datei in *.$dateiformat
  do VARIABLE_MIT_FORMATIERTER_ZEIT=$(date -r $(stat -f %B $datei) +%Y-%m-%d-%H-%M-%S)
  mv -vi "$datei" "$VARIABLE_MIT_FORMATIERTER_ZEIT-$dateiname.$dateiformat"
done

# Farben zurücksetzen
printf '\n\n\e[3m Fertig!\e[0m\n\n'

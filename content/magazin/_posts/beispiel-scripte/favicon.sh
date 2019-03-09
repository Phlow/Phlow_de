#!/bin/sh
#
#   Dieses Script fragt nach einer Bildatei, die dann in die
#   verschiedenen Favicon-Größen mittels sips-Kommandos
#   umgewandelt werden. Ist auf dem Rechner das Programm
#   ImageOptim installiert, dann werden die Bilddateien
#   anschließend verlustlos optimiert.

# Farben in Variablen schreiben (schönerer Output)
reset='\x1B[0m'
yellow='\x1b[0;33m'
boldyellow='\x1b[1;33m'
white='\x1b[0;37m'
boldwhite='\x1b[1;37m'
grey='\x1b[1;30m'

clear
echo "\n\n${boldyellow}sips FAVICONMAKER\n"
read -p "$(echo ${boldyellow}"Dateiname ohne Endung?" ${white}"(Wenn die Datei favicon heißt einfach Eingabetaste)" ${yellow}"›" ${white})" dateiname

# Setze den Dateinamen als favicon.jpg, wenn Eingabetaste gedrückt wurde
if [ -z $dateiname ]
  then
  dateiname='favicon'
fi


read -p "$(echo ${boldyellow}"Bildformat (jpg/png)?" ${white}"(Wenn jpg einfach Eingabetaste)" ${yellow}"›" ${white})" format

# Setze das Format auf jpg, wenn Eingabetaste gedrückt wurde
if [ -z $format ]
  then
  format='jpg'
fi

# Kombiniere Variablen für Namen
favname=$dateiname.$format

echo "${boldyellow}Soll ich ${white}${favname} ${boldyellow}erstellen?\n"
select yn in "Ja" "Nein"; do
    case $yn in
        Ja ) break;;
        Nein ) echo "\nNa gut…";exit;;
    esac
done

# Setze das Format auf jpg, wenn Eingabetaste gedrückt wurde
if [ $format="jpg" ]
then
  convertformat=jpeg
else [ -z $format ]
  convertformat='jpeg'
fi

# Favicon Generator
sips -z 114 114 -s format $convertformat $favname --out apple-touch-icon-114x114-precomposed.$format
sips -z 120 120 -s format $convertformat $favname --out apple-touch-icon-120x120-precomposed.$format
sips -z 144 144 -s format $convertformat $favname --out apple-touch-icon-144x144-precomposed.$format
sips -z 152 152 -s format $convertformat $favname --out apple-touch-icon-152x152-precomposed.$format
sips -z 180 180 -s format $convertformat $favname --out apple-touch-icon-180x180-precomposed.$format
sips -z 72 72 -s format $convertformat $favname --out apple-touch-icon-72x72-precomposed.$format
sips -z 76 76 -s format $convertformat $favname --out apple-touch-icon-76x76-precomposed.$format
sips -z 57 57 -s format $convertformat $favname --out apple-touch-icon-precomposed.$format
sips -z 32 32 -s format $convertformat $favname --out favicon-32x32.$format
sips -z 144 144 -s format $convertformat $favname --out msapplication_tileimage.$format
sips -z 192 192 -s format $convertformat $favname --out touch-icon-192.$format

# Bilder mit https://imageoptim.com optimieren
echo "\n${white}   Optimiere Bilder mit ImageOptim\n"
for i in *.$format
 do
   /Applications/ImageOptim.app/Contents/MacOS/ImageOptim $i
   echo "   ${yellow}$i ${white}mit ImageOptim optimiert"
done
# Farben zurücksetzen
echo "\n   Fertig!\n\n${reset}"

#!/bin/bash
#
#   Create a post for Jekyll
#

# Configuration
EDITOR='Atom'                   # We use this app when opening the file › look beneath
DATE=`date +%Y-%m-%d`
DOCFORMAT='md'                  # Without Point (!)
DIRECTORY='~/Desktop/sipstest/'

# Farben in Variablen schreiben (schönerer Output)
reset='\x1B[0m'
yellow='\x1b[0;33m'
white='\x1b[0;37m'

echo -e "${yellow}"
clear
echo "     ____             __                           ";
echo "    / __ \____  _____/ /_                          ";
echo "   / /_/ / __ \/ ___/ __/                          ";
echo "  / ____/ /_/ (__  ) /_                            ";
echo " /_/____\\___/____/\__/              __            ";
echo "   / ____/__  ____  ___  _________ _/ /_____  _____";
echo "  / / __/ _ \/ __ \/ _ \/ ___/ __ \`/ __/ __ \/ ___/";
echo " / /_/ /  __/ / / /  __/ /  / /_/ / /_/ /_/ / /    ";
echo " \____/\___/_/ /_/\___/_/   \__,_/\__/\____/_/     ";

read -p "$(echo -e ${white} "\nTitle ›" ${yellow})" TITLE

# Convert URL
TITLE_NO_HYPHENS=${TITLE// /-}   # convert spaces in title to hyphens
TITLE_NO_HYPHENS_LOWERCASE=`echo "$TITLE_NO_HYPHENS" | tr '[:upper:]' '[:lower:]'` # convert title to lowercase
PERMALINK=${DATE}-${TITLE_NO_HYPHENS_LOWERCASE}.${DOCFORMAT}


# Show content
echo -e "\n${white}---
title                  : $TITLE
permalink              : /$TITLE_NO_HYPHENS_LOWERCASE/
# meta_description     :
# teaser               :
---
"

echo -e "\n${white}Create ${yellow}$PERMALINK ${white}in ${yellow}$DIRECTORY?${reset}\n"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) break;;
        No ) echo "\nAbort mission";exit;;
    esac
done


# Create file
touch $PERMALINK
# Write content into new posting
echo "---
title                  : $TITLE
# meta_description     :
permalink              : /$TITLE_NO_HYPHENS_LOWERCASE/
---" > $PERMALINK

echo -e "\n${reset}Opening $PERMALINK in $EDITOR…"
open $PERMALINK -a "Atom"

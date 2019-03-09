#!/bin/bash
#
#   Create a post for Jekyll

# Configuration

EDITOR='Atom'
DATE=`date +%Y-%m-%d`
DOCFORMAT='md'         # Without Point (!)
DIRECTORY='~/Desktop/sipstest/'


# Get Input
clear
echo -e "\n"
read -p $'Title › ' TITLE

# Convert URL
TITLE_NO_HYPHENS=${TITLE// /-}   # convert spaces in title to hyphens
TITLE_NO_HYPHENS_LOWERCASE=`echo "$TITLE_NO_HYPHENS" | tr '[:upper:]' '[:lower:]'` # convert title to lowercase
PERMALINK=${DATE}-${TITLE_NO_HYPHENS_LOWERCASE}.${DOCFORMAT}


# Show content
echo -e "\n---
title                  : $TITLE
permalink              : /$TITLE_NO_HYPHENS_LOWERCASE/
# meta_description     :
# teaser               :
---"


echo -e "\nCreate $PERMALINK in $DIRECTORY?\n"
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

open $PERMALINK -a "Atom"

#! /bin/bash

query=$(echo "$1" | sed 's/ /%20/g')

echo "***********************************************"
echo "          VIDSRC SCRIPT BY ISG32               "
echo "***********************************************"
echo ""
echo ""
echo "leave if empty......"
echo ""
echo -n "Enter season > "
read ses
echo -n "Enter Episode > "
read epi

tmdbids=$(curl -s https://www.themoviedb.org/search?query=$query/ | grep -Eo "/tv/[0-9][0-9][0-9][0-9][0-9]" | grep -Eo "[0-9][0-9][0-9][0-9][0-9]" | head -n 1)

urlx="https://vidsrc.me/embed/"

firefox $urlx$tmdbids/$ses-$epi

clear

bash ./vidsrc.sh

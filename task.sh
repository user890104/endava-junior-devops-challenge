#!/bin/bash

time for SITE in www.abv.bg dir.bg news.bg www.google.bg www.facebook.com xkcd.com php.net stackoverflow.com www.youtube.com store.steampowered.com
do
	FILE=$SITE.html
	curl -s https://${SITE}/ > $FILE
	grep -cHF 'href=' $FILE
	grep -F 'href=' $FILE > $SITE.matches.txt
	rm $FILE
done

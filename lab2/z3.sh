#!/bin/bash

KATZRODLO=$1
KATCEL="/home/usr/lab2/"
ARCHIWUM_GZ=$KATZRODLO-$(date +%Y%m%d).tar.gz
ARCHIWUM_TAR=$KATZRODLO-$(date +%Y%m%d).tar
##########################################
if [ -z "$1" ]; then
echo "-------------------ARCHIWIZACJA---------------------------"
echo "podaj nazwe katalogu lub pliku, ktory chcesz zarchiwizowac"
echo "jako drugi parametr podaj -arch"
echo "jako trzeci parametr podaj jedna z ponizszych komend:"
echo " 1: -t dla rozszerzenia pliku .tar"
echo " 2: -g dla rozszerzenia pliku .tar.gz"
echo "Utworzone archiwum zostanie zapisane w katalogu Archiwum"
echo "----------WYSWIETLENIE_ZAWARTOSCI_ARCHIWUM----------------"
echo "W celu wyswietlenia zawartosci archiwum, podaj nazwe archiwum"
echo "jako drugi parametr podaj -lst"
exit
fi
##########################################
if [ "$2" = "-arch" ] && [ "$3" = "-g" ]; then
tar -czf $KATCEL$ARCHIWUM_GZ $KATZRODLO
echo "Utworzono archiwum tar.gz: $ARCHIWUM_GZ"
exit
fi
##########################################
if [ "$2" = "-arch" ] && [ "$3" = "-t" ]; then
tar -cvf $KATCEL$ARCHIWUM_TAR $KATZRODLO
echo "Utworzono archiwum .tar: $ARCHIWUM_TAR"
exit
fi
##########################################
if [ "${KATZRODLO##*.}" = "gz" ] && [ "$2" = "-lst" ]; then
	tar -tzvf "$KATZRODLO"
exit
fi
##########################################
if [ "${KATZRODLO##*.}" = "tar" ] && [ "$2" = "-lst" ]; then
	tar -tvf "$KATZRODLO"
exit
fi
###########################################
if [ "${KATZRODLO##*.}" != "gz" ] && [ "$2" = "-lst" ]; then
	echo "To nie jest archiwum tar" 
	echo "${KATZRODLO##*.} "
exit
fi

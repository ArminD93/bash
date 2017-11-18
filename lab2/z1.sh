#!/bin/bash

SCIEZKA="$1*"
LICZBA_PLIKOW=$(find $1 -maxdepth 1 -type f | wc -l)
LICZBA_KATALOGOW=$[$(find $1 -maxdepth 1 -type d | wc -l)-1]
LICZARCH=$(ls -l ${plik##.} | wc -l)
LICZ_KATARCH=$(find ${plik##.} -maxdepth 1 -type d | wc -l)
LICZ_PLIKARCH=$(find ${plik##.} -mindepth 2 -type f| wc -l)
##########################################################

echo "W katalogu znajduje sie: $LICZBA_KATALOGOW katalogow i $LICZBA_PLIKOW plikow."

for plik in $SCIEZKA
do
	if [ -d "$plik" ]; then
		echo "$plik (katalog)"
elif [ "${plik##*.}" = "gz" ]; then
		echo "$plik (archiwum .tar.gz W srodku sa: $LICZ_KATARCH katalogi i $LICZ_PLIKARCH plikow)"
elif [ "${plik##*.}" = "tar" ]; then
		echo "$plik (archiwum .tar $LICZARCH)"
	else
		echo "$plik (plik)"
	fi
done


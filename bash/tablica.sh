#!/bin/bash
tablica=(1 3 9 "Ciag znakow" Ciag znakow)
tablica2=(8 5 6 7 9)

echo "To jest tablica: ${tablica[@]}"
echo "To jest tablica2: ${tablica2[@]}" #@ lub * wyswietla cala tablice

echo "Pierwszy element tablicy: ${tablica[0]}"

echo "Drugi element tablicy: ${tablica[1]}"

echo "Trzeci element tablicy: ${tablica[2]}"
echo "Czwarty element tablicy: ${tablica[3]}"
echo "Piaty element tablicy: ${tablica[4]}"
echo "Szosty element tablicy: ${tablica[5]}"

echo "Czwarty element tablicy posiada ${#tablica[3]} znakow" #wyswietla, ile znakow ma element pod indekesm 3
echo "tablica sklada sie z ${#tablica[@]} elementow" #wyswietla, ile elementow ma tablica
tablica[0]=99
echo ${tablica[0]}

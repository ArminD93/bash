#!/bin/bash

echo "rozszerzenie pliku $1"
PLIK="${1##i}"
KLIP="${1%%i*}"
echo "$PLIK"
echo "$KLIP"

#polecenie *. eliminuje cala zawartosc lancucha
#zmiennej $1 pozostawiajac tylko rozszerzenie

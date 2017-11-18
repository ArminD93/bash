#!/bin/bash

NAZWA="userMarketing"
SCIEZKA="/home/"
HASLO="01010101"

if [ -z "$1" ] || [ -z "$2" ]; then
	echo "Podaj jako parametr 1 nazwe grupy"
	echo "Podaj jako parametr 2 liczbe kont do utworzenia"
	exit
fi
sudo groupadd $1

	for (( i=1; i<=$2; i++ ));
	do
		echo "$i: Utworzono konto dla uzytkownika $NAZWA$i i przypisano do grupy: $1"
sudo useradd -d $SCIEZKA$NAZWA$i -G $1 -p $(openssl passwd -1 ${HASLO}) -m $NAZWA$i
		sudo chage -d 0 $NAZWA$i

	done


#!/bin/bash

if [ -z "$1" ]; then
echo "jako parametr podaj nazwe archiwum"
exit
fi

ARCH="$1"
for plik in $ARCH
do
	if [ "${plik##*.}" = "tar" ]; then
		tar -tvf "$plik"
	elif [ "${plik##*.}" = "gz" ]; then
		tar -tzvf "$plik"
	else
		echo "To nie jest archiwum: $plik"
	fi
done



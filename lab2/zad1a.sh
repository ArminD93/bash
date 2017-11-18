#!/bin/bash
#backup katalogu podanego przez uzytkownika

if [ -z "$1" ]; then
echo "jako parametr podaj nazwe katalogu (sciezki), ktory ma byc zarchwizowany"
exit
fi

KATZRODLO=$1
KATCEL="/home/usr/lab2/archiwum/"
ARCHIWUM=$KATZRODLO-$(date +%Y%m%d).tar.gz
tar -zcf $KATCEL$ARCHIWUM $KATZRODLO

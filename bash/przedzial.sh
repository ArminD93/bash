#!/bin/bash

numer=10

#-ge -> wiekszy lub rowny
#--le _> mniejszy lub rowny

if [ "$numer" -ge "0" ] && [ "$numer" -le "10" ]
then
   echo "$numer jest z przedzialu: <0; 10>"
else
   echo "$numer nie jest z przedzialu: <0;10>"

fi

#-lt mniejszy niz
#-gt wiekszy niz

if [ "$numer" -lt "10" ] || [ "$numer" -gt "20" ]
then
   echo "$numer nie jest z przedzialu: <10: 20>"
else
   echo "$numer jest z przedzialu: <10; 20>"
fi

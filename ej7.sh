#!/bin/bash

for l in `cat /etc/passwd`
do
	USU=`echo $l|cut -d: -f1`
	SHE=`echo $l|cut -d: -f7`
	VAL="/bin/$1"

	if [[ $VAL == `echo $SHE` ]]
	then
		echo $USU >> temp.txt
	fi
done

cat temp.txt|sort
rm temp.txt

#!/bin/bash

DIR=`test -d $1 && echo true || echo false `

if [ $# == 1 ]
then
	if [ $DIR == "true" ]
	then
		for i in `ls $1`
		do
			DIR2=`test -d $i | echo true || echo false `
			ENL=`test -h $i | echo true || echo false `
			ARC=`test -f $i | echo true || echo false `

			if [ $DIR2 == "true" ]
			then
				echo "$i es un directorio"

			elif [ $ENL == "true" ]
			then 
				echo "$i es un archivo"

			elif [ $ARC == "true" ]
			then 
				echo "$i es un archivo"
			fi
		done
	else
		echo "No existe"
	fi
else
	echo "Numero incorrecto de parametros"
fi

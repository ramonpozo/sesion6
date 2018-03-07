#!/bin/bash

DIR=`test -d $1 && echo true || echo false `
INT=`echo $2 | grep -q "[0-9]\+" && echo true || echo false`

if [ $# == 2 ]
then
	if [ $DIR == "true" ] && [ $INT == "true" ]
	then 
		find $1 -size -$2 > archivoSiz.txt
		echo "Se ha creado el fichero, este es su contenido:"
		cat archivoSiz.txt
	else
		echo "No existe el directorio o el parametro es un entero"
	fi
else
	echo "Numero incorrecto de parametros"
fi




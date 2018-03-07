#!/bin/bash

echo "Pulsa una tecla"
read TECLA

case $TECLA in
	[0-9]) echo "Primera fila";;
	[qwertyuiop]) echo "Segunda fila";;
	[asdfghjklñ]) echo "Tercera fila";;
	[zxcvbnnnm,.-]) echo "Cuarta fila";;
	*) echo "Otra linea";;
esac

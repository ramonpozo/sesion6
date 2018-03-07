#!/bin/bash

NUM=0

while [ $NUM -le 1 ] || [ $NUM -ge 10 ]
do
	echo "Introduce un numero del 1 al 10"
	read NUM
done

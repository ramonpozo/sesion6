#!/bin/bash

destino="Copiade_de_Seguridad" 
if [[ `test -d $destino && echo 0 || echo 1` == 1 ]] 
then 
	mkdir $destino 
fi 
if [ $# -ge 1 ] 
	then  
		suma=0 
		for i in $@ 
		do 
			if [ `test -e $i && echo 0 || echo 1` == 1 ] 
			then 
			suma=$[$suma + 1] 
	fi 
done 
then 
	tar -cvf "./$destino/copia`date +"%Y%m%d"`.tar" $@ 
	gzip "./$destino/copia`date +"%Y%m%d"`.tar" 
else 
	echo "Alguno de los parametros dados no existe" 
fi 
else 
	echo "Numero de paramentros incorrecto" 
fi

#!/bin/bash
#Autor: Jordi Llopis García
#Versió: 0.1
#FUNCIÓ:
	#Els parametres han de ser els noms dels fichers.
	#Comprovar si existeix /etc/sec/integritat, i en cas de que no, el crea.
	#Dins de /etc/sec/integritat es guardara churro + nom.
##################################################################################################################
clear
if ! [ -d /etc/sec/ ]
then
	mkdir /etc/sec
	if ! [ -f /etc/sec/integritat ]
	then
		touch /etc/sec/integritat
		#chmod 773 /etc/sec/integritat
	fi
fi

for i in $* #$(seq 1 $#)  ho he canviat perque hem donava un error en el grep i no se perque.
do
	num=$(cat /etc/sec/integritat | grep $i | wc -l)
	if [ $num -eq 0 ]
	then
		md5sum $i >> /etc/sec/integritat
		#shift		https://programaressencillo.wordpress.com/2015/01/26/bash-paso-de-parametros-en-bash-linux/
	else
		var1=$(md5sum $i | cut -d " " -f1)
		var2=$(cat /etc/sec/integritat | grep $i | cut -d " " -f1)
		if [ $var1 == $ var2 ]
		then
			echo -e "El md5sum de \e[31m$i\e[0m es igual"
		else
			echo -e "Alerta, el archiu \e[31m$i\e[0m s'ha modificat"
		fi
	fi
	#shift
done
echo "-----------------------------------------------"
echo "RESULTADO /etc/sec/integritat"
echo "-----------------------------------------------"
cat /etc/sec/integritat

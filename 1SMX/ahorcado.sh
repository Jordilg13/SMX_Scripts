#!/bin/bash
#Autor: Jordi Llopis García
#versió: 0.5



function inicial {
clear
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||			 █████╗ ██╗  ██╗ ██████╗ ██████╗  ██████╗ █████╗ ██████╗  ██████╗ 			||-||-||"   
echo "   ||-||-||			██╔══██╗██║  ██║██╔═══██╗██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔═══██╗			||-||-||"  
echo "   ||-||-||			███████║███████║██║   ██║██████╔╝██║     ███████║██║  ██║██║   ██║			||-||-||"
echo "   ||-||-||			██╔══██║██╔══██║██║   ██║██╔══██╗██║     ██╔══██║██║  ██║██║   ██║			||-||-||"
echo "   ||-||-||			██║  ██║██║  ██║╚██████╔╝██║  ██║╚██████╗██║  ██║██████╔╝╚██████╔╝			||-||-||"
echo "   ||-||-||			╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═════╝  ╚═════╝ 			||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||						  ╦╦ ╦╔═╗╔═╗╦═╗	 						||-||-||"
echo "   ||-||-||					          ║║ ║║ ╦╠═╣╠╦╝ 	  					||-||-||"
echo "   ||-||-||						 ╚╝╚═╝╚═╝╩ ╩╩╚═	 						||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||						 ╔═╗╔═╗╦  ╦╦═╗							||-||-||"
echo "   ||-||-||						 ╚═╗╠═╣║  ║╠╦╝							||-||-||"
echo "   ||-||-||						 ╚═╝╩ ╩╩═╝╩╩╚═							||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
}

############################################################################################################
function jugar {
clear
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||			 █████╗ ██╗  ██╗ ██████╗ ██████╗  ██████╗ █████╗ ██████╗  ██████╗ 			||-||-||"   
echo "   ||-||-||			██╔══██╗██║  ██║██╔═══██╗██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔═══██╗			||-||-||"  
echo "   ||-||-||			███████║███████║██║   ██║██████╔╝██║     ███████║██║  ██║██║   ██║			||-||-||"
echo "   ||-||-||			██╔══██║██╔══██║██║   ██║██╔══██╗██║     ██╔══██║██║  ██║██║   ██║			||-||-||"
echo "   ||-||-||			██║  ██║██║  ██║╚██████╔╝██║  ██║╚██████╗██║  ██║██████╔╝╚██████╔╝			||-||-||"
echo "   ||-||-||			╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═════╝  ╚═════╝ 			||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||						  ╦╦ ╦╔═╗╔═╗╦═╗	 						||-||-||"
echo "   ||-||-||					    |>    ║║ ║║ ╦╠═╣╠╦╝   <|						||-||-||"
echo "   ||-||-||						 ╚╝╚═╝╚═╝╩ ╩╩╚═	 						||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||						 ╔═╗╔═╗╦  ╦╦═╗							||-||-||"
echo "   ||-||-||						 ╚═╗╠═╣║  ║╠╦╝							||-||-||"
echo "   ||-||-||						 ╚═╝╩ ╩╩═╝╩╩╚═							||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
num=$(echo $S | wc -c)
if [ $num -eq 1 ]
then
	fin="no"
	finbucle="2"
	clear
fi
}
###################################################################################################
function salir {
clear
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||			 █████╗ ██╗  ██╗ ██████╗ ██████╗  ██████╗ █████╗ ██████╗  ██████╗ 			||-||-||"   
echo "   ||-||-||			██╔══██╗██║  ██║██╔═══██╗██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔═══██╗			||-||-||"  
echo "   ||-||-||			███████║███████║██║   ██║██████╔╝██║     ███████║██║  ██║██║   ██║			||-||-||"
echo "   ||-||-||			██╔══██║██╔══██║██║   ██║██╔══██╗██║     ██╔══██║██║  ██║██║   ██║			||-||-||"
echo "   ||-||-||			██║  ██║██║  ██║╚██████╔╝██║  ██║╚██████╗██║  ██║██████╔╝╚██████╔╝			||-||-||"
echo "   ||-||-||			╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═════╝  ╚═════╝ 			||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||						  ╦╦ ╦╔═╗╔═╗╦═╗	 						||-||-||"
echo "   ||-||-||						  ║║ ║║ ╦╠═╣╠╦╝   						||-||-||"
echo "   ||-||-||						 ╚╝╚═╝╚═╝╩ ╩╩╚═	 						||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||						 ╔═╗╔═╗╦  ╦╦═╗							||-||-||"
echo "   ||-||-||					    |>   ╚═╗╠═╣║  ║╠╦╝   <| 						||-||-||"
echo "   ||-||-||						 ╚═╝╩ ╩╩═╝╩╩╚═							||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"

}
###################################################################################################
inicial

finbucle=1
seleccionado=""
while [ $finbucle -eq 1 ];do 
echo "Pulsa W para subir, S para bajar i SPACE para elegir."
read -n1 S
	if [ -z $S ];then
		if ! [ -z $seleccionado ] && [ $seleccionado == "s" ]; then
			fin="si"
			finbucle=2
			
		elif ! [ -z $seleccionado ] && [ $seleccionado == "w" ]; then
			fin="no"
			finbucle=2
			
		fi
	elif [ $S == "w" ]; then		
		if [ $finbucle -eq 1 ]; then
		jugar
		fin="no"
		seleccionado="w"
		fi
	elif [ $S == "s" ]; then		
		if [ $finbucle -eq 1 ];then
		salir
		fin="si"
		seleccionado="s"
		fi
	fi

done
cap=" "
bd=" "
be=' '
cos=" "
peud=" "
peue=' '
fallos=0
function tablero {
	if [ $fallos -eq 6 ]; then
		peue='\'
		fin="si"
	elif [ $fallos -eq 5 ]; then
		peud="/"
	elif [ $fallos -eq 4 ]; then 
		bd="/"
	elif [ $fallos -eq 3 ]; then
		be='\'
	elif [ $fallos -eq 2 ]; then
		cos="|"
	elif [ $fallos -eq 1 ]; then
		cap="O"
	fi
	clear
	echo
	echo "ᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁ" 
	echo "				 _________"
	echo "				/	  |"
	echo "				|         $cap"
	echo "				|        $bd$cos$be"
	echo "				|	 $peud $peue"
	echo "				|"
	echo "				|"
	echo "				|"
	echo
	echo 
	echo "			Palabra:   $l1 $l2 $l3 $l4 $l5 $l6 $l7 $l8"
	echo
	echo "			Letras usadas: $usadas"
	echo ""
	echo "ᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆ"
}
function tablero2 {
	if [ $fallos -eq 6 ]; then
		peue='\'
		fin="si"
	elif [ $fallos -eq 5 ]; then
		peud="/"
	elif [ $fallos -eq 4 ]; then 
		bd="/"
	elif [ $fallos -eq 3 ]; then
		be='\'
	elif [ $fallos -eq 2 ]; then
		cos="|"
	elif [ $fallos -eq 1 ]; then
		cap="O"
	fi
	clear
	echo
	echo "ᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁᚁ" 
	echo
	echo "				 _________"
	echo "				/	  |"
	echo "				|         $cap"
	echo "				|        $bd$cos$be"
	echo "				|	 $peud $peue"
	echo "				|"
	echo "				|"
	echo "				|"
	echo
	echo 
	echo "			----------------------------------------------------------------------------------------------"
	echo "					PISTA: $pista"
	echo "			----------------------------------------------------------------------------------------------"
	echo
	echo "			Palabra:   $l1 $l2 $l3 $l4 $l5 $l6 $l7 $l8"
	echo
	echo "			Letras usadas: $usadas"
	echo
	echo "ᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆᚆ"
}
function diccionario {
	case $1 in
		0)palabra="h;t;m;l;";;
		1)palabra="s;u;d;o";;
		2)palabra="m;e;m;o;r;i;a";;
		3)palabra="s;c;r;i;p;t";;
		4)palabra="t;e;l;e;f;o;n;o";;
		5)palabra="t;e;c;l;a;d;o";;
		6)palabra="h;a;r;d;w;a;r;e";;
		7)palabra="p;e;n;d;r;i;v;e";;
		8)palabra="a;l;t;a;v;o;z";;
		9)palabra="p;e;r;m;i;s;o;s";;
	esac
}
function contarletras {
	solslletres=$(echo $palabra | tr -d ';')
	numlletres=$(echo $solslletres | wc -c)
	let numlletres=$numlletres-1
	
}
function iniciapalabra {
	l1="-"
	case $numlletres in
		2) l2="-";;
		3) l2="-";l3="-";;
		4) l2="-";l3="-";l4="-";;
		5) l2="-";l3="-";l4="-";l5="-";;
		6) l2="-";l3="-";l4="-";l5="-";l6="-";;
		7) l2="-";l3="-";l4="-";l5="-";l6="-";l7="-";;
		8) l2="-";l3="-";l4="-";l5="-";l6="-";l7="-";l8="-";;
	esac
}		
function adivinarpalabra { 
	adivinar=$(echo $solslletres | tr a-z '-')
}
function guioperlletra {
for i in $(seq $numlletres)
		do
				unaletra=$(echo $palabra | cut -d";" -f$i)
				if [ $unaletra == $letra ]
				then
					case $i in
						1)l1=$letra;;
						2)l2=$letra;;
						3)l3=$letra;;
						4)l4=$letra;;
						5)l5=$letra;;
						6)l6=$letra;;
						7)l7=$letra;;
						8)l8=$letra;;
					esac
				fi
		done
usadas=$usadas$letra" "
}
function comprovarletra {
#stringZ=abcABC123ABCabc
#echo ${stringZ:7:3}----------------# 23A
pasar=$(echo $letra | wc -c)
let pasar=$pasar-1
if [ -z $letra ]
then	
	if [ $fallos -eq 0 ]
	then
		fallos=0
	else
		fallos=$fallos-1
		letra=" "
	fi
else
	existeix=""
	existeix=$(echo $palabra | tr -d ';' | grep $letra | wc -l)
	repetida=$(echo $usadas | grep $letra | wc -l) #0-no esta   1-si esta
	if  [ $existeix -eq 0 ]
	then
		if [ $repetida -eq 0 ]
		then
			if [ $pasar -eq 1 ]
			then
				let fallos=$fallos+1
				usadas=$usadas$letra" "
			fi
		else
			echo
			read -p "Esta letra ya ha sido utilizada."
		fi
	else
		if [ $repetida -eq 0 ]
		then
			guioperlletra
		else
			echo
			read -p "Esta letra ya ha sido utilizada."
		fi
		
	fi
fi
}
function comprovarvictoria {
for i in $(seq $numlletres)
	do
		if [ $l1 = "-" ]
		then
			fin="no"
		elif [ $l2 = "-" ]
		then
			fin="no"
		elif [ $l3 = "-" ]
		then
			fin="no"
		elif [ $l4 = "-" ]
		then
			fin="no"
		elif [ $l5 = "-" ]
		then
			fin="no"
		elif [ $l6 = "-" ]
		then
			fin="no"
		elif [ $l7 = "-" ]
		then
			fin="no"
		elif [ $l8 = "-" ]
		then
			fin="no"
		else
			fin="si"
			clear
			echo "------------------"
			echo "   HAS GANADO"
			echo "------------------"
			if [ $fin == "si" ]
			then
				break
			fi
		fi
	done

}
function comprovarderrota {
if [ $fallos -eq 6 ]
then
	fin="si"
	clear
	echo "------------------"
	echo "   HAS PERDIDO"
	echo "------------------"
fi
}
function pedirletra {
	read -p "			Introduce una letra: " letra
	varunalletra=$(echo $letra | wc -c)
	let varunalletra=$varunalletra-1
	if [ $varunalletra -gt 1 ]
	then
		echo
		read -p "Introduce solo una letra."
			if [ $fallos -eq 0 ]
			then
				fallos=1
				let fallos=$fallos-1 # li reste un fallo perque despres se sumara un en la funció guioperlletra,
				letra=""             # i aixi faig que si poses mes de una lletra, no conte com a fallo.
			fi
		  
	fi
}
function imprimirpista {
	if [ $fallos -eq 5 ]
	then
		tab=2
		if [ $solslletres == "html" ]
		then
			pista="Lenguaje de marcado para la elaboración de páginas web."
		elif [ $solslletres == "sudo" ]
		then
			pista="Comando para ejecutar como superusuario."
		elif [ $solslletres == "memoria" ]
		then
			pista="RAM"
		elif [ $solslletres == "script" ]
		then
			pista="Se ejecuta en el shell de Linux."
		elif [ $solslletres == "telefono" ]
		then
			pista="Dispositivo de telecomunicación."
		elif [ $solslletres == "teclado" ]
		then
			pista="Dispositivo de entrada."
		elif [ $solslletres == "hardware" ]
		then
			pista="Parte física de un ordenador."
		elif [ $solslletres == "pendrive" ]
		then
			pista="Dispositivo de almacenamiento externo."
		elif [ $solslletres == "altavoz" ]
		then
			pista="Dispositivo de salida."
		elif [ $solslletres == "permisos" ]
		then
			pista="Necesarios para ejecutar un script."
		fi 
 
	fi
}
###################################################################################################

if [ $seleccionado == "w" ]; then

	let ran=$RANDOM%10
	diccionario $ran
	contarletras
	iniciapalabra
	tab=1
	while [ $fin == "no" ]
	do
		if [ $tab -eq 1 ]
		then
			tablero
		else
			tablero2
		fi
		adivinarpalabra
		pedirletra	
		comprovarletra
		comprovarvictoria
		comprovarderrota
		imprimirpista
	done
fi

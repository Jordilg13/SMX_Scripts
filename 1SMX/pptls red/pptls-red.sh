#!/bin/bash
#Autor: Jordi Llopis
#Versió: 0.2
clear
function mostrar() {
echo "---------------------------------------------------------------------------------------------------------------------------" 
echo "					PIEDRA, PAPEL, TIJERAS, LAGARTO, SPOCK" 
echo "Tijera corta a papel, papel cubre a piedra, piedra aplasta a lagarto, lagarto envenena a Spock, Spock rompe a tijera, tijera decapita a lagarto, lagarto devora a papel, papel desautoriza a Spock, Spock vaporiza a piedra, y como siempre, piedra aplasta a tijera" 
echo "---------------------------------------------------------------------------------------------------------------------------" 
echo  "			Introduce una opción(piedra, papel, tijeras, lagarto, spock): "  
read jug1
}

function convertir() {
if [ $jug1 == "piedra" ] || [ $jug1 == "papel" ] || [ $jug1 == "tijeras" ] || [ $jug1 == "lagarto" ] || [ $jug1 == "spock" ]
then
	if [ $jug1 == "piedra" ]; then
		jug1=0
	fi
	if [ $jug1 == "papel" ]; then
		jug1=1
	fi
	if [ $jug1 == "tijeras" ]; then
		jug1=2
	fi
	if [ $jug1 == "lagarto" ]; then
		jug1=3
	fi
	if [ $jug1 == "spock" ]; then
		jug1=4
	fi
else
	read -p "Introduce una opción valida."
fi
}

function comprovar() {
clear
echo "---------------------------------------------------------------------------------------------------------------------------"
jug2=$(rand -M 5)

case $jug2 in
	0)jug2letra="piedra";;
	1)jug2letra="papel";;
	2)jug2letra="tijeras";;
	3)jug2letra="lagarto";;
	4)jug2letra="spock";;
esac

if [ $jug1 -eq 0 ];then
	case $jug2 in
		0)echo "Empate" 
		echo "La elección de la maquina era $jug2letra" 		
		;;
		1)echo "Has perdido" 
		echo "La elección de la maquina era $jug2letra" 
		let cont2=$cont2+1
		;;
		2)echo "Has ganado" 
		echo "La elección de la maquina era $jug2letra" 
		let cont1=$cont1+1
		;;
		3)echo "Has ganado" 
		echo "La elección de la maquina era $jug2letra" 
		let cont1=$cont1+1
		;;
		4)echo "Has perdido" 
		echo "La elección de la maquina era $jug2letra" 
		let cont2=$cont2+1
		;;
	esac
fi
if [ $jug1 -eq 1 ];then
	case $jug2 in
		0)echo "Has ganado" #piedra
		echo "La elección de la maquina era $jug2letra" 
		let cont1=$cont1+1		
		;;
		1)echo "Empate" #papel
		echo "La elección de la maquina era $jug2letra" 
		;;
		2)echo "Has perdido" #tijeras
		echo "La elección de la maquina era $jug2letra" 
		let cont2=$cont2+1
		;;
		3)echo "Has perdido" #lagarto
		echo "La elección de la maquina era $jug2letra" 
		let cont2=$cont2+1
		;;
		4)echo "Has ganado" #spock
		echo "La elección de la maquina era $jug2letra" 
		let cont1=$cont1+1
		;;
	esac
fi

if [ $jug1 -eq 2 ];then
	case $jug2 in
		0)echo "Has perdido" 
		echo "La elección de la maquina era $jug2letra" 
		let cont2=$cont2+1		
		;;
		1)echo "Has ganado" 
		echo "La elección de la maquina era $jug2letra" 
		let cont1=$cont1+1
		;;
		2)echo "Empate" 
		echo "La elección de la maquina era $jug2letra" 
		;;
		3)echo "Has ganado" 
		echo "La elección de la maquina era $jug2letra" 
		let cont1=$cont1+1
		;;
		4)echo "Has perdido" 
		echo "La elección de la maquina era $jug2letra" 
		let cont2=$cont2+1
		;;
	esac
fi
if [ $jug1 -eq 3 ]; then
	case $jug2 in
		0)echo "Has perdido" 
		echo "La elección de la maquina era $jug2letra" 
		let cont2=$cont2+1	
		;;
		1)echo "Has perdido" 
		echo "La elección de la maquina era $jug2letra" 
		let cont2=$cont2+1
		;;
		2)echo "Has ganado" 
		echo "La elección de la maquina era $jug2letra" 
		let cont1=$cont1+1
		;;
		3)echo "Empate" 
		echo "La elección de la maquina era $jug2letra" 
		;;
		4)echo "Has ganado" 
		echo "La elección de la maquina era $jug2letra" 
		let cont1=$cont1+1
		;;
	esac
fi
if [ $jug1 -eq 4 ]; then
	case $jug2 in
		0)echo "Has ganado" 
		echo "La elección de la maquina era $jug2letra" 
		let cont1=$cont1+1
		;;
		1)echo "Has perdido" 
		echo "La elección de la maquina era $jug2letra" 
		let cont2=$cont2+1
		;;
		2)echo "Has ganado" 
		echo "La elección de la maquina era $jug2letra" 
		let cont1=$cont1+1
		;;
		3)echo "Has perdido" 
		echo "La elección de la maquina era $jug2letra" 
		let cont2=$cont2+1
		;;
		4)echo "Empate" 
		echo "La elección de la maquina era $jug2letra" 
		;;
	esac
fi
}
jug1=""
cont1=0
cont2=0
while [ $cont1 -ne 5 ] && [ $cont2 -ne 5 ]
do
	mostrar
	convertir
	if ! [ -z $jug1 ];then
	comprovar
	fi
	echo "Tu: $cont1" 
	echo "Maquina: $cont2" 
done

if [ $cont1 -eq 5 ]
then
clear
echo "---------------------------------------------------------------------------------------------------------------------------" 
echo "---------------------------------------------------------------------------------------------------------------------------" 
echo "					HAS GANADO LA PARTIDA"
echo "---------------------------------------------------------------------------------------------------------------------------" 
echo "---------------------------------------------------------------------------------------------------------------------------" 
borrar="si"
fi
if [ $cont2 -eq 5 ]
then
clear
echo "---------------------------------------------------------------------------------------------------------------------------" 
echo "---------------------------------------------------------------------------------------------------------------------------" 
echo "					HAS PERDIDO LA PARTIDA"
echo "---------------------------------------------------------------------------------------------------------------------------" 
echo "---------------------------------------------------------------------------------------------------------------------------" 

fi


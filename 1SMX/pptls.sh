#!/bin/bash
#Autor: Jordi Llopis
#Versió: 0.2
clear

function mostrar() {
echo "---------------------------------------------------------------------------------------------------------------------------"
echo "					PIEDRA, PAPEL, TIJERAS, LAGARTO, SPOCK"
echo "Tijera corta a papel, papel cubre a piedra, piedra aplasta a lagarto, lagarto envenena a Spock, Spock rompe a tijera, tijera decapita a lagarto, lagarto devora a papel, papel desautoriza a Spock, Spock vaporiza a piedra, y como siempre, piedra aplasta a tijera"
echo "---------------------------------------------------------------------------------------------------------------------------"
read -p "			Introduce una opción(piedra, papel, tijeras, lagarto, spock): " jug1
}

function convertir() {

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
}

function comprovar() {

clear
echo "---------------------------------------------------------------------------------------------------------------------------"
jug2=$(rand -M 5)

if [ $jug1 -eq 0 ];then
	case $jug2 in
		0)echo "Empate"
		echo "La elección de la maquina era $jug2"		
		;;
		1)echo "Has perdido"
		echo "La elección de la maquina era $jug2"
		let cont2=$cont2+1
		;;
		2)echo "Has ganado"
		echo "La elección de la maquina era $jug2"
		let cont1=$cont1+1
		;;
		3)echo "Has ganado"
		echo "La elección de la maquina era $jug2"
		let cont1=$cont1+1
		;;
		4)echo "Has perdido"
		echo "La elección de la maquina era $jug2"
		let cont2=$cont2+1
		;;
	esac
fi
if [ $jug1 -eq 1 ];then
	case $jug2 in
		0)echo "Has ganado"
		echo "La elección de la maquina era $jug2"
		let cont1=$cont1+1		
		;;
		1)echo "Empate"
		echo "La elección de la maquina era $jug2"
		;;
		2)echo "Has perdido"
		echo "La elección de la maquina era $jug2"
		let cont2=$cont2+1
		;;
		3)echo "Has perdido"
		echo "La elección de la maquina era $jug2"
		let cont2=$cont2+1
		;;
		4)echo "Has ganado"
		echo "La elección de la maquina era $jug2"
		let cont1=$cont1+1
		;;
	esac
fi

if [ $jug1 -eq 2 ];then
	case $jug2 in
		0)echo "Has perdido"
		echo "La elección de la maquina era $jug2"
		let cont2=$cont2+1		
		;;
		1)echo "Has ganado"
		echo "La elección de la maquina era $jug2"
		let cont1=$cont1+1
		;;
		2)echo "Empate"
		echo "La elección de la maquina era $jug2"
		;;
		3)echo "Has ganado"
		echo "La elección de la maquina era $jug2"
		let cont1=$cont1+1
		;;
		4)echo "Has perdido"
		echo "La elección de la maquina era $jug2"
		let cont2=$cont2+1
		;;
	esac
fi
if [ $jug1 -eq 3 ]; then
	case $jug2 in
		0)echo "Has perdido"
		echo "La elección de la maquina era $jug2"
		let cont2=$cont2+1	
		;;
		1)echo "Has perdido"
		echo "La elección de la maquina era $jug2"
		let cont2=$cont2+1
		;;
		2)echo "Has ganado"
		echo "La elección de la maquina era $jug2"
		let cont1=$cont1+1
		;;
		3)echo "Empate"
		echo "La elección de la maquina era $jug2"
		;;
		4)echo "Has ganado"
		echo "La elección de la maquina era $jug2"
		let cont1=$cont1+1
		;;
	esac
fi
if [ $jug1 -eq 4 ]; then
	case $jug2 in
		0)echo "Has ganado"
		echo "La elección de la maquina era $jug2"
		let cont1=$cont1+1
		;;
		1)echo "Has perdido"
		echo "La elección de la maquina era $jug2"
		let cont2=$cont2+1
		;;
		2)echo "Has ganado"
		echo "La elección de la maquina era $jug2"
		let cont1=$cont1+1
		;;
		3)echo "Has perdido"
		echo "La elección de la maquina era $jug2"
		let cont2=$cont2+1
		;;
		4)echo "Empate"
		echo "La elección de la maquina era $jug2"
		;;
	esac
fi
}

cont1=0
cont2=0
while [ $cont1 -ne 5 ] && [ $cont2 -ne 5 ]
do
mostrar
convertir
comprovar
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


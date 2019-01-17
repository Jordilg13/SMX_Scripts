#!/bin/bash

#3 en ratlla
clear
#################################### FUNCTIONS ####################################################
function menuprincipal {
#___________________________________imprimirmenu_________________________________________________________________________
function imprimirmenu {

echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||			   ██████╗     ███████╗███╗   ██╗    ██████╗  █████╗ ██╗   ██╗ █████╗			||-||-||"   
echo "   ||-||-||			   ╚════██╗    ██╔════╝████╗  ██║    ██╔══██╗██╔══██╗╚██╗ ██╔╝██╔══██╗			||-||-||"  
echo "   ||-||-||			    █████╔╝    █████╗  ██╔██╗ ██║    ██████╔╝███████║ ╚████╔╝ ███████║			||-||-||"
echo "   ||-||-||			    ╚═══██╗    ██╔══╝  ██║╚██╗██║    ██╔══██╗██╔══██║  ╚██╔╝  ██╔══██║			||-||-||"
echo "   ||-||-||			   ██████╔╝    ███████╗██║ ╚████║    ██║  ██║██║  ██║   ██║   ██║  ██║			||-||-||"
echo "   ||-||-||			   ╚═════╝     ╚══════╝╚═╝  ╚═══╝    ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝			||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||						       ╦╦ ╦╔═╗╔═╗╦═╗						||-||-||"
echo "   ||-||-||						       ║║ ║║ ╦╠═╣╠╦╝						||-||-||"
echo "   ||-||-||						      ╚╝╚═╝╚═╝╩ ╩╩╚═						||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||						  ╔═╗╦═╗╔═╗╔╦╗╦╔╦╗╔═╗╔═╗					||-||-||"
echo "   ||-||-||						  ║  ╠╦╝║╣  ║║║ ║ ║ ║╚═╗					||-||-||"
echo "   ||-||-||						  ╚═╝╩╚═╚═╝═╩╝╩ ╩ ╚═╝╚═╝					||-||-||"
echo "   ||-||-||														||-||-||"
echo "   ||-||-||						      ╔═╗╔═╗╦  ╦╦═╗						||-||-||"
echo "   ||-||-||						      ╚═╗╠═╣║  ║╠╦╝						||-||-||"
echo "   ||-||-||						      ╚═╝╩ ╩╩═╝╩╩╚═						||-||-||"
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



#_________________________jugar_creditos_salir_________________________________________________________________________________
function menu {
if [ $E == "j" ]
then
	read -p "Desea comenzar a jugar?(s/n) " jugar
		if [ $jugar == "s" ]
		then
			finmenu="si"
			imprimirtablero
                else
                       clear                       
                 menuprincipal                       
		fi
fi

if [ $E == "c" ]
then
       clear
	echo "          ***************************************************************************************************"
	echo "          *											   	    *"
	echo "          *											   	    *"
	echo "          *					Hecho por Jordi Llopis García				    *"
	echo "          *												    *"
	echo "          *												    *"
	echo "          ***************************************************************************************************"
        read -p ""
fi

if [ $E == "s" ]
then
	exit
        clear
fi
}
#______________while______________________________________________________________________________________________
finmenu="no"
while [ $finmenu == "no" ]
do
imprimirmenu
echo "Pulsa la inicial para elegir."
read -n1 E
menu
done
#____________________________________________________________________________________________________________
}
#####################################################################################################################################
#####################################################################################################################################
#####################################################################################################################################
function imprimirtablero {
	clear
	echo "		A			B			C"
	echo " ------------------------------------------------------------------------------"
	echo "|			  |			     |			       |"
	echo "|			  |			     |			       |"
	echo "|			  |			     |			       |"
	echo "|		$a1	  |		$b1	     |		 $c1	       | 1"
	echo "|			  |			     |			       |"
	echo "|			  |			     |			       |"
	echo "|			  |			     |			       |"
	echo " ------------------------------------------------------------------------------"
	echo "|			  |			     | 			       |"
	echo "|			  |			     |	 		       |"
	echo "|			  |			     |	 		       |"
	echo "|		$a2	  |		$b2	     |	 	  $c2	       | 2"
	echo "|			  |			     |	 		       |"
	echo "|			  |			     |	 		       |"
	echo "|			  |			     |	 		       |"
	echo " ------------------------------------------------------------------------------"
	echo "|			  |			     |		 	       |"
	echo "|			  |			     |		 	       |"
	echo "|			  |			     |		 	       |"
	echo "|		$a3	  |		$b3	     |		 $c3	       | 3"
	echo "|			  |			     |		 	       |"
	echo "|			  |			     |		 	       |"
	echo "|			  |			     |		 	       |"
	echo " ------------------------------------------------------------------------------"
}
function turnousuario {
	let ocupado=1
while [ $ocupado -eq 1 ];do
	read -p "Movimiento a: " tirada
		comprovar $tirada
		let ocupado=$?
				
		if [ $ocupado -eq 1 ]
			then
				read -p "Esta ocupada"
			else
				case $tirada in
					a1)a1="X"
					;;
					b1)b1="X"
					;;
					c1)c1="X"
					;;
					a2)a2="X"
					;;
					b2)b2="X"
					;;
					c2)c2="X"
					;;
					a3)a3="X"
					;;
					b3)b3="X"
					;;
					c3)c3="X"
					;;
					*)echo "No existe esta coordenada."
						turnousuario
					;;
				esac

		fi
done
	
}
function comprovar() {
	case $1 in
		a1|0)if ! [ -z $a1 ]
			then
				return 1
			else
				return 0
		fi
		;;
		b1|1)if ! [ -z $b1 ]
			then
				return 1
			else
				return 0
		fi
		;;
		c1|2)if ! [ -z $c1 ]
			then
				return 1
			else
				return 0
		fi
		;;
		a2|3)if ! [ -z $a2 ]
			then
				return 1
			else
				return 0
		fi
		;;
		b2|4)if ! [ -z $b2 ]
			then
				return 1
			else
				return 0
		fi
		;;
		c2|5)if ! [ -z $c2 ]
			then
				return 1
			else
				return 0
		fi
		;;
		a3|6)if ! [ -z $a3 ]
			then
				return 1
			else
				return 0
		fi
		;;
		b3|7)if ! [ -z $b3 ]
			then
				return 1
			else
				return 0
		fi
		;;
		c3|8)if ! [ -z $c3 ]
			then
				return 1
			else
				return 0
		fi
		;;
		*)echo "No existe esta coordenada."
			turnousuario
		;;
	esac
}


function turnomaquina {

let ocupado=1
while [ $ocupado -eq 1 ];do
	
	let tirada=$(rand -M 8)
	comprovar $tirada
	let ocupado=$?

	if ! [ $ocupado -eq 1 ]
		then
			case $tirada in
				0)a1="O"
				;;
				1)b1="O"
				;;
				2)c1="O"
				;;
				3)a2="O"
				;;
				4)b2="O"
				;;
				5)c2="O"
				;;
				6)a3="O"
				;;
				7)b3="O"
				;;
				8)c3="O"
				;;
			esac
	fi
done
}
function 3enraya {
#----------------------------------------------------------
	#verticals
if ! [ -z $a1 ] && ! [ -z $a2 ] && ! [ -z $a3 ];then
	if [ $a1 == $a2 ] && [ $a2 == $a3 ];then
			if [ $a1 == "X" ];then
				ganaX
			else
				ganaO
			fi
	fi
fi
#----------------------------------------------------------
if ! [ -z $b1 ] && ! [ -z $b2 ] && ! [ -z $b3 ];then
	if [ $b1 == $b2 ] && [ $b2 == $b3 ];then
			if [ $b1 == "X" ];then
				ganaX
			else
				ganaO
			fi
	fi
fi
#----------------------------------------------------------
if ! [ -z $c1 ] && ! [ -z $c2 ] && ! [ -z $c3 ];then	
	if [ $c1 == $c2 ] && [ $c2 == $c3 ];then
			if [ $c1 == "X" ];then
				ganaX
			else
				ganaO
			fi		
	fi
fi
#----------------------------------------------------------
	#hortizontals
if ! [ -z $a1 ] && ! [ -z $b1 ] && ! [ -z $c1 ];then
	if [ $a1 == $b1 ] && [ $b1 == $c1 ];then
			if [ $a1 == "X" ];then
				ganaX
			else
				ganaO
			fi
	fi
fi
#----------------------------------------------------------
if ! [ -z $a2 ] && ! [ -z $b2 ] && ! [ -z $c2 ];then	
	if [ $a2 == $b2 ] && [ $b2 == $c2 ];then
			if [ $a2 == "X" ];then
				ganaX
			else
				ganaO
			fi		
	fi
fi
#----------------------------------------------------------
if ! [ -z $a3 ] && ! [ -z $b3 ] && ! [ -z $c3 ];then	
	if [ $a3 == $b3 ] && [ $b3 == $c3 ];then
			if [ $a3 == "X" ];then
				ganaX
			else
				ganaO
			fi
	fi
fi
#----------------------------------------------------------
	#diagonals	
if ! [ -z $a1 ] && ! [ -z $b2 ] && ! [ -z $c3 ];then
	if [ $a1 == $b2 ] && [ $b2 == $c3 ];then
			if [ $a1 == "X" ];then
				ganaX
			else
				ganaO
			fi		
	fi
fi
#----------------------------------------------------------
if ! [ -z $c1 ] && ! [ -z $b2 ] && ! [ -z $a3 ];then	
	if [ $c1 == $b2 ] && [ $b2 == $a3 ];then
			if [ $c1 == "X" ];then
				ganaX
			else
				ganaO
			fi		
	fi
fi
#----------------------------------------------------------
}
function ganaX {
			imprimirtablero
			echo "-----------------------------------"
			echo "	   Has ganado !!!"
			echo "-----------------------------------"
			fin="si"	
	
}
function ganaO {
			imprimirtablero
			echo "-----------------------------------"
			echo "	   Has perdido !!!"
			echo "-----------------------------------"
			fin="si"
}

#function mover {
#	if [ $tirada == "a1 a2" ]
#	then
#}
######################################################################################################3#####

menuprincipal
fin="no"
while [ $fin == "no" ]
do

#Modo juego A: quan tens menys de 3 fitxes
#Modo juego B: quan tens 3 fitxes
if [ $modo == "A" ]
then
	turnousuario
	imprimirtablero
	3enraya
	restart
	if [ $fin == "no" ];then
		turnomaquina
		imprimirtablero
		3enraya
		restart
	else
		read -p "Quieres volver a jugar? (s/n): " restart
		if [ $restart == "s" ]
			then
				imprimirtablero
				a1=""
				a2=""
				a3=""
				b1=""
				b2=""
				b3=""
				c1=""
				c2=""
				c3=""
				imprimirtablero
				fin="no"
			else
				clear
		fi
	fi
fi


done

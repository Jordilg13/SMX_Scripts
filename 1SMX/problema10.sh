#!/bin/bash

function menu {
	clear
	echo
	echo "-------------------------------------"
	echo "1. Crea un directorio"
	echo "2. Crea un fichero"
	echo "3. Borra un directorio y sus ficheros"
	echo "4. Borra un fichero"
	echo "5. Donde estoy?"
	echo "6. Dar permisos a un archivo"
	echo "7. Quitar permisos a un archivo"
	echo "8. Salir"
	echo "-------------------------------------"
	echo

}

function funcioCase {
	case $opcion in

#__________________________crear_directorio_____________________________________

	        1)read -p "Nombre del directorio: " directorio 
		if [ -d $directorio ];then
				echo "El directorio ya existe"
			else
				mkdir $directorio
				echo " "
				echo "-----------------------------------------"
				echo "El directorio se ha creado correctamente."
				echo "-----------------------------------------"
			fi
		echo "  "
		read -p "Pulsa INTRO para continuar."
		;;

#_______________________crear_fichero______________________________________

        	2)read -p "Nombre fichero: " fichero
		 if [ -f $fichero ];then
				echo "El fichero ya existe"
			else
				touch $fichero
		echo " "
		echo "--------------------------------------"
		echo "El fichero se ha creado correctamente."
		echo "--------------------------------------"
		echo " "
		fi
		read -p "Pulsa INTRO para continuar."
        	;;

#_________________________borrar_directorio_____________________________________

        	3)read -p "Nombre del directorio que se quiere borrar: " borrardir
		rm -rf $borrardir
		echo " "
		echo "------------------------------------------"
		echo "El directorio se ha borrado correctamente."
		echo "------------------------------------------"
		echo " "
		read -p "Pulsa INTRO para continuar."
		echo
        	;;

#_______________________borrar_fichero_______________________________________

        	4)read -p "Nombre del fichero que se quiere borrar: " borrarfichero
		rm $borrarfichero
		echo " "
		echo "---------------------------------------"
		echo "EL fichero se ha borrado correctamente."
		echo "---------------------------------------"
		echo
		read -p "Pulsa INTRO para continuar."
		echo
        	;;

#______________________donde_estoy________________________________________

        	5)pwd
		read -p "Presione INTRO para continuar" 
        	;;

#_____________________dar_permisos________________________________________

		6)read -p "Nombre archivo al que dar permisos: " darpermisos
		if [ -x $darpermisos ]; then
				echo "El fichero ya tiene permisos"
			else
				chmod +x $darpermisos
				echo " "
				echo "---------------------------------"
				echo "Permisos concedidos correctamente"
				echo "---------------------------------"
				echo " "
		fi
		;;
#_________________quitar_permisos___________________________________________

		7)read -p "Nombre archivo al que quitar permisos: " quitarpermisos
		if [ -x $quitarpermisos ]; then 
				chmod -x $quitarpermisos
				echo
				echo "-------------------------------"
				echo "Permisos quitados correctamente"
				echo "-------------------------------"
				echo
			else
				echo "Este archivo no tiene permisos."
				read -p "Pulsa INTRO para continuar"
		fi
			;;
#___________________________________________________________________________

        	8)echo "Saliendo"
       		;;

#___________________________________________________________________________

    	 	*)echo "La opción introducida no es valida"

#__________________________________________________________________________

        esac
}


menu
read -p "Introduce una opción: " opcion
funcioCase
while [ $opcion -ne 6 ]
	do
		echo
		menu
		read -p "Introduce una opción: " opcion
		funcioCase
	done

#!/bin/bash
#Autor: Jordi Llopis Garcia
#Versio: 0.1

# 1.crear arxiu csv
#     1.1.primera linea
#     1.2.resto de linies
# 2.Modificar arxiu csv
#   2.1.modificar un camp(eliminar, añadir, canviar)
#   2.2.añadir un camp
#   2.3.modificar un registre en concret(o añadir)
# 3.eliminar arxiu csv

#LINKS
source lib.sh

#VARIABLES

#FUNCIONS
function menu {
	echo "MENU CSV"
	echo
	echo "1.Crear archivo csv."
	echo "2.Modificar archivo csv."
	echo "3.Eliminar archivo csv."
	read -p "Elige una opcion: " o
	case $o in
		1) newcsv	;;
		2) submenu;;
		3)  read -p "Fichero: " f
				rm $f.csv
				if [[ ! -f $f.csv ]]; then
					read -p "El fichero se ha borrado correctamente."
				else
					read -p "El fichero no se ha borrado correctamente."
				fi
				 ;;
		*) read -p "Opcion incorrecta."
		;;
	esac
}
function submenu {
	echo "MODIFICAR ARCHIVO CSV"
	echo
	echo "1.Modificar un campo."
	echo "2.Añadir un campo."
	echo "3.Eliminar un campo."
	echo "4.Modificar un registro."
	read -p "Elige una opcion: " o
	case $o in
		1) modifyfield		;;
		2) addfield		;;
		3) rmfield		;;
		4) regEdit  ;;
		*) read -p "Opcion incorrecta."		;;
	esac
}
#MAIN
clear
while [[ fin=0 ]]; do
	menu
done

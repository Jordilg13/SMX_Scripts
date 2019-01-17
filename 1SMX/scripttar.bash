#/bin/bas

#Autor: Jordi Llopis García
#Versión: 1.4

#menu
function menu {
clear
echo "			====================================================================================="
echo "							  Menu Script .tar"
echo "			====================================================================================="
echo "	"
echo "			[---]		1.Empaquetar archivos(.tar)					[---]"
echo "			[---]		2.Comprimir archivos						[---]"
echo "			[---]		3.Listar archivos del interior de un .tar, .gz, .bz2		[---]"
echo "			[---]		4.Descomrimir o desempaquetar ficheros				[---]"
echo "			[---]		5.Cerrar							[---]"
echo
read -p "				Introduce una opción: " option
}

#submenu2
function submenu2 {
clear
echo "			====================================================================================="
echo " 			     				  	SUBMENU2"
echo "			====================================================================================="
echo ""
echo "			[---]					a.Gzip					[---]"
echo "			[---]					b.Bzip2					[---]"
echo "			[---]					c.Volver				[---]"
echo
read -p "			Introduce una opción: " optionsm2
}



#Contingut del menu
function functioncase {
		case $option in
#____________________________________________________Empaquetar_archivos______________________________________________________________________________
			1)read -p "			Nombre del archivo final(sin .tar): " archivotar
			  if [ -f $archivotar ]		#si el archivo existeix, torna al menu per a evitar quedarte pillat si no sas el nom; si no, demana els archius i crea el .tar
				then
					read -p "			El archivo $archivotarbz2 ya existe, pulsa ENTER para continuar."
				else
					read -p "			Nombre de el/los archivo/s a empaquetar(con un espacio entre cada archivo): " aempaquetar
					tar -cvf $archivotar.tar $aempaquetar
					read -p "			Pulsa ENTER para continuar."
			  fi
			;;
#__________________________________________________Comprimir_archivos_________________________________________________________________________________
			2)submenu2		#invoca al submenu2.
			  case $optionsm2 in
#_________________________________________________comprimir_gzip________________________________________________
				a)read -p "			Introduce el nombre del archivo comprimido final: " archivotargz
				  if [ -f $archivotargz ]		#si el archiu existeix, torna al menu, si no existeix empaqueta i comprimeix en gzip.
					then
						read -p "			El archivo $archivotarbz2 ya existe, pulsa ENTER para continuar."
					else
						read -p "			Nombre de el/los archivo/s a comprimir(con un espacio entre cada archivo): " aempaquetargz
						tar -czvf $archivotargz.tar.gz $aempaquetargz
						read -p "			Pulsa ENTER para continuar."
				  fi
				;;
#___________________________________________________comprimir_bzip2________________________________________________________________________________
				b)read -p "			Introduce el nombre del archivo comprimido final: " archivotarbz2
				  if [ -f $archivotarbz2 ]		#si el archiu existeix torna al menu, si no, empaqueta i comprimeix en bzip2
					then
						read -p "			El archivo $archivotarbz2 ya existe, pulsa ENTER para continuar."
					else
						read -p "			Nombre de el/los archivo/s a comprimir(con un espacio entre cada archivo): " aempaquetarbz2
								tar -cjvf $archivotarbz2.tar.bz2 $aempaquetarbz2
								read -p "			Pulsa ENTER para continuar."
				  fi

#___________________________________________________________________________________________________________________________________________
				;;

				c)echo"";;
			   esac
#____________________________________listar_______________________________________________________________________________________________________
				;;
			3)read -p "			Introduce el nombre del archivo: " listarf
			  if [ -f $listarf ]		#si el archiu no existeix torna al menu, si existeix, el llista gracies al -t
				then
					tar -tf $listarf
					read -p "			Pulsa ENTER para continuar."
				else
					#Esto es per a que si no se sap el nom, puga eixir al menu altra volta, si no es quedaria sense poder 						 eixir(sense fer Ctrl+C).
					read -p "			El archivo $listarf no existe, pulse ENTER para continuar."
			fi
#____________________________Desempaqutar_descomprimir______________________________________________________________________________________________________________
			;;
			4)read -p "			Introduce el nombre del archivo: " archivo4
			if [ -f $archivo4 ]		#si el archiu no existeix torna al menu, si existeix fa un case. ${archivo4##*.} no modifica la variable $archivo4, el que fa es agafar la variable i utilitzar sols la extensió(si es un .tar.gz, sols utilitza el gz), pero no guarda la terminacio en la variable.
				then
								#${archivo4##*.}esto el que fa es extraure la terminació en el nom del ficher
					case ${archivo4##*.} in		#depenent de la extensio del fitcher que s'introdueixca, desempaquetara o descomprimira en el format que toque(bz2 o gz)
						tar)tar -vxf $archivo4
						read -p "			Pulsa ENTER para continuar."
						;;
						gz)tar -vzxf $archivo4
						read -p "			Pulsa ENTER para continuar."
						;;
						bz2)tar -vjxf $archivo4
						read -p "			Pulsa ENTER para continuar."
						;;
						*)echo "			Extension incorrecta"		#si poses una extensio incorrecta t'ho notifica
					esac
				else
					read -p "			El archivo $archivo4 no existe, pulse ENTER para continuar."


			fi
#_________________________________________________________salir_________________________________________________________
			;;
			5)clear		#neteja pantalla i mostra el missatge
			echo "			######################################"
			echo "			#  Ha cerrado correctamente el menu  #"
			echo "			######################################"
			;;
			*)echo "			######################################"		#si en el menu principal no introdueixes una opció correcta t'ho notifica.
				echo "			#        Opción incorrecta           #"
				echo "			######################################"
				read -p "			Pulsa enter para continuar"
			;;

	esac
}


#si introdueixes una opció diferent a 5 tornara a invocar el menu i les seues funcions, si poses el 5 ixira del menu
option=0
while [ $option -ne 5 ]
do
	menu
	functioncase
done

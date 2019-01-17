#!/bin/bash
#Autor: Jordi Llopis Garcia
#Version:
#Nom:script number one
#Descripcion:
  # menu en el que de forma interactiva, es demanen els datos del archiu
  # 1.cambiar propietario
        #nom fitxer a cambiar
        #nom propietari
  # 2.cambiar grupo propietario
  # 3.cambiar permisos
  # 4.salir
#VARIABLES
  fin=0
  wmenu=1
#FUNCIONS
function siExisteix {
   if [[ ! -a $1 ]]; then
     read -p "				No existe el archivo."
     echo 1
   else
     echo 0
   fi
 }
  function menu {
    clear
    echo "			====================================================================================="
    echo "							  MENU"
    echo "			====================================================================================="

    echo " "
    echo "			[---]		1.Cambiar el propietario de un archivo.                         [---]"
    echo "			[---]		2.Cambiar grupo del propietario.                                [---]"
    echo "			[---]		3.Cambiar permisos.                                             [---]"
    echo "			[---]		4.Salir.                                                        [---]"
    echo " "
    read -p "				Elige una opcion: " a
  }
function changeOwner {
  read -p "				Fichero: " f
  pasa=$(siExisteix $f)
    if [[ $pasa -eq 0 ]]
    then
          read -p "				Nuevo propietario: " p
          if [[ $(cat /etc/passwd | grep $p | wc -l | cut -d: -f1) -ne 0  ]]; then
            chown $p $f
          else
            read -p "				El usuario no existe."
          fi
          if [ $(ls -la | grep $f | wc -l) -ne 0 ]; then
            if [[ $(ls -la | grep $p | wc -l) -ne 0 ]]; then
              read -p "				Operacion realizada con exito."
            else
              read -p "				La operacion no se ha completado correctamente."
            fi
          fi
    fi
}
function changeGroup {
  read -p "				Fichero: " f
  pasa=$(siExisteix $f)
    if [[ $pasa -eq 0 ]]
    then
          read -p "				Nuevo grupo: " g
          if [[ $(cat /etc/group | grep $g | wc -l | cut -d: -f1) -ne 0  ]]; then
            chgrp $g $f
          else
            read -p "				El grupo no existe."
          fi
          if [ $(ls -la | grep $f | wc -l) -ne 0 ]; then
            if [[ $(ls -la | grep $g | wc -l) -ne 0 ]]; then
              read -p "				Operacion realizada con exito."
            else
              read -p "				La operacion no se ha completado correctamente."
            fi
          fi
    fi
}
function menu3 {
  clear
  echo "			====================================================================================="
  echo "							  MENU"
  echo "			====================================================================================="
  echo " "
  echo "			[---]		1.Formato numerico.(775)                                        [---]"
  echo "			[---]		2.Formato individual.(+x)                                       [---]"
  echo "			[---]		3.Volver.                                                       [---]"
  echo " "
  read -p "				Elige una opcion: " a
  check2
}
function trPermissions {
  permletter=$(ls -l $f | cut -d" " -f1)
  #first number
  if [[ ${permletter:1:3} == rwx ]]; then
    firstp=7
  elif [[ ${permletter:1:3} == rw- ]]; then
    first			[---]		p=6
  elif [[ ${permletter:1:3} == r-x ]]; then
    firstp=5
  elif [[ ${permletter:1:3} == r-- ]]; then
    firstp=4
  elif [[ ${permletter:1:3} == -wx ]]; then
    firstp=3
  elif [[ ${permletter:1:3} == -w- ]]; then
    firstp=2
  else
    firstp=1
  fi
  #second number
  if [[ ${permletter:4:3} == rwx ]]; then
    secondp=7
  elif [[ ${permletter:4:3} == rw- ]]; then
    secondp=6
  elif [[ ${permletter:4:3} == r-x ]]; then
    secondp=5
  elif [[ ${permletter:4:3} == r-- ]]; then
    secondp=4
  elif [[ ${permletter:4:3} == -wx ]]; then
    secondp=3
  elif [[ ${permletter:4:3} == -w- ]]; then
    secondp=2$(ls -l $f | cut -d" " -f1)
  else
    secondp=1
  fi
  #third number
  if [[ ${permletter:7:3} == rwx ]]; then
    thirdp=7
  elif [[ ${permletter:7:3} == rw- ]]; then
    thirdp=6
  elif [[ ${permletter:7:3} == r-x ]]; then
    thirdp=5
  elif [[ ${permletter:7:3} == r-- ]]; then
    thirdp=4
  elif [[ ${permletter:7:3} == -wx ]]; then
    thirdp=3
  elif [[ ${permletter:7:3} == -w- ]]; then
    thirdp=2
  else
    thirdp=1
  fi
  permissions=$firstp$secondp$thirdp
}
function changePermissions1 {
  read -p "				Fichero: " f
  pasa=$(siExisteix $f)
  if [[ $pasa -eq 0 ]]
  then
      read -p "				Introduzca los nuevos permisos: " perm
      # ${cadena:posicion:longitud}
      first=${perm:0:1}
      second=${perm:1:1}
      third=${perm:2:1}
      if [[ $first -le 7 && $second -le 7 && $third -le 7 ]]; then
        chmod $perm $f
      fi
      trPermissions
      if [[ $permissions -eq $perm ]]; then
        read -p "				La operacion se ha completado correctamente."
      else
      read -p "				La operacion no se ha realizado correctamente."
      fi
  fi
}
function changePermissions2 {
  clear
  echo "			====================================================================================="
  echo "							  MENU"
  echo "			====================================================================================="
  echo " "
  echo "			[---]		1.Quitar permisos.                                              [---]		"
  echo "			[---]		2.Dar permisos.                                                 [---]		"
  echo "			[---]		3.Volver.                                                       [---]		"
  read -p "				Introduzca una opcion: " a
check2.1
}
function changePermissions2.1 {
  read -p "				Fichero: " f
  pasa=$(siExisteix $f)
  if [[ $pasa -eq 0 ]]
  then
    read -p "				Desea quitar permisos de ejecucion(x), de lectura(r), o de escritura(w)?: " p21
    if [[ $p21 -eq x ]]; then
      chmod -x $f
    elif [[ $p21 -eq r ]]; then
      chmod -r $f
    elif [[ $p21 -eq w ]]; then
      chmod -w $f
    else
      read -p "				La opcion introducida no es valida."
    fi
    if [[ $(ls -l $f | cut -d" " -f1 | grep $p21 | wc -l) -eq 0 ]]; then
      read -p "				La operacionse ha realizado correctamente."
    else
      read -p "				La operacion no se ha realizado correctamente."
    fi
  fi
}
function changePermissions2.2 {
  read -p "				Fichero: " f
  pasa=$(siExisteix $f)
  if [[ $pasa -eq 0 ]]
  then
    read -p "				Desea dar permisos de ejecucion(x), de lectura(r), o de escritura(w)?: " p22
    if [[ $p22 -eq x ]]; then
      chmod +x $f
    elif [[ $p22 -eq r ]]; then
      chmod +r $f
    elif [[ $p22 -eq w ]]; then
      chmod +w $f
    else
      read -p "				La opcion introducida no es valida."
    fi
    if [[ $(ls -l $f | cut -d" " -f1 | grep $p22 | wc -l) -eq 1 ]]; then
      read -p "				La operacion se ha realizado correctamente."
    else
      read -p "				La operacion no se ha realizado correctamente."
    fi
  fi
}
function check2.1 {
  case $a in
    1) changePermissions2.1;;
    2) changePermissions2.2;;
    3) ;;
    *) ;;
  esac
}
function check2 {
case $a in
  1)changePermissions1 ;;
  2)changePermissions2 ;;
  3) ;;
  *) ;;
esac
}
  function check {
    case $a in
        1)changeOwner ;;
        2)changeGroup ;;
        3)menu3 ;;
        4)fin=1 ;;
        *) read -p "				La opcion no es valida, introduzca un numero entre 1-4.";;
    esac
  }
 function pepito {
   if [[ ! $(id -u) = 0 ]]; then #sols deixa executar el script si eres root o l.executes com a sudo
     fin=1
     read -p "				Se necesitan permisos de administrador para ejecutar este script."
  fi
 }

pepito
while [[ $fin -ne 1 ]]; do
    menu
    check
done

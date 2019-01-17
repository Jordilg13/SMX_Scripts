#!/bin/bash
#Autor: Jordi Llopis Garcia
#Versio: 0.1
#OBJECTIU
    #Menu
    # 1.Gestion usuarios
    #   crear-modificar-borrar
    # 2.Gestion grupos
    #   crer-eliminar-añadirUsuario
    # 3.Gestionar permisos
    #   Script number1one
# LINKS

source files/lib.sh

#VARIABLES

fin=0

#FUNCIONS
function menu {
  echo " "
  echo "=========================================="
  echo "	 MENU"
  echo "=========================================="
  echo " "
  echo "1.Gestionar usuarios."
  echo "2.Gestionar grupos."
  echo "3.Gestionar permisos."
  echo "4.Salir."
  echo " "
  fcase
}
function fcase {  #function case menu
read -p "Elige una opcion: " a
  case $a in
      1) submenu1 ;;
      2) submenu2 ;;
      3) bash files/permissions.sh ;;
      4) fin=1 ;;
      *) read -p "Opcion invalida" ;;
  esac
}
function submenu1 {
  echo " "
  echo "=========================================="
  echo "	 GESTION USUARIOS"
  echo "=========================================="
  echo " "
  echo "1.Crear usuario."
  echo "2.Modificar usuario."
  echo "3.Borrar usuario."
  echo "4.Volver."
  echo " "
  fcases1
}
function fcases1 { #function case submenu1
read -p "Elige una opcion: " a
  case $a in
    1) newuser                               ;;
    2) subsubmenu                                      ;;
    3) deleteuser                            ;;
    4)                                       ;;
    *) read -p "Opcion no valida"    ;;
  esac
}
function subsubmenu {
  echo " "
  echo "=========================================="
  echo "	 MODIFICAR USUARIOS"
  echo "=========================================="
  echo " "
  echo "1.Cambiar el grupo principal."
  echo "2.Cambiar el directorio principal."
  echo "3.Cambiar nombre de login."
  echo "4.Bloquear una cuenta."
  echo "5.Desbloquear una cuenta."
  echo "6.Volver."
  echo " "
  fcase1.2
}
function fcase1.2 {
  read -p "Elige una opcion: " a
    case $a in
      1) read -p "Grupo:" g
         read -p "Usuario: " u
         usermod -g $g $u
      ;;
      2) read -p "Directorio:(recomendado /home/[usuario] ) " d
        read -p "Usuario: " u
        read -p "Quiere copiar los archivos de su anterior directorio? (y/n) " p
        if [[ $p -eq y ]]; then
          usermod -d $d -m $u
        else
          usermod -d $d $u
        fi
      ;;
      3) read -p "Nuevo nombre: " nn   #new name
         read -p "Nombre en uso: " u
         usermod -l $nn $u
      ;;
      4) read -p "Usuario: " u
         usermod -L $u
      ;;
      5) read -p "Usuario: " u
         usermod -U $u
      ;;
      6)
      ;;
      *) read -p "Opcion no valida"
      ;;
    esac
}
function submenu2 {
  echo " "
  echo "=========================================="
  echo "	 GESTION GRUPOS"
  echo "=========================================="
  echo " "
  echo "1.Crear grupo."
  echo "2.Eliminar grupo."
  echo "3.Añadir usuario a grupo."
  echo "4.Volver."
  echo " "
  fcases2
}
function fcases2 { #function case submenu2
read -p "Elige una opcion: " a
  case $a in
    1)  newgroup                           ;;
    2)  deletegroup                        ;;
    3)  adduser_group                      ;;
    4)                                     ;;
    *) read -p "Opcion no valida"    ;;
  esac
}
#MAIN
clear
pepito
while [[ $fin -eq 0 ]]; do
  menu
done

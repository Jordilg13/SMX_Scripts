#!/bin/bash
#Autor:Jordi Llopis García
#Versio:0.1
#Descripcio:
# - Feu un script que llegisca un fitxer de text amb una llista de 100 usuaris i els cree com el següent exemple:
# - 'Gaius Baltar López' té el usuari 'gabalo', demanarà establir el password la primera vegada que entre.
# - El seu directori serà /home/cylons/gabalo/
          # --home DIR
# - Tindrà per defecte un fitxer en el seu directori amb les normes de l'empresa.
          # -k, --skel SKEL_DIR
# - Les contrasenyes li duraran un més i deuran tindre 10 caràcters al menys.
          # chage -M 30 (Màxim de dies de vigència)    /etc/login.defs
# - Tots els usuaris seran del grup 'cylons'.
          # -G cylons
# - Al final tindrem un fitxer amb una llista de usuaris amb el seu nom de login i el seu directori.
# - Si l'usuari ja existeix demanarà ficar manualment el seu login.

#VARIABLES
  cont=0
#FUNCIONS
 function newuser {
# https://www.todavianose.com/crear-usuario-en-linux-y-asignarle-un-directorio/
#
if [[ ! $(cat /etc/passwd | grep $nickname | wc -l) -ne 0 ]]; then
  mkdir /home/cylons/$nickname
  useradd -d /home/cylons/$nickname -G cylons $nickname
  echo -e "$nickname$nickname\n$nickname$nickname\n" | sudo passwd $nickname
  cp -R conf/customskel/* /home/cylons/$nickname/
  cp conf/customskel/.??* /home/cylons/$nickname/
  chown $nickname:$nickname -R /home/cylons/$nickname
  chage -M 30 $nickname
else
  echo "El usuario $nickname ya existe. Por favor cambie la contraseña del usuario."
  echo -e "$nickname$nickname\n$nickname$nickname\n" | sudo passwd $nickname
  mkdir /home/cylons/$nickname
  usermod -d /home/cylons/$nickname
  cp -R conf/customskel/* /home/cylons/$nickname/
  cp conf/customskel/.??* /home/cylons/$nickname/
  chown $nickname:$nickname -R /home/cylons/$nickname
  chage -M 30 $nickname
fi
}
function userfile {
  if [[ ! -f files/users ]]; then
    echo "USER          HOME DIR" > files/users
    echo "" >> files/users
  fi
  echo "$nickname  /home/cylons/$nickname" >> files/users
}
function trnames() {
    ini=${i:0:2}          #dos primeres lletres de nom i apellidos
    nickname=$nickname$ini  #va sumant les dos lletres de nom i apelidos a una var
    cont=$cont+1
    if [[ $cont -eq 3 ]]  #reseteja el contador cada 3
    then
      cont=0
      newuser
      userfile
      nickname=""
    fi
}
function nameloop {
    for i in $(cat files/f)
    do
      trnames i
    done
  fin=1
}
#MAIN

if [[ ! $(id -u) = 0 ]]; then #sols deixa executar el script si eres root o l.executes com a sudo
  read -p "Se necesitan permisos de administrador para ejecutar este script."
else
  if [[ ! $(cat /etc/group | grep cylons | wc -l) -ne 0 ]]; then
    groupadd cylons
  fi
  if [[ ! -d /home/cylons ]]; then
    mkdir /home/cylons
  fi
  cp conf/custom-compass /etc/pam.d/common-password #compass es de common-password
  while [[ $fin -eq 0 ]]; do
    nameloop
  done
fi

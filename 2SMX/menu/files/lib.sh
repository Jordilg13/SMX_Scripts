#Autor: Jordi Llopis Garcia
#Versio: 0.1
# function checkroot {
#   if [[ $(id -u) = 0 ]]; then #sols deixa executar el script si eres root o l.executes com a sudo
#     return 1 # eres root
#  else
#    return 0 #no eres root
#  fi
# }
function pepito {
  if [[ ! $(id -u) = 0 ]]; then #sols deixa executar el script si eres root o l.executes com a sudo
    fin=1
    read -p "Se necesitan permisos de administrador para ejecutar este script."
 fi
}
function fileexist {
  if [[ -a $1 ]]; then
    echo 0 #si existe el fichero
  else
    echo 1 #no existe el fichero
  fi
}
function newuser {
  read -p "Usuario: " u
  adduser $u
}
function deleteuser {
  read -p "Usuario: " u
  deluser $u
}
function deletegroup {
  read -p "Grupo: " g
  delgroup $g
}
function newgroup {
  read -p "Grupo: " g
  addgroup $g
}
function adduser_group {
  #usermod -G grupo usuario
  read -p "Grupo: " g
  read -p "Usuario" u
  usermod -G $g $u
}
function userexists {
  if [[ $(cat /etc/passwd | grep $1 | wc -l) -ne 0 ]]; then
    echo 0 #el usuario SI existe
  else
    echo 1 #el usuario NO existe
  fi
}

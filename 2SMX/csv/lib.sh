#Autor: Jordi Llopis Garcia
#Versio: 0.1
function checkroot {
  if [[ ! $(id -u) = 0 ]]; then #sols deixa executar el script si eres root o l.executes com a sudo
    return 1
 else
   return 0
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
  read -p "			Usuario: " u
  adduser $u
}
function deleteuser {
  read -p "			Usuario: " u
  deluser $u
}
function deletegroup {
  read -p "			Grupo: " g
  delgroup $g
}
function newgroup {
  read -p "			Grupo: " g
  addgroup $1
}
function adduser_group {
  #usermod -G grupo usuario
  read -p "			Grupo: " g
  read -p "			Usuario" u
  usermod -G $g $u
}
function userexists {
  if [[ $(cat /etc/passwd | grep $1 | wc -l) -ne 0 ]]; then
    echo 0 #el usuario SI existe
  else
    echo 1 #el usuario NO existe
  fi
}
function clearcsv {
  grep . $f.csv > f2
  cat f2 > $f.csv
  rm f2
}
function newcsv() {
	read -p "Nombre del archivo?: " f
  if [[ $(fileexist $f.csv) -eq 1 ]]; then
    echo "El fichero $f no existe."
    exit
  fi
	read -p 'Primera columna(separado con comas y sin espacios) EJEMPLO: a,b,c,d: ' cf
  echo $cf > $f.csv
	read -p "Desea añadir campos? (s/n): " c
  alcarre=0
	case $c in
		s|si|Si|SI|S)
						while [[ $alcarre -eq 0 ]];do
							read -p 'Nueva linea(separado con comas y sin espacios) EJEMPLO: "a,b,c,d" : ' cf
              echo $cf >> $f.csv
							read -p "Desea añadir otra linea? (s/n): " ac
              if [[ $ac == "n" ]] || [[ $ac == "N" ]] || [[ $ac == "no" ]] || [[ $ac == "NO" ]]; then
                alcarre=1
              fi
						done
			;;
		n|no|N|NO)
			;;
		*) read -p "Opcion incorrecta."
	esac
  clearcsv
}
function modifyfield {
  read -p "Nombre del archivo?: " f
  if [[ $(fileexist $f.csv) -eq 1 ]]; then
    echo "El fichero $f no existe."
    exit
  fi
  clearcsv
  fields=$(cat $f.csv | head -n1 |tr , " " )
  echo "Campos: $fields"
  read -p "Que campo desea modificar: " mf
  if [[ $(cat $f.csv | head -n1 |tr , " " | grep $mf | wc -l) -eq 0 ]]; then
    echo "El campo $mf no existe en el fichero $f.csv"
  else
    read -p "Sustituir "$mf" por: " rf
    sed "s/$mf/$rf/g" $f.csv > pepino
    cat pepino > $f.csv
    rm pepino
  fi
}
function addfield {
  read -p "Nombre del archivo?: " f
  if [[ $(fileexist $f.csv) -eq 1 ]]; then
    echo "El fichero $f no existe."
    exit
  fi
  clearcsv
  read -p "Nombre del campo?: " af
  if [[ $(cat $f.csv | head -n1 | grep $af | wc -l) -eq 1 ]]; then
    echo "El campo $af ya existe."
  else
    sed "1 s/$/,$af/g" $f.csv > pepino
    cat pepino > $f.csv
    rm pepino
  fi
}
function rmfield {
  read -p "Nombre del archivo?: " f
  if [[ $(fileexist $f.csv) -eq 1 ]]; then
    echo "El fichero $f no existe."
    exit
  fi
  clearcsv
  fields=$(cat $f.csv | head -n1 |tr , " " )
  echo "Campos: $fields"
  read -p "Que campo desea eliminar: " mf
  if [[ $(cat $f.csv | head -n1 |tr , " " | grep $mf | wc -l) -eq 0 ]]; then
    echo "El campo $mf no existe en el fichero $f.csv"
  else
    sed "s/$mf/""/g" $f.csv > pepino
    cat pepino > $f.csv
    rm pepino
  fi
}
function regEdit {
  read -p "Nombre del archivo?: " f
  if [[ $(fileexist $f.csv) -eq 1 ]]; then
    echo "El fichero $f no existe."
    exit
  fi
  clearcsv
  read -p "Nombre del campo?: " re
  read -p "Nuevo campo?: " nre
  if [[ $(cat $f.csv | grep $re | wc -l) -eq 1 ]]; then
    sed "s/$re/$nre/g" $f.csv > pepino
    cat pepino > $f.csv
    rm pepino
  else
    for i in $(cat $f.csv)
    do
      if [[ $(echo $i | grep $re | wc -l) -eq 1 ]]; then
        read -p "Quiere modificar el registro $re de la linea "$i" ? (s/n): " rec
        if [[ $rec == "s" ]] || [[ $rec == "S" ]] || [[ $rec == "si" ]] || [[ $arec == "SI" ]]; then
          echo $i > nomdearxiullargpaquenoestigarepetit
          sed "s/$re/$nre/g" nomdearxiullargpaquenoestigarepetit >> regedit13
          rm nomdearxiullargpaquenoestigarepetit
        else
          echo $i >> regedit13
        fi
      else
        echo $i >> regedit13
      fi
    done
    cat regedit13 > $f.csv
    rm regedit13
  fi
}

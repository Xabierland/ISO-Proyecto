#!/bin/bash

##Instalacion y Mantenimiento de una Aplicación Web
#Importar funciones de otros ficheros
. ./script/instalarNGINX.sh
. ./script/arrancarNGINX.sh
. ./script/testearPuertoNGINX.sh
. ./script/visualizarINDEX.sh

. ./script/crearNuevaUbicacion.sh
. ./script/ejecutarEntornoVirtual.sh
. ./script/instalarLibreriasEntornoVirtual.sh
. ./script/copiarFicheroProyectoNuevaUbicacion.sh
. ./script/instalarFlask.sh
. ./script/probarFlask.sh

. ./script/salirMenu.sh

### Main ###
opcionmenuppal=0
while test $opcionmenuppal -ne 22
do
	#Muestra el menu
    echo -e "\n======MENU DE INSTALACION======"
    echo -e "01)   Instalar NGINX"
    echo -e "02)   Arrancar NGINX"
    echo -e "03)   Testear Puerto NGINX"
    echo -e "04)   Visualizar index"
    echo -e "05)   Personalizar index"
    echo -e "06)   Crear nueva ubicacion"
    echo -e "07)   Ejecutar entorno virtual"
    echo -e "08)   Instalar librerias entorno virtual"
	echo -e "09)   Copiar ficheros al nuevo proyecto"
    echo -e "10)   Instalar Flask"
    echo -e "11)   Probar Flask"
    echo -e "12)   Instalar Gunicorn"
    echo -e "13)   Configurar Gunicorn"
    echo -e "14)   Pasar propiedades y permisos"
    echo -e "15)   Crear Servicio Flask"
    echo -e "16)   Configurar proxy inverso de NGINX"
    echo -e "17)   Cargar la nueva configuracion en NGINX"
    echo -e "18)   Rearrancar NGINX"
    echo -e "19)   Testear el host virtual"
    echo -e "20)   Ver el Log de NGINX"
    echo -e "21)   Controlar intentos de conexion mediante SSH"
    echo -e "22)   Salir del menu\n"
    read -p "Elige una opcion: " opcionmenuppal
    echo ""
	case $opcionmenuppal in
        1) instalarNGINX;;
        2) arrancarNGINX;;
        3) testearPuertoNGINX;;
        4) visualizarINDEX;;
        5) personalizarINDEX;;
        6) crearNuevaUbicacion;;
        7) ejecutarEntornoVirtual;;
        8) instalarLibreriasEntornoVirtual;;
        9) copiarFicheroProyectoNuevaUbicacion;;
        10) instalarFlask;;
        11) probarFlask;;
        12) instalarGunicorn;;
        13) configurarGunicorn;;
        14) pasarPropiedadYPermisos;;
        15) crearServicioSystemdFlask;;
        16) configurarNginxProxyInverso;;
        17) cargarFicherosConfiguracionNginx;;
        18) rearrancarNginx;;
        19) testearVirtualHost;;
        20) verNginxLogs;;
        21) controlarIntentosConexionSSH;;
        22) salirMenu;;
        *) salirMenu;;
	esac 
done 

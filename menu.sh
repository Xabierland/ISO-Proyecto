#!/bin/bash

##Instalacion y Mantenimiento de una Aplicación Web
#Importar funciones de otros ficheros
                                                    #00 ToDo [✓|x]
. ./script/instalarNGINX.sh                         #01 ✓
. ./script/arrancarNGINX.sh                         #02 ✓
. ./script/testearPuertoNGINX.sh                    #03 ✓
. ./script/visualizarINDEX.sh                       #04 ✓
. ./script/personalizarINDEX.sh                     #05 ✓
. ./script/crearNuevaUbicacion.sh                   #06 ✓
. ./script/ejecutarEntornoVirtual.sh                #07 ✓
. ./script/instalarLibreriasEntornoVirtual.sh       #08 ✓
. ./script/copiarFicheroProyectoNuevaUbicacion.sh   #09 ✓
. ./script/instalarFlask.sh                         #10 ✓
. ./script/probarFlask.sh                           #11 ✓
. ./script/instalarGunicorn.sh                      #12 ✓
. ./script/configurarGunicorn.sh                    #13 ✓
. ./script/pasarPropiedadYPermisos.sh               #14 ✓
. ./script/crearServicioSystemdFlask.sh             #15 ✓
. ./script/configurarNginxProxyInverso.sh           #16 ✓
. ./script/cargarFicherosConfiguracionNginx.sh      #17 ✓
. ./script/rearrancarNginx.sh                       #18 ✓
. ./script/testearVirtualHost.sh                    #19 ✓
. ./script/verNginxLogs.sh                          #20 ✓
. ./script/controlarIntentosConexionSSH.sh          #21 ✓
. ./script/salirMenu.sh                             #22 ✓

#INSTALAR PAQUETES IMPORTANTES PARA FUNCIONAMIENTO DEL SCRIPT
REQUIRED_PKG="aptitude"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Comprobando instalacion de for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
    echo "$REQUIRED_PKG no esta instalado. Configurando $REQUIRED_PKG."
    sudo apt-get --yes install $REQUIRED_PKG 
fi
REQUIRED_PKG="git"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Comprobando instalacion de for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
    echo "$REQUIRED_PKG no esta instalado. Configurando $REQUIRED_PKG."
    sudo apt-get --yes install $REQUIRED_PKG 
fi


###* Main *###
opcionmenuppal=0
while test $opcionmenuppal -ne 23
do
	#Muestra el menu
    clear
    cat ./resources/title.txt
    echo -e "\n===============MENU DE INSTALACION==============="
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
    echo -e "23)   Salir del menu\n"
    read -p "Elige una opcion: " opcionmenuppal
    echo ""
    clear
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
        22) ;;  #PARA EL EXAMEN
        23) salirMenu;;
        *) salirMenu;;
	esac 
done 
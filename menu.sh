#!/bin/bash

##Instalacion y Mantenimiento de una Aplicación Web
#Importar funciones de otros ficheros
. ./script/instalarPaquetes.sh
. ./script/fin.sh
. ./script/crearEntorno.sh

### Main ###
opcionmenuppal=0
while test $opcionmenuppal -ne 23
do
	#Muestra el menu
    echo -e "\n======MENU DE INSTALACION======\n"
    echo -e "0)\t TODO(1-4)"
    echo -e "1)\t Instalar paquetes"
    echo -e "2)\t Crear entorno de trabajo"
    echo -e "3)\t Copiar proyecto al entorno"
    echo -e "4)\t Iniciar servidor"
    echo -e "5)\t Cerrar servidor1"
	echo -e "9)\t Fin \n"
    read -p "Elige una opcion: " opcionmenuppal
    echo ""
	case $opcionmenuppal in
        0) todo;;
        1) instalarPaquetes;;
        2) crearEntorno;;
        3) copiarProyecto;;
        4) iniciar;;
        5) cerrar;;
        9) fin;;
        *) ;;
	esac 
done 

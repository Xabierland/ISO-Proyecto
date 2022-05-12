function eliminarLibrerias
{
    ############################################################################################################################
    echo "Eliminando librerias de Python..."
    lista_librerias=( "flask" "gunicorn" "transformers" "torch" "tensorflows" )
    for i in "${lista_librerias[@]}"
    do
        sudo /var/www/EHU_analisisdesentimiento/public_html/venv/bin/pip3 uninstall -y $i
    done
    sudo /var/www/EHU_analisisdesentimiento/public_html/venv/bin/python -m pip cache purge
    ############################################################################################################################
    echo "Eliminando entorno virtual..."
    sudo rm -R /var/www/EHU_analisisdesentimiento/public_html/venv/
    ############################################################################################################################
    echo "Eliminando paquetes utilizandos..."
    declare -a lista_paquetes
    lista_paquetes=( "net-tools" "python3-pip" "python3-dev" "build-essential" "libssl-dev" "libffi-dev" "python3-setuptools" "python3-venv" "python3-virtualenv" "python3" )
    for i in "${lista_paquetes[@]}"
    do
        sudo apt remove $i -y
    done
   ############################################################################################################################
    echo "Eliminando ficheros del proyecto..."
    sudo rm -R /var/www/EHU_analisisdesentimiento
   ############################################################################################################################
    echo -e "Listo!\nTenga un buen dia :)"
}

function crearEntorno
{
    if [ -d /var/www/EHU_analisisdesentimiento ]
    then
        echo -e "Ya existe el direcctorio...\n"
        read -p "¿Quieres eliminarlo? (S/N): " opcion
        if [ $opcion == "s" -o $opcion == "S" ]
        then
            sudo rm -R /var/www/EHU_analisisdesentimiento/public_html
            crearEntorno
        fi
    else
        echo "Creando directorio..."
        sudo mkdir -p /var/www/EHU_analisisdesentimiento/public_html
        echo "Cambiando permisos del directorio..."
        sudo chown -R www-data:www-data /var/www/EHU_analisisdesentimiento
        echo "Creando entorno virtual de python..."
        cd /var/www/EHU_analisisdesentimiento/public_html
        pip install virtualenv
        virtualenv -p python3 /var/www/EHU_analisisdesentimiento/public_html/venv
        echo "Accediendo al entorno virtual..."
        source venv/bin/activate
        echo "Instalar librerias de Python..."
        pip install -r ./source/requirement.txt
    fi
}
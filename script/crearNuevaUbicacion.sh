function crearNuevaUbicacion
{
    if [ -d /var/www/EHU_analisisdesentimiento ]
    then
        echo -e "Ya existe el direcctorio...\n"
        read -p "¿Quieres eliminarlo? (S/N): " opcion
        if [ $opcion == "s" -o $opcion == "S" ]
        then
            sudo rm -R /var/www/EHU_analisisdesentimiento/
            crearNuevaUbicacion
        fi
    else
        user=$(id -u -n) #TAMBIEN whoami
        echo "Creando directorio..."
        sudo mkdir -p /var/www/EHU_analisisdesentimiento/public_html
        echo "Cambiando permisos del directorio..."
        sudo chown -R $user:$user /var/www/EHU_analisisdesentimiento
        echo ""
        read -p "PULSA ENTER PARA CONTINUAR..."
    fi
    
}
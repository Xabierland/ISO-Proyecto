function pasarPropiedadYPermisos
{
    echo "Cambiendo propiedad y permisos a www-data..."
    sudo chown -R www-data:www-data /var/www
    sudo chmod -R 775 /var/www
    echo ""
    read -p "PULSA ENTER PARA CONTINUAR..."
}
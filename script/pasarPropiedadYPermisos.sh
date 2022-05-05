function pasarPropiedadYPermisos
{
    echo "Cambiendo propiedad y permisos a www-data..."
    sudo chown -R www-data:www-data /var/www/EHU_analisisdesentimiento
    sudo chmod -R 775 /var/www/EHU_analisisdesentimiento
    echo ""
    read -p "PULSA ENTER PARA CONTINUAR..."
}
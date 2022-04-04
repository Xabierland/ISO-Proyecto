function pasarPropiedadYPermisos
{
    sudo chown -R www-data:www-data /var/www/EHU_analisisdesentimiento/public_html
    sudo chmod -R 775 /var/www/EHU_analisisdesentimiento/public_html
    echo ""
    read -p "PULSA CUALQUIER TECLA PARA CONTINUAR..."
}
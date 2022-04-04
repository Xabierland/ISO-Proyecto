function copiarFicheroProyectoNuevaUbicacion
{
    echo "Copiando proyecto..."
    sudo cp -R ./resources/source/* /var/www/EHU_analisisdesentimiento/public_html
    echo ""
    read -p "PULSA CUALQUIER TECLA PARA CONTINUAR..."
}
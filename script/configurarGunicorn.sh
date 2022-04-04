function configurarGunicorn
{
    echo "Configurando Gunicorn..."
    sudo cp ./resources/wsgi.py /var/www/EHU_analisisdesentimiento/public_html/
    echo ""
    read -p "PULSA CUALQUIER TECLA PARA CONTINUAR..."
}
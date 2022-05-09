function instalarLibreriasEntornoVirtual
{
    echo "Instalar librerias de Python..."
    sudo /var/www/EHU_analisisdesentimiento/public_html/venv/bin/pip3 install transformers
    sudo /var/www/EHU_analisisdesentimiento/public_html/venv/bin/pip3 install torch
    sudo /var/www/EHU_analisisdesentimiento/public_html/venv/bin/pip3 install tensorflow
    #sudo /var/www/EHU_analisisdesentimiento/public_html/venv/bin/pip3 install googletrans #PARA QUE LA APLICACION FUNCIONE CON CUALQUIER LENGUAJE
    echo ""
    read -p "PULSA ENTER PARA CONTINUAR..."
}
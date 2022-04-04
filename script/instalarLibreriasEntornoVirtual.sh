function instalarLibreriasEntornoVirtual
{
    echo "Instalar librerias de Python..."
    sudo /var/www/EHU_analisisdesentimiento/public_html/venv/bin/pip3 install transformers
    sudo /var/www/EHU_analisisdesentimiento/public_html/venv/bin/pip3 install torch
    echo ""
    read -p "PULSA CUALQUIER TECLA PARA CONTINUAR..."
}
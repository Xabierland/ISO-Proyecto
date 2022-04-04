function instalarLibreriasEntornoVirtual
{
    echo "Instalar librerias de Python..."
    sudo /var/www/EHU_analisisdesentimiento/public_html/venv/bin/pip3 install transformers[torch]
}
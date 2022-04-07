function probarFlask
{
    sudo service flask stop
    echo "Iniciando servidor Flask"
    python3 /var/www/EHU_analisisdesentimiento/public_html/webanalisisdesentimiento.py
    echo ""
    sudo service flask start
    read -p "PULSA ENTER PARA CONTINUAR..."
}
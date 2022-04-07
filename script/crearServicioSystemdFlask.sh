function crearServicioSystemdFlask
{
    echo "Configurando el demonio Flask"
    sudo cp ./resources/flask.service /etc/systemd/system/flask.service
    sudo systemctl daemon-reload
    sudo systemctl start flask
    sudo systemctl enable flask
    echo ""
    read -p "PULSA ENTER PARA CONTINUAR..."
}
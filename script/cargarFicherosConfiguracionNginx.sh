function cargarFicherosConfiguracionNginx
{
    echo "Cargando fichero de configuracion de nginx..."
    sudo systemctl reload nginx
    echo ""
    read -p "PULSA ENTER PARA CONTINUAR..."
}
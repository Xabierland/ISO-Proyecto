function configurarNginxProxyInverso
{
    echo "Configurando Proxy Inverso para Nginx..."
    sudo cp ./resources/flask.conf /etc/nginx/conf.d/
    sudo nginx -t
    echo ""
    read -p "PULSA ENTER PARA CONTINUAR..."
}
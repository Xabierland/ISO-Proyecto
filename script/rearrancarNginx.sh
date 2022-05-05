function rearrancarNginx
{
    sudo service apache2 stop
    echo "Restarting NGINX"
    sudo systemctl restart nginx
    echo ""
    read -p "PULSA ENTER PARA CONTINUAR..."
}
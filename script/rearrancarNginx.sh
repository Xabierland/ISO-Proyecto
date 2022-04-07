function rearrancarNginx
{
    echo "Restarting NGINX"
    sudo systemctl restart nginx
    echo ""
    read -p "PULSA ENTER PARA CONTINUAR..."
}
function verNginxLogs
{
    echo $(sudo tail -n100 /var/log/nginx/error.log)
    echo ""
    read -p "PULSA CUALQUIER TECLA PARA CONTINUAR..."
}
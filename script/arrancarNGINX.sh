function arrancarNGINX
{
    status=$(sudo service nginx status | grep "Active: inactive")
    if [ -z "$status" ]
    then
        echo -e "El servicio NGINX ya esta activo."
    else
        echo -e "Activando NGINX..."
        sudo service nginx start
    fi
    echo ""
    read -p "PULSA ENTER PARA CONTINUAR..."
}
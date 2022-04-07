function instalarNGINX
{
    nombre="nginx"
    aux=$(aptitude show $nombre | grep "State: installed")
    aux2=$(aptitude show $nombre | grep "Estado: instalado")
    aux3=$aux$aux2
    if [ -z "$aux3" ] 
    then 
    echo "Instalando $nombre..."
    sudo apt install $nombre -y
    else
    echo "$nombre ya estaba instalado"
    fi 
    echo ""
    read -p "PULSA ENTER PARA CONTINUAR..."
}
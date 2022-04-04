function testearPuertoNGINX
{
    #COMPROBAR INSTALACION DE net-tools
    nombre="net-tools"
    aux=$(aptitude show $nombre | grep "State: installed")
    aux2=$(aptitude show $nombre | grep "Estado: instalado")
    aux3=$aux$aux2
    if [ -z "$aux3" ] 
    then 
    echo "Instalando $nombre..."
    sudo apt install $nombre -y
    fi
    # SALIDA DONDE SE VE EL PUERTO
    out=$(sudo netstat -anp | grep nginx)
    echo -e "$out\n"
    read -p "PULSA CUALQUIER TECLA PARA CONTINUAR..." o
}
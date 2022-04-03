function instalarPaquetes()
{
    declare -a lista_paquetes
    lista_paquetes=( "nginx" "python3" "python3-pip" "python3-dev" "build-essential" "libssl-dev" "libffi-dev" "python3-setuptools" "python3-venv" )

    for i in "${lista_paquetes[@]}"
    do
        nombre="$i"
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
    done
}
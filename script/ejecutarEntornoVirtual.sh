function ejecutarEntornoVirtual
{
    declare -a lista_paquetes
    lista_paquetes=( "python3" "python3-pip" "python3-dev" "build-essential" "libssl-dev" "libffi-dev" "python3-setuptools" "python3-venv" "python3-virtualenv")

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

    echo "Creando entorno virtual de python..."
    sudo virtualenv -p python3 /var/www/EHU_analisisdesentimiento/public_html/venv 
    echo "Activando..."
    source /var/www/EHU_analisisdesentimiento/public_html/venv/bin/activate
    echo ""
    read -p "PULSA ENTER PARA CONTINUAR..."
}
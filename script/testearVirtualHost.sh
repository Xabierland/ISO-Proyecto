function testearVirtualHost
{
    REQUIRED_PKG="net-tools"
    PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
    echo Comprobando instalacion de for $REQUIRED_PKG: $PKG_OK
    if [ "" = "$PKG_OK" ]; then
        echo "$REQUIRED_PKG no esta instalado. Configurando $REQUIRED_PKG."
        sudo apt-get --yes install $REQUIRED_PKG 
    fi
    miip=$(ifconfig | grep "inet" | head -n1 | awk '{print $2}')
    aux=$(xdg-open http://$miip:8888/)
}
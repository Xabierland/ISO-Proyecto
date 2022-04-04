function personalizarINDEX
{
    if [ -f /var/www/html/index.nginx-debian.html ]
    then
        sudo rm /var/www/html/index.nginx-debian.html
        sudo cp ./resources/index.html /var/www/html 
        aux=$(sudo gedit /var/www/html/index.html)
    else
        aux=$(sudo gedit /var/www/html/index.html)
    fi
}
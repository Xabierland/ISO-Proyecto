function testearVirtualHost
{
    miip=$(ifconfig | grep "inet" | head -n1 | awk '{print $2}')
    aux=$(xdg-open http://$miip:8888/)
}
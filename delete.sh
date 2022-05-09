respuesta=n

echo -e "Estas seguro de que deseas eliminar todo lo relacionado\ncon el analizador de sentimientos: [S/N]"
read -p "-->" respuesta

if [ $respuesta = "S" ] || [ $respuesta = "s" ] 
then
echo -e "\nBorrando archivos y configuracion..."
sudo rm -r /var/www/EHU_analisisdesentimiento/

sudo service flask stop
sudo rm /etc/systemd/system/flask.service

sudo service nginx stop
sudo rm /etc/nginx/conf.d/flask.conf

sudo systemctl daemon-reload
echo -e "\nBorrado, tenga un buen dia."
else
    exit 0
fi

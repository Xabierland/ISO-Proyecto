function controlarIntentosConexionSSH
{
    declare -a array_de_archivos
    array_de_archivos=($(ls /var/log/auth.log*))

    for i in "${array_de_archivos[@]}"
    do
        fileType=$(file -i $i | awk '{print $2}')
        if [ $fileType = 'text/plain;' ]
        then
            cat $i | grep "sshd" |grep -E "Accepted|Failed" | awk '{print "Status: ["$6"]\tAccount name: "$9"\tDate: "$1,$2", "$3}'
        elif [ $fileType = 'application/gzip;' ]
        then
            zcat $i | grep "sshd" |grep -E "Accepted|Failed" | awk '{print "Status: ["$6"]\tAccount name: "$9"\tDate: "$1,$2", "$3}'
        else
            echo -e "Algo a salido mal\nValor evaluado: $fileType"
        fi
    done

    echo ""
    read -p "PULSA CUALQUIER TECLA PARA CONTINUAR..."
}
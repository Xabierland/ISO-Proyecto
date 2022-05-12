function controlarIntentosConexionSSH
{
    declare -a array_de_archivos
    array_de_archivos=($(ls /var/log/auth.log*))

    for i in "${array_de_archivos[@]}"
    do
        fileType=$(file -i $i | awk '{print $2}')
        if [ $fileType = 'text/plain;' ]
        then
            cat $i | grep "sshd" | awk '{if ($6 == "Accepted" || $6 == "Failed") print "Status: ["$6"]\tAccount name: "$9"\tDate: "$1,$2", "$3}'
        elif [ $fileType = 'application/gzip;' ]
        then
            zcat $i | grep "sshd" | awk '{if ($6 == "Accepted" || $6 == "Failed") print "Status: ["$6"]\tAccount name: "$9"\tDate: "$1,$2", "$3}'
        elif [ $fileType = 'application/octet-stream;' ]
        then
            cat $i | grep "sshd" | awk '{if ($6 == "Accepted" || $6 == "Failed") print "Status: ["$6"]\tAccount name: "$9"\tDate: "$1,$2", "$3}'
        else
            echo -e "Algo a salido mal\nValor evaluado: $fileType en $i\n"
        fi
    done

    echo ""
    read -p "PULSA ENTER PARA CONTINUAR..."
}
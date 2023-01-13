#!/bin/bash
read -p "Introduce el mes: " mes 

mes=`cat Usuario.txt | grep $month | wc -l` 

if [ $mes -eq 0 ] 

    then 

        echo "El mes de $mes no tiene conexiones registradas." 

    else 

        echo "Conexiones de los días del mes $mes: " 

        for i in `seq 1 $mes` 

        do 

        dia=`cat Usuario.txt|grep $mes| head -n $i | tail -1| awk '{print $2}'` 

        echo "$dia" 

        done 

fi
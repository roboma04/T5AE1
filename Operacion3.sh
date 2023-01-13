#!/bin/bash

read -p "Introduce el mes: " mes
read -p "Ahora dime el dia: " dia 
usuario=" "
fecha=$dia.$mes

datos=`cat Usuario.txt | grep $mes | grep $dia |wc -l` 

if [ $datos -eq 0 ] 
then 
    echo "En la fecha indicada no hay conexiones registradas." 
else 
    echo "En los dias del mes $mes hay las siguientes conexiones: " 
    for i in `seq 1 $datos` 
    do 
        usuario=`cat Usuario.txt|grep $fecha| head -n$i | tail -1| awk '{print $1}'` 
        usuarios=$usuarios""$usuario", " 
       
    done 
    echo "$usuarios"
fi 
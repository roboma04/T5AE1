#!/bin/bash 

read -p "Introduce el nombre de usuario: " nom 

numdatos=`cat Usuario.txt | grep $nom | wc -l` 

max=0
mesmax="" 
diamax=0 

for i in `seq 1 $numdatos`  

do  

    mes=`cat Usuario.txt | grep $nom | head -n$i | tail -1| awk '{print $3}'` 

    for j in enero febrero marzo abril mayo junio julio agosto septiembre octubre noviembre diciembre 

            do 

                cont=$((cont + 1)) 

                if [ $j = $mes ] 

                then 

                    if [ $max -lt $cont ] 

                    then  

                    max=$cont 

                    mesmax=$j 

                    fi 

                fi 

            done    

            cont=0  

done 

for K in `seq 1 $numdatos`  

do 

    dia=`cat Usuario.txt | grep $nom |grep $mesmax | head -n$K | tail -1| awk '{print $2}'`     

    if [ $diamax > $dia ] 

    then  

    diamax=$dia 

    fi 

done 

echo "$nom $diamax $mesmax"
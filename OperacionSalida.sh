#!/bin/bash 

opciones=0 

while [ $opciones -ne "5" ] 

do 

    echo "-------------MENU DE OPCIONES------------------" 

    echo "OPERACIÓN 1: BUSQUEDA DE NOMBRE DE CONEXIONES POR NOMBRE" 

    echo "OPERACIÓN 2: BUSQUEDA DE CONNEXIONES POR MES" 

    echo "OPERACIÓN 3: BUSQUEDA DE CONNEXIONES POR FECHA" 

    echo "OPERACIÓN 4: CONSULTA LA ÚLTIMA CONNEXIÓN" 

    echo "OPERACIÓN 5: FIN DEL PROGRAMA" 

    echo "----------------------------------------------" 

    read -p "Selecciona una opción (1..5): " opcion 

    echo " " 

    case $opcion in  

    "1") 

    ./operacion1.sh 

    ;; 

    "2") 

    ./operacion2.sh 

    ;; 

    "3") 

    ./operacion3.sh 

    ;; 

    "4") 

    ./operacion4.sh 

    ;; 

    "5") 

    echo "Fin del programa." 

    break 

    ;; 

    esac 
    
done
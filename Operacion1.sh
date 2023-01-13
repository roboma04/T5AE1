#! /bin/bash
usuario=`cat usuario.txt | wc -l`

read -p  " Ingresa el nombre de usuario: " usuario


veces=`cat usuario.txt | grep " ^ $usuario "  | wc -l`


if [ $veces  -eq 0 ]
then
  echo  "No se ha logueado"
else
  echo  "$usuario ha conectado $veces veces"
fi
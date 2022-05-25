#! /bin/bash

# Ingreso a la data por medio de comando cd 
# Se creo el archivo shell por el comando touch y se lo abrio con el comando nano
# uso del comando echo para imprimir el nombre , numero de filas y columnas 
# Luego se empleo el comando for como bucle para que el conteo se aplique en los archivos de la carpeta de Saavedra2013
# Contar filas con el comando wc -l y para las columnas el comando head -n1 primera fila, para eliminar espacios finales con tr -d \n  y para eliminar entre columnas el comando 
# tr -d " "
echo "Montesdeoca Emily" >netsize_all.txt
echo "Number of rows" >>netsize_all.txt
for i in ../Saavedra2013/*.txt
do           cat $i | wc -l >>netsize_all.txt
done
echo "Number of columns" >>netsize_all.txt
for i in ../Saavedra2013/*.txt

do  head -n 1 $i| tr -d " " | tr -d "\n" | wc -c >>netsize_all.txt
done
# Se guardo en un documento tipo texto

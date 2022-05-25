#! /bin/bash

# Cargar la data  con el comando cd
# Se creo el archivo shell con touch y se lo abrio por medio de nano 
# se coloco el comando echo para imprimir el Filename
# Leer el número de filas: con el comando wc -l
echo "Montesdeoca Emily" >netsize.txt
echo "File Name : ../data/Saavedra2013/n1.txt" >>netsize.txt
echo "Number of rows" >>netsize.txt
cat $1 | wc -l >>netsize.txt
# se cuenta el numero de columnas tomado con el comando head -n1 la primera fila y eliminando los espacios entre columna se usa el comando tr -d " "
# y para eliminar el ultimo espacio se emplea el comando tr -d \n 
# Conteo de los caracteres con el comando WC -C
# se implemento el comando echo para imprimir el numero de columnas
echo "Number of columns" >>netsize.txt
head  -n1 $1 |  tr -d " " | tr -d "\n" | wc -c >>netsize.txt
#Para ejecutar se emplea ./netsize.sh Saavedra2013/n1.txt
#Por ultimo se guardo en un documento tipo texto

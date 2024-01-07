#!/bin/bash

# Usuario: alumno05

for file in ./*.fastq; do
	lines=$(wc -l < "$file") # contar líneas del archivo
	fraction=$((lines/5)) # calcular número de líneas a mantener
	head -n $fraction $file > $file.cut #guardar líneas en otro archivo
	rm $file #eliminar archivo original
	mv $file.cut $file # renombrar archivo cortado con el nombre original
	echo "Archivo $file cortado"
done

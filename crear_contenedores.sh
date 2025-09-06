#!/bin/bash
# Script: simulacion_crear_contenedores.sh
# Autor: Wilmer Vasquez
# Descripción: Genera de forma aleatoria entre 1 y 4 archivos .txt
# que simulan contenedores

# Número aleatorio entre 1 y 4
num_archivos=$((RANDOM % 4 + 1))

# Carnet del estudiante
CARNET="201800678"  

# Array de nombres aleatorios
NOMBRES=("alpha" "beta" "gamma" "delta" "omega" "sigma" "tau")

echo "Se generarán $num_archivos archivos contenedor..."

for ((i=1; i<=num_archivos; i++))
do
    # Seleccionar nombre aleatorio
    nombre=${NOMBRES[$RANDOM % ${#NOMBRES[@]}]}
    
    # Nombre de archivo
    archivo="contenedor_${CARNET}_${nombre}.txt"
    
    # Crear archivo y escribir contenido
    echo "$archivo" > "$archivo"
    
    echo "Archivo creado: $archivo"
done

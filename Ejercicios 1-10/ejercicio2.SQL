Pregunta 2: 
Enlista todos los productos de la categoría "Paracaídas" con sus precios, ordenados de mayor a menor precio.

Respuesta: puedes usar la siguiente consulta SQL

SELECT nombre, categoria,precio FROM productos
WHERE categoria = 'Paracaídas'
ORDER by precio desc; 

## WHERE Filtra los resultados para mostrar solo los productos de la categoría "Paracaídas"
## ORDER BY Ordena los resultados por precio en orden descendente (de mayor a menor)
## DESC es la abreviatura de "descending" que indica el orden descendente.

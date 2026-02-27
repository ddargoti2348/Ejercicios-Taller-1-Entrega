Pregunta 3: 

¿Cuál es el paracaídas más caro que tenemos?

Respuesta: puedes usar la siguiente consulta SQL

SELECT nombre, categoria, MAX(precio) FROM productos
WHERE categoria = 'Paracaídas' 


## MAX(precio) Devuelve el precio máximo de los productos de la categoría "Paracaídas"
## WHERE Filtra los resultados para mostrar solo los productos de la categoría "Paracaídas"

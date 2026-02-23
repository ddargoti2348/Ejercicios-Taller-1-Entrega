Pregunta 15: 
¿Cuál es el accesorio más barato disponible?
Respuesta: puedes usar la siguiente consulta SQL

SELECT nombre, categoria, MIN (precio) AS Precio_MIN FROM productos
WHERE categoria = 'Accesorios' 

## MIN(precio) Devuelve el precio mínimo de los productos de la categoría "Accesorios" en la tabla "productos".


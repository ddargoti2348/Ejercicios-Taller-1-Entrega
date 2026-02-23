Pregunta 12: 
¿Cuál es el precio promedio de los productos en stock?
Respuesta: puedes usar la siguiente consulta SQL

SELECT AVG(precio) AS Precio_Promedio from productos; 

## AVG(precio) Calcula el precio promedio de los productos en la tabla "productos".
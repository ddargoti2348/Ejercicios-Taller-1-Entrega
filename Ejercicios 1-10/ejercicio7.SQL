Pregunta 7: 

En lista todos los productos de "Accesorios" con precio menor a $500.
Respuesta: puedes usar la siguiente consulta SQL

SELECT nombre, categoria, precio from productos
WHERE categoria = 'Accesorios' and precio < 500 


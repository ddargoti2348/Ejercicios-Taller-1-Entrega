Pregunta 18: 
Enlista todos los clientes mayores de 60 años que han hecho compras, mostrando nombre, edad aproximada y total gastado.
Respuesta: puedes usar la siguiente consulta SQL

SELECT c.nombre, (strftime('%Y','NOW') - strftime('%Y', c.fecha_nacimiento)) AS edad,
'$' || SUM(V.total_venta) AS total_gastado
FROM clientes c
JOIN ventas V ON c.id_cliente = V.id_cliente 
GROUP BY c.id_cliente, c.nombre, c.fecha_nacimiento
HAVING edad > 60
ORDER BY edad DESC; 

## strftime('%Y','NOW') - strftime('%Y', c.fecha_nacimiento) Calcula la edad aproximada del cliente restando el año actual al año de nacimiento del cliente.
HAVING edad > 60 Filtra los resultados para mostrar solo aquellos clientes cuya edad es mayor a 60 años.
ORDER BY edad DESC Ordena los resultados por edad en orden descendente, mostrando primero a los clientes más viejos.

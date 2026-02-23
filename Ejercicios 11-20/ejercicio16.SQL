Pregunta 16: 

Cuál es el cliente que más dinero ha gastado en total? Muestra su nombre y monto total.
Respuesta: puedes usar la siguiente consulta SQL

SELECT c.nombre, SUM(v.total_venta) AS monto_total
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
GROUP BY v.id_cliente, c.nombre
ORDER BY SUM(v.total_venta) DESC
LIMIT 1;

## GROUP BY v.id_cliente, c.nombre Agrupa los resultados por cliente para calcular el monto total gastado por cada cliente.



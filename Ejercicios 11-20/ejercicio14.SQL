Pregunta 14:

Muestra todas las ventas realizadas en el año 2025, ordenadas por fecha (más recientes primero).
Respuesta: puedes usar la siguiente consulta SQL

SELECT id_cliente, fecha_venta, total_venta from ventas
WHERE fecha_venta LIKE '2025%'
ORDER by fecha_venta DESC;


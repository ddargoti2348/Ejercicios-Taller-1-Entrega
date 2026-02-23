Pregunta 19:
¿Cuál es el producto más vendido en cantidad (en términos de unidades, no dinero)?
Respuesta: puedes usar la siguiente consulta SQL

SELECT 
    p.nombre,
    SUM(dv.cantidad) AS total_unidades_vendidas
FROM detalle_ventas dv
JOIN productos p ON dv.id_producto = p.id_producto
GROUP BY dv.id_producto, p.nombre
ORDER BY total_unidades_vendidas DESC
LIMIT 1;

## SUM(dv.cantidad) Suma la cantidad total vendida de cada producto en la tabla "detalle_ventas".


Pregunta 26:
Identifica clientes que compraron SOLO paracaídas (nunca compraron accesorios). Muestra nombre y total gastado.
Respuesta: puedes usar la siguiente consulta SQL

SELECT 
    c.nombre,
    SUM(v.total_venta) AS total_gastado
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
JOIN detalle_ventas dv ON v.id_venta = dv.id_venta
JOIN productos p ON dv.id_producto = p.id_producto
WHERE c.id_cliente NOT IN (
    SELECT DISTINCT v2.id_cliente
    FROM ventas v2
    JOIN detalle_ventas dv2 ON v2.id_venta = dv2.id_venta
    JOIN productos p2 ON dv2.id_producto = p2.id_producto
    WHERE p2.categoria = 'Accesorios')

## La consulta selecciona el nombre del cliente y el total gastado sumando el total de ventas.
## Se unen las tablas de clientes, ventas, detalle_ventas y productos para relacionar a los clientes con los productos que han comprado.
## Se filtra para incluir solo aquellos clientes que no han comprado ningún producto de la categoría 'Accesorios' utilizando una subconsulta 
que selecciona los clientes que sí han comprado accesorios.
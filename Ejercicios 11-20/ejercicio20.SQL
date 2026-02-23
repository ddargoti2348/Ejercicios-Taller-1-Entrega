Pregunta 20: 
Para cada categoría de producto, calcula el ingreso total, cantidad de unidades vendidas y ticket promedio por venta.
Respuesta: puedes usar la siguiente consulta SQL

SELECT 
    p.categoria,
    '$' || printf('%,.2f', SUM(dv.cantidad * p.precio)) AS ingreso_total,
    SUM(dv.cantidad) AS unidades_vendidas,
    '$' || printf('%,.2f', AVG(dv.cantidad * p.precio)) AS ticket_promedio
FROM detalle_ventas dv
JOIN productos p ON dv.id_producto = p.id_producto
GROUP BY p.categoria
ORDER BY SUM(dv.cantidad * p.precio) DESC;

## SUM(dv.cantidad * p.precio) Calcula el ingreso total por categoría multiplicando la cantidad vendida por el precio de cada producto.
## SUM(dv.cantidad) Suma la cantidad total de unidades vendidas por categoría.
## AVG(dv.cantidad * p.precio) Calcula el ticket promedio por venta para cada categoría dividiendo el ingreso total entre el número de ventas.

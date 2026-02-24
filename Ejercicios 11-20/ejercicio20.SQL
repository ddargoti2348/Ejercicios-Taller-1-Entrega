Pregunta 20: 
Para cada categoría de producto, calcula el ingreso total, cantidad de unidades vendidas y ticket promedio por venta.
Respuesta: puedes usar la siguiente consulta SQL

SELECT
p.categoria,
	SUM(cantidad*precio_unitario) AS Ingreso_total,
	SUM(cantidad) AS Unds_vendidas,
	AVG(total_venta) AS ticket_promedio
from detalle_ventas dv
JOIN productos p
	on p.id_producto = dv.id_producto 
JOIN ventas v
	on dv.id_venta = v.id_venta
GROUP by p.categoria;              

## SUM(dv.cantidad * p.precio) Calcula el ingreso total por categoría multiplicando la cantidad vendida por el precio de cada producto.
## SUM(dv.cantidad) Suma la cantidad total de unidades vendidas por categoría.
## AVG(dv.cantidad * p.precio) Calcula el ticket promedio por venta para cada categoría dividiendo el ingreso total entre el número de ventas.

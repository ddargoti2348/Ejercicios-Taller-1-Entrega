Pregunta 23:
¿Cuáles son los 5 productos con mayor ingresos acumulado?
Respuesta: puedes usar la siguiente consulta SQL

SELECT p.nombre,
SUM(dv.cantidad*dv.precio_unitario) AS ingresos 
FROM detalle_ventas dv
JOIN productos p ON dv.id_producto = p.id_producto 
GROUP by p.id_producto, p.nombre
ORDER by ingresos DESC
LIMIT 5;

## La consulta selecciona el nombre del producto y calcula los ingresos acumulados multiplicando la cantidad vendida 
por el precio unitario.
## Se une la tabla de detalle_ventas con la tabla de productos para obtener el nombre del producto.
## Se agrupa por producto para sumar los ingresos de cada uno y se ordena en orden 
descendente para obtener los productos con mayores ingresos acumulados.

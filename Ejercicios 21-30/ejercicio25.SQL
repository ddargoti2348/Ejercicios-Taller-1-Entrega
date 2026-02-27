Pregunta 25:
¿Cuál es el cliente que compró la mayor variedad de productos diferentes?
Respuesta: puedes usar la siguiente consulta SQL

SELECT c.nombre,
COUNT(DISTINCT dv.id_producto) AS variedad_de_productos 
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
JOIN detalle_ventas dv ON v.id_venta = dv.id_venta
GROUP BY c.id_cliente,c.nombre
ORDER BY variedad_de_productos DESC
LIMIT 1;


## La consulta selecciona el nombre del cliente y cuenta la cantidad de productos diferentes que ha comprado utilizando COUNT(DISTINCT dv.id_producto).
## Se unen las tablas de clientes, ventas y detalle_ventas para relacionar a los clientes con los productos que han comprado.
## Se agrupa por cliente para obtener la variedad de productos por cada uno y se ordena en orden descendente 
para encontrar al cliente con la mayor variedad de productos diferentes.

## C.NOMBRE O V.ID_CLIENTE se les da esos prejijos para saber de que tabla son las variables, ya que hay varias tablas involucradas en la consulta.


Pregunta 21:
¿Cuáles son los clientes que han usado el cupón "ULTIMO_SUSPIRO" al menos 3 veces?
Respuesta: puedes usar la siguiente consulta SQL
SELECT c.nombre, count (*) AS Veces_usado
from ventas v
JOIN clientes c on v.id_cliente = c.id_cliente
where cupon_usado = 'ULTIMO_SUSPIRO'
GROUP BY v.id_cliente, c.nombre
HAVING COUNT (*) >= 3
ORDER by Veces_usado desc;

## La consulta selecciona el nombre del cliente y cuenta cuántas veces han usado el cupón "ULTIMO_SUSPIRO".
## Se une la tabla de ventas con la tabla de clientes para obtener el nombre del cliente.
## Se filtra por el cupón específico y se agrupa por cliente para contar las veces que han usado el cupón.
## Finalmente, se ordena el resultado por la cantidad de veces que han usado el cupón en orden descendente. 
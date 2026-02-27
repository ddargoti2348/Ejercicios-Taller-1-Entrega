Pregunta 22:
Crea una clasificación de clientes por nivel de gasto:
Respuesta: puedes usar la siguiente consulta SQL

SELECT c.nombre, SUM(total_venta) as total_gastado,
	CASE WHEN SUM(total_venta) >5000 then 'Alto Valor' 
    	 WHEN SUM(total_venta) BETWEEN 2000 and 5000 then 'Medio Valor' 
         else 'Bajo Valor' 
end AS tipo_gasto
FROM ventas v
JOIN clientes c on v.id_cliente = c.id_cliente
GROUP BY c.id_cliente, c.nombre
ORDER by total_gastado desc;


## Se agrupa por cliente para obtener el total gastado por cada uno y su clasificación.
## Si el gasto total es mayor a 5000, se clasifica como 'Alto Valor'
## Se utiliza BETWEEN para incluir ambos extremos del rango
## Si el gasto total es menor o igual a 2000, se clasifica como 'Bajo Valor'
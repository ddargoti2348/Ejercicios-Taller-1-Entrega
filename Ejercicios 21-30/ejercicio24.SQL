
Pregunta 24:
Para cada mes en 2025, calcula: total de ventas, número de transacciones, y ticket promedio
Respuesta: puedes usar la siguiente consulta SQL

SELECT strftime('%m', fecha_venta) AS mes,  
SUM(total_venta) AS total_vendido,          
COUNT(*) AS N_transacciones,                 
AVG(total_venta) AS ticket_promedio
FROM ventas
WHERE strftime('%Y', fecha_venta) ='2025'    
GROUP BY mes
ORDER BY mes ASC;



## Se extrae el mes de la fecha de venta utilizando strftime
## Se suma el total de ventas para cada mes
## Se filtra por el año 2025 utilizando strftime para extraer el año de la fecha de venta

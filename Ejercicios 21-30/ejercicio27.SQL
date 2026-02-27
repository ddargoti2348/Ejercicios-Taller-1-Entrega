Pregunta 27:
¿Cuál es la diferencia en ingresos entre el mes con mayor venta y el mes con menor venta en 2025?
Respuesta: puedes usar la siguiente consulta SQL

SELECT 
    MAX(ventas_mes) - MIN(ventas_mes) AS diferencia_ingresos,
    MAX(ventas_mes) AS mes_mayor_venta,
    MIN(ventas_mes) AS mes_menor_venta
FROM 
(SELECT strftime('%m',fecha_venta) AS mes,
SUM(total_venta) AS ventas_mes
from ventas
where strftime('%Y',fecha_venta) = '2025'
GROUP BY mes
ORDER by mes
 );

 
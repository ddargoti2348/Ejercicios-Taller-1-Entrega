Pregunta 30:
Genera un análisis demográfico: para cada rango de edad (18-29, 30-39, ..., 70+)
 cuenta clientes únicos, número de transacciones e ingresos totales. Ordena por rango de edad.
Respuesta: puedes usar la siguiente consulta SQL

SELECT 
    CASE 
        WHEN CAST((julianday('now') - julianday(c.fecha_nacimiento)) / 365.25 AS INTEGER) BETWEEN 18 AND 29 THEN '18-29'
        WHEN CAST((julianday('now') - julianday(c.fecha_nacimiento)) / 365.25 AS INTEGER) BETWEEN 30 AND 39 THEN '30-39'
        WHEN CAST((julianday('now') - julianday(c.fecha_nacimiento)) / 365.25 AS INTEGER) BETWEEN 40 AND 49 THEN '40-49'
        WHEN CAST((julianday('now') - julianday(c.fecha_nacimiento)) / 365.25 AS INTEGER) BETWEEN 50 AND 59 THEN '50-59'
        WHEN CAST((julianday('now') - julianday(c.fecha_nacimiento)) / 365.25 AS INTEGER) BETWEEN 60 AND 69 THEN '60-69'
        ELSE '70+'
    END AS rango_edad,
    COUNT(DISTINCT c.id_cliente) AS clientes_unicos,
    COUNT(v.id_venta) AS num_transacciones,
    SUM(v.total_venta) AS ingresos_totales
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY rango_edad
ORDER BY MIN(CAST((julianday('now') - julianday(c.fecha_nacimiento)) / 365.25 AS INTEGER));

## En esta consulta, se utiliza la función CASE para categorizar a los clientes en rangos de edad basados en su fecha de nacimiento. 
Luego, se cuentan los clientes únicos, el número de transacciones y se suman los ingresos totales para cada rango de edad. 
Finalmente, se ordena el resultado por rango de edad.

## La función julianday se utiliza para calcular la edad de los clientes en años, 
y se utiliza el operador BETWEEN para asignar cada cliente a su rango de edad correspondiente.

## El resultado mostrará el rango de edad, el número de clientes únicos, 
el número de transacciones y los ingresos totales para cada rango de edad.

## El ordenamiento se realiza utilizando la función MIN para obtener la edad mínima dentro de cada rango, 
asegurando que los rangos se ordenen correctamente.
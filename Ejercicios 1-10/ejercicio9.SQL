Pregunta 9:
¿Cuál fue la venta con mayor monto en toda la historia?
respuesta: puedes usar la siguiente consulta SQL

SELECT MAX(total_venta) AS Valor_maximo_vendido FROM ventas;

## MAX(total_venta) Devuelve el valor máximo de la columna "total_venta" en la tabla "ventas", 
lo que representa la venta con el mayor monto registrado en toda la historia.
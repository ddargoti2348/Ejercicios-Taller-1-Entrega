pregunta 4: 
¿Cuántas transacciones de venta hemos registrado?

Respuesta: Puedes usar la siguiente consulta SQL:

SELECT count (*) AS transacciones_totales from ventas;

## Se agrega ; al final de la consulta para indicar el fin de la misma.
## COUNT(*) Cuenta el número total de filas en la tabla "ventas", lo que representa el número total de transacciones realizadas.
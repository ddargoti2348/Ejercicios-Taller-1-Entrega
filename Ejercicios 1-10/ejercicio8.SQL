Pregunta 8: ¿Cuántas ventas utilizaron el cupón "ULTIMO_SUSPIRO"?
Respuesta: puedes usar la siguiente consulta SQL

SELECT count(cupon_usado) as Ventas_por_cupon_usado from ventas
WHERE cupon_usado = 'ULTIMO_SUSPIRO'

## COUNT(cupon_usado) Cuenta el número de filas donde el valor de "cupon_usado" es igual a 'ULTIMO_SUSPIRO', 
lo que representa el número de ventas que utilizaron ese cupón específico.



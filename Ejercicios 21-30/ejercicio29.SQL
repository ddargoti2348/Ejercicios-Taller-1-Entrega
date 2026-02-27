Pregunta 29:
¿Cuál es el porcentaje de ventas (por ingresos) que provienen del cupón "ULTIMO_SUSPIRO"?
Respuesta: puedes usar la siguiente consulta SQL

SELECT 
    (SELECT SUM(total_venta) FROM ventas WHERE cupon_usado = 'ULTIMO_SUSPIRO') AS ventas_con_cupon,
    (SELECT SUM(total_venta) FROM ventas) AS ventas_totales,
    (SELECT SUM(total_venta) FROM ventas WHERE cupon_usado = 'ULTIMO_SUSPIRO') * 100.0 / 
     (SELECT SUM(total_venta) FROM ventas) AS porcentaje_con_cupon;


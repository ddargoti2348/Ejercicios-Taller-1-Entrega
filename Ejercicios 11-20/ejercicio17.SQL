Pregunta 17:
¿Cuánto dinero hemos dejado de ingresar por el cupón "ULTIMO_SUSPIRO"?
Respuesta: puedes usar la siguiente consulta SQL

SELECT 
    '$' || printf('%,.2f', SUM(total_venta / 0.70)) AS total_sin_descuento,
    '$' || printf('%,.2f', SUM(total_venta)) AS total_con_descuento,
    '$' || printf('%,.2f', SUM(total_venta / 0.70 - total_venta)) AS dinero_perdido
FROM ventas
WHERE cupon_usado = 'ULTIMO_SUSPIRO'; 

##'$' || convierte el resultado numérico en una cadena de texto con formato de moneda, agregando el símbolo '$' al inicio.

Pregunta 13: 
¿Cuántos productos tenemos en la categoría "Paracaídas"?

SELECT COUNT(categoria) AS total_productos FROM productos
WHERE categoria = 'Paracaídas';

## COUNT(categoria) Cuenta el número de productos en la categoría "Paracaídas" en la tabla "productos".


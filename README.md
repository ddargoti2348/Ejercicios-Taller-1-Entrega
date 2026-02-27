# Ejercicios - Taller 1: El Último Salto

Objetivo:

Resolver las preguntas que tiene el gerente general de la empresa por medio de una serie de ejercicios. El propósito es ejercitar consultas SELECT avanzadas, agregaciones, joins, subconsultas, funciones de ventana, diseño y normalización, y la interpretación de resultados para soportar decisiones comerciales.

Contexto:

La base del taller es una tienda situada en Pasto, Nariño, dedicada a la venta de paracaídas y accesorios de seguridad para deportes extremos. Se dispone de una base de datos sintética (`tienda.db`) que simula más de 1,000 transacciones de los últimos 2 años, organizada en 4 tablas normalizadas.

Productos principales:
- Paracaídas: militares, deportivos y de emergencia.
- Accesorios de seguridad: cascos, altímetros, trajes de vuelo y gafas.

Estrategia Comercial:

Hay un cupón denominado "ULTIMO_SUSPIRO" que aplica un 30% de descuento exclusivamente a clientes mayores de 60 años (los "saltadores de oro"). Algunos ejercicios explorarán cómo modelar y aplicar esta regla en consultas y reportes.

Base de datos:

El archivo `tienda.db` contiene las tablas necesarias para resolver los ejercicios (clientes, productos, ventas, detalles de venta, etc.) y datos sintéticos representativos para realizar análisis y pruebas de consultas.

¿Como se ejecutan las soluciones?

Respuesta: 

lo primero y mas importante se debe contar con datos, para el caso del taller contamos con una base de datos que se menciona con anterioridad que es tienda.db luego para este caso podemos o abrir un repositorio en visual code y subir nuestra db ahi y ejecutar consultas o tambien podemos abrir en SQL LITE ONLINE SERVER y abrir nuestra base de datos posterior a ello vamos copiando y pegando el codigo de la consulta y nos va dando el resultado de cada pregunta.

Conclusion:

El desarrollo del taller permitió comprender como se pueden realizar las consultas tipo SQL en tablas estructuradas y es útil para la toma de decisiones debido a que facilita encontrar la información por medio de operaciones como selección, filtrado, agrupación y combinación de tablas con un comando llamado “JOIN”, el cual permitió relacionar todas las tablas dependiendo del caso o de la pregunta cómo estaba estipulado así mismo el uso de funciones agregadas como “COUNT”, “SUM” y “AVG”, junto con cláusulas como “GROUP BY”, “HAVING” y “ORDER BY”, evidenció la importancia de estructurar correctamente las consultas para obtener indicadores relevantes, tales como frecuencia de compra, volumen de ventas y comportamiento temporal de las transacciones.

Se demostró que el análisis de datos no solo es obtener resultados y ya esta metodología nos permite identificar patrones de comportamiento de nuestros clientes o en el caso del taller de la tienda con su famosísimo cupón “ULTIMO_SALTO” también se logró verificar la diversidad de consumo o tendencias de compra a lo largo del tiempo. Deja como enseñanza que las bases de datos son herramientas estratégicas para la segmentación de clientes, la evaluación del desempeño comercial y la formulación de decisiones empresariales basadas en evidencia. Como también fortalece la capacidad de interpretar información y convertir consultas SQL en conocimiento aplicado dentro de un contexto organizacional.



# Ejercicios - Taller 1: El Último Salto

Objetivo:

Resolver las preguntas que tiene el gerente general de la empresa por medio de una serie de ejercicios. El propósito es ejercitar consultas SELECT avanzadas, agregaciones, joins, subconsultas, funciones de ventana, diseño y normalización, y la interpretación de resultados para soportar decisiones comerciales.

Contexto:

La base del taller es una tienda situada en Pasto, Nariño, dedicada a la venta de paracaídas y accesorios de seguridad para deportes extremos. Se dispone de una base de datos sintética (`tienda.db`) que simula más de 1,000 transacciones de los últimos 2 años, organizada en 4 tablas normalizadas.

Productos principales:
- Paracaídas: militares, deportivos y de emergencia.
- Accesorios de seguridad: cascos, altímetros, trajes de vuelo y gafas.

Lógica comercial especial:

Hay un cupón denominado "ULTIMO_SUSPIRO" que aplica un 30% de descuento exclusivamente a clientes mayores de 60 años (los "saltadores de oro"). Algunos ejercicios explorarán cómo modelar y aplicar esta regla en consultas y reportes.

Base de datos:

El archivo `tienda.db` contiene las tablas necesarias para resolver los ejercicios (clientes, productos, ventas, detalles de venta, etc.) y datos sintéticos representativos para realizar análisis y pruebas de consultas.


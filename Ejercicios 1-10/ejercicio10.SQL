Pregunta 10: 
Muestra todos los clientes de género "F" (femenino) ordenados por fecha de nacimiento (más viejitas primero).
Respuesta: puedes usar la siguiente consulta SQL

SELECT nombre, fecha_nacimiento, correo, genero from clientes
WHERE genero = 'F' ORDER BY fecha_nacimiento ASC; 


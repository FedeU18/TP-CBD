/*Ejercicio A*/



SELECT p.NumeroPasaje, p.nroAsiento, p.patenteColectivo, p.idViaje
FROM pasaje p
INNER JOIN viajes v
ON v.idViaje = p.idViaje
WHERE DATEDIFF(p.fechaEmision, v.fecha) <= 3;

/*Ejercicio B*/



SELECT a.patenteColectivo, NroAsiento, lado
FROM asientos as a JOIN colectivos as c
ON a.patenteColectivo = c.patente
WHERE c.marca LIKE '%Volvo%' 
AND NOT EXISTS (SELECT * FROM pasaje as p
WHERE p.NroAsiento = a.nroAsiento)

/*  4C */

SELECT codCiudadOrigen, ciudades.nombre, COUNT(codCiudadOrigen) AS CantVIajes
FROM viajes JOIN ciudades ON viajes.codCiudadOrigen = ciudades.codigo
WHERE viajes.fecha >= '2022-01-01' AND viajes.fecha <= '2022-12-31'
GROUP BY codCiudadOrigen , ciudades.nombre;

/* EJ 4D */




SELECT fechaEmision, COUNT(numeroPasaje) AS cant
FROM pasaje JOIN viajes ON pasaje.idViaje = viajes.idViaje
WHERE viajes.fecha >= '2022-04-01' AND viajes.fecha <= '2022-04-30'
AND viajes.codCiudadDestino IN (SELECT codigo FROM ciudades WHERE nombre = "Neuquen Capital")
GROUP BY pasaje.fechaEmision;
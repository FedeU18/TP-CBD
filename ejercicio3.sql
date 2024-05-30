-- a) insert chofer

INSERT INTO personas (
  tipoDoc,
  nroDocumento,
  apellido,
  nombre,
  fechaNacimiento,
  telefono,
  direccion
) VALUES (
  "DNI",
  12345678,
  "Fernandez",
  "Patricio",
  2001-05-05,
  2994561234,
  "Av. Argentina 123"
)

INSERT INTO chofer (
  tipoDoc,
  nroDocumento,
  legajo,
  categoria
) VALUES (
  "DNI",
  12345678,
  "Legajo123",
  "D-2"
)
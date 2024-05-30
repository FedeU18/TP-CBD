CREATE DATABASE viajes_de_placer;

CREATE TABLE personas (
  tipoDoc varchar(11) NOT NULL,
  nroDocumento int(11) NOT NULL,
  apellido varchar(20) NOT NULL,
  nombre varchar(20) NOT NULL,
  fechaNacimiento date NOT NULL,
  telefono int(11) NOT NULL,
  direccion varchar(50) NOT NULL,
  PRIMARY KEY (tipoDoc, nroDocumento)
);

CREATE TABLE pasajeros (
  tipoDoc varchar(11) NOT NULL,
  nroDocumento int(11) NOT NULL,
  situacionFiscal varchar(20) NOT NULL,
  PRIMARY KEY (tipoDoc,nroDocumento),
  FOREIGN KEY (tipoDoc,nroDocumento) 
    REFERENCES personas(tipoDoc,nroDocumento) 
      ON UPDATE cascade 
      ON DELETE cascade,
);

CREATE TABLE choferes (
  tipoDoc varchar(11) NOT NULL,
  nroDocumento int(11) NOT NULL,
  legajo varchar(50) NOT NULL,
  categoria varchar(50) NOT NULL,
  PRIMARY KEY (tipoDoc,nroDocumento),
  FOREIGN KEY (tipoDoc,nroDocumento)
   REFERENCES personas(tipoDoc,nroDocumento) 
    ON UPDATE cascade 
    ON DELETE cascade,
);
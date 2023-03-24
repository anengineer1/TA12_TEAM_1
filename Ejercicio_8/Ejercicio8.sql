CREATE DATABASE Vuelos;

USE Vuelos;

CREATE TABLE IF NOT EXISTS cliente( 

dni VARCHAR (15) PRIMARY KEY, 

nombre VARCHAR(15) NOT NULL,

apellidos VARCHAR (25) NOT NULL,

direccion VARCHAR (50),

tarjeta_credito BIGINT UNIQUE NOT NULL);

CREATE TABLE IF NOT EXISTS aeropuerto(

codigo INT PRIMARY KEY,

nombre VARCHAR(15) NOT NULL,

localidad VARCHAR (20) NOT NULL,

pais VARCHAR(15));

CREATE TALBE IF NOT EXISTS vuelo(

codigo_vuelo INT PRIMARY KEY, 

fechaSalida DATE, 

fechaLlegada DATE, 

horaSalida TIME, 

horaLlegada TIME, 

codigo_aeropuerto INT NOT NULL, 

FOREIGN KEY (codigo_aeropuerto) REFERENCES aeropuerto (codigo) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS tarjeta_embarque(

id_tarjeta INT PRIMARY KEY, 

dni VARCHAR(15) UNIQUE NOT NULL, 

nombre VARCHAR(15) NOT NULL, 

apellidos VARCHAR (25) NOT NULL, 

direccion VARCHAR(40) NOT NULL, 

telefono INT NOT NULL,

codigo_vuelo INT NOT NULL, 

FOREIGN KEY(codigo_vuelo) REFERENCES vuelo (codigo_vuelo) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS reserva(

id_reserva INT PRIMARY KEY, 

dni_cliente VARCHAR(15) NOT NULL, 

fecha DATE,

FOREIGN KEY(dni_cliente) REFERENCES cliente (dni) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS  aviones(

codigo INT PRIMARKY KEY, 

num_plazas INT NOT NULL,

codigo_aeropuerto INT NOT NULL,

FOREIGN KEY(codigo_aeropuerto) REFERENCES aeropuerto (codigo_aeropuerto) ON DELETE RESTRICT ON UPDATE RESTRICT);

CREATE TABLE IF NOT EXISTS asiento (

codigo_avion INT NOT NULL,

id_tarjeta INT NOT NULL, 

fila SMALLINT NOT NULL,

columna SMALLINT NOT NULL, 

FOREIGN KEY(codigo_avion) REFERENCES aviones (codigo_avion) ON DELETE CASCADE ON UPDATE CASCADE,

FOREIGN KEY(id_tarjeta) REFERENCES tarjeta_embarque (id_tarjeta) ON DELETE CASCADE ON UPDATE CASCADE);










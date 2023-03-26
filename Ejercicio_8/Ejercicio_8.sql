CREATE DATABASE IF NOT EXISTS  Vuelos;

USE Vuelos;

CREATE TABLE IF NOT EXISTS cliente (
    dni VARCHAR(15) PRIMARY KEY,
    nombre VARCHAR(15) NOT NULL,
    apellidos VARCHAR(25) NOT NULL,
    direccion VARCHAR(50),
    telefono BIGINT,
    tarjeta_credito BIGINT UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS aeropuerto (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(15) NOT NULL,
    localidad VARCHAR(20) NOT NULL,
    pais VARCHAR(15)
);

CREATE TABLE IF NOT EXISTS vuelo (
    codigo_vuelo INT NOT NULL,
    fechaSalida DATE,
    fechaLlegada DATE,
    horaSalida TIME,
    horaLlegada TIME,
    codigo_aeropuerto INT NOT NULL,
    PRIMARY KEY (codigo_vuelo),
    FOREIGN KEY (codigo_aeropuerto)
        REFERENCES aeropuerto (codigo)
        ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS tarjeta_embarque (
    id_tarjeta INT NOT NULL,
    fk_codigo_vuelo INT NOT NULL,
    fk_dni_cliente VARCHAR(15) NOT NULL,
    PRIMARY KEY (id_tarjeta),
    FOREIGN KEY (fk_codigo_vuelo)
        REFERENCES vuelo (codigo_vuelo)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (fk_dni_cliente)
        REFERENCES cliente (dni)
        ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS reserva (
    id_reserva INT PRIMARY KEY,
    dni_cliente VARCHAR(15) NOT NULL,
    fecha DATE,
    FOREIGN KEY (dni_cliente)
        REFERENCES cliente (dni)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS aviones (
    codigo INT PRIMARY KEY,
    num_plazas INT NOT NULL,
    codigo_aeropuerto INT NOT NULL,
    FOREIGN KEY (codigo_aeropuerto)
        REFERENCES aeropuerto (codigo)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS asiento (
    codigo_avion INT NOT NULL,
    id_tarjeta INT NOT NULL,
    fila SMALLINT NOT NULL,
    columna SMALLINT NOT NULL,
    planta SMALLINT NOT NULL, 
    FOREIGN KEY (codigo_avion)
        REFERENCES aviones (codigo)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_tarjeta)
        REFERENCES tarjeta_embarque (id_tarjeta)
        ON DELETE CASCADE ON UPDATE CASCADE
);



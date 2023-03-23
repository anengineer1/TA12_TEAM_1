CREATE DATABASE Ejercicio15;
USE Ejercicio15;
CREATE TABLE IF NOT EXISTS MENU (
id_menu INT PRIMARY KEY,
fecha DATE NOT NULL,
temperatura varchar(15),
cantidad INTEGER NOT NULL);

CREATE TABLE IF NOT EXISTS PLATOS(
id_plato int primary key, 
nombre varchar(25),
descripcion text);

CREATE TABLE IF NOT EXISTS PREPARACION (
id_preparacion INT PRIMARY KEY,
id_plato INT NOT NULL, 
id_menu INT NOT NULL, 
num_personas INT,
FOREIGN KEY (id_plato) REFERENCES PLATOS (id_plato) ON DELETE CASCADE ON UPDATE
CASCADE,
FOREIGN KEY (id_menu) REFERENCES MENU (id_menu) ON DELETE CASCADE ON UPDATE
CASCADE);


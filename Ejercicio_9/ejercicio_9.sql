create database Ejercicio9;

USE Ejercicio9;
CREATE TABLE Utensilio_de_cocina (
Identificador_UT MEDIUMINT UNSIGNED AUTO_INCREMENT NOT NULL,
Nombre VARCHAR(30) NOT NULL,
Cantidad SMALLINT UNSIGNED NOT NULL,
Fabricante VARCHAR(30),
PRIMARY KEY (Identificador_UT)
);

CREATE TABLE Ingrediente (
Identificador_ingrediente MEDIUMINT UNSIGNED AUTO_INCREMENT NOT NULL,
Nombre VARCHAR(30) NOT NULL,
Cantidad VARCHAR(30) NOT NULL, # Para poner las unidades directamente
Proveedor VARCHAR(30),
PRIMARY KEY (Identificador_ingrediente)
);

CREATE TABLE Plato (
Identificador_plato MEDIUMINT UNSIGNED AUTO_INCREMENT NOT NULL,
Tipo VARCHAR(30) NOT NULL,
Numero_de_personas SMALLINT UNSIGNED NOT NULL,
Descripcion VARCHAR(240),
Nombre VARCHAR(30),
PRIMARY KEY (Identificador_plato)
);

CREATE TABLE Procesan (
Identificador_ingrediente MEDIUMINT UNSIGNED NOT NULL,
Identificador_UT MEDIUMINT UNSIGNED NOT NULL,
Tiempo TIME NOT NULL,
Descripcion_del_proceso TEXT,
KEY (Identificador_ingrediente),
KEY (Identificador_UT),
FOREIGN KEY (Identificador_ingrediente) REFERENCES Ingrediente (Identificador_ingrediente)
ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (Identificador_UT) REFERENCES Utensilio_de_cocina (Identificador_UT)
ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Componen (
Identificador_plato MEDIUMINT UNSIGNED NOT NULL,
Identificador_ingrediente MEDIUMINT UNSIGNED NOT NULL,
KEY (Identificador_ingrediente),
KEY (Identificador_plato),	
FOREIGN KEY (Identificador_ingrediente) REFERENCES Ingrediente (Identificador_ingrediente)
ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (Identificador_plato) REFERENCES Plato (Identificador_plato)
ON DELETE RESTRICT ON UPDATE CASCADE
);
create database TA12_Ejercicio9;

USE TA12_Ejercicio9;
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
Identificador_proceso MEDIUMINT UNSIGNED AUTO_INCREMENT NOT NULL,
Identificador_ingrediente MEDIUMINT UNSIGNED NOT NULL,
Identificador_UT MEDIUMINT UNSIGNED NOT NULL,
Tiempo TIME NOT NULL,
Descripcion_del_proceso TEXT,
KEY (Identificador_ingrediente),
KEY (Identificador_UT),
PRIMARY KEY (Identificador_proceso, Identificador_ingrediente, Identificador_UT),
FOREIGN KEY (Identificador_ingrediente) REFERENCES Ingrediente (Identificador_ingrediente)
ON DELETE NO ACTION ON UPDATE CASCADE,
FOREIGN KEY (Identificador_UT) REFERENCES Utensilio_de_cocina (Identificador_UT)
ON DELETE NO ACTION ON UPDATE CASCADE
);

CREATE TABLE Componen (
Identificador_compuesto MEDIUMINT UNSIGNED AUTO_INCREMENT NOT NULL,
Identificador_plato MEDIUMINT UNSIGNED NOT NULL,
Identificador_ingrediente MEDIUMINT UNSIGNED NOT NULL,
PRIMARY KEY (Identificador_compuesto, Identificador_ingrediente, Identificador_plato),
FOREIGN KEY (Identificador_ingrediente) REFERENCES Ingrediente (Identificador_ingrediente)
ON DELETE NO ACTION ON UPDATE CASCADE,
FOREIGN KEY (Identificador_plato) REFERENCES Plato (Identificador_plato)
ON DELETE NO ACTION ON UPDATE CASCADE
);

SELECT * FROM Utensilio_de_cocina;
SELECT * FROM Ingrediente;
SELECT * FROM Plato;
SELECT * FROM Procesan;
SELECT * FROM Componen;

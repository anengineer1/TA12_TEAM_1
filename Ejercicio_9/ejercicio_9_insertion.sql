USE TA12_Ejercicio9;

INSERT INTO Utensilio_de_cocina VALUES (0, 'Cazuela para hervir', 1, 'Forjados Pepe');
INSERT INTO Utensilio_de_cocina VALUES (0, 'Recipiente de la salsa de soja', 1, 'Mercadona');

INSERT INTO Ingrediente VALUES (0, 'Spagettis', '500g', 'Mercadona');
INSERT INTO Ingrediente VALUES (0, 'Salsa de soja', '0.05l', 'Mercadona');

INSERT INTO Plato VALUES (0, 'Asiatico', 2, 'Spagettis solamente con salsa de soja', 'Spagettis con salsa de soja');

INSERT INTO Procesan VALUES (0,1,1, '00:02:30', 'Se hierven los Spagettis en al cazo');
INSERT INTO Procesan VALUES (0,2,1, 10, 'Se agita la salsa de soja');
INSERT INTO Procesan VALUES (0,2,1, 10, 'Se Añade la salsa de soja a los Spagettis');


INSERT INTO Componen VALUES (0,1,1);
INSERT INTO Componen VALUES (0,1,2);


SELECT * FROM Utensilio_de_cocina;
SELECT * FROM Ingrediente;
SELECT * FROM Plato;
SELECT * FROM Procesan;
SELECT * FROM Componen;

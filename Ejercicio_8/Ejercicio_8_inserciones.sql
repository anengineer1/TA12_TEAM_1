INSERT INTO cliente (dni, nombre, apellidos, direccion, tarjeta_credito) VALUES
("47889552T", "Alejandro", "Jimenez", "Major, 34", 1452145266897782),
("47795287D", "Francisco", "Parra", "Rambla nova, 12", 4552687899894),
("47574124C", "Palmira", "Romia", "Jaume I, 22", 4112365814579968);

INSERT INTO aeropuerto (codigo, nombre, localidad, pais) VALUES
(101, "El prat", "Barcelona", "España"),
(201, "Heathrow", "Londres", "Reino Unido"),
(250, "Ronald Reagan", "Washington DC", "Estados Unidos");

INSERT INTO vuelo (codigo_vuelo, fechaSalida, fechaLlegada, horaSalida, horaLlegada, codigo_aeropuerto) VALUES
(110, '2023-03-26', '2023-03-26', '08:30:00', '10:45:10', 101),
(210, '2023-03-27', '2023-03-28', '08:45:00', '01:20:00', 250),
(400, '2023-04-01', '2023-04-01', '09:10:00', '15:45:05', 201);

INSERT INTO tarjeta_embarque (id_tarjeta, fk_codigo_vuelo, fk_dni_cliente) VALUES
(1548, 110, "47795287D"),
(4451, 210, "47574124C"),
(1112, 400, "47889552T");

INSERT INTO reserva (id_reserva, dni_cliente, fecha) VALUES 
(1010, "47574124C", '2023-01-10'),
(1414, "47795287D", '2020-12-25'),
(2014, "47889552T", '2020-11-10');

INSERT INTO aviones (codigo, num_plazas, codigo_aeropuerto) VALUES
(005, 120, 201),
(202, 150, 250),
(007, 130, 101);

INSERT INTO asiento (codigo_avion, id_tarjeta, fila, columna, planta) VALUES 
(007, 1548, 10, 3, 1),
(005, 4451, 5,15, 1),
(202, 1112, 25, 2, 1);
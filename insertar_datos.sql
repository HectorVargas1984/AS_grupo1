-- insertar tados del autor
INSERT INTO autores(nombre,apellido,nacionalidad,pseudonimo,fecha_nacimiento)
        VALUES  ('Stephen Edwin', 'King', 'USA','Richard Bachman', '1947-09-27'),
                ('Joanne', 'Rowling', 'Reino unido','J.K Rowling', '1947-09-27'),
                ('Daniel', 'Brown', 'USA',NULL, '1964-06-22'),
                ('John', 'Katzenbach ','USA', NULL,'1950-06-23'),
                ('John Ronald', 'Reuel Tolkien','Reino Unido' ,NULL, '1892-01-03'),
                ('Miguel', 'de Unamuno','USA', NULL,'1892-01-03'),
                ('Arturo', 'Pérez Reverte', 'España',NULL, '1951-11-25'),
                ('George Raymond', 'Richard Martin','USA' ,NULL, '1948-09-20');

-- insertar datos de la comuna
INSERT INTO comunas(nombre_comuna)
        VALUES  ("San Felipe"),
                ("Los Andes"),
                ("San Esteban"),
                ("Calle Larga"),
                ("Putaendo"),
                ("Rinconada de los Andes");

-- insertar datos de la ocupacion
INSERT INTO ocupaciones(ocupacion)
        VALUES  ("Estudiante"),
                ("Profesor"),
                ("Funcionario");

-- instertar datos de la editoriol
INSERT INTO editoriales(nombre,direccion,telefono,nombre_contacto,correo)
        VALUES  ('Amquimia','Lorca 123, santiago', 88991133, 'Luis Duran','lduran@mail.com'),
                ('Cuneta','Mapocho 333, santiago', 223457788,'Marta Reig','mreig@mail.com'),
                ('Huerdes','Ricardo Lion 345, providencia',74567722,'Matias Lorca','mlorca@mail.com'),
                ('La Pollera','Avenida providencia 2345, providencia',98887766,'Mercedes Leon','mleon@mail.com'),
                ('MontaCerdos','Santa rosa 934, las condes', 67774433,'Lorena Jorquera','ljorquera@mail.com');

-- insertar tado de los usuarios
INSERT INTO usuarios(id_ocupacion,id_comunas,rut,nombre,apellido,direccion,email,telefono)
        VALUES  (1,2,'23797711-3','Ricardo','Vargas','Av. Arrazaval 345','Ricardovargas@gmail.com','942980560'),
			    (1,1,'21736456-k','Juan','Lorca','Esmeralda 123','Juanlorca@gmail.com','92345577'),
			    (3,3,'13778456-7','Oscar','Mondaca','Las golindrinas 345','Oscarmondaca@gmail.com','93336621'),
				(2,4,'12888666-k','Mario','Olivares','Las torpederas 467','Marioolivares@gmail.com','94732200'),
				(1,5,'17888345-9','Laura','Manzilla','Los aviadores 987','Lauramanzilla@gmail.com','78664499');

-- insertar tados de los libros
INSERT INTO libros(id_autor,id_editorial,nombre,stock)
        VALUES  (1,1, 'Carrie',10),
                (1,1, 'El misterio de Salmes Lot',10),
                (1,1, 'El resplando',10),
                (1,1, 'Rabia',10),
                (1,1, 'El umbral de la noche',10),
                (1,1, 'La danza de la muerte',10),
                (1,1, 'La larga marcha',10),
                (1,1, 'La zona muerta',10),
                (1,1, 'Ojos de fuego',10),
                (1,1, 'Cujo',10),
                (1,1, 'La torre oscura 1 El pistolero',10),
                (1,1, 'La torre oscura 2 La invocación',10),
                (1,1, 'Apocalipsis',10),
                (1,1, 'La torre oscura 3 Las tierras baldías',10),
                (1,1, 'La torre oscura 4 Bola de cristal',10),
                (1,1, 'La torre oscura 5 Los de Calla',10),
                (1,1, 'La torre oscura 6 La torre oscura',10),
                (1,1, 'La torre oscura 7 Canción de Susannah',10),
                (1,1, 'La niebla',10),

                (2,2, 'Harry Potter y la Piedra Filosofal', 10),
                (2,2, 'Harry Potter y la Cámara Secreta', 10),
                (2,2, 'Harry Potter y el Prisionero de Azkaban',10),
                (2,2, 'Harry Potter y el Cáliz de Fuego',10),
                (2,2, 'Harry Potter y la Orden del Fénix',10),
                (2,2, 'Harry Potter y el Misterio del Príncipe',10),
                (2,2, 'Harry Potter y las Reliquias de la Muerte',10),

                (3,3, 'Origen',10),
                (3,3, 'Inferno',10),
                (3,3, 'El simbolo perdido',10),
                (3,3, 'El código Da Vinci',10),
                (3,3, 'La consipiración',10),

                (4,4, 'Al calor del verano',10),
                (4,4, 'Un asunto pendiente',10),
                (4,4, 'Juicio Final',10),
                (4,4, 'La sombra',10),
                (4,4, 'Juego de ingenios',10),
                (4,4, 'El psicoanalista',10),
                (4,4, 'La historia del loco',10),
                (4,4, 'El hombre equivocado',10),
                (4,4, 'El estudiante',10),

                (5,5, 'El hobbit',10),
                (5,5, 'Las dos torres',10),
                (5,5, 'El señor de los anillos',10),
                (5,5, 'La comunidad del anillo',10),
                (5,5, 'El retorno del rey',10),

                (6,1, 'La niebla',10),

                (7,2, 'Eva',10),
                (7,2, 'Falcó',10),
                (7,2, 'Hombre buenos',10),
                (7,2, 'Los barcos se pierden en tierra',10),

                (8,3, 'Juego de tronos',10),
                (8,3, 'Choque de reyes',10),
                (8,3, 'Tormenta de espadas',10),
                (8,3, 'Festin de cuervos',10),
                (8,3, 'Danza de dragones',10);








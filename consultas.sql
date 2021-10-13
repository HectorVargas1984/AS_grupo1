use proyectojahuelito

-- consultas

-- PRESTAMO

delimiter //
create procedure prestamos (in id_libro int, in id_usuario int, in fecha_prestamo date, in fecha_devolucion date, OUT cantidad INT)
BEGIN
SET cantidad = (SELECT stock FROM libros where libros.id_libro = id_libro);

IF cantidad > 0 THEN

INSERT INTO prestamos  (id_libro,id_usuario,fecha_prestamo,fecha_devolucion) VALUES (id_libro,id_usuario,fecha_prestamo ,fecha_devolucion );
UPDATE libros SET stock=stock-1  where libros.id_libro=id_libro;

ELSE

SELECT "No es posible realizar el prestamo"  AS mensaje;

END IF;

END//
delimiter ;

-- DEVOLUCION O RENOVACION DE PRESTAMOS DE LIBROS
drop procedure if exists  devolucion_renovar_ELIMINAR;
delimiter //

create procedure devolucion_renovar (in id_prestamo int, in id_libro int, in id_usuario int, in fecha_prestamo date, in fecha_devolucion date, in RENOVACION_DEVOLUCION varchar (20))
BEGIN
CASE RENOVACION_DEVOLUCION
when RENOVACION_DEVOLUCION = "devolucion" then

DELETE	FROM prestamos where prestamos.id_prestamo=id_prestamo and prestamos.id_libro ;
UPDATE libros SET stock=stock+1  where libros.id_libro=id_libro;

when RENOVACION_DEVOLUCION ="renovacion" then
UPDATE prestamos set fecha_prestamo= fecha_prestamo, fecha_devolucion=fecha_devolucion
where prestamos.id_prestamo=id_prestamo;

end case;

END//
delimiter ;

-- BAJA DE LIBROS


delimiter //
create procedure BAJA_LIBROS (in id_libro int, in fecha date, in descripcion varchar (100))
BEGIN

INSERT INTO baja_libros (id_libro,fecha,descripcion) VALUES (id_libro,fecha,descripcion );
UPDATE libros SET stock=stock-1  where libros.id_libro=id_libro;

END//
delimiter ;



-- STOCK DE LIBRO Y CALIDAD DE PRESTAMO
SELECT *
FROM prestamos
INNER JOIN libros
ON prestamos.id_libro = libros.id_libro



-- INFORMAR CALIDAD DE LIBROS EN PRESTAMO
select b.id_libro, a.nombre,c.id_usuario, c.nombre, b.fecha_prestamo, b.fecha_devolucion from libros a INNER JOIN 
prestamos b on a.id_libro = b.id_libro INNER JOIN usuarios c  on c.id_usuario = b.id_usuario



-- ELIMINAR USUARIO

delimiter //
create procedure ELIMINAR_USUARIO (in ID_USUARIO int )
BEGIN
DELETE	FROM usuarios where usuarios.id_usuario=ID_USUARIO;
END//
delimiter ;


drop schema ProyectoJahuelito;
CREATE SCHEMA IF NOT EXISTS ProyectoJahuelito;
USE `ProyectoJahuelito` ;

-- -----------------------------------------------------
-- Table `mydb`.`autores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoJahuelito`.`autores` (
  `id_autor` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `nacionalidad` VARCHAR(45) NOT NULL,
  `pseudonimo` VARCHAR(45) NULL DEFAULT NULL,
  `fecha_nacimiento` DATE NOT NULL,
  PRIMARY KEY (`id_autor`));



-- -----------------------------------------------------
-- Table `mydb`.`editoriales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoJahuelito`.`editoriales` (
  `id_editorial` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  `telefono` INT NOT NULL,
  `nombre_contacto` VARCHAR(45) NULL DEFAULT NULL,
  `correo` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_editorial`));


-- -----------------------------------------------------
-- Table `mydb`.`libros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoJahuelito`.`libros` (
  `id_libro` INT NOT NULL AUTO_INCREMENT,
  `id_autor` INT NOT NULL,
  `id_editorial` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `stock` INT NOT NULL,
  `ingreso_libros` DATETIME DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_libro`),
  INDEX `fk_libros_Autores1_idx` (`id_autor` ASC) VISIBLE,
  INDEX `fk_libros_editoriales1_idx` (`id_editorial` ASC) VISIBLE,
  CONSTRAINT `fk_libros_Autores1`
    FOREIGN KEY (`id_autor`)
    REFERENCES `ProyectoJahuelito`.`autores` (`id_autor`),
  CONSTRAINT `fk_libros_editoriales1`
    FOREIGN KEY (`id_editorial`)
    REFERENCES `ProyectoJahuelito`.`editoriales` (`id_editorial`));



-- -----------------------------------------------------
-- Table `mydb`.`baja_libros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoJahuelito`.`baja_libros` (
  `id_baja_libro` INT NOT NULL AUTO_INCREMENT,
  `id_libro` INT NOT NULL,
  `fecha` DATE NOT NULL,
  `descripcion` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_baja_libro`),
  INDEX `fk_baja_libros_libros1_idx` (`id_libro` ASC) VISIBLE,
  CONSTRAINT `fk_baja_libros_libros1`
    FOREIGN KEY (`id_libro`)
    REFERENCES `ProyectoJahuelito`.`libros` (`id_libro`));


-- -----------------------------------------------------
-- Table `mydb`.`ocupaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoJahuelito`.`ocupaciones` (
  `id_ocupacion` INT NOT NULL AUTO_INCREMENT,
  `ocupacion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_ocupacion`));



-- -----------------------------------------------------
-- Table `mydb`.`Comunas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoJahuelito`.`Comunas` (
  `id_comunas` INT NOT NULL AUTO_INCREMENT,
  `nombre_comuna` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_comunas`));



-- -----------------------------------------------------
-- Table `mydb`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoJahuelito`.`usuarios` (
  `id_usuario` INT NOT NULL AUTO_INCREMENT,
  `id_ocupacion` INT NOT NULL,
  `id_comunas` INT NOT NULL,
  `rut` VARCHAR(15) NOT NULL,
  `nombre` VARCHAR(30) NOT NULL,
  `apellido` VARCHAR(30) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `telefono` INT NOT NULL,
  PRIMARY KEY (`id_usuario`),
  INDEX `fk_usuarios_ocupacion1_idx` (`id_ocupacion` ASC) VISIBLE,
  INDEX `fk_usuarios_Comunas1_idx` (`id_comunas` ASC) VISIBLE,
  CONSTRAINT `fk_usuarios_ocupacion1`
    FOREIGN KEY (`id_ocupacion`)
    REFERENCES `ProyectoJahuelito`.`ocupaciones` (`id_ocupacion`),
  CONSTRAINT `fk_usuarios_Comunas1`
    FOREIGN KEY (`id_comunas`)
    REFERENCES `ProyectoJahuelito`.`Comunas` (`id_comunas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `mydb`.`prestamos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoJahuelito`.`prestamos` (
  `id_prestamo` INT NOT NULL AUTO_INCREMENT,
  `id_libro` INT NOT NULL,
  `id_usuario` INT NOT NULL,
  `fecha_prestamo` DATE NOT NULL,
  `fecha_devolucion` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id_prestamo`),
  INDEX `fk_prestamos_libros1_idx` (`id_libro` ASC) VISIBLE,
  INDEX `fk_prestamos_usuarios1_idx` (`id_usuario` ASC) VISIBLE,
  CONSTRAINT `fk_prestamos_libros1`
    FOREIGN KEY (`id_libro`)
    REFERENCES `ProyectoJahuelito`.`libros` (`id_libro`),
  CONSTRAINT `fk_prestamos_usuarios1`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `ProyectoJahuelito`.`usuarios` (`id_usuario`));


-- -----------------------------------------------------
-- Table `efe`.`General`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `efe`.`General` (
  `general_id` INT NULL AUTO_INCREMENT,
  `general` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`general_id`));


-- -----------------------------------------------------
-- Table `efe`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `efe`.`Categoria` (
  `categoria_id` INT NULL AUTO_INCREMENT,
  `categoria` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`categoria_id`));



-- -----------------------------------------------------
-- Table `efe`.`Subcategoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `efe`.`Subcategoria` (
  `subcategoria_id` INT NULL AUTO_INCREMENT,
  `subcategoria` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`subcategoria_id`));


-- -----------------------------------------------------
-- Table `efe`.`Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `efe`.`Producto` (
  `producto_id` INT NULL AUTO_INCREMENT,
  `marca` VARCHAR(45) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `precio` DECIMAL(7,2) NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  `imagen` VARCHAR(45) NOT NULL,
  `especificacion_id` INT NOT NULL,
  PRIMARY KEY (`producto_id`));


-- -----------------------------------------------------
-- Table `efe`.`General_Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `efe`.`General_Categoria` (	
	`general_id` INT NOT NULL,
	`categoria_id` INT NOT NULL,
    primary key(`general_id`,`categoria_id`),
    foreign key(`general_id`) references `General` (`general_id`),
    foreign key(`categoria_id`) references `Categoria` (`categoria_id`)
);


-- -----------------------------------------------------
-- Table `mydb`.`Categoria_Subcategoria`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `efe`.`Categoria_Subcategoria` (	
	`categoria_id` INT NOT NULL,
	`subcategoria_id` INT NOT NULL,
    primary key(`categoria_id`,`subcategoria_id`),
    foreign key(`categoria_id`) references `Categoria` (`categoria_id`),
    foreign key(`subcategoria_id`) references `Subcategoria` (`subcategoria_id`)
);




-- -----------------------------------------------------
-- Table `mydb`.`Especificacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `efe`.`Especificacion` (
  `especificacion_id` INT NULL,
  `especificacion` VARCHAR(45) NOT NULL,
  `contenido` VARCHAR(45) NOT NULL,
  `producto_id` INT NOT NULL,
	PRIMARY KEY (`especificacion_id`),
    FOREIGN KEY (`producto_id`)
    REFERENCES `Producto` (`producto_id`));



-- -----------------------------------------------------
-- Table `mydb`.`Producto_General`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Producto_General` (
  `producto_id` INT NOT NULL,
  `general_id` INT NOT NULL,
	PRIMARY KEY (`producto_id`, `general_id`),
    FOREIGN KEY (`producto_id`) REFERENCES `Producto` (`producto_id`),
    FOREIGN KEY (`general_id`) REFERENCES `General` (`general_id`));


-- -----------------------------------------------------
-- Table `mydb`.`Producto_Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Producto_Categoria` (
  `producto_id` INT NOT NULL,
  `categoria_id` INT NOT NULL,
	PRIMARY KEY (`producto_id`, `categoria_id`),
    FOREIGN KEY (`producto_id`) REFERENCES `Producto` (`producto_id`),
    FOREIGN KEY (`categoria_id`)REFERENCES `Categoria` (`categoria_id`));



-- -----------------------------------------------------
-- Table `mydb`.`Producto_Subcategoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Producto_Subcategoria` (
  `producto_id` INT NOT NULL,
  `subcategoria_id` INT NOT NULL,
	PRIMARY KEY (`producto_id`, `subcategoria_id`),
    FOREIGN KEY (`producto_id`) REFERENCES `Producto` (`producto_id`),
    FOREIGN KEY (`subcategoria_id`) REFERENCES `Subcategoria` (`subcategoria_id`));




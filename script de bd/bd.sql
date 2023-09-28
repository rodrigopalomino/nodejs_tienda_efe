CREATE TABLE IF NOT EXISTS `categorias` (
  `categoria_id` INTEGER auto_increment,
  `nombre` VARCHAR(255) NOT NULL,
  `parent_id` INTEGER,
  PRIMARY KEY (`categoria_id`),
  FOREIGN KEY (`parent_id`) REFERENCES `categorias` (`categoria_id`) 
);

CREATE TABLE IF NOT EXISTS `productos` (
  `producto_id` INTEGER auto_increment,
  `sku` VARCHAR(255) NOT NULL,
  `marca` VARCHAR(255) NOT NULL,
  `nombre` VARCHAR(255) NOT NULL,
  `precio_normal` INTEGER NOT NULL,
  `precio_rebajado` INTEGER DEFAULT 0,
  `stock` INTEGER NOT NULL,
  `descripcion` VARCHAR(255),
  `especificaciones` JSON,
  `imagenes` JSON NOT NULL,
  PRIMARY KEY (`producto_id`)
);


CREATE TABLE IF NOT EXISTS `categorias_productos` (
  `categoria_id` INTEGER , 
  `producto_id` INTEGER , 
  PRIMARY KEY (`categoria_id`, `producto_id`), 
  FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`categoria_id`),
  FOREIGN KEY (`producto_id`) REFERENCES `productos` (`producto_id`)
); 


CREATE TABLE IF NOT EXISTS `usuarios` (
  `usuario_id` INTEGER auto_increment,
  `nombre` VARCHAR(255) NOT NULL,
  `apellidos` VARCHAR(255) NOT NULL,
  `tipo_documento` INTEGER NOT NULL,
  `num_documento` VARCHAR NOT NULL,
  `celular` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `contraseña` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`usuario_id`),
  FOREIGN KEY (`tipo_documento`) REFERENCES `documentos` (`documento_id`) 
);


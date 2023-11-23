DELIMITER //
CREATE PROCEDURE getProductos(in categoria int,in inicio int,in cantidad int)
BEGIN

SELECT
    p.producto_id,
    p.sku,
    p.marca,
    p.nombre,
    p.precio,
    p.oferta,
    p.descripcion,
    GROUP_CONCAT(DISTINCT cp.categoria_id SEPARATOR ',') AS categorias,
	i.imagen AS imagenes
FROM productos p
LEFT JOIN imagenes i ON p.producto_id = i.producto_id AND i.tipo= "principal"
LEFT JOIN especificaciones e ON p.producto_id = e.producto_id
LEFT JOIN categorias_productos cp ON p.producto_id = cp.producto_id
where cp.categoria_id=categoria
GROUP BY p.producto_id
limit cantidad offset inicio;
END; 
//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE searchProductos(in nombre int,in inicio int,in cantidad int)
BEGIN

SELECT
    p.producto_id,
    p.sku,
    p.marca,
    p.nombre,
    p.precio,
    p.oferta,
    p.descripcion,
    GROUP_CONCAT(DISTINCT cp.categoria_id SEPARATOR ',') AS categorias,
	i.imagen AS imagenes
FROM productos p
LEFT JOIN imagenes i ON p.producto_id = i.producto_id AND i.tipo= "principal"
LEFT JOIN especificaciones e ON p.producto_id = e.producto_id
LEFT JOIN categorias_productos cp ON p.producto_id = cp.producto_id
where p.nombre=nombre
GROUP BY p.producto_id
limit cantidad offset inicio;
END; 
//
DELIMITER ;


Call getProductos(2,40,11);

DELIMITER //
CREATE PROCEDURE getProductosDestacados(IN destacado VARCHAR(255))
BEGIN
    SELECT
        p.producto_id,
        p.sku,
        p.marca,
        p.nombre,
        p.precio,
        p.oferta,
        GROUP_CONCAT(DISTINCT cp.categoria_id SEPARATOR ',') AS categorias,
        GROUP_CONCAT(DISTINCT i.imagen SEPARATOR ',') AS imagenes
    FROM productos p
    LEFT JOIN imagenes i ON p.producto_id = i.producto_id
    LEFT JOIN especificaciones e ON p.producto_id = e.producto_id
    LEFT JOIN categorias_productos cp ON p.producto_id = cp.producto_id
    LEFT JOIN categorias c ON cp.categoria_id = c.categoria_id
    WHERE p.destacado = destacado 
    GROUP BY p.producto_id;
END;
//
DELIMITER ;


DELIMITER //
CREATE PROCEDURE getCategorias(IN parent_id varchar(255))
BEGIN
SELECT
  c.categoria_id,
  c.nombre,
  c.parent_id,
  COUNT(cp.producto_id) as cantidad_productos 
FROM categorias c
JOIN categorias_productos cp ON c.categoria_id = cp.categoria_id
WHERE c.parent_id = parent_id
GROUP BY c.categoria_id, c.nombre, c.parent_id;

END;
//
DELIMITER ;


DELIMITER //
CREATE PROCEDURE getProducto(in nombre varchar(255))
BEGIN
SELECT 
    p.producto_id,
    p.sku,
    p.marca,
    p.nombre,
    p.precio,
    p.oferta,
    p.descripcion,
	GROUP_CONCAT(DISTINCT cp.categoria_id SEPARATOR ',') AS categorias,
    (select 
        group_concat(e.especificacion separator ",") as campos
		from especificaciones e JOIN productos p on p.producto_id= e.producto_id where p.nombre = nombre)as especificaciones,
	(select 
        group_concat(e.campo separator ",") as campos
		from especificaciones e JOIN productos p on p.producto_id= e.producto_id where p.nombre = nombre)as campos ,
    GROUP_CONCAT(distinct
        i.imagen ORDER BY CASE WHEN i.tipo = "principal" THEN 1 ELSE 2 END, i.imagen
    ) AS imagenes
FROM productos p
LEFT JOIN imagenes i ON p.producto_id = i.producto_id
LEFT JOIN categorias_productos cp ON p.producto_id = cp.producto_id
WHERE p.nombre = nombre;

END;
//
DELIMITER ;







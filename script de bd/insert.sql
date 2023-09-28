
INSERT INTO `Categorias` (`nombre`, `parent_id`) VALUES
('Estilo de vida',null),
('Tecnologia',null),
('Electrohogar',null),
('Hogar',null),
('Muebles',null),
('Dormitorio',null),
('Deporte',null),
('Infantil',null),
('Salud',null),
('Mejoramiento del hogar',null),
('Motos',null),
('Moda y Belleza',null),
('Multiservicio',null),
('Mascota',null),
('Supermercado',null),
('Remate Total',null);


/* Estilo de vida => 1*/
INSERT INTO `categorias` (`nombre`, `parent_id`) VALUES 
('Tabajo y estudio en casa',1),
('Hogareño',1),
('Tecnologia',1),
('Gamer',1),
('Deporte y vida sana',1),
('Viajero',1),
('Divertido',1),
/* Tecnologia => 2*/
('Televisores',2),
('Computacion',2),
('Gaming',2),
('Celulares',2),
('Audifonos',2),
('Audio',2),
('Videojuegos',2),
('Smart home y domotica',2),
('Fotografia y video',2),
('Marcas',2),
/* Electrohogar => 3*/
('Lavado',3),
('Refrigeracion',3),
('Cocina',3),
('Limpieza',3),
('Cuidado de la ropa',3),
('Electrodomesticos',3),
('Climatizacion',3),
('Cuidado personal',3),
('Industrial',3),
('Marcas',3),
/* Hogar => 4*/
('Grill',4),
('Cocina',4),
('Menaje',4),
('Organizacion',4),
('Decoracion',4),
('Baño',4),
('Maleteria y Viajes',4),
/* Muebles => 5*/
('Sala',5),
('Comedor',5),
('Oficina y estudio',5),
('Dormitorio',5),
('Terrazas',5),
('Otros espacios',5),
/* Dormitorio => 6*/
('Colchones',6),
('Cama Box Tarima',6),
('Juego de dormitorio',6),
('Muebles de dormitorio',6),
('Ropa de cama',6),
('Dormitorio infantil',6),
('Marcas_muebles',6),
/* Deporte => 7 */
('Maquina y gimnasio',7),
('Bicicletas',7),
('Accesorio de deporte',7),
('Tiempo libre y camping',7),
('Ropa y accesorios',7),
/* Infantil => 8 */
('Jugueteria',8),
('Escolar',8),
('Bebes',8),
('Juegos de exterior',8),
/* Salud => 9 */
('Cuidado de salud',9),
('Salud',9),
/* Mejoramiento del hogar => 10 */
('Herramientas electricas',10),
('Herramientas manuales',10),
('Automotriz',10),
('Ferreteria',10),
('Pintura y terminaciones',10),
('Contruccion',10),
/* Motos => 11 */
('Moto de 2 ruedas',11),
/* Moda y belleza => 12 */
('Accesorios de moda',12),
('Calzado',12),
/* Multiservicio => 13 */
('Garantia adicionales',13),
('Asistencia',13),
('Instalaciones',13),
/* Mascota => 14 */
('Accesorios',14),
('Cuidado y higiene',14),
('Camas y casas',14),
/* Supermercado => 15 */
('Cuidado personal',15),
/* Remate Total => 16 */
('Remate Celulares',16),
('Remate Computo',16),
('Remate Deporte',16),
('Remate Digital',16),
('Remate Hogar',16),
('Remate Linea Blanca',16),
('Remate Video',16);



/*Subcategorias*/
INSERT INTO `categorias` (`nombre`, `parent_id`) VALUES 
/* Estilo de vida => 1, Trabajo y estudio en casa => 17 */
('Laptops',17),
('All in one',17),
('Impresoras y multifuncionales',17),
('Tablets',17),
('Routes y repetidores',17),
('Escritorios',17),
('Sillas y escritorios',17),
('Estantes y libreros',17),
('Accesorios de computo',17),
/* Estilo ed vida => 1 : Hogareño => 18 */
('Cocina divertida',18),
('Parrilla en familia',18),
('Renueva tu cocina',18),
('Cuidado de la ropa',18),
('Refrigeracion',18),
('Decora tu espacio',18),
('Descanso perfecto',18),
('Limpieza del hofar',18),
/* Estilo ed vida => 1 : Tecnologico => 19 */
('Smart home y domotica',19),
('Computo',19),
('Smartphones',19),
('Gadgets',19),
('Drones',19),
('Power bank y accesorios',19),
('Smartwatch & wearables',19),
('Tablets',19),
/* Estilo ed vida => 1 : Gamer => 20 */
('Accesorios gaming',20),
('Consolas',20),
('Laptos gamer',20),
('Mandos',20),
('Monitores gamer',20),
('mouse y mousepad gamer',20),
('Teclados gamer',20),
('Videojuegos',20),
('Sillas Gamer',20),
/* Estilo ed vida => 1 : Deporte y vida sana => 21 */
('Accesorios de deporte',21),
('Bicicletas',21),
('Maquinas y gimnasia',21),
('Motos',21),
('Ropa deportiva',21),
/* Estilo ed vida => 1 : Viajero => 22 */
('Camping',22),
('Maleteria y accesorios',22),
('Fotografia y video',22),
('Tablets y kindle',22),
('Parlantes bluetooth',22),
('Audifonos',22),
('Cargadores y accesorios',22),
('Drones',22),
/* Estilo ed vida => 1 : Divertido => 23 */
('Parrillas, cilindros y cajas chinas',23),
('Piscinas y flotadores',23),
('Cocina divertida',23),
('Juego de mesa',23),
('Juego de exterior',23),
('Instrumentos musicales',23),
('Bicicletas',23),
('Audio y karaoke',23),
/* =============================== */
/* Tecnologia => 2 : Televisores => 24 */
('Smart TV',24),
('OLED',24),
('NANOCELL',24),
('QLED',24),
('Soundbars y home theaters',24),
('Convertidor de Smart a TV',24),
('Accesorios de TV',24),
('Rocks',24),
/* Tecnologia => 2 : Computacion => 25 */
('Laptops',25),
('Computadoras de escritorio',25),
('All in one',25),
('Monitores y proyectores',25),
('Tablets y tabletas graficas',25),
('Impresoras y multifuncionales',25),
('tintas y toners',25),
('Accesorios de computacion',25),
('Software',25),
/* Tecnologia => 2 : Gaming => 26 */
('Laptops gamer',26),
('Monitores gamer',26),
('Audifonos gamer',26),
('Mouse y mousepad gamer',26),
('Teclados gamer',26),
('Coolers',26),
('Sillas gamer',26),
('Arma tu PC',26),
('Otros accesorios gamer',26),
/* Tecnologia => 2 : Celulares => 27 */
('Celulares y smartphones',27),
('Smartwatch',27),
('Audifonos',27),
('Cargadores y cables',27),
('Baterias externas',27),
('Parlantes',27),
('Carcasas y laminas',27),
('Accesorios de celulares',27),
/* Tecnologia => 2 : Audifonos => 28 */
('True Wireless',28),
('In ear',28),
('On ear',28),
('Over ear',28),
('Deportivos',28),
/* Tecnologia => 2 : Audio => 29 */
('Equipos de sonido',29),
('Parlantes bluetooth',29),
('Torres de sonido',29),
('Soundbars  y home theaters',29),
('Audio profesional',29),
('Instrumentos musicales',29),
('Autoradios',29),
('Accesorios de audio',29),
/* Tecnologia => 2 : Videojuegos => 30 */
('Consolas',30),
('Play Station',30),
('Nintendo',30),
('Juegos',30),
('Mandos',30),
('Accesorios de videojuegos',30),
/* Tecnologia => 2 : Smart home y domotica => 31 */
('Asistente de voz',31),
('Aspiradora robot',31),
('Iluminacion inteligente',31),
('Interruptor y enchufes inteligentes',31),
('seguridad inteligente',31),
('Streming',31),
('Routes y conexion inalambricas',31),
('Nuevos dispositivos inteligentes',31),
/* Tecnologia => 2 : Fotografia y video => 32 */
('Camaras semiprofesionales',32),
('Drones',32),
('Camaras compactas',32),
('Camaras de video',32),
('Camaras instantaneas y retro',32),
('Camaras acuaticas',32),
('Lentes y accesorios',32),
('Tarjetas de momeria',32),
/* Tecnologia => 2 : Marca_tecnologia => 33 */
('Apple',33),
('LG',33),
('Samsung',33),
('JBL',33),
('HP',33),
('Lenovo',33),
('Xiaomi',33),
('Asus',33),
('Google',33),
('Acer',33),
/* ======================================== */
/* Electrohogar => 3 : Lavado => 34 */
('Lavadoras',34),
('Secadoras',34),
('Lavasecas',34),
('Centro  de lavado',34),
('Lavavajillas',34),
('Hidrolavadores',34),
/* Electrohogar => 3 : Refrigeracion => 35 */
('Refrigeradoras',35),
('Congeladoras',35),
('Frigobares y vinera',35),
('Exhibidoras y vitrinas',35),
('Dispensadores y purificadores de agua',35),
/* Electrohogar => 3 : Cocina => 36 */
('Cocinas de pie',36),
('Cocinas empotrables',36),
('Cocinas de mesa',36),
('Campanas',36),
('Hornos empotrables',36),
('Combos de cocina',36),
('Lavavajillas',36),
('Microondas',36),
('Hornos electricos',36),
/* Electrohogar => 3 : Limpieza => 37 */
('Aspiradoras',37),
('Aspiradoras de robot',37),
('Lustradoras',37),
('Hidrolavadoras',37),
('Otros',37),
/* Electrohogar => 3 : Cuidado de la ropa => 38 */
('Maquinas de cocer',38),
('Planchas',38),
('Planchador',38),
/* Electrohogar => 3 : Electrodomesticos => 39 */
('Licuadoras',39),
('Freidoras de aire',39),
('Ollas arroceras',39),
('Batidoras',39),
('Cafeteras y Hervidores',39),
('Tostadoras y sandwicheras',39),
('Extractores y exprimidores',39),
('Cocina entretenida',39),
('Combos',39),
/* Electrohogar => 3 : Climatizacion => 40 */
('Termas y calentadores',40),
('Ventiladores',40),
('Aires acondicionados',40),
('Deshumedecedores',40),
('Purificadores de aire',40),
('Calefaccion',40),
/* Electrohogar => 3 : Cuidado personal => 41 */
('Secadoras de pelo',41),
('Alisadoras y onduladoras',41),
('Depiladoras',41),
('Afeitadoras y cortadores de pelo',41),
('Bienestar y salud',41),
/* Electrohogar => 3 : Industrial => 42 */
('Exhibidoras y vitrinas',42),
('Congeladoras y conservadoras',42),
('Equipos de produccion',42),
('Equipos complementarios',42),
/* Electrohogar => 3 : Marca_electrohogar => 43 */
('Band',43),
('Samsung',43),
('LG',43),
('Indurama',43),
('Mabe',43),
('Electrolux',43),
('Bosch',43),
('Oster',43),
('Imaco',43),
/* ======================================== */
/* Hogar => 4 : Grill => 44 */
('Grill',44),
('Parrillas',44),
('Cajas chinas',44),
('Kamados',44),
('Cilindros',44),
('Accesorios de parrilla',44),
/* Hogar => 4 : Cocina => 45 */
('Juegos de olla',45),
('Sartenes y works',45),
('Termos y teteras',45),
('Utensilios de cocina',45),
('Lavaderos',45),
('Mezcladora DJ',45),
/* Hogar => 4 : Menaje => 46 */
('Vajillas',46),
('Cubiertos',46),
('Vasos y copas',46),
('Organizadores y contenedores',46),
('Accesorios de mesa',46),
/* Hogar => 4 : Organizacion => 47 */
('Canastas y cesto',47),
('Mesa y auxiliares',47),
('Gabinetes',47),
/* Hogar => 4 : Decoracion => 48 */
('Espejos',48),
('Cojines',48),
('Cortinas',48),
('Alfombras',48),
('Iluminacion',48),
/* Hogar => 4 : Baño => 49 */
('Toallas',49),
('Tendederos',49),
('Accesorios de baño',49),
/* Hogar => 4 : Maleteria y Viajes => 50 */
('Maleta de cabina',50),
('Maleta de viaje',50),
('Mochila outdoors',50),
/* ======================================== */
/* Muebles => 5 : Sala => 51 */
('Seccionales',51),
('Juegos de sala',51),
('Sillones reclinables',51),
('Futones y Sofa Cama',51),
('Mesas de Centro y Complementos',51),
('Centros de entretenimiento',51),
('Paneles',51),
('Mesas de TV',51),
('Rocks de TV',51),
/* Muebles => 5 : Comedor => 52 */
('Juegos de Comedor',52),
('Sillas de Comedor',52),
('Mesas de Comedor',52),
('Bares',52),
('Bancos de Bar',52),
('Aparadores y Vitrinas',52),
/* Muebles => 5 : Oficina y estudio => 53 */
('Escritorios',53),
('Estantes y Libreros',53),
('Sillas de escritorio',53),
('Sillas Gamers',53),
/* Muebles => 5 : Dormitorio => 54 */
('Cabeceras',54),
('Roperos',54),
('Veladeros',54),
('Comodas y Tocadores',54),
('Zapateros',54),
('Organizadores',54),
/* Muebles => 5 : Terrazas => 55 */
('Comedor y sillas',55),
('Accesorios de terrazas',55),
/* Muebles => 5 : Otros espacios => 56 */
('Muebles de baño',56),
('Muebles de cocina',56),
/* ======================================== */
/* Dormitorio => 6 : Colchones => 57 */
('King',57),
('Queen',57),
('2 Plazas',57),
('1.5 Plazas',57),
('1 Plaza',57),
('Infantil',57),
/* Dormitorio => 6 : Cama Box Tarima => 58 */
('King',58),
('Queen',58),
('2 Plazas',58),
('1.5 Plazas',58),
/* Dormitorio => 6 : Juego de dormitorio => 59 */
('King',59),
('Queen',59),
('2 Plazas',59),
('1.5 Plazas',59),
/* Dormitorio => 6 : Muebles de dormitorio => 60 */
('Cabezeras',60),
('Roperos',60),
('Veladores',60),
('Comodas y tocadores',60),
('Zapateras',60),
/* Dormitorio => 6 : Ropa de cama => 61 */
('Sabanas y fundas de almohadas',61),
('Edredones y plumas',61),
('Cubrecamas',61),
('Frazadas y mantas',61),
('Almohadas y protectores',61),
('Cojines y accesorios',61),
/* Dormitorio => 6 : Dormitorio infantil => 62 */
('Cunas y cama para niños',62),
/* Dormitorio => 6 : Marcas => 63 */
('Paraiso',63),
('El Cisne',63),
('Foril',63),
/* ======================================== */
/* Deporte => 7 : Maquinas de gimnasio => 64 */
('Trotadoras',64),
('Elipticas',64),
('Bicicletas estacionarias',64),
('Bancas',64),
('Gimnasios',64),
/* Deporte => 7 : Bicicletas => 65 */
('Bicicletas de niños',65),
('Bicicletas de paseo',65),
('Bicicletas montañeras',65),
('Bicicletas electricas',65),
('Scooters electricos',65),
('Accesorios de bicicletas',65),
/* Deporte => 7 : Accesorios de deporte => 66 */
('Pesas y mancuerdas',66),
('Gimnasia',66),
('Aerobicos',66),
('Yoga',66),
('Boxeo',66),
('Accesorios de proteccion',66),
/* Deporte => 7 : Tiempo libre y camping => 67 */
('Carpas',67),
('Sacos de dormir',67),
('Colchones inflables',67),
('Coolers',67),
('Mochilas outdoors',67),
('Piscinas e inflables',67),
('Accesorios de camping',67),
('Juegos de exterior',67),
/* Deporte => 7 : Ropa y accesorios => 68 */
('Ropa deportiva',68),
('Mochila y accesorios',68),
('Zapatillas',68),
/* ======================================== */
/* Infantil => 8 : Juegueteria => 69 */
('Coleccionables y funkos',69),
('Muñecas y accesorios',69),
('Figuras de accion',69),
('Autos y pistas',69),
('Juegos de mesa',69),
('Organizacion y didacticos',69),
('Legos y armables',69),
('Pre-escolar',69),
/* Infantil => 8 : Escolar => 70 */
('Mochilas',70),
('Tomatodos',70),
('Loncheras y tapers',70),
/* Infantil => 8 : Bebes => 71 */
('Lactancia',71),
('Coches',71),
('Sillas de auto',71),
('Cunas y corrales',71),
('Sillas de comer',71),
('Gimnasios y centro de actividades',71),
('Accesirios de bebes',71),
('Triciclos andadores y correpasillos',71),
/* Infantil => 8 : Juegos de exterior => 72 */
('Inflables',72),
('Scooters y patines',72),
('Bicicletas infantiles',72),
('Piscinas y juegos de agua',72),
/* ======================================== */
/* Salud => 9 : Cuidado de salud => 73 */
('Oximetros',73),
('Termometros',73),
('Fajas',73),
('Mascarillas',73),
/* Salud => 9 : Salud => 74 */
('Equipos medicos',74),
('Balanzas',74),
('Concentradores de Oxigeno',74),
('Masajeadores',74),
/* ======================================== */
/* Mejoramiento del hogar => 10 : Herramientas electricas => 75 */
('Taladro',75),
('Atornilladores',75),
('Sierra circular',75),
('Pulidoras y lijadoras',75),
('Amoladora y esmeriles',75),
('Rotomartillo y demoledores',75),
('Tronzadora',75),
('Soplador',75),
/* Mejoramiento del hogar => 10 : Herramientas manuales => 76 */
('Desarmadores',76),
('Alicates',76),
('Set de herramientas',76),
('Herramientas de medicion',76),
/* Mejoramiento del hogar => 10 : Automotriz => 77 */
('Baterias',77),
('Audio y video',77),
('Limpieza para autos',77),
('Accesorios',77),
/* Mejoramiento del hogar => 10 : Ferreteria => 78 */
('Iluminacion',78),
('Gasfiteria',78),
('Jardineria',78),
('Seguridad y EPPS',78),
/* Mejoramiento del hogar => 10 : Pinturas y terminaciones => 79 */
('Escaleras',79),
/* Mejoramiento del hogar => 10 : Construcciones => 80 */
('Materiales de construccion',80),
('Herramientas de construccion',80),
('Maderas y tableros',80),
/* ======================================== */
/* Motos => 11 : Motos de 2 ruedas => 81 */
/* Nada */
/* ======================================== */
/* Moda y belleza => 12 : Accesorios de moda => 82 */
('Carteras y mochilas',82),
('Relojes',82),
('Billeteras',82),
/* Moda y belleza => 12 : Calzado => 83 */
('Zapatos',83),
('Zapatillas',83),
('Botas y botines',83),
/* ======================================== */
/* Multiservicio => 13 : Garantias adicionales => 84 */
('Audio',84),
('Computo',84),
('Digital',84),
('Linea Blanca',84),
('Pequeños electrodomesticos',84),
('Televisores',84),
/* Multiservicio => 13 : Asistencia => 85 */
('Servicios de asistencia para el hogar',85),
('Servicios de asistencia tecnologicas',85),
('Servicios para smartphone',85),
/* Multiservicio => 13 : Intalaciones => 86 */
('Instalacion de linea blanca',86),
('Instalacion de racks',86),
/* ======================================== */
/* Mascota => 14 : Accesorios => 1 */
/* Nada */
/* Mascota => 14 : Cuidado e Higiene => 2 */
/* Nada */
/* Mascota => 14 : Camas y Casas => 3 */
/* Nada */
/* ======================================== */
/* Supermercado => 15 : Cuidado Personal => 1 */
('Aseo Personal',90);
/* ======================================== */
/* Remate Total => 16 : Cuidado Personal => 1 */
/* Nada */











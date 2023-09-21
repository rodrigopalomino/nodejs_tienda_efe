

select * from general;
select * from categoria;
select * from subcategoria;

select * from general_categoria;


select  
c.categoria,
c_s.subcategoria_id,
s.subcategoria
from categoria_subcategoria c_s
JOIN subcategoria s ON s.subcategoria_id = c_s.subcategoria_id
JOIN categoria c ON c.categoria_id = c_s.categoria_id
where c.categoria_id=74;


insert into general(general) values 
('Estilo de vida'),
('Tecnologia'),
('Electrohogar'),
('Hogar'),
('Muebles'),
('Dormitorio'),
('Deporte'),
('Infantil'),
('Salud'),
('Mejoramiento del hogar'),
('Motos'),
('Moda y Belleza'),
('Multiservicio'),
('Mascota'),
('Supermercado'),
('Remate Total');

insert into categoria(categoria) values 
/* Estilo de vida => 1 */
('Tabajo y estudio en casa'),
('Hogareño'),
('Tecnologia'),
('Gamer'),
('Deporte y vida sana'),
('Viajero'),
('Divertido'),
/* Tecnologia => 2 */
('Televisores'),
('Computacion'),
('Gaming'),
('Celulares'),
('Audifonos'),
('Audio'),
('Videojuegos'),
('Smart home y domotica'),
('Fotografia y video'),
('marca_tecnologia'),
/* Electrohogar => 3 */
('Lavado'),
('Refrigeracion'),
('Cocina'),
('Limpieza'),
('Cuidado de la ropa'),
('Electrodomestica'),
('Climatizacion'),
('Cuidado personal'),
('Industrial'),
('Marcas_electrohogar'),
/* Hogar => 4 */
('Grill'),
('Cocina'),
('Menaje'),
('Organizacion'),
('Decoracion'),
('Baño'),
('Maleteria y Viajes'),
/* Muebles => 5 */
('Sala'),
('Comedor'),
('Oficina y estudio'),
('Dormitorio'),
('Terrazas'),
('Otros espacios'),
/* Dormitorio => 6 */
('Colchones'),
('Cama Box Tarima'),
('Juego de dormitorio'),
('Muebles de dormitorio'),
('Ropa de cama'),
('Dormitorio infantil'),
('Marcas_muebles'),
/* Deporte => 7 */
('Maquina y gimnasio'),
('Bicicletas'),
('Accesorio de deporte'),
('Tiempo libre y camping'),
('Ropa y accesorios'),
/* Infantil => 8 */
('Jugueteria'),
('Escolar'),
('Bebes'),
('Juegos de exterior'),
/* Salud => 9 */
('Cuidado de salud'),
('Salud'),
/* Mejoramiento del hogar => 10 */
('Herramientas electricas'),
('Herramientas manuales'),
('Automotriz'),
('Ferreteria'),
('Pintura y terminaciones'),
('Contruccion'),
/* Motos => 11 */
('Moto de 2 ruedas'),
/* Moda y belleza => 12 */
('Accesorios de moda'),
('Calzado'),
/* Multiservicio => 13 */
('Garantia adicionales'),
('Asistencia'),
('Instalaciones'),
/* Mascota => 14 */
('Accesorios'),
('Cuidado y higiene'),
('Camas y casas'),
/* Supermercado => 15 */
('Cuidado personal'),
/* Remate Total => 16 */
('Remate Celulares'),
('Remate Computo'),
('Remate Deporte'),
('Remate Digital'),
('Remate Hogar'),
('Remate Linea Blanca'),
('Remate Video');



insert into general_categoria values 
/* Estilo de vida => 1 */
(1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(1,6),
(1,7),
/* Tecnologia => 2 */
(2,8),
(2,9),
(2,10),
(2,11),
(2,12),
(2,13),
(2,14),
(2,15),
(2,16),
(2,17),
/* Electrohogar => 3 */
(3,18),
(3,19),
(3,20),
(3,21),
(3,22),
(3,23),
(3,24),
(3,25),
(3,26),
(3,27),
/* Hogar => 4 */
(4,28),
(4,29),
(4,30),
(4,31),
(4,32),
(4,33),
(4,34),
/* Muebles => 5 */
(5,35),
(5,36),
(5,37),
(5,38),
(5,39),
(5,40),
/* Dormitorio => 6 */
(6,41),
(6,42),
(6,43),
(6,44),
(6,45),
(6,46),
(6,47),
/* Deporte => 7 */
(7,48),
(7,49),
(7,50),
(7,51),
(7,52),
/* Infantil => 8 */
(8,53),
(8,54),
(8,55),
(8,56),
/* Salud => 9 */
(9,57),
(9,58),
/* Mejoramiento de hogar => 10 */
(10,59),
(10,60),
(10,61),
(10,62),
(10,63),
(10,64),
/* Motos => 11 */
(11,65),
/* Moda y belleza => 12 */
(12,66),
(12,67),
/* Multiservivio => 13 */
(13,68),
(13,69),
(13,70),
/* Mascota => 14 */
(14,71),
(14,72),
(14,73),
/* Supermercado => 15 */
(15,74),
/* Remate Total => 16 */
(16,75),
(16,76),
(16,77),
(16,78),
(16,79),
(16,80),
(16,81);


insert into subcategoria(subcategoria) values 
/* Estilo ed vida => 1 : Trabajo y estudio en casa => 1 */
('Laptops'),
('All in one'),
('Impresoras y multifuncionales'),
('Tablets'),
('Routes y repetidores'),
('Escritorios'),
('Sillas y escritorios'),
('Estantes y libreros'),
('Accesorios de computo'),
/* Estilo ed vida => 1 : Hogareño => 2 */
('Cocina divertida'),
('Parrilla en familia'),
('Renueva tu cocina'),
('Cuidado de la ropa'),
('Refrigeracion'),
('Decora tu espacio'),
('Descanso perfecto'),
('Limpieza del hofar'),
/* Estilo ed vida => 1 : Tecnologico => 3 */
('Smart home y domotica'),
('Computo'),
('Smartphones'),
('Gadgets'),
('Drones'),
('Power bank y accesorios'),
('Smartwatch & wearables'),
('Tablets'),
/* Estilo ed vida => 1 : Gamer => 4 */
('Accesorios gaming'),
('Consolas'),
('Laptos gamer'),
('Mandos'),
('Monitores gamer'),
('mouse y mousepad gamer'),
('Teclados gamer'),
('Videojuegos'),
('Sillas Gamer'),
/* Estilo ed vida => 1 : Deporte y vida sana => 5 */
('Accesorios de deporte'),
('Bicicletas'),
('Maquinas y gimnasia'),
('Motos'),
('Ropa deportiva'),
/* Estilo ed vida => 1 : Viajero => 6 */
('Camping'),
('Maleteria y accesorios'),
('Fotografia y video'),
('Tablets y kindle'),
('Parlantes bluetooth'),
('Audifonos'),
('Cargadores y accesorios'),
('Drones'),
/* Estilo ed vida => 1 : Divertido => 7 */
('Parrillas, cilindros y cajas chinas'),
('Piscinas y flotadores'),
('Cocina divertida'),
('Juego de mesa'),
('Juego de exterior'),
('Instrumentos musicales'),
('Bicicletas'),
('Audio y karaoke'),
/* =============================== */
/* Tecnologia => 2 : Televisores => 1 */
('Smart TV'),
('OLED'),
('NANOCELL'),
('QLED'),
('Soundbars y home theaters'),
('Convertidor de Smart a TV'),
('Accesorios de TV'),
('Rocks'),
/* Tecnologia => 2 : Computacion => 2 */
('Laptops'),
('Computadoras de escritorio'),
('All in one'),
('Monitores y proyectores'),
('Tablets y tabletas graficas'),
('Impresoras y multifuncionales'),
('tintas y toners'),
('Accesorios de computacion'),
('Software'),
/* Tecnologia => 2 : Gaming => 3 */
('Laptops gamer'),
('Monitores gamer'),
('Audifonos gamer'),
('Mouse y mousepad gamer'),
('Teclados gamer'),
('Coolers'),
('Sillas gamer'),
('Arma tu PC'),
('Otros accesorios gamer'),
/* Tecnologia => 2 : Celulares => 4 */
('Celulares y smartphones'),
('Smartwatch'),
('Audifonos'),
('Cargadores y cables'),
('Baterias externas'),
('Parlantes'),
('Carcasas y laminas'),
('Accesorios de celulares'),
/* Tecnologia => 2 : Audifonos => 5 */
('True Wireless'),
('In ear'),
('On ear'),
('Over ear'),
('Deportivos'),
/* Tecnologia => 2 : Audio => 6 */
('Equipos de sonido'),
('Parlantes bluetooth'),
('Torres de sonido'),
('Soundbars  y home theaters'),
('Audio profesional'),
('Instrumentos musicales'),
('Autoradios'),
('Accesorios de audio'),
/* Tecnologia => 2 : Videojuegos => 7 */
('Consolas'),
('Play Station'),
('Nintendo'),
('Juegos'),
('Mandos'),
('Accesorios de videojuegos'),
/* Tecnologia => 2 : Smart home y domotica => 8 */
('Asistente de voz'),
('Aspiradora robot'),
('Iluminacion inteligente'),
('Interruptor y enchufes inteligentes'),
('seguridad inteligente'),
('Streming'),
('Routes y conexion inalambricas'),
('Nuevos dispositivos inteligentes'),
/* Tecnologia => 2 : Fotografia y video => 9 */
('Camaras semiprofesionales'),
('Drones'),
('Camaras compactas'),
('Camaras de video'),
('Camaras instantaneas y retro'),
('Camaras acuaticas'),
('Lentes y accesorios'),
('Tarjetas de momeria'),
/* Tecnologia => 2 : Marca_tecnologia => 10 */
('Apple'),
('LG'),
('Samsung'),
('JBL'),
('HP'),
('Lenovo'),
('Xiaomi'),
('Asus'),
('Google'),
('Acer'),
/* ======================================== */
/* Electrohogar => 3 : Lavado => 1 */
('Lavadoras'),
('Secadoras'),
('Lavasecas'),
('Centro  de lavado'),
('Lavavajillas'),
('Hidrolavadores'),
/* Electrohogar => 3 : Refrigeracion => 2 */
('Refrigeradoras'),
('Congeladoras'),
('Frigobares y vinera'),
('Exhibidoras y vitrinas'),
('Dispensadores y purificadores de agua'),
/* Electrohogar => 3 : Cocina => 3 */
('Cocinas de pie'),
('Cocinas empotrables'),
('Cocinas de mesa'),
('Campanas'),
('Hornos empotrables'),
('Combos de cocina'),
('Lavavajillas'),
('Microondas'),
('Hornos electricos'),
/* Electrohogar => 3 : Limpieza => 4 */
('Aspiradoras'),
('Aspiradoras de robot'),
('Lustradoras'),
('Hidrolavadoras'),
('Otros'),
/* Electrohogar => 3 : Cuidado de la ropa => 5 */
('Maquinas de cocer'),
('Planchas'),
('Planchador'),
/* Electrohogar => 3 : Electrodomesticos => 6 */
('Licuadoras'),
('Freidoras de aire'),
('Ollas arroceras'),
('Batidoras'),
('Cafeteras y Hervidores'),
('Tostadoras y sandwicheras'),
('Extractores y exprimidores'),
('Cocina entretenida'),
('Combos'),
/* Electrohogar => 3 : Climatizacion => 7 */
('Termas y calentadores'),
('Ventiladores'),
('Aires acondicionados'),
('Deshumedecedores'),
('Purificadores de aire'),
('Calefaccion'),
/* Electrohogar => 3 : Cuidado personal => 8 */
('Secadoras de pelo'),
('Alisadoras y onduladoras'),
('Depiladoras'),
('Afeitadoras y cortadores de pelo'),
('Bienestar y salud'),
/* Electrohogar => 3 : Industrial => 9 */
('Exhibidoras y vitrinas'),
('Congeladoras y conservadoras'),
('Equipos de produccion'),
('Equipos complementarios'),
/* Electrohogar => 3 : Marca_electrohogar => 10 */
('Band'),
('Samsung'),
('LG'),
('Indurama'),
('Mabe'),
('Electrolux'),
('Bosch'),
('Oster'),
('Imaco'),
/* ======================================== */
/* Hogar => 4 : Grill => 1 */
('Grill'),
('Parrillas'),
('Cajas chinas'),
('Kamados'),
('Cilindros'),
('Accesorios de parrilla'),
/* Hogar => 4 : Cocina => 2 */
('Juegos de olla'),
('Sartenes y works'),
('Termos y teteras'),
('Utensilios de cocina'),
('Lavaderos'),
('Mezcladora DJ'),
/* Hogar => 4 : Menaje => 3 */
('Vajillas'),
('Cubiertos'),
('Vasos y copas'),
('Organizadores y contenedores'),
('Accesorios de mesa'),
/* Hogar => 4 : Organizacion => 4 */
('Canastas y cesto'),
('Mesa y auxiliares'),
('Gabinetes'),
/* Hogar => 4 : Decoracion => 5 */
('Espejos'),
('Cojines'),
('Cortinas'),
('Alfombras'),
('Iluminacion'),
/* Hogar => 4 : Baño => 6 */
('Toallas'),
('Tendederos'),
('Accesorios de baño'),
/* Hogar => 4 : Maleteria y Viajes => 7 */
('Maleta de cabina'),
('Maleta de viaje'),
('Mochila outdoors'),
/* ======================================== */
/* Muebles => 5 : Sala => 1 */
('Seccionales'),
('Juegos de sala'),
('Sillones reclinables'),
('Futones y Sofa Cama'),
('Mesas de Centro y Complementos'),
('Centros de entretenimiento'),
('Paneles'),
('Mesas de TV'),
('Rocks de TV'),
/* Muebles => 5 : Comedor => 2 */
('Juegos de Comedor'),
('Sillas de Comedor'),
('Mesas de Comedor'),
('Bares'),
('Bancos de Bar'),
('Aparadores y Vitrinas'),
/* Muebles => 5 : Oficina y estudio => 3 */
('Escritorios'),
('Estantes y Libreros'),
('Sillas de escritorio'),
('Sillas Gamers'),
/* Muebles => 5 : Dormitorio => 4 */
('Cabeceras'),
('Roperos'),
('Veladeros'),
('Comodas y Tocadores'),
('Zapateros'),
('Organizadores'),
/* Muebles => 5 : Terrazas => 5 */
('Comedor y sillas'),
('Accesorios de terrazas'),
/* Muebles => 5 : Otros espacios => 6 */
('Muebles de baño'),
('Muebles de cocina'),
/* ======================================== */
/* Dormitorio => 6 :  => 1 */
('King'),
('Queen'),
('2 Plazas'),
('1.5 Plazas'),
('1 Plaza'),
('Infantil'),
/* Dormitorio => 6 :  => 2 */
('King'),
('Queen'),
('2 Plazas'),
('1.5 Plazas'),
/* Dormitorio => 6 :  => 3 */
('King'),
('Queen'),
('2 Plazas'),
('1.5 Plazas'),
/* Dormitorio => 6 :  => 4 */
('Cabezeras'),
('Roperos'),
('Veladores'),
('Comodas y tocadores'),
('Zapateras'),
/* Dormitorio => 6 :  => 5 */
('Sabanas y fundas de almohadas'),
('Edredones y plumas'),
('Cubrecamas'),
('Frazadas y mantas'),
('Almohadas y protectores'),
('Cojines y accesorios'),
/* Dormitorio => 6 :  => 6 */
('Cunas y cama para niños'),
/* Dormitorio => 6 :  => 7 */
('Paraiso'),
('El Cisne'),
('Foril'),
/* ======================================== */
/* Deporte => 7 : Maquinas de gimnasio => 1 */
('Trotadoras'),
('Elipticas'),
('Bicicletas estacionarias'),
('Bancas'),
('Gimnasios'),
/* Deporte => 7 : Bicicletas => 2 */
('Bicicletas de niños'),
('Bicicletas de paseo'),
('Bicicletas montañeras'),
('Bicicletas electricas'),
('Scooters electricos'),
('Accesorios de bicicletas'),
/* Deporte => 7 : Accesorios de deporte => 3 */
('Pesas y mancuerdas'),
('Gimnasia'),
('Aerobicos'),
('Yoga'),
('Boxeo'),
('Accesorios de proteccion'),
/* Deporte => 7 : Tiempo libre y camping => 4 */
('Carpas'),
('Sacos de dormir'),
('Colchones inflables'),
('Coolers'),
('Mochilas outdoors'),
('Piscinas e inflables'),
('Accesorios de camping'),
('Juegos de exterior'),
/* Deporte => 7 : Ropa y accesorios => 5 */
('Ropa deportiva'),
('Mochila y accesorios'),
('Zapatillas'),
/* ======================================== */
/* Infantil => 8 : Juegueteria => 1 */
('Coleccionables y funkos'),
('Muñecas y accesorios'),
('Figuras de accion'),
('Autos y pistas'),
('Juegos de mesa'),
('Organizacion y didacticos'),
('Legos y armables'),
('Pre-escolar'),
/* Infantil => 8 : Escolar => 2 */
('Mochilas'),
('Tomatodos'),
('Loncheras y tapers'),
/* Infantil => 8 : Bebes => 3 */
('Lactancia'),
('Coches'),
('Sillas de auto'),
('Cunas y corrales'),
('Sillas de comer'),
('Gimnasios y centro de actividades'),
('Accesirios de bebes'),
('Triciclos andadores y correpasillos'),
/* Infantil => 8 : Juegos de exterior => 4 */
('Inflables'),
('Scooters y patines'),
('Bicicletas infantiles'),
('Piscinas y juegos de agua'),
/* ======================================== */
/* Salud => 9 : Cuidado de salud => 1 */
('Oximetros'),
('Termometros'),
('Fajas'),
('Mascarillas'),
/* Salud => 9 : Salud => 2 */
('Equipos medicos'),
('Balanzas'),
('Concentradores de Oxigeno'),
('Masajeadores'),
/* ======================================== */
/* Mejoramiento del hogar => 10 : Herramientas electricas => 1 */
('Taladro'),
('Atornilladores'),
('Sierra circular'),
('Pulidoras y lijadoras'),
('Amoladora y esmeriles'),
('Rotomartillo y demoledores'),
('Tronzadora'),
('Soplador'),
/* Mejoramiento del hogar => 10 : Herramientas manuales => 2 */
('Desarmadores'),
('Alicates'),
('Set de herramientas'),
('Herramientas de medicion'),
/* Mejoramiento del hogar => 10 : Automotriz => 3 */
('Baterias'),
('Audio y video'),
('Limpieza para autos'),
('Accesorios'),
/* Mejoramiento del hogar => 10 : Ferreteria => 4 */
('Iluminacion'),
('Gasfiteria'),
('Jardineria'),
('Seguridad y EPPS'),
/* Mejoramiento del hogar => 10 : Pinturas y terminaciones => 5 */
('Escaleras'),
/* Mejoramiento del hogar => 10 : Construcciones => 6 */
('Materiales de construccion'),
('Herramientas de construccion'),
('Maderas y tableros'),
/* ======================================== */
/* Motos => 11 : Motos de 2 ruedas => 1 */
/* Nada */
/* ======================================== */
/* Moda y belleza => 12 : Accesorios de moda => 1 */
('Carteras y mochilas'),
('Relojes'),
('Billeteras'),
/* Moda y belleza => 12 : Calzado => 2 */
('Zapatos'),
('Zapatillas'),
('Botas y botines'),
/* ======================================== */
/* Multiservicio => 13 : Garantias adicionales => 1 */
('Audio'),
('Computo'),
('Digital'),
('Linea Blanca'),
('Pequeños electrodomesticos'),
('Televisores'),
/* Multiservicio => 13 : Asistencia => 2 */
('Servicios de asistencia para el hogar'),
('Servicios de asistencia tecnologicas'),
('Servicios para smartphone'),
/* Multiservicio => 13 : Intalaciones => 3 */
('Instalacion de linea blanca'),
('Instalacion de racks'),
/* ======================================== */
/* Mascota => 14 : Accesorios => 1 */
/* Nada */
/* Mascota => 14 : Cuidado e Higiene => 2 */
/* Nada */
/* Mascota => 14 : Camas y Casas => 3 */
/* Nada */
/* ======================================== */
/* Supermercado => 15 : Cuidado Personal => 1 */
('Aseo Personal');
/* ======================================== */
/* Remate Total => 16 : Cuidado Personal => 1 */
/* Nada */
use efe;
select * from categoria;
insert into categoria_subcategoria values 
/* Estilo ed vida => 1  */
(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),
(2,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),
(3,18),(3,19),(3,20),(3,21),(3,22),(3,23),(3,24),(3,25),
(4,26),(4,27),(4,28),(4,29),(4,30),(4,31),(4,32),(4,33),(4,34),
(5,35),(5,36),(5,37),(5,38),(5,39),
(6,40),(6,41),(6,42),(6,43),(6,44),(6,45),(6,46),(6,47),
(7,48),(7,49),(7,50),(7,51),(7,52),(7,53),(7,54),(7,55),
/* Tecnologia => 2  */
(8,56),(8,57),(8,58),(8,59),(8,60),(8,61),(8,62),(8,63),
(9,64),(9,65),(9,66),(9,67),(9,68),(9,69),(9,70),(9,71),(9,72),
(10,73),(10,74),(10,75),(10,76),(10,77),(10,78),(10,79),(10,80),(10,81),
(11,82),(11,83),(11,84),(11,85),(11,86),(11,87),(11,88),(11,89),
(12,90),(12,91),(12,92),(12,93),(12,94),
(13,95),(13,96),(13,97),(13,98),(13,99),(13,100),(13,101),(13,102),
(14,103),(14,104),(14,105),(14,106),(14,107),(14,108),
(15,109),(15,110),(15,111),(15,112),(15,113),(15,114),(15,115),(15,116),
(16,117),(16,118),(16,119),(16,120),(16,121),(16,122),(16,123),(16,124),
(17,125),(17,126),(17,127),(17,128),(17,129),(17,130),(17,131),(17,132),(17,133),(17,134),
/* Electrohogar => 3  */
(18,135),(18,136),(18,137),(18,138),(18,139),(18,140),
(19,141),(19,142),(19,143),(19,144),(19,145),
(20,146),(20,147),(20,148),(20,149),(20,150),(20,151),(20,152),(20,153),(20,154),
(21,155),(21,156),(21,157),(21,158),(21,159),
(22,160),(22,161),(22,162),
(23,163),(23,164),(23,165),(23,166),(23,167),(23,168),(23,169),(23,170),(23,171),
(24,172),(24,173),(24,174),(24,175),(24,176),(24,177),
(25,178),(25,179),(25,180),(25,181),(25,182),
(26,183),(26,184),(26,185),(26,186),
(27,187),(27,188),(27,189),(27,190),(27,191),(27,192),(27,193),(27,194),(27,195),
/* Hogar => 4  */
(28,196),(28,197),(28,198),(28,199),(28,200),(28,201),
(29,202),(29,203),(29,204),(29,205),(29,206),(29,207),
(30,208),(30,209),(30,210),(30,211),(30,212),
(31,213),(31,214),(31,215),
(32,216),(32,217),(32,218),(32,219),(32,220),
(33,221),(33,222),(33,223),
(34,224),(34,225),(34,226), 
/* Muebles => 5  */
(35,227),(35,228),(35,229),(35,230),(35,231),(35,232),(35,233),(35,234),(35,235),
(36,236),(36,237),(36,238),(36,239),(36,240),(36,241),
(37,242),(37,243),(37,244),(37,245),
(38,246),(38,247),(38,248),(38,249),(38,250),(38,251),
(39,252),(39,253),
(40,254),(40,255),
/* Dormitorio => 6  */
(41,256),(41,257),(41,258),(41,259),(41,260),(41,261),
(42,262),(42,263),(42,264),(42,265),
(43,266),(43,267),(43,268),(43,269),
(44,270),(44,271),(44,272),(44,273),(44,274),
(45,275),(45,276),(45,277),(45,278),(45,279),(45,280),
(46,281),
(47,282),(47,283),(47,284),
/* Deporte => 7  */
(48,285),(48,286),(48,287),(48,288),(48,289),
(49,290),(49,291),(49,292),(49,293),(49,294),(49,295),
(50,296),(50,297),(50,298),(50,299),(50,300),(50,301),
(51,302),(51,303),(51,304),(51,305),(51,306),(51,307),(51,308),(51,309),
(52,310),(52,311),(52,312),
/* Infantil => 8  */
(53,313),(53,314),(53,315),(53,316),(53,317),(53,318),(53,319),(53,320),
(54,321),(54,322),(54,323),
(55,324),(55,325),(55,326),(55,327),(55,328),(55,329),(55,330),(55,331),
(56,332),(56,333),(56,334),(56,335),
/* Salud => 9  */
(57,336),(57,337),(57,338),(57,339),
(58,340),(58,341),(58,342),(58,343),
/* Mejoramiento del hogar => 10 */
(59,344),(59,345),(59,346),(59,347),(59,348),(59,349),(59,350),(59,351),
(60,352),(60,353),(60,354),(60,355),
(61,356),(61,357),(61,358),(61,359),
(62,360),(62,361),(62,362),(62,363),
(63,364),
(64,365),(64,366),(64,367),
/* Motos => 11 */
/* Nada */
/* Moda y belleza => 12 */
(65,368),(65,369),(65,370),
(66,371),(66,372),(66,373),
/* Multiservicio => 13 */
(67,374),(67,375),(67,376),(67,377),(67,378),(67,379),
(68,380),(68,381),(68,382),
(69,383),(69,384),
/* mascota => 14 */
/* Nada */
/* Supermercado => 15 */
(74,385);
/* Remate total => 16 */
/* Nada */






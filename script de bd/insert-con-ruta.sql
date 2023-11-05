INSERT INTO `categorias` (`nombre`, `parent_id`, `ruta`) VALUES
('estilo de vida',null,'estilo-de-vida'),
('tecnologia',null,'tecnologia'),
('electrohogar',null,'electrohogar'),
('hogar',null,'hogar'),
('muebles',null,'muebles'),
('dormitorio',null,'dormitorio'),
('deporte',null,'deporte'),
('infantil',null,'infantil'),
('salud',null,'salud'),
('mejoramiento del hogar',null,'mejoramiento-del-hogar'),
('motos',null,'motos'),
('moda y belleza',null,'moda-y-belleza'),
('multiservicio',null,'multiservicio'),
('mascota',null,'mascota'),
('supermercado',null,'supermercado'),
('remate total',null,'remate-total');


/* Estilo de vida => 1*/
INSERT INTO `categorias` (`nombre`, `parent_id`,`ruta`) VALUES 
('trabajo y estudio en casa',1,'estilo-de-vida/trabajo-y-estudio-en-casa'),
('hogareño',1,'estilo-de-vida/hogareño'),
('tecnologia',1,'estilo-de-vida/tecnologia'),
('gamer',1,'estilo-de-vida/gamer'),
('deporte y vida sana',1,'estilo-de-vida/deporte-y-vida-sana'),
('viajero',1,'estilo-de-vida/viajero'),
('divertido',1,'estilo-de-vida/divertido'),
/* Tecnologia => 2*/
('televisores',2,'tecnologia/televisores'),
('computacion',2,'tecnologia/computacion'),
('gaming',2,'tecnologia/gaming'),
('celulares',2,'tecnologia/celulares'),
('audifonos',2,'tecnologia/audifonos'),
('audio',2,'tecnologia/audio'),
('videojuegos',2,'tecnologia/videojuegos'),
('smart home y domotica',2,'tecnologia/smart-home-y-domotica'),
('fotografia y video',2,'tecnologia/fotografia-y-video'),
('marcas',2,'tecnologia/marcas'),
/* Electrohogar => 3*/
('lavado',3,'electrohogar/lavado'),
('refrigeracion',3,'electrohogar/refrigeracion'),
('cocina',3,'electrohogar/cocina'),
('limpieza',3,'electrohogar/limpieza'),
('cuidado de la ropa',3,'electrohogar/cuidado-de-la-ropa'),
('electrodomesticos',3,'electrohogar/electrodomesticos'),
('climatizacion',3,'electrohogar/climatizacion'),
('cuidado personal',3,'electrohogar/cuidado-personal'),
('industrial',3,'electrohogar/industrial'),
('marcas',3,'electrohogar/marcas'),
/* Hogar => 4*/
('grill',4,'hogar/grill'),
('cocina',4,'hogar/cocina'),
('menaje',4,'hogar/menaje'),
('organizacion',4,'hogar/organizacion'),
('decoracion',4,'hogar/decoracion'),
('baño',4,'hogar/baño'),
('maleteria y viajes',4,'hogar/maleteria-y-viajes'),
/* Muebles => 5*/
('sala',5,'muebles/sala'),
('comedor',5,'muebles/comedor'),
('oficina y estudio',5,'muebles/oficina-y-estudio'),
('dormitorio',5,'muebles/dormitorio'),
('terrazas',5,'muebles/terrazas'),
('otros espacios',5,'muebles/otros-espacios'),
/* Dormitorio => 6*/
('colchones',6,'dormitorio/colchones'),
('cama box tarima',6,'dormitorio/cama-box-tarima'),
('juego de dormitorio',6,'dormitorio/juego-de-dormitorio'),
('muebles de dormitorio',6,'dormitorio/muebles-de-dormitorio'),
('ropa de cama',6,'dormitorio/ropa-de-cama'),
('dormitorio infantil',6,'dormitorio/dormitorio-infantil'),
('marcas muebles',6,'dormitorio/marcas-muebles'),
/* Deporte => 7 */
('maquina y gimnasio',7,'deporte/maquina-gimnasio'),
('bicicletas',7,'deporte/bicicleta'),
('accesorio de deporte',7,'deporte/accesorio-de-deporte'),
('tiempo libre y camping',7,'deporte/tiempo-libre-y-camping'),
('ropa y accesorios',7,'deporte/ropa-y-accesorios'),
/* Infantil => 8 */
('jugueteria',8,'infantil/juegueteria'),
('escolar',8,'infantil/escolar'),
('bebes',8,'infantil/bebes'),
('juegos de exterior',8,'infantil/juegos-de-exterior'),
/* Salud => 9 */
('cuidado de salud',9,'salud/cuidado-de-salud'),
('salud',9,'salud/salud'),
/* Mejoramiento del hogar => 10 */
('herramientas electricas',10,'mejoramiento-del-hogar/herramientas-electricas'),
('herramientas manuales',10,'mejoramiento-del-hogar/herramientas-manuales'),
('automotriz',10,'mejoramiento-del-hogar/automotriz'),
('ferreteria',10,'mejoramiento-del-hogar/ferreteria'),
('pintura y terminaciones',10,'mejoramiento-del-hogar/pintura-y-terminaciones'),
('construccion',10,'mejoramiento-del-hogar/construccion'),
/* Motos => 11 */
('moto de 2 ruedas',11,'motos/moto-de-2-ruedas'),
/* Moda y belleza => 12 */
('accesorios de moda',12,'mode-y-belleza/accesorios-de-moda'),
('calzado',12,'mode-y-belleza/calzado'),
/* Multiservicio => 13 */
('garantia adicionales',13,'multiservicio/garantia-adicionales'),
('asistencia',13,'multiservicio/asistencia'),
('instalaciones',13,'multiservicio/instalaciones'),
/* Mascota => 14 */
('accesorios',14,'mascota/accesorios'),
('cuidado y higiene',14,'mascota/cuidado-y-higiene'),
('camas y casas',14,'mascota/camas-y-casas'),
/* Supermercado => 15 */
('cuidado personal',15,'supermercado/cuidado-personal'),
/* Remate Total => 16 */
('remate celulares',16,'remate-total/ramate-celulares'),
('remate computo',16,'remate-total/ramate-computo'),
('remate deporte',16,'remate-total/ramate-deporte'),
('remate digital',16,'remate-total/ramate-digital'),
('remate hogar',16,'remate-total/ramate-hogar'),
('remate linea blanca',16,'remate-total/ramate-linea-blanca'),
('remate video',16,'remate-total/ramate-video');



/*Subcategorias*/
INSERT INTO `categorias` (`nombre`, `parent_id`,`ruta`) VALUES 
/* Estilo de vida => 1, Trabajo y estudio en casa => 17 */
('laptops',17,'estilo-de-vida/trabajo-y-estudio-en-casa/laptops'),
('all in one',17,'estilo-de-vida/trabajo-y-estudio-en-casa/all-in-one'),
('impresoras y multifuncionales',17,'estilo-de-vida/trabajo-y-estudio-en-casa/impresoras-y-multifuncionales'),
('tablets',17,'estilo-de-vida/trabajo-y-estudio-en-casa/tablets'),
('routes y repetidores',17,'estilo-de-vida/trabajo-y-estudio-en-casa/routes-y-repetidores'),
('escritorios',17,'estilo-de-vida/trabajo-y-estudio-en-casa/escritorios'),
('sillas y escritorios',17,'estilo-de-vida/trabajo-y-estudio-en-casa/sillas-y-escritorios'),
('estantes y libreros',17,'estilo-de-vida/trabajo-y-estudio-en-casa/estantes-y-libreros'),
('accesorios de computo',17,'estilo-de-vida/trabajo-y-estudio-en-casa/accesorios-de-computo'),
/* Estilo ed vida => 1 : Hogareño => 18 */
('cocina divertida',18,'estilo-de-vida/hogareño/cocina-divertida'),
('parrilla en familia',18,'estilo-de-vida/hogareño/parrilla-en-familia'),
('renueva tu cocina',18,'estilo-de-vida/hogareño/renueva-tu-cocina'),
('cuidado de la ropa',18,'estilo-de-vida/hogareño/cuidado-de-la-ropa'),
('refrigeracion',18,'estilo-de-vida/hogareño/refrigeracion'),
('decora tu espacio',18,'estilo-de-vida/hogareño/decora-tu-espacio'),
('descanso perfecto',18,'estilo-de-vida/hogareño/descanso-perfecto'),
('limpieza del hogar',18,'estilo-de-vida/hogareño/limpieza-del-hogar'),
/* Estilo ed vida => 1 : Tecnologico => 19 */
('smart home y domotica',19, 'estilo-de-vida/tecnologia/smart-home-y-domotica'),
('computo',19, 'estilo-de-vida/tecnologia/computo'),
('smartphones',19, 'estilo-de-vida/tecnologia/smartphones'),
('gadgets',19, 'estilo-de-vida/tecnologia/gadgets'),
('drones',19, 'estilo-de-vida/tecnologia/drones'),
('power bank y accesorios',19, 'estilo-de-vida/tecnologia/power-bank-y-accesorios'),
('smartwatch & wearables',19, 'estilo-de-vida/tecnologia/smartwatch-&-wearables'),
('tablets',19, 'estilo-de-vida/tecnologia/tablets'),
/* Estilo ed vida => 1 : Gamer => 20 */
('accesorios gaming',20,'estilo-de-vida/gamer/accesorios-gaming'),
('consolas',20,'estilo-de-vida/gamer/consolas'),
('laptos gamer',20,'estilo-de-vida/gamer/laptos-gamer'),
('mandos',20,'estilo-de-vida/gamer/mandos'),
('monitores gamer',20,'estilo-de-vida/gamer/monitores-gamer'),
('mouse y mousepad gamer',20,'estilo-de-vida/gamer/mouse-y-mousepad-gamer'),
('teclados gamer',20,'estilo-de-vida/gamer/teclados-gamer'),
('videojuegos',20,'estilo-de-vida/gamer/videojuegos'),
('sillas gamer',20,'estilo-de-vida/gamer/sillas-gamer'),
/* Estilo ed vida => 1 : Deporte y vida sana => 21 */
('accesorios de deporte',21,'estilo-de-vida/deporte-y-vida-sana/accesorios-de-deporte'),
('bicicletas',21,'estilo-de-vida/deporte-y-vida-sana/bicicletas'),
('maquinas y gimnasia',21,'estilo-de-vida/deporte-y-vida-sana/maquinas-y-gimnasia'),
('motos',21,'estilo-de-vida/deporte-y-vida-sana/motos'),
('ropa deportiva',21,'estilo-de-vida/deporte-y-vida-sana/ropa-deportiva'),
/* Estilo ed vida => 1 : Viajero => 22 */
('camping',22,'estilo-de-vida/viajero/camping'),
('maleteria y accesorios',22,'estilo-de-vida/viajero/maleteria-y-accesorios'),
('fotografia y video',22,'estilo-de-vida/viajero/fotografia-y-video'),
('tablets y kindle',22,'estilo-de-vida/viajero/tablets-y-kindle'),
('parlantes bluetooth',22,'estilo-de-vida/viajero/parlantes-bluetooth'),
('audifonos',22,'estilo-de-vida/viajero/audifonos'),
('cargadores y accesorios',22,'estilo-de-vida/viajero/cargadores-y-accesorios'),
('drones',22,'estilo-de-vida/viajero/drones'),
/* Estilo ed vida => 1 : Divertido => 23 */
('parrillas cilindros y cajas chinas',23,'estilo-de-vida/divertido/parrillas-cilindros-y-cajas-chinas'),
('piscinas y flotadores',23,'estilo-de-vida/divertido/piscinas-y-flotadores'),
('cocina divertida',23,'estilo-de-vida/divertido/cocina-divertida'),
('juego de mesa',23,'estilo-de-vida/divertido/juego-de-mesa'),
('juego de exterior',23,'estilo-de-vida/divertido/juego-de-exterior'),
('instrumentos musicales',23,'estilo-de-vida/divertido/instrumentos-musicales'),
('bicicletas',23,'estilo-de-vida/divertido/bicicletas'),
('audio y karaoke',23,'estilo-de-vida/divertido/audio-y-karaoke'),
/* =============================== */
/* Tecnologia => 2 : Televisores => 24 */
('Smart TV',24,'tecnologia/televisores/smart-tv'),
('OLED',24,'tecnologia/televisores/oled'),
('NANOCELL',24,'tecnologia/televisores/nanocell'),
('QLED',24,'tecnologia/televisores/qled'),
('Soundbars y home theaters',24,'tecnologia/televisores/Soundbars-y-home-theaters'),
('Convertidor de Smart a TV',24,'tecnologia/televisores/convertidor-de-smart-a-tv'),
('Accesorios de TV',24,'tecnologia/televisores/accesorios-de-tv'),
('Rocks',24,'tecnologia/televisores/rocks'),
/* Tecnologia => 2 : Computacion => 25 */
('laptops',25,'tecnologia/computacion/laptops'),
('computadoras de escritorio',25,'tecnologia/computacion/computadoras-de-escritorio'),
('all in one',25,'tecnologia/computacion/all-in-one'),
('monitores y proyectores',25,'tecnologia/computacion/monitores-y-proyectores'),
('tablets y tabletas graficas',25,'tecnologia/computacion/tablets-y-tabletas-graficas'),
('impresoras y multifuncionales',25,'tecnologia/computacion/impresoras-y-multifuncionales'),
('tintas y toners',25,'tecnologia/computacion/tintas-y-toners'),
('accesorios de computacion',25,'tecnologia/computacion/accesorios-de-computacion'),
('software',25,'tecnologia/computacion/software'),
/* Tecnologia => 2 : Gaming => 26 */
('laptops gamer',26,'tecnologia/gaming/laptops-gamer'),
('monitores gamer',26,'tecnologia/gaming/monitores-gamer'),
('audifonos gamer',26,'tecnologia/gaming/audifonos-gamer'),
('mouse y mousepad gamer',26,'tecnologia/gaming/mouse-y-mousepad-gamer'),
('teclados gamer',26,'tecnologia/gaming/teclados-gamer'),
('coolers',26,'tecnologia/gaming/coolers'),
('sillas gamer',26,'tecnologia/gaming/sillas-gamer'),
('arma tu pc',26,'tecnologia/gaming/arma-tu-pc'),
('otros accesorios gamer',26,'tecnologia/gaming/otros-accesorios-gamer'),
/* Tecnologia => 2 : Celulares => 27 */
('celulares y smartphones',27,'tecnologia/celulares/celulares-y-smartphones'),
('smartwatch',27,'tecnologia/celulares/smartwatch'),
('audifonos',27,'tecnologia/celulares/audifonos'),
('cargadores y cables',27,'tecnologia/celulares/cargadores-y-cables'),
('baterias externas',27,'tecnologia/celulares/baterias-externas'),
('parlantes',27,'tecnologia/celulares/parlantes'),
('carcasas y laminas',27,'tecnologia/celulares/carcasas-y-laminas'),
('accesorios de celulares',27,'tecnologia/celulares/accesorios-de-celulares'),
/* Tecnología => 2 : Audífonos => 28 */
('true wireless', 28, 'tecnologia/audifonos/true-wireless'),
('in ear', 28, 'tecnologia/audifonos/in-ear'),
('on ear', 28, 'tecnologia/audifonos/on-ear'),
('over ear', 28, 'tecnologia/audifonos/over-ear'),
('deportivos', 28, 'tecnologia/audifonos/deportivos'),
/* Tecnología => 2 : Audio => 29 */
('equipos de sonido', 29, 'tecnologia/audio/equipos-de-sonido'),
('parlantes bluetooth', 29, 'tecnologia/audio/parlantes-bluetooth'),
('torres de sonido', 29, 'tecnologia/audio/torres-de-sonido'),
('soundbars y home theaters', 29, 'tecnologia/audio/soundbars-y-home-theaters'),
('audio profesional', 29, 'tecnologia/audio/audio-profesional'),
('instrumentos musicales', 29, 'tecnologia/audio/instrumentos-musicales'),
('autoradios', 29, 'tecnologia/audio/autoradios'),
('accesorios de audio', 29, 'tecnologia/audio/accesorios-de-audio'),
/* Tecnologia => 2 : Videojuegos => 30 */
('consolas', 30, 'tecnologia/videojuegos/consolas'),
('play station', 30, 'tecnologia/videojuegos/play-station'),
('nintendo', 30, 'tecnologia/videojuegos/nintendo'),
('juegos', 30, 'tecnologia/videojuegos/juegos'),
('mandos', 30, 'tecnologia/videojuegos/mandos'),
('accesorios de videojuegos', 30, 'tecnologia/videojuegos/accesorios-de-videojuegos'),
/* Tecnologia => 2 : Smart home y domotica => 31 */
('asistente de voz', 31, 'tecnologia/smart-home-y-domotica/asistente-de-voz'),
('aspiradora robot', 31, 'tecnologia/smart-home-y-domotica/aspiradora-robot'),
('iluminación inteligente', 31, 'tecnologia/smart-home-y-domotica/iluminacion-inteligente'),
('interruptor y enchufes inteligentes', 31, 'tecnologia/smart-home-y-domotica/interruptor-y-enchufes-inteligentes'),
('seguridad inteligente', 31, 'tecnologia/smart-home-y-domotica/seguridad-inteligente'),
('streaming', 31, 'tecnologia/smart-home-y-domotica/streaming'),
('routers y conexión inalámbrica', 31, 'tecnologia/smart-home-y-domotica/routers-y-conexion-inalambrica'),
('nuevos dispositivos inteligentes', 31, 'tecnologia/smart-home-y-domotica/nuevos-dispositivos-inteligentes'),

/* tecnologia => 2 : Fotografía y video => 32 */
('cámaras semiprofesionales', 32, 'tecnologia/fotografia-y-video/camaras-semiprofesionales'),
('drones', 32, 'tecnologia/fotografia-y-video/drones'),
('cámaras compactas', 32, 'tecnologia/fotografia-y-video/camaras-compactas'),
('cámaras de video', 32, 'tecnologia/fotografia-y-video/camaras-de-video'),
('cámaras instantáneas y retro', 32, 'tecnologia/fotografia-y-video/camaras-instantaneas-y-retro'),
('cámaras acuáticas', 32, 'tecnologia/fotografia-y-video/camaras-acuaticas'),
('lentes y accesorios', 32, 'tecnologia/fotografia-y-video/lentes-y-accesorios'),
('tarjetas de memoria', 32, 'tecnologia/fotografia-y-video/tarjetas-de-memoria'),

/* tecnologia => 2 : Marca tecnología => 33 */
('Apple', 33, 'tecnologia/marca-tecnologia/apple'),
('LG', 33, 'tecnologia/marca-tecnologia/lg'),
('Samsung', 33, 'tecnologia/marca-tecnologia/samsung'),
('JBL', 33, 'tecnologia/marca-tecnologia/jbl'),
('HP', 33, 'tecnologia/marca-tecnologia/hp'),
('Lenovo', 33, 'tecnologia/marca-tecnologia/lenovo'),
('Xiaomi', 33, 'tecnologia/marca-tecnologia/xiaomi'),
('Asus', 33, 'tecnologia/marca-tecnologia/asus'),
('Google', 33, 'tecnologia/marca-tecnologia/google'),
('Acer', 33, 'tecnologia/marca-tecnologia/acer'),

/* ======================================== */
/* Electrohogar => 3 : Lavado => 34 */
('Lavadoras', 34, 'electrohogar/lavado/lavadoras'),
('Secadoras', 34, 'electrohogar/lavado/secadoras'),
('Lavasecas', 34, 'electrohogar/lavado/lavasecas'),
('Centro de lavado', 34, 'electrohogar/lavado/centro-de-lavado'),
('Lavavajillas', 34, 'electrohogar/lavado/lavavajillas'),
('Hidrolavadoras', 34, 'electrohogar/lavado/hidrolavadoras'),

/* electrohogar => 3 : Refrigeración => 35 */
('Refrigeradoras', 35, 'electrohogar/refrigeracion/refrigeradoras'),
('Congeladoras', 35, 'electrohogar/refrigeracion/congeladoras'),
('Frigobares y vineras', 35, 'electrohogar/refrigeracion/frigobares-y-vineras'),
('Exhibidoras y vitrinas', 35, 'electrohogar/refrigeracion/exhibidoras-y-vitrinas'),
('Dispensadores y purificadores de agua', 35, 'electrohogar/refrigeracion/dispensadores-y-purificadores-de-agua'),

/* electrohogar => 3 : Cocina => 36 */
('Cocinas de pie', 36, 'electrohogar/cocina/cocinas-de-pie'),
('Cocinas empotrables', 36, 'electrohogar/cocina/cocinas-empotrables'),
('Cocinas de mesa', 36, 'electrohogar/cocina/cocinas-de-mesa'),
('Campanas', 36, 'electrohogar/cocina/campanas'),
('Hornos empotrables', 36, 'electrohogar/cocina/hornos-empotrables'),
('Combos de cocina', 36, 'electrohogar/cocina/combos-de-cocina'),
('Lavavajillas', 36, 'electrohogar/cocina/lavavajillas'),
('Microondas', 36, 'electrohogar/cocina/microondas'),
('Hornos eléctricos', 36, 'electrohogar/cocina/hornos-electricos'),

/* electrohogar => 3 : Limpieza => 37 */
('Aspiradoras', 37, 'electrohogar/limpieza/aspiradoras'),
('Aspiradoras de robot', 37, 'electrohogar/limpieza/aspiradoras-de-robot'),
('Lustradoras', 37, 'electrohogar/limpieza/lustradoras'),
('Hidrolavadoras', 37, 'electrohogar/limpieza/hidrolavadoras'),
('Otros', 37, 'electrohogar/limpieza/otros'),

/* electrohogar => 3 : Cuidado de la ropa => 38 */
('Máquinas de coser', 38, 'electrohogar/cuidado-de-la-ropa/maquinas-de-coser'),
('Planchas', 38, 'electrohogar/cuidado-de-la-ropa/planchas'),
('Planchadores', 38, 'electrohogar/cuidado-de-la-ropa/planchadores'),

/* electrohogar => 3 : Electrodomésticos => 39 */
('Licuadoras', 39, 'electrohogar/electrodomesticos/licuadoras'),
('Freidoras de aire', 39, 'electrohogar/electrodomesticos/freidoras-de-aire'),
('Ollas arroceras', 39, 'electrohogar/electrodomesticos/ollas-arroceras'),
('Batidoras', 39, 'electrohogar/electrodomesticos/batidoras'),
('Cafeteras y Hervidores', 39, 'electrohogar/electrodomesticos/cafeteras-y-hervidores'),
('Tostadoras y sandwicheras', 39, 'electrohogar/electrodomesticos/tostadoras-y-sandwicheras'),
('Extractores y exprimidores', 39, 'electrohogar/electrodomesticos/extractores-y-exprimidores'),
('Cocina entretenida', 39, 'electrohogar/electrodomesticos/cocina-entretenida'),
('Combos', 39, 'electrohogar/electrodomesticos/combos'),

/* electrohogar => 3 : Climatización => 40 */
('Termas y calentadores', 40, 'electrohogar/climatizacion/termas-y-calentadores'),
('Ventiladores', 40, 'electrohogar/climatizacion/ventiladores'),
('Aires acondicionados', 40, 'electrohogar/climatizacion/aires-acondicionados'),
('Desumecedores', 40, 'electrohogar/climatizacion/deshumedecedores'),
('Purificadores de aire', 40, 'electrohogar/climatizacion/purificadores-de-aire'),
('Calefacción', 40, 'electrohogar/climatizacion/calefaccion'),

/* electrohogar => 3 : Cuidado personal => 41 */
('Secadoras de pelo', 41, 'electrohogar/cuidado-personal/secadoras-de-pelo'),
('Alisadoras y onduladoras', 41, 'electrohogar/cuidado-personal/alisadoras-y-onduladoras'),
('Depiladoras', 41, 'electrohogar/cuidado-personal/depiladoras'),
('Afeitadoras y cortadores de pelo', 41, 'electrohogar/cuidado-personal/afeitadoras-y-cortadores-de-pelo'),
('Bienestar y salud', 41, 'electrohogar/cuidado-personal/bienestar-y-salud'),

/* electrohogar => 3 : Industrial => 42 */
('Exhibidoras y vitrinas', 42, 'electrohogar/industrial/exhibidoras-y-vitrinas'),
('Congeladoras y conservadoras', 42, 'electrohogar/industrial/congeladoras-y-conservadoras'),
('Equipos de producción', 42, 'electrohogar/industrial/equipos-de-produccion'),
('Equipos complementarios', 42, 'electrohogar/industrial/equipos-complementarios'),

/* electrohogar => 3 : Marca electrohogar => 43 */
('Band', 43, 'electrohogar/marca-electrohogar/band'),
('Samsung', 43, 'electrohogar/marca-electrohogar/samsung'),
('LG', 43, 'electrohogar/marca-electrohogar/lg'),
('Indurama', 43, 'electrohogar/marca-electrohogar/indurama'),
('Mabe', 43, 'electrohogar/marca-electrohogar/mabe'),
('Electrolux', 43, 'electrohogar/marca-electrohogar/electrolux'),
('Bosch', 43, 'electrohogar/marca-electrohogar/bosch'),
('Oster', 43, 'electrohogar/marca-electrohogar/oster'),
('Imaco', 43, 'electrohogar/marca-electrohogar/imaco'),

/* ======================================== */
/* Hogar => 4 : Grill => 44 */
('Grill', 44, 'hogar/grill/grill'),
('Parrillas', 44, 'hogar/grill/parrillas'),
('Cajas chinas', 44, 'hogar/grill/cajas-chinas'),
('Kamados', 44, 'hogar/grill/kamados'),
('Cilindros', 44, 'hogar/grill/cilindros'),
('Accesorios de parrilla', 44, 'hogar/grill/accesorios-de-parrilla'),

/* hogar => 4 : Cocina => 45 */
('Juegos de olla', 45, 'hogar/cocina/juegos-de-olla'),
('Sartenes y woks', 45, 'hogar/cocina/sartenes-y-woks'),
('Termos y teteras', 45, 'hogar/cocina/termos-y-teteras'),
('Utensilios de cocina', 45, 'hogar/cocina/utensilios-de-cocina'),
('Lavaderos', 45, 'hogar/cocina/lavaderos'),
('Mezcladora DJ', 45, 'hogar/cocina/mezcladora-dj'),

/* hogar => 4 : Menaje => 46 */
('Vajillas', 46, 'hogar/menaje/vajillas'),
('Cubiertos', 46, 'hogar/menaje/cubiertos'),
('Vasos y copas', 46, 'hogar/menaje/vasos-y-copas'),
('Organizadores y contenedores', 46, 'hogar/menaje/organizadores-y-contenedores'),
('Accesorios de mesa', 46, 'hogar/menaje/accesorios-de-mesa'),

/* hogar => 4 : Organización => 47 */
('Canastas y cestos', 47, 'hogar/organizacion/canastas-y-cestos'),
('Mesa y auxiliares', 47, 'hogar/organizacion/mesa-y-auxiliares'),
('Gabinetes', 47, 'hogar/organizacion/gabinetes'),

/* hogar => 4 : Decoración => 48 */
('Espejos', 48, 'hogar/decoracion/espejos'),
('Cojines', 48, 'hogar/decoracion/cojines'),
('Cortinas', 48, 'hogar/decoracion/cortinas'),
('Alfombras', 48, 'hogar/decoracion/alfombras'),
('Iluminación', 48, 'hogar/decoracion/iluminacion'),

/* hogar => 4 : Baño => 49 */
('Toallas', 49, 'hogar/baño/toallas'),
('Tendederos', 49, 'hogar/baño/tendederos'),
('Accesorios de baño', 49, 'hogar/baño/accesorios-de-baño'),

/* hogar => 4 : Maletas y Viajes => 50 */
('Maleta de cabina', 50, 'hogar/maletas-y-viajes/maleta-de-cabina'),
('Maleta de viaje', 50, 'hogar/maletas-y-viajes/maleta-de-viaje'),
('Mochila outdoors', 50, 'hogar/maletas-y-viajes/mochila-outdoors'),

/* ======================================== */
/* Muebles => 5 : Sala => 51 */
/* Muebles => 5 : Sala => 51 */
('Seccionales', 51, 'muebles/sala/seccionales'),
('Juegos de sala', 51, 'muebles/sala/juegos-de-sala'),
('Sillones reclinables', 51, 'muebles/sala/sillones-reclinables'),
('Futones y Sofa Cama', 51, 'muebles/sala/futones-y-sofa-cama'),
('Mesas de Centro y Complementos', 51, 'muebles/sala/mesas-de-centro-y-complementos'),
('Centros de entretenimiento', 51, 'muebles/sala/centros-de-entretenimiento'),
('Paneles', 51, 'muebles/sala/paneles'),
('Mesas de TV', 51, 'muebles/sala/mesas-de-tv'),
('Rocks de TV', 51, 'muebles/sala/rocks-de-tv'),

/* muebles => 5 : Comedor => 52 */
('Juegos de Comedor', 52, 'muebles/comedor/juegos-de-comedor'),
('Sillas de Comedor', 52, 'muebles/comedor/sillas-de-comedor'),
('Mesas de Comedor', 52, 'muebles/comedor/mesas-de-comedor'),
('Bares', 52, 'muebles/comedor/bares'),
('Bancos de Bar', 52, 'muebles/comedor/bancos-de-bar'),
('Aparadores y Vitrinas', 52, 'muebles/comedor/aparadores-y-vitrinas'),

/* muebles => 5 : Oficina y estudio => 53 */
('Escritorios', 53, 'muebles/ofic
-estudio/escritorios'),
('Estantes y Libreros', 53, 'muebles/oficina-y-estudio/estantes-y-libreros'),
('Sillas de escritorio', 53, 'muebles/oficina-y-estudio/sillas-de-escritorio'),
('Sillas Gamers', 53, 'muebles/oficina-y-estudio/sillas-gamers'),

/* muebles => 5 : Dormitorio => 54 */
('Cabeceras', 54, 'muebles/dormitorio/cabeceras'),
('Roperos', 54, 'muebles/dormitorio/roperos'),
('Veladores', 54, 'muebles/dormitorio/veladores'),
('Cómodas y Tocadores', 54, 'muebles/dormitorio/comodas-y-tocadores'),
('Zapateros', 54, 'muebles/dormitorio/zapateros'),
('Organizadores', 54, 'muebles/dormitorio/organizadores'),

/* muebles => 5 : Terrazas => 55 */
('Comedor y sillas', 55, 'muebles/terrazas/comedor-y-sillas'),
('Accesorios de terrazas', 55, 'muebles/terrazas/accesorios-de-terrazas'),

/* muebles => 5 : Otros espacios => 56 */
('muebles de baño', 56, 'muebles/otros-espacios/muebles-de-baño'),
('muebles de cocina', 56, 'muebles/otros-espacios/muebles-de-cocina'),

/* ======================================== */
/* Dormitorio => 6 : Colchones => 57 */
('King', 57, 'dormitorio/colchones/king'),
('Queen', 57, 'dormitorio/colchones/queen'),
('2 Plazas', 57, 'dormitorio/colchones/2-plazas'),
('1.5 Plazas', 57, 'dormitorio/colchones/1.5-plazas'),
('1 Plaza', 57, 'dormitorio/colchones/1-plaza'),
('Infantil', 57, 'dormitorio/colchones/infantil'),

/* dormitorio => 6 : Cama Box Tarima => 58 */
('King', 58, 'dormitorio/cama-box-tarima/king'),
('Queen', 58, 'dormitorio/cama-box-tarima/queen'),
('2 Plazas', 58, 'dormitorio/cama-box-tarima/2-plazas'),
('1.5 Plazas', 58, 'dormitorio/cama-box-tarima/1.5-plazas'),

/* dormitorio => 6 : Juego de dormitorio => 59 */
('King', 59, 'dormitorio/juego-de-dormitorio/king'),
('Queen', 59, 'dormitorio/juego-de-dormitorio/queen'),
('2 Plazas', 59, 'dormitorio/juego-de-dormitorio/2-plazas'),
('1.5 Plazas', 59, 'dormitorio/juego-de-dormitorio/1.5-plazas'),

/* dormitorio => 6 : Muebles de dormitorio => 60 */
('Cabezeras', 60, 'dormitorio/muebles-de-dormitorio/cabezeras'),
('Roperos', 60, 'dormitorio/muebles-de-dormitorio/roperos'),
('Veladores', 60, 'dormitorio/muebles-de-dormitorio/veladores'),
('Comodas y tocadores', 60, 'dormitorio/muebles-de-dormitorio/comodas-y-tocadores'),
('Zapateras', 60, 'dormitorio/muebles-de-dormitorio/zapateras'),

/* dormitorio => 6 : Ropa de cama => 61 */
('Sabanas y fundas de almohadas', 61, 'dormitorio/ropa-de-cama/sabanas-y-fundas-de-almohadas'),
('Edredones y plumas', 61, 'dormitorio/ropa-de-cama/edredones-y-plumas'),
('Cubrecamas', 61, 'dormitorio/ropa-de-cama/cubrecamas'),
('Frazadas y mantas', 61, 'dormitorio/ropa-de-cama/frazadas-y-mantas'),
('Almohadas y protectores', 61, 'dormitorio/ropa-de-cama/almohadas-y-protectores'),
('Cojines y accesorios', 61, 'dormitorio/ropa-de-cama/cojines-y-accesorios'),

/* dormitorio => 6 : dormitorio infantil => 62 */
('Cunas y cama para niños', 62, 'dormitorio/dormitorio-infantil/cunas-y-cama-para-ninos'),

/* dormitorio => 6 : Marcas => 63 */
('Paraiso', 63, 'dormitorio/marcas/paraiso'),
('El Cisne', 63, 'dormitorio/marcas/el-cisne'),
('Foril', 63, 'dormitorio/marcas/foril'),

/* ======================================== */
/* Deporte => 7 : Máquinas de gimnasio => 64 */
('Trotadoras', 64, 'deporte/maquinas-de-gimnasio/trotadoras'),
('Elípticas', 64, 'deporte/maquinas-de-gimnasio/elipticas'),
('Bicicletas estacionarias', 64, 'deporte/maquinas-de-gimnasio/bicicletas-estacionarias'),
('Bancas', 64, 'deporte/maquinas-de-gimnasio/bancas'),
('Gimnasios', 64, 'deporte/maquinas-de-gimnasio/gimnasios'),

/* deporte => 7 : Bicicletas => 65 */
('Bicicletas de niños', 65, 'deporte/bicicletas/bicicletas-de-ninos'),
('Bicicletas de paseo', 65, 'deporte/bicicletas/bicicletas-de-paseo'),
('Bicicletas montañeras', 65, 'deporte/bicicletas/bicicletas-montaneras'),
('Bicicletas eléctricas', 65, 'deporte/bicicletas/bicicletas-electricas'),
('Scooters eléctricos', 65, 'deporte/bicicletas/scooters-electricos'),
('Accesorios de bicicletas', 65, 'deporte/bicicletas/accesorios-de-bicicletas'),

/* deporte => 7 : Accesorios de deporte => 66 */
('Pesas y mancuernas', 66, 'deporte/accesorios-de-deporte/pesas-y-mancuernas'),
('Gimnasia', 66, 'deporte/accesorios-de-deporte/gimnasia'),
('Aeróbicos', 66, 'deporte/accesorios-de-deporte/aerobicos'),
('Yoga', 66, 'deporte/accesorios-de-deporte/yoga'),
('Boxeo', 66, 'deporte/accesorios-de-deporte/boxeo'),
('Accesorios de protección', 66, 'deporte/accesorios-de-deporte/accesorios-de-proteccion'),

/* deporte => 7 : Tiempo libre y camping => 67 */
('Carpas', 67, 'deporte/tiempo-libre-y-camping/carpas'),
('Sacos de dormir', 67, 'deporte/tiempo-libre-y-camping/sacos-de-dormir'),
('Colchones inflables', 67, 'deporte/tiempo-libre-y-camping/colchones-inflables'),
('Coolers', 67, 'deporte/tiempo-libre-y-camping/coolers'),
('Mochilas outdoors', 67, 'deporte/tiempo-libre-y-camping/mochilas-outdoors'),
('Piscinas e inflables', 67, 'deporte/tiempo-libre-y-camping/piscinas-e-inflables'),
('Accesorios de camping', 67, 'deporte/tiempo-libre-y-camping/accesorios-de-camping'),
('Juegos de exterior', 67, 'deporte/tiempo-libre-y-camping/juegos-de-exterior'),

/* deporte => 7 : Ropa y accesorios => 68 */
('Ropa deportiva', 68, 'deporte/ropa-y-accesorios/ropa-deportiva'),
('Mochilas y accesorios', 68, 'deporte/ropa-y-accesorios/mochilas-y-accesorios'),
('Zapatillas', 68, 'deporte/ropa-y-accesorios/zapatillas'),

/* ======================================== */
/* Infantil => 8 : Juguetería => 69 */
('Coleccionables y funkos', 69, 'infantil/jugueteria/coleccionables-y-funkos'),
('Muñecas y accesorios', 69, 'infantil/jugueteria/munecas-y-accesorios'),
('Figuras de acción', 69, 'infantil/jugueteria/figuras-de-accion'),
('Autos y pistas', 69, 'infantil/jugueteria/autos-y-pistas'),
('Juegos de mesa', 69, 'infantil/jugueteria/juegos-de-mesa'),
('Organización y didácticos', 69, 'infantil/jugueteria/organizacion-y-didacticos'),
('Legos y armables', 69, 'infantil/jugueteria/legos-y-armables'),
('Preescolar', 69, 'infantil/jugueteria/preescolar'),

/* infantil => 8 : Escolar => 70 */
('Mochilas', 70, 'infantil/escolar/mochilas'),
('Tomatodos', 70, 'infantil/escolar/tomatodos'),
('Loncheras y tapers', 70, 'infantil/escolar/loncheras-y-tapers'),

/* infantil => 8 : Bebés => 71 */
('Lactancia', 71, 'infantil/bebes/lactancia'),
('Coches', 71, 'infantil/bebes/coches'),
('Sillas de auto', 71, 'infantil/bebes/sillas-de-auto'),
('Cunas y corrales', 71, 'infantil/bebes/cunas-y-corrales'),
('Sillas de comer', 71, 'infantil/bebes/sillas-de-comer'),
('Gimnasios y centro de actividades', 71, 'infantil/bebes/gimnasios-y-centro-de-actividades'),
('Accesorios de bebés', 71, 'infantil/bebes/accesorios-de-bebes'),
('Triciclos, andadores y correpasillos', 71, 'infantil/bebes/triciclos-andadores-y-correpasillos'),

/* infantil => 8 : Juegos de exterior => 72 */
('Inflables', 72, 'infantil/juegos-de-exterior/inflables'),
('Scooters y patines', 72, 'infantil/juegos-de-exterior/scooters-y-patines'),
('Bicicletas infantiles', 72, 'infantil/juegos-de-exterior/bicicletas-infantiles'),
('Piscinas y juegos de agua', 72, 'infantil/juegos-de-exterior/piscinas-y-juegos-de-agua'),

/* ======================================== */
/* Salud => 9 : Cuidado de salud => 73 */
('Oxímetros', 73, 'salud/cuidado-de-salud/oximetros'),
('Termómetros', 73, 'salud/cuidado-de-salud/termometros'),
('Fajas', 73, 'salud/cuidado-de-salud/fajas'),
('Mascarillas', 73, 'salud/cuidado-de-salud/mascarillas'),

/* salud => 9 : salud => 74 */
('Equipos médicos', 74, 'salud/salud/equipos-medicos'),
('Balanzas', 74, 'salud/salud/balanzas'),
('Concentradores de Oxígeno', 74, 'salud/salud/concentradores-de-oxigeno'),
('Masajeadores', 74, 'salud/salud/masajeadores'),

/* ======================================== */
/* Mejoramiento del hogar => 10 : Herramientas eléctricas => 75 */
('Taladro', 75, 'mejoramiento-del-hogar/herramientas-electricas/taladro'),
('Atornilladores', 75, 'mejoramiento-del-hogar/herramientas-electricas/atornilladores'),
('Sierra circular', 75, 'mejoramiento-del-hogar/herramientas-electricas/sierra-circular'),
('Pulidoras y lijadoras', 75, 'mejoramiento-del-hogar/herramientas-electricas/pulidoras-y-lijadoras'),
('Amoladora y esmeriles', 75, 'mejoramiento-del-hogar/herramientas-electricas/amoladora-y-esmeriles'),
('Rotomartillo y demoledores', 75, 'mejoramiento-del-hogar/herramientas-electricas/rotomartillo-y-demoledores'),
('Tronzadora', 75, 'mejoramiento-del-hogar/herramientas-electricas/tronzadora'),
('Soplador', 75, 'mejoramiento-del-hogar/herramientas-electricas/soplador'),

/* Mejoramiento del hogar => 10 : Herramientas manuales => 76 */
('Desarmadores', 76, 'mejoramiento-del-hogar/herramientas-manuales/desarmadores'),
('Alicates', 76, 'mejoramiento-del-hogar/herramientas-manuales/alicates'),
('Set de herramientas', 76, 'mejoramiento-del-hogar/herramientas-manuales/set-de-herramientas'),
('Herramientas de medición', 76, 'mejoramiento-del-hogar/herramientas-manuales/herramientas-de-medicion'),

/* Mejoramiento del hogar => 10 : Automotriz => 77 */
('Baterías', 77, 'mejoramiento-del-hogar/automotriz/baterias'),
('Audio y video', 77, 'mejoramiento-del-hogar/automotriz/audio-y-video'),
('Limpieza para autos', 77, 'mejoramiento-del-hogar/automotriz/limpieza-para-autos'),
('Accesorios', 77, 'mejoramiento-del-hogar/automotriz/accesorios'),

/* Mejoramiento del hogar => 10 : Ferretería => 78 */
('Iluminación', 78, 'mejoramiento-del-hogar/ferreteria/iluminacion'),
('Gasfitería', 78, 'mejoramiento-del-hogar/ferreteria/gasfiteria'),
('Jardinería', 78, 'mejoramiento-del-hogar/ferreteria/jardineria'),
('Seguridad y EPPS', 78, 'mejoramiento-del-hogar/ferreteria/seguridad-y-epps'),

/* Mejoramiento del hogar => 10 : Pinturas y terminaciones => 79 */
('Escaleras', 79, 'mejoramiento-del-hogar/pinturas-y-terminaciones/escaleras'),

/* Mejoramiento del hogar => 10 : Construcciones => 80 */
('Materiales de construcción', 80, 'mejoramiento-del-hogar/construcciones/materiales-de-construccion'),
('Herramientas de construcción', 80, 'mejoramiento-del-hogar/construcciones/herramientas-de-construccion'),
('Maderas y tableros', 80, 'mejoramiento-del-hogar/construcciones/maderas-y-tableros'),

/* ======================================== */
/* Motos => 11 : Motos de 2 ruedas => 81 */
/* Nada */
/* ======================================== */
/* Moda y belleza => 12 : Accesorios de moda => 82 */
('Carteras y mochilas', 82, 'moda-y-belleza/accesorios-de-moda/carteras-y-mochilas'),
('Relojes', 82, 'moda-y-belleza/accesorios-de-moda/relojes'),
('Billeteras', 82, 'moda-y-belleza/accesorios-de-moda/billeteras'),

/* Moda y belleza => 12 : Calzado => 83 */
('Zapatos', 83, 'moda-y-belleza/calzado/zapatos'),
('Zapatillas', 83, 'moda-y-belleza/calzado/zapatillas'),
('Botas y botines', 83, 'moda-y-belleza/calzado/botas-y-botines'),

/* ======================================== */
/* Multiservicio => 13 : Garantías adicionales => 84 */
('Audio', 84, 'multiservicio/garantias-adicionales/audio'),
('Computo', 84, 'multiservicio/garantias-adicionales/computo'),
('Digital', 84, 'multiservicio/garantias-adicionales/digital'),
('Linea Blanca', 84, 'multiservicio/garantias-adicionales/linea-blanca'),
('Pequeños electrodomesticos', 84, 'multiservicio/garantias-adicionales/pequeños-electrodomesticos'),
('Televisores', 84, 'multiservicio/garantias-adicionales/televisores'),

/* multiservicio => 13 : Asistencia => 85 */
('Servicios de asistencia para el hogar', 85, 'multiservicio/asistencia/servicios-de-asistencia-para-el-hogar'),
('Servicios de asistencia tecnológicas', 85, 'multiservicio/asistencia/servicios-de-asistencia-tecnologicas'),
('Servicios para smartphone', 85, 'multiservicio/asistencia/servicios-para-smartphone'),

/* multiservicio => 13 : Instalaciones => 86 */
('Instalación de línea blanca', 86, 'multiservicio/instalaciones/instalacion-de-linea-blanca'),
('Instalación de racks', 86, 'multiservicio/instalaciones/instalacion-de-racks'),

/* ======================================== */
/* Mascota => 14 : Accesorios => 1 */
/* Nada */
/* Mascota => 14 : Cuidado e Higiene => 2 */
/* Nada */
/* Mascota => 14 : Camas y Casas => 3 */
/* Nada */
/* ======================================== */
/* Supermercado => 15 : Cuidado Personal => 1 */
/* Supermercado => 15 : Cuidado Personal => 1 */
('Aseo Personal', 90, 'supermercado/cuidado-personal/aseo-personal');
/* ======================================== */
/* Remate Total => 16 : Cuidado Personal => 1 */
/* Nada */
CREATE TABLE PRODUCTO(
	codpro int not null AUTO_INCREMENT,
	nompro varchar(50) null,
	despro varchar(100) null,
	prepro numeric(6,2) null,
	estado int null,
	CONSTRAINT pk_producto
	PRIMARY KEY (codpro)
);

alter table PRODUCTO add rutimapro varchar(100) null;


INSERT INTO PRODUCTO (nompro,despro,prepro,estado,rutimapro)
VALUES ('Conjunto Foarm Whithe','Bralette más tanga doble elástico disponible en talles del 85 al 105
en color blanco, negro y rojo','$930',1,'foto1.jpeg')

,('Bodys de microtul con encaje','Disponible en blanco y negro talles s,, m y l','1500',1,'foto2.jpeg')

,('Pack x2 less regulable','less regulable algodon, microtul, encaje y saten.','500',1,'foto3.jpeg')

,('Conjunto Bing.','disponible en talle 1 al 4. Colores rosa, blanco, negro, rojo, amarillo y celeste','1600',1,'foto4.jpeg')

,('Conjunto Morley','disponible en rosa, blanco y negro. Talles del 80 al 115','900',1,'foto5.jpeg')

,('Conjunto Total','disponible en negro, blanco, rojo y rosa. talles desde el 80 al 100','950',1,'foto6.jpeg')

,('Conjunto Crossing','disponible en color negro y bordo.. talles desde el 80 hasta el 100','1200',1,'foto7.jpeg')

,('Pack de less','regulables Corazón x2','500',1,'foto8.jpeg');


CREATE TABLE USUARIO(
	codusu int not null AUTO_INCREMENT,
	nomusu varchar(50) ,
	apeusu varchar(50) ,
	emausu varchar(50) not null,
	pasusu varchar(20) not null,
	estado int not null,
	CONSTRAINT pk_usuario
	PRIMARY KEY (codusu)
);

INSERT INTO USUARIO (nomusu,apeusu,emausu,pasusu,estado)
VALUES ('Usuario','Demo','correo@example.com','123456',1);

create table PEDIDO(
	codped int not null AUTO_INCREMENT,
	codusu int not null,
	codpro int not null,
	fecped datetime not null,
	estado int not null,
	dirusuped varchar(50) not null,
	telusuped varchar(12) not null,
	PRIMARY KEY (codped)
);
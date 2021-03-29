create database db_example;
create table persona(
	id integer PRIMARY KEY,
	nombre varchar(40),
	apellido varchar(60),
	ci varchar(15)
);
insert into persona values(1,'Maite','Paredes Duran','172895');
insert into persona values(2,'Luciano','Domínguez Coronado','343374');
insert into persona values(3,'Violeta','Caraballo Parra','655486');
insert into persona values(4,'Christian','Villaseñor Ceballos','211602');
insert into persona values(5,'Alejandra','Valencia Girón','780211');
insert into persona values(6,'Bruno','De La Fuente Sanches','597975');
insert into persona values(7,'Lucía','Murillo Urías','262116');
insert into persona values(8,'Andrea','Briones Roque','139195');
insert into persona values(9,'Alonso','Serrato Gonzales','32522');
insert into persona values(10,'Esteban','lfaro Blanco','53593');
insert into persona values(11,'Sofía','Urías Velasco','251881');
insert into persona values(12,'Luana','Alejandro Cortez','578688');
insert into persona values(13,'Lorenzo','Mesa Sepúlveda','225850');
insert into persona values(14,'Axel','Marroquín Hernández','648993');
insert into persona values(15,'Hidalgo','aramillo Ordóñez','14952');
insert into persona values(16,'Florencia','Cuellar Domínguez','937452');

select * from persona

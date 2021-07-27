create database if not exists direccion;

use direccion;

create table if not exists despachos(
numero int NOT NULL,
capacidad int NOT NULL,
primary key (numero));

create table if not exists directores(
DNI char(8) NOT NULL,
nomApels char(255) NOT NULL,
DNIJefe char(8),
despacho int NOT NULL,
foreign key(DNIJefe) references directores(DNI),
foreign key(despacho) references despachos(numero),
primary key(DNI));

#insert despachos
insert into despachos values (1,500);
insert into despachos values (2,100);
insert into despachos values (3,200);
insert into despachos values (4,300);
insert into despachos values (5,400);

#insert directores
insert into directores(DNI,nomApels,despacho)
values('0123456J', 'ejemplo 1', 1);
insert into directores(DNI,nomApels,DNIJefe,despacho)
values('0123457J', 'ejemplo 2','0123456J', 2);
insert into directores(DNI,nomApels,despacho)
values('0123458J', 'ejemplo 3', 3);
insert into directores(DNI,nomApels,DNIJefe,despacho)
values('0123451J', 'ejemplo 4','0123458J', 4);
insert into directores(DNI,nomApels,despacho)
values('0123452J', 'ejemplo 5', 5);

#drop database direccion;
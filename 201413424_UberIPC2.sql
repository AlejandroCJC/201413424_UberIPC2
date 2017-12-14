Create database UberIPC2
go
use UberIPC2



Create table viaje(
id_viaje numeric(8,0) primary key not null,
punto_inicio varchar(50),
Punto_fin varchar(50),
tarifa varchar(50),
tiempo_llegada varchar(50),
Calificacion varchar(50),
);

create table Conductor (
id_conductor numeric(8,0) primary key not null,
nombre varchar(50),
edad varchar(50),
calificacion varchar(50),
);

create table vehiculo(
id_vehiculo numeric(8,0) primary key not null,
modelo varchar (50),
Matricula varchar(50),
capacidad varchar(50),
id_conductor numeric(8,0)
foreign key (id_conductor) references Conductor(id_conductor)
);

create table Uber_Servicios(
id_uber_servicios numeric(8,0) primary key not null,
nombre varchar(50),
tarifa varchar(50),
Descripcion varchar(100),
calificacion varchar(50),
);

create table detalle(
id_detalle numeric(8,0) primary key not null,
descripcion varchar(150),
);

Create table Usuario(
id_usuario numeric(8,0) primary key not null,
nombre varchar(20),
Tipo_Pago varchar(20),
Destino varchar(50),
Horario varchar(50),
id_viaje numeric(8,0),
id_uber_servicios numeric(8,0),
id_vehiculo numeric(8,0),
foreign key (id_viaje) references viaje(id_viaje),
foreign key (id_uber_servicios) references uber_servicios(id_uber_servicios),
foreign key (id_vehiculo) references vehiculo(id_vehiculo)
);

--agrega columnaa usuario
Alter Table Usuario
add calificacion text;

--modifica columna
Alter table Usuario
alter column nombre numeric;
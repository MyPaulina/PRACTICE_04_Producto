CREATE DATABASE MODIFICAR
USE modificar

create table producto(
clave_producto int,
nombre_producto varchar(20),
precio float
constraint pk_cp primary key(clave_producto),
)

create table cliente(
clave_cliente int,
numero_cliente varchar(20),
constraint pk_cc primary key(clave_cliente),
)


create table nota(
folio int,
clave_producto1 int,
clave_cliente1 int,
cantidad int,
subtotal float,
constraint fk_cp1 foreign key(clave_producto1)references producto(clave_producto),
constraint fk_cc1 foreign key (clave_cliente1)references cliente(clave_cliente)
)


insert into producto values(1,'jitomate',5)
insert into producto values(2,'manzana',7)
insert into producto values(3,'galletas',5) 

insert into cliente values(1,'jose')
insert into cliente values(2,'rodrigo')

insert into nota values (1,1,1,8,null)
insert into nota values (2,2,2,4,null)



select * from producto
select * from cliente
select * from nota

update cliente
set numero_cliente ='pedro'
where clave_cliente=2

update nota
set subtotal = cantidad * precio
from nota inner join producto on producto.clave_producto=nota.clave_producto1


--elimiar los registros de toda la tabla
delete from nota


--eliminar un registro
delete from producto where clave_producto = 3


-- eliminar registros que cumplan una condicion where condicion

delete from producto where precio = 5 and clave_producto = 3

-- eliminar tabla y registros
drop table nota  

-- elimar base de datos y datos
use master
drop database MODIFICAR

-- ELIMINAR TODOS LOS REGISTROS DE UNA TABLA
DELETE FROM nota  -- lo que hace es eliminar registros de un por uno
truncate table nota -- lo que hace es eliminar muchos registros, todos de una sola vez cientos o miles en una tabla





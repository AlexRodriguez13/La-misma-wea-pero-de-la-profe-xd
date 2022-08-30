create database SFCIB

restore database SFCIB from disk='D:\SFCIB.bak' 
with replace

RESTORE DATABASE SFCIB
    FROM DISK = 'D:\SFCIB.bak'
    WITH REPLACE,
    MOVE 'SFCIB' TO 'C:\Program Files\Microsoft SQL Server\MSSQL15.CCBB15\MSSQL\DATA\SFCIB_Data.mdf',
    MOVE 'SFCIB_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL15.CCBB15\MSSQL\DATA\SFCIB_Log.ldf'

use SFCIB

select * from Deptos

insert into Deptos values('Managua'),('Masaya'),
('Granada')

select * from Municipios

insert into Municipios values('Ciudad Sandino',1),
('Tipitapa',1),('Nindiri',2),('Veracruz',2),
('Diria',3),('Nandaime',3)

select * from Proveedor

insert into Proveedor values('Bimbo','Carretera Masaya',
'22556545',1,1),('Femsa','Carretera Norte','85745421',
1,1)

select * from Productos

insert into Productos values('01','Bimbolete','Pan dulce',
20,12,1,1),('02','Pinguino','Dulce',30,10,1,1),
('03','Coca cola 12 onzas','gaseosa',15,24,1,2),
('04','HiC te','te',20,48,1,2)

backup database SFCIB to disk='D:\SFCIB.bak'

-- CALCULO DE PREDICADO
-- 1- CALCULO DE PREDICADO DE TUPLAS
-- {p | Productos(p)  and p.preciop<30}
select * from Productos where preciop<30

create view EjCPT as
select * from Productos where preciop<30

select * from EjCPT
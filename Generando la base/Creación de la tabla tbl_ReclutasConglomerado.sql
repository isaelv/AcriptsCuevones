use CuevonesCSQL_Isael_bd001
go

create table tbl_ReclutasConglomerado
(
RCID int identity (1,1) not null constraint PK_tbl_ReclutasConglomerado primary key,
RCFEID int not null, --Clave secundaria de la fecha de colecta
RCColID int not null,--Clave secundaria del colector
RCConID int not null,--Clave secundaria de la condición del sitio
RCCuaID int not null,--Clave secundaria del cuadro
RCMID int not null, --Clave secundaria de la unidad de muestreo
RCGRID int not null,-- Clave secundaria del Género del recluta
RCARID int not null, --Clave secundaria de la talla de los reclutas
RCDiaID int not null, --Clave secundaria del diámetro de los reclutas
RCFechaEntrada date not null constraint DF_tbl_RCFechaEntrada default (getdate()),
RCUltimaActualizacion date not null constraint DF_tbl_RCUltimaActualizacion default (getdate()),
)
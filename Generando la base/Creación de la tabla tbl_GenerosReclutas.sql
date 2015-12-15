use CuevonesCSQL_Isael_bd001
go

create table tbl_GenerosReclutas
(
GRID int identity (1,1) not null constraint PK_tbl_GenerosReclutas primary key,
GRGenero nvarchar(50) not null,
GRAbreviatura nvarchar(10) not null,
GRObservaciones nvarchar(150),
GRFechaEntrada date null constraint DF_tbl_GRFechaEntrada default (getdate()),
GRUltimaActualizacion date not null constraint DF_tbl_GRUltimaActualizacion default (getdate()),
)

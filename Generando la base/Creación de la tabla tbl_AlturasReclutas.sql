use CuevonesCSQL_Isael_bd001
go

create table tbl_AlturasReclutas
(
ARID int identity (1,1) not null  constraint PK_tbl_AlturasReclutas primary key,
ARAlturaReclutacm real null,
ARObservaciones nvarchar(150),
ARFechaEntrada date not null constraint DF_tbl_ARFechaEntrada default (getdate()),
ARUltimaActualizacion date not null constraint DF_tbl_ARUltimaActualizacion default (getdate()),
)
use CuevonesCSQL_Isael_bd001
go

/************************************
INSERCIÓN DE COLONIAS DE CORAL DURO
*************************************/

insert into tbl_TipoCoral
(
CorTipo
,CorFechaEntrada
,CorUltimaActualizacion
)
values
(
'Duro'
,GETDATE()
,GETDATE()
)

/************************************
INSERCIÓN DE COLONIAS DE CORAL BLANDO
*************************************/

insert into tbl_TipoCoral
(
CorTipo
,CorFechaEntrada
,CorUltimaActualizacion
)
values
(
'Blando'
,GETDATE()
,GETDATE()
)

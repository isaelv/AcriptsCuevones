use CuevonesCSQL_Isael_bd001
go

/************************************
INSERCI�N DE COLONIAS DE CORAL DURO
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
INSERCI�N DE COLONIAS DE CORAL BLANDO
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

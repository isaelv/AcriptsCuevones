use CuevonesCSQL_Isael_bd001
go

/************************************
INSERCIÓN DE AFECTADO
*************************************/

insert into tbl_Condicion
(
ConCondicion
,ConFechaEntrada
,ConUltimaActualización
)
values
(
'Afectado'
,GETDATE()
,GETDATE()
)

/************************************
INSERCIÓN DE NO AFECTADO
*************************************/

insert into tbl_Condicion
(
ConCondicion
,ConFechaEntrada
,ConUltimaActualización
)
values
(
'No afectado'
,GETDATE()
,GETDATE()
)

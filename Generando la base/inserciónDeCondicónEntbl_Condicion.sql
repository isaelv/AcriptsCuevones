use CuevonesCSQL_Isael_bd001
go

/************************************
INSERCI�N DE AFECTADO
*************************************/

insert into tbl_Condicion
(
ConCondicion
,ConFechaEntrada
,ConUltimaActualizaci�n
)
values
(
'Afectado'
,GETDATE()
,GETDATE()
)

/************************************
INSERCI�N DE NO AFECTADO
*************************************/

insert into tbl_Condicion
(
ConCondicion
,ConFechaEntrada
,ConUltimaActualizaci�n
)
values
(
'No afectado'
,GETDATE()
,GETDATE()
)

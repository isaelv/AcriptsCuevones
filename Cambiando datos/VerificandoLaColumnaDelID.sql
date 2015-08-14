use CuevonesCSQL_Isael_bd001
go

/*****************************************************
VERIFICANDO EL ESTADO DE LA COLUMNA DEL IDENTIFICADOR
******************************************************/

DBCC CHECKIDENT ('tbl_TejidoVivo', NORESEED);

/*********************************************************
REASIGNANDO A 1 EL ESTADO DE LA COLUMNA DEL IDENTIFICADOR
**********************************************************/
DBCC CHECKIDENT ('tbl_TejidoVivo', RESEED, 0);
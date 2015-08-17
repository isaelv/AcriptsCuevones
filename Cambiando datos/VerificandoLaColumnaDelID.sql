use CuevonesCSQL_Isael_bd001
go

/*****************************************************
VERIFICANDO EL ESTADO DE LA COLUMNA DEL IDENTIFICADOR
******************************************************/

DBCC CHECKIDENT ('tbl_AreaDanada', NORESEED);

/*********************************************************
REASIGNANDO A 1 EL ESTADO DE LA COLUMNA DEL IDENTIFICADOR
**********************************************************/
DBCC CHECKIDENT ('tbl_AreaDanada', RESEED, 0);
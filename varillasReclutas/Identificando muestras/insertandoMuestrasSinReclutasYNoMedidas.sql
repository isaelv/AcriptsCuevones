use CuevonesCSQL_Isael_bd001
go

/******************************************************
CONSULTAR LA DOCUMENTACIÓN PARA LOS DETALLES DEL 
PROCESO DE INSERCIÓN DE DATOS EN LA TABLA DESTINO
********************************************************/

/* 1. DECLARANDO LAS TABLAS TEMPORALES*/
--SE EJECUTA UNA SOLA VEZ O ARROJARÁ UN ERROR
CREATE TABLE #muestrasSinReclutas(FechaID int, ColectorID int, IDMuestras int, GeneroID int, alturaReclutaID int, diametroreclutaID int);

/*2. INSERTANDO EN LA BASE TEMPORAL LAS MUESTRAS QUE ESTÁN EN tbl_Muestras PERO NO EN tbl_ReclutasConglomerado*/

insert into #muestrasSinReclutas(IDMuestras)

/*SELECCIÓN DE LÁS MUESTRAS QUE ESTÁN EN tbl_Muestras PERO NO EN tbl_ReclutasConglomerado*/

select mm.MID as Identificador
	
from tbl_Muestras mm
where  MMuestras not like'%9999'

except

select rc.RCMID
from tbl_ReclutasConglomerado rc

inner join tbl_Fecha f
on rc.RCFEID = f.FeID

inner join tbl_Muestras m
on rc.RCMID = m.MID

where MONTH(f.FeFecha_de_colecta)=10 and YEAR(f.FeFecha_de_colecta)=2014 
order by mm.MID;


/*3. ESTABLECIENDO LOS VALORES DEL RESTO DE LAS COLUMNAS*/

	/*Insertando valores por defecto para la tabla temporal*/
	
	UPDATE #muestrasSinReclutas
	set alturaReclutaID = 1, diametroreclutaID = 1, GeneroID = 17, FechaID =	69
	where ColectorID is null;
	
	/*Insertando el ID de los colectores*/
	
	update #muestrasSinReclutas
	set ColectorID = 5
	--where (IDMuestras >125 and IDMuestras < 501) or (IDMuestras > 1000 and	IDMuestras < 1501)
	where ColectorID is null
		/*
		(IDMuestras between 1 and 500 ) or
		(IDMuestras between 1001 and 1500 )
		*/
		
	
	/*Modificando la columna GeneroID de la tabla temporal para las unidades	no medidas*/

	update #muestrasSinReclutas
	set GeneroID = 17
	where 
		(IDMuestras between 1 and 50) or
		(IDMuestras between 76 and 100) or
		(IDMuestras between 126 and 175) or
		(IDMuestras between 251 and 275) or
		(IDMuestras between 301 and 325) or
		(IDMuestras between 351 and 375)
	
/*CONSULTANDO LA TABLA TEMPORAL*/
select *
from #muestrasSinReclutas;

/*4. INSERTANDO LOS DATOS EN LA TABLA DESTINO "tbl_ReclutasConglomerado"*/
insert into tbl_ReclutasConglomerado (RCFEID, RCColID, RCMID, RCGRID, RCARID, RCDiaID)
select
	FechaID
	,ColectorID
	,IDMuestras
	,GeneroID
	,alturaReclutaID
	,diametroreclutaID
from #muestrasSinReclutas
order by IDMuestras

/*5. BORRANDO DATOS DE LA TABLA TEMPORAL PARA SU REUSO*/
delete from #muestrasSinReclutas
where ColectorID >= 1;
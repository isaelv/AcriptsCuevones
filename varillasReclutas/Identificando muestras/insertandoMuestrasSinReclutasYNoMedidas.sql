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

where MONTH(f.FeFecha_de_colecta)=6 and YEAR(f.FeFecha_de_colecta)=2014 
order by mm.MID;


/*3. ESTABLECIENDO LOS VALORES DEL RESTO DE LAS COLUMNAS*/

	/*Insertando valores por defecto para la tabla temporal*/
	
	UPDATE #muestrasSinReclutas
	set alturaReclutaID = 1, diametroreclutaID = 1, GeneroID = 17, FechaID =	61
	where ColectorID is null;
	
	/*Insertando el ID de los colectores*/
	
	update #muestrasSinReclutas
	set ColectorID = 4
	--where (IDMuestras >125 and IDMuestras < 501) or (IDMuestras > 1000 and	IDMuestras < 1501)
	where --ColectorID is null
		
		(IDMuestras between 301 and 2000 ) or
		(IDMuestras between 1001 and 1500 )
		
		
	
	/*Modificando la columna GeneroID de la tabla temporal para las unidades	no medidas*/

	update #muestrasSinReclutas
	set GeneroID = 18
	where IDMuestras between 826 and 850
		/*
		(IDMuestras between 51 and 75) or
		(IDMuestras between 101 and 125) or
		(IDMuestras between 176 and 250) or
		(IDMuestras between 276 and 300) or
		(IDMuestras between 326 and 350) or
		(IDMuestras between 376 and 500) or
		(IDMuestras between 676 and 700) or
		(IDMuestras between 951 and 975) or
		(IDMuestras between 1201 and 1225) or
		(IDMuestras between 1275 and 1350) or
		(IDMuestras between 1201 and 1225) or
		(IDMuestras between 1276 and 1350) or
		(IDMuestras between 1401 and 1425) or
		(IDMuestras between 1501 and 1525) or
		(IDMuestras between 1726 and 1775) or
		(IDMuestras between 1826 and 1875) or
		(IDMuestras between 1901 and 1925) or
		(IDMuestras between 1951 and 1975)
		*/
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
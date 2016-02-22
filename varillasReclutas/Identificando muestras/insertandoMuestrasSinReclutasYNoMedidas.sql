use CuevonesCSQL_Isael_bd001
go

/*DECLARANDO LAS TABLAS TEMPORALES*/
--SE EJECUTA UNA SOLA VEZ O ARROJARÁ UN ERROR
CREATE TABLE #muestrasSinReclutas(FechaID int, ColectorID int, IDMuestras int, GeneroID int, alturaReclutaID int, diametroreclutaID int);

/*INSERTANDO EN LA BASE TEMPORAL LAS MUESTRAS QUE ESTÁN EN tbl_Muestras PERO NO EN tbl_ReclutasConglomerado*/

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

where MONTH(f.FeFecha_de_colecta)=12 and YEAR(f.FeFecha_de_colecta)=2014 
order by mm.MID;


/*ESTABLECIENDO LAS COLUMNAS CON LOS VALORES NULOS*/
UPDATE #muestrasSinReclutas
set alturaReclutaID = 1, diametroreclutaID = 1, GeneroID = 18, FechaID = 69
where ColectorID is null;

/*CONSULTANDO LA TABLA TEMPORAL*/
select *
from #muestrasSinReclutas;
use CuevonesCSQL_Isael_bd001
go
/*
insert into tbl_ReclutasConglomerado (RCFEID, RCColID, RCMID, RCGRID, RCDiaID,RCARID)
values (89, 7, 2022,17,1,1)
*/

use CuevonesCSQL_Isael_bd001
go

select *
from tbl_Muestras
where (MMuestras like '03%' and MNumero_de_muestra != 9999) --and MNumero_de_muestra !=13)
	/*
	or (MMuestras like '39%' and MNumero_de_muestra !=9999)
	or (MMuestras like '46%' and MNumero_de_muestra !=9999)
	or (MMuestras like '51%' and MNumero_de_muestra !=9999)
	or (MMuestras like '54%' and MNumero_de_muestra !=9999)
	or (MMuestras like '57%' and MNumero_de_muestra !=9999)
	or (MMuestras like '58%' and MNumero_de_muestra !=9999)
	or (MMuestras like '65%' and MNumero_de_muestra !=9999)
	or (MMuestras like '67%' and MNumero_de_muestra !=9999)
	or (MMuestras like '71%' and MNumero_de_muestra !=9999)
	or (MMuestras like '74%' and MNumero_de_muestra !=9999)
	*/
--Declarando las tablas temporales
create table #muestrasSReclutas (FechaID int, ColectorID int, IDMuestras int, GeneroID int, alturaRecluta int, diametroRecluta int)

delete from #muestrasSReclutas
where ColectorID = 1;


update #muestrasSReclutas
set alturaRecluta = 1, diametroRecluta = 1, GeneroID = 18, FechaID = 69, ColectorID = 1
where ColectorID is null;

select *
from #muestrasSReclutas;

insert into #muestrasSReclutas (IDMuestras)
select MID
from tbl_Muestras
where (MMuestras like '04%' and MNumero_de_muestra !=9999) --and MNumero_de_muestra !=13)

	or (MMuestras like '05%' and MNumero_de_muestra !=9999)
	/*
	or (MMuestras like '46%' and MNumero_de_muestra !=9999)
	or (MMuestras like '51%' and MNumero_de_muestra !=9999)
	or (MMuestras like '54%' and MNumero_de_muestra !=9999)
	or (MMuestras like '57%' and MNumero_de_muestra !=9999)
	or (MMuestras like '58%' and MNumero_de_muestra !=9999)
	or (MMuestras like '65%' and MNumero_de_muestra !=9999)
	or (MMuestras like '67%' and MNumero_de_muestra !=9999)
	or (MMuestras like '71%' and MNumero_de_muestra !=9999)
	or (MMuestras like '74%' and MNumero_de_muestra !=9999);
*/
--INSERTANDO LOS DATOS DE LAS MUESTRAS SIN RECLUTAS
/*
INSERT into tbl_ReclutasConglomerado (RCFEID, RCColID, RCMID, RCGRID, RCARID, RCDiaID)
select FechaID
		,ColectorID
		,IDMuestras
		,GeneroID
		,alturaRecluta
		,diametroRecluta
from #muestrasSReclutas
order by IDMuestras

*/
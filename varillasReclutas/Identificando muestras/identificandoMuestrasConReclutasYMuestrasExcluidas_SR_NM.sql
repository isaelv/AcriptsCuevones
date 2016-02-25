use CuevonesCSQL_Isael_bd001
go

/*SELECCIÓN DE LÁS MUESTRAS QUE ESTÁN EN Tbl_Muestras PERO NO EN tbl_ReclutasConglomerado*/

/*Todas las muestras posibles de medir obtenidas de tbl_Muestras*/
select MID
	,MMuestras as Muestras
from tbl_Muestras
where  MMuestras not like'%9999'

except /*El operador EXCEPT, entre las dos consultas select, permite filtrar los datos que están en la primera tabla (tbl_muestras) pero no en la segunda (tbl_ReclutasConglomerado)*/

/*Reconstrucción de los datos de los reclutas*/
select
	rc.RCMID
	,m.MMuestras
	
from tbl_ReclutasConglomerado rc

inner join tbl_Fecha f
	on rc.RCFEID=f.FeID

inner join tbl_Muestras m
	on rc.RCMID=m.MID

where MONTH(f.FeFecha_de_colecta)= 12 and YEAR(f.FeFecha_de_colecta)=2013 and m.MMuestras not like '%9999'
order by MMuestras;
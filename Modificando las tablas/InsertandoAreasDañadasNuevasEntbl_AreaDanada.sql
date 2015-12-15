use CuevonesCSQL_Isael_bd001
go

insert into tbl_AreaDanada(ADAreaDanada)
select distinct AreaDanadatxt
from caseptiembre2014


left join tbl_AreaDanada
	on isnull(round(AreaDanadatxt,2),99999.99)=ISNULL(ROUND(ADAreaDanada,2),99999.99)

where adid is null
order by AreaDanadaTxt
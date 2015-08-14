use CuevonesCSQL_Isael_bd001
go

insert into tbl_AreaDanada(ADAreaDanada)
select distinct ([Damaged area (cm2)])
from CAFebrero2013
order by [Damaged area (cm2)]
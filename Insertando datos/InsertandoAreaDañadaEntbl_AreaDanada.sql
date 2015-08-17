use CuevonesCSQL_Isael_bd001
go

insert into tbl_AreaDanada(ADAreaDanada)
select distinct (Rdamage)
from CAFebrero2013a
order by Rdamage
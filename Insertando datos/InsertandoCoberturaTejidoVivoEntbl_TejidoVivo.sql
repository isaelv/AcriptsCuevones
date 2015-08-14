use CuevonesCSQL_Isael_bd001
go

insert into tbl_TejidoVivo(TVTejidoVivo)
select distinct [Live tissue (cm2)]
from CAFebrero2013
order by [Live tissue (cm2)]
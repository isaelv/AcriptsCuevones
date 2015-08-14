use CuevonesCSQL_Isael_bd001
go

insert into  tbl_Cobertura ([CobCobertura(%)])
select distinct a.[Cobertura (%)]
from datos2013 a
order by [Cobertura (%)]
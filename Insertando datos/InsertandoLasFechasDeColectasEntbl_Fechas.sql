use CuevonesCSQL_Isael_bd001
go

insert into tbl_Fecha(FeFecha_de_colecta)

select a.Fecha
from datos2012 a

union

select b.Fecha
from datos2013 b


union

select c.Fecha
from datos2014 c

union
select d.Fecha
from Diciembre2014 d

order by Fecha
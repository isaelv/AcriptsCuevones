use CuevonesCSQL_Isael_bd001
go

insert into tbl_Cuadros(CuaNumero_de_Cuadro)

select a.Cuadro
from datos2012 a

union

select  b.Cuadro
from datos2013 b


union

select c.Cuadro
from datos2014 c

order by Cuadro
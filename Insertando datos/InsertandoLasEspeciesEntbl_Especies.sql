use CuevonesCSQL_Isael_bd001
go

insert into tbl_Especies (EspEspecies)

select  (a.Identidad)--, a.Grupo
from datos2012 a

union

select (b.Identidad)
from datos2013 b


union

select (c.Identidad)
from datos2014 c

union

select (d.Identidad)
from Diciembre2014 d

order by Identidad
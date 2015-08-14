use CuevonesCSQL_Isael_bd001
go

insert into tbl_Grandes_grupos (GruGrupo)

select a.Grupo
from datos2012 a

union

select  b.Grupo
from datos2013 b


union

select c.Grupo
from datos2014 c
order by Grupo
use CuevonesCSQL_Isael_bd001
go

--DBCC CHECKIDENT ('tbl_Todas_Especies', noRESEED);

--insert into tbl_Todas_Especies (TEEspecie)



select  a.Identidad--, a.Grupo
from datos2012 a
where a.Grupo = 'Algas'


union

select b.Identidad--, b.Grupo
from datos2013 b
where b.Grupo = 'Algas'

union

select c.Identidad--, c.Grupo
from datos2014 c
where c.Grupo = 'Algas'

union

select d.Identidad
from Diciembre2014 d
where d.Grupo = 'Algas'

order by Identidad




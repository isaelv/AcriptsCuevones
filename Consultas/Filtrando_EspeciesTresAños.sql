use CuevonesCSQL_Isael_bd001
go

--DBCC CHECKIDENT ('tbl_Todas_Especies', noRESEED);

--insert into tbl_Todas_Especies (TEEspecie)



select  a.Identidad--, a.Grupo
from datos2012 a

union

select b.Identidad--, b.Grupo
from datos2013 b


union

select c.Identidad--, c.Grupo
from datos2014 c

union

select d.Identidad
from Diciembre2014 d

order by Identidad




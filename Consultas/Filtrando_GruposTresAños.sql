use CuevonesCSQL_Isael_bd001
go

--DBCC CHECKIDENT ('tbl_Todas_Especies', noRESEED);

--insert into tbl_Todas_Especies (TEEspecie)



select a.Grupo
from datos2012 a

union

select  b.Grupo
from datos2013 b


union

select c.Grupo
from datos2014 c


union

select d.Grupo
from Diciembre2014 d
where d.Grupo is not null

order by Grupo




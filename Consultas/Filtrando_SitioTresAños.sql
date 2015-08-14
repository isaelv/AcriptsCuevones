use CuevonesCSQL_Isael_bd001
go

--DBCC CHECKIDENT ('tbl_Todas_Especies', noRESEED);

--insert into tbl_Todas_Especies (TEEspecie)



select a.Sitio
from datos2013 a

union

select b.Sitio
from datos2013 b


union

select c.Sitio
from datos2014 c

order by Sitio

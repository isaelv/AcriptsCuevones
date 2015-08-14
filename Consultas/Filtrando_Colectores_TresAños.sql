use CuevonesCSQL_Isael_bd001
go

--DBCC CHECKIDENT ('tbl_Todas_Especies', noRESEED);

--insert into tbl_Todas_Especies (TEEspecie)



select a.Colector
from datos2012 a

union

select b.Colector
from datos2013 b


union

select c.Colector
from datos2014 c

union 
select d.Colector
from Diciembre2014 d

order by Colector



                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
use CuevonesCSQL_Isael_bd001
go

--DBCC CHECKIDENT ('tbl_Todas_Especies', noRESEED);

--insert into tbl_Todas_Especies (TEEspecie)



select a.Cuadro
from datos2012 a

union

select b.Cuadro
from datos2013 b


union

select c.Cuadro
from datos2014 c

union 
select d.Cuadro
from Diciembre2014 d

order by Cuadro                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
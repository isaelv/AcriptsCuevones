use CuevonesCSQL_Isael_bd001
go



select distinct a.[Condici�n del sitio]
from datos2012 a

union

select b.[Condici�n del sitio]
from datos2013 b


union

select c.[Condici�n del sitio]
from datos2014 c
/*
union 
select d.[Condici�n del sitio]
from Diciembre2014 d
*/
order by [Condici�n del sitio]

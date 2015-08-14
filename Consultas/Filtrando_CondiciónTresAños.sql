use CuevonesCSQL_Isael_bd001
go



select distinct a.[Condición del sitio]
from datos2012 a

union

select b.[Condición del sitio]
from datos2013 b


union

select c.[Condición del sitio]
from datos2014 c
/*
union 
select d.[Condición del sitio]
from Diciembre2014 d
*/
order by [Condición del sitio]

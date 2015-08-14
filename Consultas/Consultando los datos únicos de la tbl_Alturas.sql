use CuevonesCSQL_Isael_bd001
go

select
	round(d.h1,2) as h1, 
	round(d.h2,2) as h2,
	round(d.h3,2) as h3

from datos2013 d

union 

select distinct
	round(d.h1,2) as h1, 
	round(d.h2,2) as h2,
	round(d.h3,2) as h3

from datos2014 d

union

select distinct
	round(d.h1,2) as h1, 
	round(d.h2,2) as h2,
	round(d.h3,2) as h3

from Diciembre2014 d


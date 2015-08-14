use CuevonesCSQL_Isael_bd001
go

insert into tbl_Alturas
([AltAlturacm(h1)], [AltAlturacm(h2)], [AltAlturacm(h3)])
select  distinct
	round(d.h1,2) as h1, 
	round(d.h2,2) as h2,
	round(d.h3,2) as h3

from Diciembre2014 d


left join tbl_Alturas a
	on isnull(round(a.[AltAlturacm(h1)],2),0.00) =  isnull(round(d.h1,2),0.00)
		and isnull(round(a.[AltAlturacm(h2)],2),0.00) = isnull(round(d.h2,2),0.00) 
		and isnull(round(a.[AltAlturacm(h3)],2),0.00) = isnull(round(d.h3,2),0.00) 
where AltID is null
order by h1,h2,h3
use CuevonesCSQL_Isael_bd001
go

insert into tbl_TallaColonias(TCATalla)

select distinct [Size (cm)]

from CASeptiembre2014


left join tbl_TallaColonias
	on isnull(round(TCATalla,2),9999.99)=isnull(round([Size (cm)],2),9999.99)
where TCAID is null 
order by [Size (cm)]

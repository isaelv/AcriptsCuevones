use CuevonesCSQL_Isael_bd001
go

insert into tbl_Especies (EspEspecies)
select distinct  Especie
from CASeptiembre2014

left join tbl_Especies
	on Especie=EspEspecies
where EspID is null
order by Especie
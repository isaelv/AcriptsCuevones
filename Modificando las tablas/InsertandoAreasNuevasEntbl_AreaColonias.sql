use CuevonesCSQL_Isael_bd001
go

insert into tbl_AreaColonias(ACDiametroMax, ACDiametroPer, ACarea)
select distinct Md, pd, Areatxt
from CASeptiembre2014

left join tbl_AreaColonias
	on isnull(round(ACDiametroMax,2),0.00)=isnull(round(MD,2),0.00)
		and isnull(round(ACDiametroPer,2),0.00)=isnull(round(PD,2),0.00)
		and isnull(round(ACarea,2),0.00)=isnull(round(Areatxt,2),0.00)
where acid is null
order by md, pd, Areatxt
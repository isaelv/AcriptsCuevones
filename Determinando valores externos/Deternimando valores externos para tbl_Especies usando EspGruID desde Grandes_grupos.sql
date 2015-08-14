use	CuevonesCSQL_Isael_bd001
go

select  e.EspGruID, g.GruID, g.GruGrupo, d.Grupo
from tbl_Grandes_grupos g
inner join datos2012 d
	on g.GruGrupo = d.Grupo
inner join tbl_Especies e
	on d.Identidad = e.EspEspecies or d.Identidad = e.EspAbreviatura

union 

select  e.EspGruID, g.GruID, g.GruGrupo, d.Grupo
from tbl_Grandes_grupos g
inner join datos2013 d
	on g.GruGrupo = d.Grupo
inner join tbl_Especies e
	on d.Identidad = e.EspEspecies or d.Identidad = e.EspAbreviatura

union

select  e.EspGruID, g.GruID, g.GruGrupo, d.Grupo
from tbl_Grandes_grupos g
inner join datos2014 d
	on g.GruGrupo = d.Grupo
inner join tbl_Especies e
	on d.Identidad = e.EspEspecies or d.Identidad = e.EspAbreviatura

union

select  e.EspGruID, g.GruID, g.GruGrupo, d.Grupo
from tbl_Grandes_grupos g
inner join Diciembre2014 d
	on g.GruGrupo = d.Grupo
inner join tbl_Especies e
	on d.Identidad = e.EspEspecies or d.Identidad = e.EspAbreviatura


order by g.GruGrupo
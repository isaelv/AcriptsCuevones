use CuevonesCSQL_Isael_bd001
go

update e
set e.EspGruID = g.GruID
from tbl_Grandes_grupos g
inner join Diciembre2014 d
	on g.GruGrupo = d.Grupo
inner join tbl_Especies e
	on d.Identidad = e.EspEspecies or d.Identidad = e.EspAbreviatura
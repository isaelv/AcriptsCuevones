use CuevonesCSQL_Isael_bd001
go

select 
	e.GRGruID,
	r.Grupo,
	g.GruID,
	g.GruGrupo
	
from tbl_Grandes_grupos g
--where Grupo='Corales blandos'
inner join reclutas20122015 r
	on g.GruGrupo=r.Grupo
inner join tbl_GenerosReclutas e
	on r.Identidad=e.GRGenero
--order by Consecutivo











































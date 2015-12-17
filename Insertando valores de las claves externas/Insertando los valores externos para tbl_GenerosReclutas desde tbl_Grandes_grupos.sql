use CuevonesCSQL_Isael_bd001
go

update e
set GRGruID = GruID
from tbl_Grandes_grupos g
inner join reclutas20122015 r
	on g.GruGrupo=r.Grupo
inner join tbl_GenerosReclutas e
	on r.Identidad=e.GRGenero

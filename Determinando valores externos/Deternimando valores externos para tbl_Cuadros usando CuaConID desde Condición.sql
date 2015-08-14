use	CuevonesCSQL_Isael_bd001
go

select distinct d.[Condición del sitio], u.CuaConID, c.ConID, u.CuaNumero_de_cuadro
from tbl_Condicion c
inner join datos2012 d
	on c.ConCondicion = d.[Condición del sitio]
inner join tbl_Cuadros u
	on d.Cuadro = u.CuaNumero_de_cuadro
order by u.CuaNumero_de_cuadro
use CuevonesCSQL_Isael_bd001
go

update cu
set cu.CuaConID = c.ConID
from tbl_Condicion c
inner join datos2012 d
	on c.ConCondicion = d.[Condición del sitio]
inner join tbl_Cuadros cu
	on d.Cuadro = cu.CuaNumero_de_cuadro

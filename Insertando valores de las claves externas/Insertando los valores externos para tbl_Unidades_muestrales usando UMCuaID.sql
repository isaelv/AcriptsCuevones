use CuevonesCSQL_Isael_bd001
go

/*********************************************************************************
SE INSERTAN LAS CLAVES EXTERNAS DE LOS GRUPOS PARA LAS MUESTRAS.
**********************************************************************************/


--DATOS DEL 2012

update u
set  u.MGruID = G.GruID
from tbl_Grandes_grupos g
inner join datos2012 d
	on g.GruGrupo = d.Grupo
inner join tbl_Muestras u
	on d.Muestra = u.MNumero_de_muestra and d.Cuadro = u.MNumero_de_cuadro

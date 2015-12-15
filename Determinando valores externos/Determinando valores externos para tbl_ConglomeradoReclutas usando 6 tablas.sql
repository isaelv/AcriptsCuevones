use CuevonesCSQL_Isael_bd001
go


select
	--Valores de la tabla original.
	d.consecutivo,
	d.fecha,
	d.Colector,
	d.cuadro,
	d.Muestra,
	d.grupo,
	d.identidad,
	d.Diametro,
	d.Altura,
	
	--Valores de las claves secundarias para tbl_ReclutasConglomerado

	f.FeID,
	c.ColID,
	m.MID,
	--gr.GruID,
	e.grid,
	dm.DiaID,
	a.ARID
	
	
from reclutas20122015 d

inner join tbl_Fecha f
	on f.FeFecha_de_colecta = d.Fecha

inner join tbl_Colectores c
	ON isnull(c.ColAbreviatura,'aaa')=isnull(d.Colector,'aaa')

inner join tbl_Muestras m
	on ((m.MNumero_de_cuadro = d.Cuadro and m.MNumero_de_muestra = d.muestra)
	or (m.MNumero_de_cuadro = d.Cuadro and m.MNumero_de_muestra = 9999)
	or (m.MNumero_de_cuadro = d.cuadro and m.MNumero_de_muestra = isnull(d.Muestra,99)))

inner join tbl_Grandes_grupos gr
	on isnull(gr.GruGrupo,'aaaa') = isnull(d.Grupo,'aaaa')

inner join tbl_GenerosReclutas e
	on e.GRGenero = d.Identidad

inner join tbl_Diametro dm
	on isnull(dm.DiaDiametro,0.00)=isnull(d.Diametro,0.00)

inner join tbl_AlturasReclutas a
	 on isnull(round(a.ARAlturaReclutacm,2),0.00) =  isnull(round(d.Altura,2),0.00)
order by Consecutivo
		
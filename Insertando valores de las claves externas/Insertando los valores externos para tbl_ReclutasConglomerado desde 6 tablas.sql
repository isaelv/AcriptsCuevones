use CuevonesCSQL_Isael_bd001
go

insert into tbl_ReclutasConglomerado(RCFEID, RCColID, RCMID, RCGRID, RCDiaID, RCARID)
select
	f.FeID,
	c.ColID,
	m.MID,
	e.grid,
	dm.DiaID,
	a.ARID
	
	
from reclutas20122015 d

inner join tbl_Fecha f
	on f.FeFecha_de_colecta = d.Fecha

inner join tbl_Colectores c
	ON c.ColAbreviatura=isnull(d.Colector,'ND')

inner join tbl_Muestras m
	on (m.MNumero_de_cuadro = d.Cuadro and m.MNumero_de_muestra = d.muestra)
	

inner join tbl_Grandes_grupos gr
	on gr.GruGrupo = d.Grupo

inner join tbl_GenerosReclutas e
	on e.GRGenero = d.Identidad

inner join tbl_Diametro dm
	on isnull(dm.DiaDiametro,0.00)=isnull(d.Diametro,0.00)

inner join tbl_AlturasReclutas a
	 on isnull(round(a.ARAlturaReclutacm,2),0.00) =  isnull(round(d.Altura,2),0.00)
order by Consecutivo
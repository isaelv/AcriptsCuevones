use CuevonesCSQL_Isael_bd001
go

select 
	rc.RCID
	,rc.RCFEID
	,f.FeFecha_de_colecta
	--month(f.FeFecha_de_colecta) as mes
	--,year(f.FeFecha_de_colecta) as año
	,rc.RCColID
	,c.ColAbreviatura
	,rc.RCMID
	,m.MMuestras
	,gg.GruID
	,gg.GruGrupo
	,rc.RCGRID
	,gr.GRGenero
	,d.DiaDiametro
	,ar.ARAlturaReclutacm
	,ar.ARUltimaActualizacion
	
from tbl_ReclutasConglomerado rc

inner join tbl_Fecha f
	on rc.RCFEID=f.FeID

inner join tbl_Colectores c
	on rc.RCColID=c.ColID

inner join tbl_Muestras m
	on rc.RCMID=m.MID

inner join tbl_GenerosReclutas gr
	on rc.RCGRID=gr.GRID

inner join tbl_Grandes_grupos gg
	on gr.GRGruID=gg.GruID

inner join tbl_Diametro d
	on rc.RCDiaID=d.DiaID

inner join tbl_AlturasReclutas ar
	on rc.RCARID=ar.ARID

where
	MONTH(f.FeFecha_de_colecta) = 6 and YEAR(f.FeFecha_de_colecta)= 2014 and MMuestras not like '%9999'
	
order by MMuestras 
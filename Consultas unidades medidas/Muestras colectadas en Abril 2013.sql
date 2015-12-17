use CuevonesCSQL_Isael_bd001
go

select 

	month(f.FeFecha_de_colecta) as 'mes de colecta'
	,YEAR(f.FeFecha_de_colecta) as 'año'
	,c.ColAbreviatura
	,m.MNumero_de_cuadro
	,m.MNumero_de_muestra
	,m.MMuestras
	,e.EspAbreviatura
	,co.[CobCobertura(%)]
	,a.[AltAlturacm(h1)]
	,a.[AltAlturacm(h2)]
	,a.[AltAlturacm(h3)]

from AlgasConglomerado u

inner join tbl_Colectores c
	on u.ACColID=c.ColID

inner join tbl_Fecha f
	on u.ACFeID=f.FeID

inner join tbl_Muestras m
	on u.ACMID=m.MID
inner join tbl_Especies e
	on u.ACEspID=e.EspID
inner join tbl_Grandes_grupos g
	on e.EspGruID=g.GruID
inner join tbl_Cobertura co
	on u.ACCobID=co.CobID
inner join tbl_Alturas a
	on u.ACAltID=a.AltID
inner join tbl_Cuadros cu
	on m.MCuaID=cu.CuaID
inner join tbl_Condicion con
	on cu.CuaConID=con.ConID

where year(f.FeFecha_de_colecta)=2013 and month(f.FeFecha_de_colecta)=2

order by c.ColAbreviatura, m.MMuestras, [CobCobertura(%)]
use CuevonesCSQL_Isael_bd001
go

select
	f.FeFecha_de_colecta
	,c.ColAbreviatura
	,con.ConCondicion
	,cu.CuaNumero_de_cuadro
	,m.MMuestras
	,g.GruGrupo
	--,e.EspEspecies
	,e.EspEspecies
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

--where year(f.FeFecha_de_colecta)=2014 and month(f.FeFecha_de_colecta)=12

order by f.FeFecha_de_colecta, m.MMuestras, e.EspAbreviatura, co.[CobCobertura(%)]

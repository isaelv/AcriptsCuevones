use CuevonesCSQL_Isael_bd001
go

select 
	--Tablas de la BD
	--f.FeID,
	d.Colonia,
	c.ColID,
	cu.CuaID,
	e.EspID,
	ac.ACID,
	ad.ADID,
	tc.TCAID,
	tv.TVID,

	--Datos de la tabla original
	d.Colector,
	c.ColNombre,
	c.ColAbreviatura,
	d.Cuadro,
	cu.CuaNumero_de_cuadro,
	d.Especie,
	e.EspEspecies,
	
	ac.ACDiametroMax,
	d.md,
	ac.ACDiametroPer,
	d.pd,
	d.Areatxt,
	ac.ACArea,
	d.AreaDanadatxt,
	ad.ADAreaDanada,
	d.[Size (cm)],
	tc.TCATalla,
	d.TejidoVivoTxt,
	tv.TVTejidoVivo

	from CASeptiembre2014 d

	inner join tbl_Colectores c
	on c.ColAbreviatura=d.Colector

	inner join tbl_Cuadros cu
	on cu.CuaNumero_de_cuadro=d.Cuadro

	inner join tbl_Especies e
	on e.EspEspecies=d.Especie

	inner join tbl_AreaColonias ac
	on isnull(round(ac.ACDiametroMax,2),999999.99)=isnull(round(d.MD,2),999999.99) 
		and isnull(round(ac.ACDiametroPer,2),999999.99)=isnull(round(d.PD,2),999999.99) 
		and isnull(round(ac.ACarea,2),999999.99)=isnull(round(d.AreaTxt,2),999999.99)

	inner join tbl_AreaDanada ad
	on isnull(round(ad.ADAreaDanada,2),999999.99)=isnull(round(d.AreaDanadatxt,2),999999.99)
	
	inner join tbl_TallaColonias tc
	on isnull(round(tc.TCATalla,2),999.99)= isnull(round(d.[Size (cm)],2),999.99)

	inner join tbl_TejidoVivo tv
	on isnull(round(tv.TVTejidoVivo,2),999999.99)=isnull(round(d.TejidoVivoTxt,2),999999.99)
	
order by colonia
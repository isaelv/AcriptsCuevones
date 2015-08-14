use CuevonesCSQL_Isael_bd001
go

select distinct
	--Tablas de la BD
	--f.FeID,
	d.[No# de colonia],
	c.ColID,
	cu.CuaID,
	e.EspID,
	ac.ACID,
	ad.ADID,
	tc.TCAID,
	tv.TVID,

	--Datos de la tabla original
	d.Colector,
	c.ColAbreviatura,
	d.Cuadro,
	cu.CuaNumero_de_cuadro,
	d.Species,
	e.EspID,
	d.md,
	d.pd,
	d.area,
	ac.ACArea,
	d.[Damaged area (cm2)],
	ad.ADAreaDanada,
	d.[Size (cm)],
	tc.TCATalla,
	d.[Live tissue (cm2)],
	tv.TVTejidoVivo

	from CAFebrero2013 d

	inner join tbl_Colectores c
	on c.ColNombre=d.Colector

	inner join tbl_Cuadros cu
	on cu.CuaNumero_de_cuadro=d.Cuadro

	inner join tbl_Especies e
	on e.EspEspecies=d.Species

	inner join tbl_AreaColonias ac
	on isnull(ac.ACDiametroMax,999)=isnull(d.MD,999) 
		and isnull(ac.ACDiametroPer,999)=isnull(d.PD,999) 
		and isnull(round(ac.ACarea,4),999)=isnull(round(d.area,4),999)


	inner join tbl_AreaDanada ad
	on isnull(round(ad.ADAreaDanada,4),999)=isnull(round(d.[Damaged area (cm2)],4),999)
	
	inner join tbl_TallaColonias tc
	on isnull(tc.TCATalla,999)= isnull(d.[Size (cm)],999)

	inner join tbl_TejidoVivo tv
	on isnull(round(tv.TVTejidoVivo,4),999)=isnull(round(d.[Live tissue (cm2)],4),999)
	where Colector='Isael'
	order by Cuadro, [No# de colonia]

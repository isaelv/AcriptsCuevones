use CuevonesCSQL_Isael_bd001
go

insert into tbl_ConglomeradoCoralesAdultos
	(
		CAColID,
		CACuaID,
		CAEspID,
		CAACID,
		CATCAID,
		CAADID,
		CATVID
	)

	select 
	
	c.ColID,
	cu.CuaID,
	e.EspID,
	ac.ACID,
	tc.TCAID,
	ad.ADID,
	tv.TVID
	from CAFebrero2014 d

	inner join tbl_Colectores c
	on c.ColAbreviatura=d.Colector

	inner join tbl_Cuadros cu
	on cu.CuaNumero_de_cuadro=d.Cuadro

	inner join tbl_Especies e
	on e.EspEspecies=d.Especie

	inner join tbl_AreaColonias ac
	on isnull(round(ac.ACDiametroMax,2),999999.99)=isnull(round(d.MD,2),999999.99) 
		and isnull(round(ac.ACDiametroPer,2),999999.99)=isnull(round(d.PD,2),999999.99) 
		and isnull(round(ac.ACarea,2),999999.99)=isnull(round(d.Areatxt,2),999999.99)

	inner join tbl_AreaDanada ad
	on isnull(round(ad.ADAreaDanada,2),999999.99)=isnull(round(d.AreaDanadatxt,2),999999.99)
	
	inner join tbl_TallaColonias tc
	on isnull(round(tc.TCATalla,2),999.99)= isnull(round(d.[Talla (cm)],2),999.99)

	inner join tbl_TejidoVivo tv
	on isnull(round(tv.TVTejidoVivo,2),999999.99)=isnull(round(d.TejidovicoTxt,2),999999.99)
	
order by Cuadro,ColAbreviatura
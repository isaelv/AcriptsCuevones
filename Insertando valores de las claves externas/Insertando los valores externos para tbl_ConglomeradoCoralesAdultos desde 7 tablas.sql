use CuevonesCSQL_Isael_bd001
go

insert into tbl_ConglomeradoCoralesAdultos
	(
	CAColID,
	CACuaID,
	CAEspID,
	CAACID,
	CAADID,
	CATCAID,
	CATVID
	)
Select
	(
	c.ColID,
	cu.CuaID,
	e.EspID,
	ac.ACID,
	ad.ADID,
	tc.TCAID,
	tv.TVID
	)

from CAFebrero2013A d

	inner join tbl_Colectores c
	on c.ColNombre=d.Colector

	inner join tbl_Cuadros cu
	on cu.CuaNumero_de_cuadro=d.Cuadro

	inner join tbl_Especies e
	on rtrim(e.EspEspecies)=rTrim(d.Species)

	inner join tbl_AreaColonias ac
	on isnull(round(ac.ACDiametroMax,2),999999.99)=isnull(round(d.MD,2),999999.99) 
		and isnull(round(ac.ACDiametroPer,2),999999.99)=isnull(round(d.PD,2),999999.99) 
		and isnull(round(ac.ACarea,2),999999.99)=isnull(round(d.area,2),999999.99)

	inner join tbl_AreaDanada ad
	on isnull(round(ad.ADAreaDanada,2),999999.99)=isnull(round(d.Rdamage,2),999999.99)
	
	inner join tbl_TallaColonias tc
	on isnull(round(tc.TCATalla,2),999.99)= isnull(round(d.[Size (cm)],2),999.99)

	inner join tbl_TejidoVivo tv
	on isnull(round(tv.TVTejidoVivo,2),999999.99)=isnull(round(d.[Live tissue (cm2)],2),999999.99)
	
order by cuadro,Species
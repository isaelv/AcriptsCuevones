use CuevonesCSQL_Isael_bd001
go

select 
	u.CACAID,
	f.FeFecha_de_colecta,
	c.ColAbreviatura,
	cu.CuaNumero_de_cuadro,
	e.EspEspecies,
	ac.ACDiametroMax,
	ac.ACDiametroPer,
	ac.ACarea,
	tc.TCATalla,
	ad.ADAreaDanada,
	tv.TVTejidoVivo




from tbl_ConglomeradoCoralesAdultos u

inner join tbl_Colectores c
	on u.CAColID=c.ColID

inner join tbl_Fecha f
	on u.CAFeID=f.FeID
inner join tbl_Cuadros cu
	on u.CACuaID=cu.CuaID
inner join tbl_Especies e
	on u.CAEspID=e.EspID
inner join tbl_AreaColonias ac
	on ac.ACID=u.CAACID
inner join tbl_TallaColonias TC
	ON	tc.TCAID=u.CATCAID
inner join tbl_AreaDanada ad
	on ad.ADID=u.CAADID
inner join tbl_TejidoVivo tv
	ON tv.TVID=u.CATVID
--where CACAID=1485
order by CuaNumero_de_cuadro, EspEspecies
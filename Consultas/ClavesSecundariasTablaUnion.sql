use CuevonesCSQL_Isael_bd001
go

select
	f.FeID,
	c.ColID,
	m.MID,
	e.EspID,
	co.CobID,
	--h.DatID,


	d.Fecha,
	f.FeFecha_de_colecta,
	
	d.Colector,
	c.ColAbreviatura,


	(cast(d.cuadro as nvarchar(2))+' '+ cast(d.Muestra as nvarchar(2)) ) as Muestras
	,m.MMuestras

	,d.Identidad
	,e.EspAbreviatura
	--,e.EspEspecies

	,d.[Cobertura (%)]
	,co.[CobCobertura(%)]


	/*
	,d.h1
	,d.h2
	,d.h3
	--,h.[DatCobertura_(%)]
	,h.[DatAltura_en_cm_(h1)] as H1
	,h.[DatAltura_en_cm_(h2)] as H2
	,h.[DatAltura_en_cm_(h3)] as H3
	*/
from datos2013 d

inner join tbl_Fecha f
	on f.FeFecha_de_colecta = d.Fecha

inner join tbl_Colectores c
	ON c.ColAbreviatura=d.Colector

inner join tbl_Muestras m
	on m.MNumero_de_cuadro = d.Cuadro and m.MNumero_de_muestra = d.Muestra

inner join tbl_Especies e
	on e.EspAbreviatura = d.Identidad or e.EspEspecies=d.Identidad

inner join tbl_Cobertura co
	on co.[CobCobertura(%)]=d.[Cobertura (%)]
/*
inner join tbl_Datos_de_campo h
	 on isnull(h.[DatAltura_en_cm_(h1)],0.00)=isnull(d.h1,0.00)
	and isnull(h.[DatAltura_en_cm_(h2)],0.00)=isnull(d.h2,0.00)
	and isnull(h.[DatAltura_en_cm_(h3)],0.00)=isnull(d.h3,0.00)
	and isnull(h.DatObservaciones,'')=isnull(d.Observaciones,'') 
*/
order by Fecha
use CuevonesCSQL_Isael_bd001
go

select
	f.FeID,
	c.ColID,
	m.MID,
	e.EspID,
	co.CobID,
	a.AltID
	
	
	,d.Fecha,
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


	
	,d.h1
	,d.h2
	,d.h3
	--,h.[DatCobertura_(%)]
	,a.[AltAlturacm(h1)] as H1
	,a.[AltAlturacm(h2)] as H2
	,a.[AltAlturacm(h3)] as H3
	
from Diciembre2014 d

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

inner join tbl_Alturas a
	 on isnull(round(a.[AltAlturacm(h1)],2),0.00) =  isnull(round(d.h1,2),0.00)
		and isnull(round(a.[AltAlturacm(h2)],2),0.00) = isnull(round(d.h2,2),0.00) 
		and isnull(round(a.[AltAlturacm(h3)],2),0.00) = isnull(round(d.h3,2),0.00) 


order by Fecha, Colector, Cuadro, muestra
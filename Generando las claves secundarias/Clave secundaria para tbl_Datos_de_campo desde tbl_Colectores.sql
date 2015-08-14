use CuevonesCSQL_Isael_bd001
go

update dc
set dc.DatColID=c.ColID
from tbl_Colectores c
inner join datos2012 d
	on d.Colector=c.ColAbreviatura
inner join tbl_Datos_de_campo dc
	on 
	d.Cuadro=dc.DatCuadro and
	d.Muestra=dc.Datmuestra and 
	d.[Cobertura (%)]=dc.[DatCobertura_(%)] and 
	isnull(d.h1,'')=isnull(dc.[DatAltura_en_cm_(h1)],'') and
	isnull(d.h2,'')=isnull(dc.[DatAltura_en_cm_(h2)],'') and
	isnull(d.h3,'')=isnull(dc.[DatAltura_en_cm_(h3)],'') and
	isnull(d.Observaciones,'')=isnull(dc.DatObservaciones,'')
/*
update tbl_Datos_de_campo
set DatColID = null
*/
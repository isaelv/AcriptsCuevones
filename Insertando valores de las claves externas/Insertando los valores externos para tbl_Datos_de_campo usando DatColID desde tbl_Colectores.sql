use CuevonesCSQL_Isael_bd001
go

update dc
set DatColID=ColID
from tbl_Datos_de_campo dc
inner join datos2013 d
on d.Cuadro=dc.DatCuadro
	and d.Muestra=dc.Datmuestra
	and d.[Cobertura (%)]=dc.[DatCobertura_(%)]
	and isnull(d.h1,0.00)=isnull(dc.[DatAltura_en_cm_(h1)],0.00)
	and isnull(d.h2,0.00)=isnull(dc.[DatAltura_en_cm_(h2)],0.00)
	and isnull(d.h3,0.00)=isnull(dc.[DatAltura_en_cm_(h3)],0.00)
	and isnull(d.Observaciones,N'')=isnull(dc.DatObservaciones,N'')
	and month(d.Fecha)=6
inner join tbl_Colectores c
on c.ColAbreviatura = d.Colector
where dc.DatColID is null
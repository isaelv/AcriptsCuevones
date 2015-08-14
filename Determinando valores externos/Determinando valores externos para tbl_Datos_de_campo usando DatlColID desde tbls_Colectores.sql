use CuevonesCSQL_Isael_bd001
go

select distinct
 d.[Tiempo de muestreo], dc.DatFeID, d.Fecha
	,c.ColID,d.Colector, dc.DatColID
	,d.Identidad
	,dc.Datcuadro, d.Cuadro
	,dc.Datmuestra, d.Muestra
	,d.[Cobertura (%)],dc.[DatCobertura_(%)]
	,d.h1,dc.[DatAltura_en_cm_(h1)]
	,d.h2,dc.[DatAltura_en_cm_(h2)]
	,d.h3,dc.[DatAltura_en_cm_(h3)]
	,d.Observaciones, dc.DatObservaciones
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
where dc.DatColID is null and Colector='ear' and cuadro=31 and [Cobertura (%)]=7
order by cuadro, muestra, [Cobertura (%)]
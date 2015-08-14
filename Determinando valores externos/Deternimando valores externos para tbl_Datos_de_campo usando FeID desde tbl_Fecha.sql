use CuevonesCSQL_Isael_bd001
go

select distinct
 d.[Tiempo de muestreo],f.FeID, dc.DatFeID,dc.DatMID, d.Fecha
	,d.Colector
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
	and month(d.Fecha)=8
inner join tbl_Fecha f
on f.FeFecha_de_colecta=d.Fecha
where DatFeID is null
order by cuadro, muestra, [Cobertura (%)]
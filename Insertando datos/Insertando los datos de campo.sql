use CuevonesCSQL_Isael_bd001
go

insert into tbl_Datos_de_campo (
								DatCuadro
								,Datmuestra
								,[DatCobertura_(%)]
								,[DatAltura_en_cm_(h1)]
								,[DatAltura_en_cm_(h2)]
								,[DatAltura_en_cm_(h3)]
								,[DatObservaciones]
								,[DatDiámetro_(cm)]
								
								)
select 
		d.Cuadro
		,d.Muestra
		,d.[Cobertura (%)]
		,d.h1
		,d.h2
		,d.h3
		,d.Observaciones
		,d.Diámetro
from datos2013 d
where [Tiempo de muestreo] = 'Agosto de 2013'
order by cuadro, muestra, [Cobertura (%)]

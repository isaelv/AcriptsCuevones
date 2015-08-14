/****** Script for SelectTopNRows command from SSMS  ******/
SELECT
      [DatCuadro]
      ,[Datmuestra]
      ,[DatCobertura_(%)]
      --,[DatAltura_en_cm_(h1)]
      --,[DatAltura_en_cm_(h2)]
      --,[DatAltura_en_cm_(h3)]
      --,[DatDiámetro_(cm)]
      --,[DatAbundancia_de_reclutas]
      --,[DatObservaciones]
      --,[DatUltimaActualización]
      --,[DatFechaEntrada]
	  ,count(*)as Repetidos
  FROM [CuevonesCSQL_Isael_bd001].[dbo].[tbl_Datos_de_campo]
   group by [DatCuadro]
      ,[Datmuestra]
	  
      ,[DatCobertura_(%)]
      ,[DatAltura_en_cm_(h1)]
      ,[DatAltura_en_cm_(h2)]
      ,[DatAltura_en_cm_(h3)]
      ,[DatDiámetro_(cm)]
      ,[DatAbundancia_de_reclutas]
      ,[DatObservaciones]
      --,[DatUltimaActualización]
      --,[DatFechaEntrada]
	  
having count(*) > 1
order by Repetidos desc
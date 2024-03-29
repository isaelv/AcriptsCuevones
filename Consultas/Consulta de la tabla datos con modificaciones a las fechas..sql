/****** Script for SelectTopNRows command from SSMS  ******/
SELECT convert (nvarchar(50), fecha, 106) as Fecha
      ,[Colector]
      ,[Tiempo de muestreo]
      ,[Condición del sitio]
      ,[Sitio]
      ,[Cuadro]
      ,[Muestra]
      ,[Grupo]
      ,[Identidad]
      ,[Cobertura (%)]
      ,[h1]
      ,[h2]
      ,[h3]
      ,[Altura promedio]
      ,[Densidad]
      ,[Abundancia]
      ,[Observaciones]
  FROM [CuevonesCSQL_Isael_bd001].[dbo].[datos2012]
  order by Fecha, Cuadro, Muestra


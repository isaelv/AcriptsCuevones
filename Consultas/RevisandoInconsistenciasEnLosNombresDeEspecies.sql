/****** Script for SelectTopNRows command from SSMS  ******/
SELECT distinct
	TEEspecie
  FROM [CuevonesCSQL_Isael_bd001].[dbo].[tbl_Todas_Especies]
  --where TEEspecie like 'Esponja%'
  order by TEEspecie
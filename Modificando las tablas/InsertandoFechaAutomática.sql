/***********************************************************************
MODIFICANDO LAS COLUMNAS DE FECHA PARA QUE SE ACTUALIZE AUTOMÁTICAMENTE
************************************************************************/

use CuevonesCSQL_Isael_bd001
go

ALTER TABLE [dbo].[tbl_Muestras] ADD  CONSTRAINT [DF_tbl_MUltimaActualizacion]  DEFAULT (getdate()) FOR [MUltimaActualización]
GO

ALTER TABLE [dbo].[tbl_Muestras] ADD  CONSTRAINT [DF_tbl_MFechaEntrada]  DEFAULT (getdate()) FOR [MFechaEntrada]
GO
USE [CuevonesCSQL_Isael_bd001]
GO

/****** Object:  Table [dbo].[tbl_AreaDanada]    Script Date: 29/06/2015 05:53:40 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_AreaDanada](
	[ADID] [int] IDENTITY(1,1) NOT NULL,
	[ADDiametroDanoMax] real null,
	[ADDiametroDanoPer] real null,
	ADPorcentajeDano int null,
	ADAreaDanada real null,
	ADObservaciones nvarchar(15) null,
	[ADFechaEntrada] [date] NULL CONSTRAINT [DF_tbl_ADFechaEntrada]  DEFAULT (getdate()),
	[ADUltimaActualizacion] [date] NULL CONSTRAINT [DF_tbl_ADUltimaActualizacion]  DEFAULT (getdate()),
 CONSTRAINT [PK_tbl_AreaDanada] PRIMARY KEY CLUSTERED 
(
	ADID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
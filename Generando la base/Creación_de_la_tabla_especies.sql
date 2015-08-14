USE [CuevonesCSQL_Isael_bd001]
GO

/****** Object:  Table [dbo].[tbl_Especies]    Script Date: 14/04/2015 11:34:30 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_Especies](
	[EspID] [int] IDENTITY(1,1) NOT NULL,
	[EspEspecies] [nvarchar](100) NULL,
	[EspAbreviatura] [nvarchar](25) NOT NULL,
	[EspObservaciones] [nvarchar](150) NULL,
	[EspGruID] [tinyint] NULL,
	[EspUltimaActualización] [date] NOT NULL,
	[EspFechaEntrada] [date] NOT NULL,
 CONSTRAINT [PK_tbl_Especies] PRIMARY KEY CLUSTERED 
(
	[EspID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tbl_Especies] ADD  CONSTRAINT [DF_tbl_EspeciesUltimaActualización]  DEFAULT (getdate()) FOR [EspUltimaActualización]
GO

ALTER TABLE [dbo].[tbl_Especies] ADD  CONSTRAINT [DF_tbl_EspeciesFechaEntrada]  DEFAULT (getdate()) FOR [EspFechaEntrada]
GO



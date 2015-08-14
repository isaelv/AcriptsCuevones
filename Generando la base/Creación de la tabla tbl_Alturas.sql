USE [CuevonesCSQL_Isael_bd001]
GO

/****** Object:  Table [dbo].[tbl_Cobertura]    Script Date: 29/06/2015 05:53:40 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_Cobertura](
	[CobID] [int] IDENTITY(1,1) NOT NULL,
	[CobCobertura(%)] [tinyint] NULL,
	[CobObservaciones] [nvarchar](150) NULL,
	[CobFechaEntrada] [date] NULL CONSTRAINT [DF_tbl_CobFechaEntrada]  DEFAULT (getdate()),
	[CobUltimaActualizacion] [date] NULL CONSTRAINT [DF_tbl_CobUltimaActualizacion]  DEFAULT (getdate()),
 CONSTRAINT [PK_tbl_Cobertura] PRIMARY KEY CLUSTERED 
(
	[CobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
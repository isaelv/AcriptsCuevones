USE [CuevonesCSQL_Isael_bd001]
GO

/****** Object:  Table [dbo].[tbl_TallaColonias]    Script Date: 29/06/2015 05:53:40 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_TallaColonias](
	[TCAID] [int] IDENTITY(1,1) NOT NULL,
	[TCATalla] real null,
	TCAObservaciones nvarchar(15) null,
	[TCAFechaEntrada] [date] NULL CONSTRAINT [DF_tbl_TCAFechaEntrada]  DEFAULT (getdate()),
	[TCAUltimaActualizacion] [date] NULL CONSTRAINT [DF_tbl_TCAUltimaActualizacion]  DEFAULT (getdate()),
 CONSTRAINT [PK_tbl_TallaColonias] PRIMARY KEY CLUSTERED 
(
	TCAID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
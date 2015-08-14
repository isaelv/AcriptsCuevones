USE [CuevonesCSQL_Isael_bd001]
GO

/****** Object:  Table [dbo].[tbl_TejidoVivo]    Script Date: 29/06/2015 05:53:40 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_TejidoVivo](
	[TVID] [int] IDENTITY(1,1) NOT NULL,
	[TVACID] int null,
	[TVADID] int null,
	TVTejidoVivo real null,
	TVObservaciones nvarchar(150) null,
	[TVFechaEntrada] [date] NULL CONSTRAINT [DF_tbl_TVFechaEntrada]  DEFAULT (getdate()),
	[TVUltimaActualizacion] [date] NULL CONSTRAINT [DF_tbl_TVUltimaActualizacion]  DEFAULT (getdate()),
 CONSTRAINT [PK_tbl_TejidoVivo] PRIMARY KEY CLUSTERED 
(
	TVID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
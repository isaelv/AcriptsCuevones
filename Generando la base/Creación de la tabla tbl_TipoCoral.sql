USE [CuevonesCSQL_Isael_bd001]
GO

/****** Object:  Table [dbo].[tbl_TipoCoral]    Script Date: 29/06/2015 05:53:40 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_TipoCoral](
	[CorID] [int] IDENTITY(1,1) NOT NULL,
	[CorTipo] nvarchar(15) NULL,
	[CorObservaciones] [nvarchar](150) NULL,
	[CorFechaEntrada] [date] NULL CONSTRAINT [DF_tbl_CorFechaEntrada]  DEFAULT (getdate()),
	[CorUltimaActualizacion] [date] NULL CONSTRAINT [DF_tbl_CorUltimaActualizacion]  DEFAULT (getdate()),
 CONSTRAINT [PK_tbl_TipoCoral] PRIMARY KEY CLUSTERED 
(
	[CorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
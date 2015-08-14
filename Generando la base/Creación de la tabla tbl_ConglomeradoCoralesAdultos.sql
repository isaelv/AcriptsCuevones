USE [CuevonesCSQL_Isael_bd001]
GO

/****** Object:  Table [dbo].[tbl_ConglomeradoCoralesAdultos]    Script Date: 11/08/2015 04:55:14 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].tbl_ConglomeradoCoralesAdultos(
	[CACAID] [int] IDENTITY(1,1) NOT NULL,
	[CAFeID] [int] NULL,
	[CAColID] [int] NULL,
	[CACuaID] [int] NULL,
	[CAEspID] [int] NULL,
	[CAACID] [int] NULL,
	[CATCAID] [int] NULL,
	[CAADID] [int] NULL,
	[CATVID] [int] NULL,
	[CAObservaciones] [nvarchar](150) NULL,
	[CAFechaEntrada] [date] NULL CONSTRAINT [DF_tbl_ConglomeradoCoralesAdultosFechaEntrada]  DEFAULT (getdate()),
	[CAUltimaActualizacion] [date] NULL CONSTRAINT [DF_tbl_ConglomeradoCoralesAdultosUltimaActualizacion]  DEFAULT (getdate()),
 CONSTRAINT [PK_ConglomeradoCoralesAdultos] PRIMARY KEY CLUSTERED 
(
	[CACAID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
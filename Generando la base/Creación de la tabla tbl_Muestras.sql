USE [CuevonesCSQL_Isael_bd001]
GO

/****** Object:  Table [dbo].[tbl_Muestras]    Script Date: 05/05/2015 01:51:16 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_Muestras](
	[MID] [int] IDENTITY(1,1) NOT NULL,
	[MNumero_de_cuadaro] [tinyint] NOT NULL,
	[MNumero_de_muestra] [tinyint] NOT NULL,
	[MMuestras] [int] NOT NULL,
	[MObservaciones] [nvarchar](150) NULL,
	[MCuaID] [int] NULL,
	[MUltimaActualización] [date] NOT NULL CONSTRAINT [DF_tbl_MUltimaActualización]  DEFAULT (getdate()),
	[MFechaEntrada] [date] NOT NULL CONSTRAINT [DF_tbl_MFechaEntrada]  DEFAULT (getdate()),
 CONSTRAINT [PK_tbl_Muestras] PRIMARY KEY CLUSTERED 
(
	[MID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tbl_Muestras]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Muestras_tbl_Cuadros] FOREIGN KEY([MCuaID])
REFERENCES [dbo].[tbl_Cuadros] ([CuaID])
GO

ALTER TABLE [dbo].[tbl_Muestras] CHECK CONSTRAINT [FK_tbl_Muestras_tbl_Cuadros]
GO



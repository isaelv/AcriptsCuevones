USE [CuevonesCSQL_Isael_bd001]
GO

/****** Object:  Table [dbo].[tbl_AreaColonias]    Script Date: 29/06/2015 05:53:40 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_AreaColonias](
	[ACID] [int] IDENTITY(1,1) NOT NULL,
	[ACDiametroMax] real null,
	[ACDiametroPer] real null,
	ACarea real null,
	ACObservaciones nvarchar(15) null,
	[ACFechaEntrada] [date] NULL CONSTRAINT [DF_tbl_ACFechaEntrada]  DEFAULT (getdate()),
	[ACUltimaActualizacion] [date] NULL CONSTRAINT [DF_tbl_ACUltimaActualizacion]  DEFAULT (getdate()),
 CONSTRAINT [PK_tbl_AreaColonias] PRIMARY KEY CLUSTERED 
(
	ACID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
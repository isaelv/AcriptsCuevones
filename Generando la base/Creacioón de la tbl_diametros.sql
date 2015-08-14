use CuevonesCSQL_Isael_bd001
go

set ansi_nulls on
go

set quoted_identifier on
go

create table tbl_Diametro
(
	DiaID int identity(1,1) not null,
	DiaDiametro real null,
	DiaObservaciones nvarchar (150) null,
	DiaFechaEntrada date not null constraint DF_tbl_DiaFechaEntrada default (getdate()),
	DiaUltimaActualizacion date not null constraint DF_tbl_DiaUltimaActualizacion default (getdate()),
	CONSTRAINT [PK_tbl_Diametro] PRIMARY KEY CLUSTERED 
(
	[DiaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

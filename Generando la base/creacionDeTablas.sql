use CuevonesCSQL_Isael_bd001
go
/*
/*******************************
CREACIÓN DE LA TABLA COLECTORES
********************************/


create table tbl_Colectores
(
ColID int identity (1,1) not null constraint PK_tbl_Colectores primary key,
ColNombre nvarchar(50) not null,
ColApellido_paterno nvarchar(50) not null,
ColApellido_materno nvarchar(50) not null, 
ColAbreviatura nvarchar (8) not null,
ColObservaciones nvarchar (150) null,
ColUltimaActualizacion date not null,
ColFechaEntrada date not null,
)


/*******************************
CREACIÓN DE LA TABLA CUADROS
********************************/


create table tbl_Cuadros
(
CuaID int identity (1,1) not null constraint PK_tbl_Cuadros primary key,
CuaNumero_de_cuadro tinyint not null, 
CuaObservaciones nvarchar(150) null,
CuaColID int null,
CuaConID int null,
CuaUltimaActualización date not null,
CuaFechaEntrada date not null,
)



/***************************************
CREACIÓN DE LA TABLA UNIDADES MUESTRALES
****************************************/

create table tbl_Unidades_muestrales
(
UMID int identity (1,1) not null constraint PK_tbl_Unidades_muestrales primary key,
UMNumero_de_muestra tinyint not null,
UMObservaciones nvarchar(150) null,
UMCuaID int null,
UMUltimaActualización date not null,
UMFechaEntrada date not null,
)


/***************************************
CREACIÓN DE LA TABLA CONDICIÓN
****************************************/


create table tbl_Condicion
(
ConID int identity (1,1) not null constraint PK_tbl_Condicion primary key,
ConCondicion nvarchar (50) not null,
ConObservaciones nvarchar(150) null,
ConSitID int null,
ConUltimaActualización date not null,
ConFechaEntrada date not null,
)



/***************************************
CREACIÓN DE LA TABLA FECHA
****************************************/

create table tbl_Fecha
(
FeID int identity (1,1) not null constraint PK_tbl_Fecha primary key,
FeFecha_de_colecta date not null,
FeObservaciones nvarchar (150) null,
FeCuaID int null,
FeUltimaActualización date not null,
FeFechaEntrada date not null,
)



/***************************************
CREACIÓN DE LA TABLA CORALES
****************************************/

create table tbl_Corales
(
CorID int identity (1,1) not null constraint PK_tbl_Corales primary key,
CorGenero nvarchar(50) not null,
CorEpiteto nvarchar(50) not null,
Corabreviatura nvarchar(50) not null,
Corobservaciones nvarchar(50) null,
CorGruID int null,
CorUltimaActualización date not null,
CorFechaEntrada date not null,
)


/***************************************
CREACIÓN DE LA TABLA ALGAS
****************************************/

CREATE table tbl_Algas
(
AlgID int identity (1,1) not null constraint PK_tbl_Algas primary key,
AlgGrupo_morfofuncional nvarchar(50) not null,
AlgAbreviatura nvarchar(10) not null,
AlgObservaciones nvarchar(150) null,
AlgGruID int null,
AlgUltimaActualización date not null,
AlgFechaEntrada date not null,
)


/***************************************
CREACIÓN DE LA TABLA SITIO
****************************************/

create table tbl_Sitio
(
SitID int identity (1,1) not null constraint PK_tbl_Sitio primary key,
SitArrecife nvarchar(150) not null,
SitObservaciones nvarchar(150) null,
SitUltimaActualización date not null,
SitFechaEntrada date not null,
)


/***************************************
CREACIÓN DE LA TABLA TIPO DE ARRECIFE
****************************************/

create table tbl_Tipo_de_arrecife
(
TipID int identity (1,1) not null constraint PK_tbl_Tipo_de_arrecife primary key,
TipTipo_de_arrecife nvarchar (150) not null,
TipObservaciones nvarchar (150) null,
TipUltimaActualización date not null,
TipFechaEntrada date not null,
)


/***************************************
CREACIÓN DE LA TABLA GRANDES GRUPOS
****************************************/

create table tbl_Grandes_grupos
(
GruID int identity (1,1) not null constraint PK_tbl_Grandes_grupos primary key,
GruGrupo nvarchar(150) not null,
GruObservaciones nvarchar(150) null,
GruUMID int null,
GruUltimaActualización date not null,
GruFechaEntrada date not null,
)

*/
/***************************************
CREACIÓN DE LA TABLA DATOS DE CAMPO
****************************************/

create table tbl_Datos_de_campo

(
DatID int identity (1,1) not null constraint PK_tbl_Datos_de_Campo primary key,
DatColID int null,
DatEspID int null,
DatFeID int null,
[DatCobertura_(%)] tinyint not null, 
[DatAltura_en_cm_(h1)] real null,
[DatAltura_en_cm_(h2)] real null,
[DatAltura_en_cm_(h3)] real null,
[DatDiámetro_(cm)] real null,
DatAbundancia_de_reclutas tinyint null,
DatObservaciones nvarchar(150) null,
DatUltimaActualización date not null,
DatFechaEntrada date not null,
)


/*
/***************************************
CREACIÓN DE LA TABLA TODAS LAS ESPECIES
****************************************/

create table tbl_Todas_Especies

(
TEID int identity (1,1) not null constraint PK_tbl_Todas_Especies primary key,
TEEspecie nvarchar(50) not null,
TEAbreviatura nvarchar(10) null,
TEObservaciones nvarchar(150) null,
TEUltimaActualización date not null,
TEFechaEntrada date not null,
)
*/
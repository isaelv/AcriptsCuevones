use CuevonesCSQL_Isael_bd001
go

alter table tbl_Datos_de_campo
with check
add constraint FK_tbl_Datos_de_campo_tbl_Fecha
foreign key (DatFeID)
references tbl_Fecha(FeID);
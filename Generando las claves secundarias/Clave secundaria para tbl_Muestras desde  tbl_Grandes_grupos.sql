use CuevonesCSQL_Isael_bd001
go

alter table tbl_Muestras
with check
add constraint FK_tbl_Muestras_tbl_Grandes_grupos
foreign key (MGruID)
references tbl_Grandes_grupos (GruID)
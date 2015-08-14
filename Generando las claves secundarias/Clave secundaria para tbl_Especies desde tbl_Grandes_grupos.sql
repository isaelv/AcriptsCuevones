use CuevonesCSQL_Isael_bd001
go

alter table tbl_Especies
with check
add constraint FK_tbl_Especies_tbl_Grandes_grupos
foreign key (EspGruID)
references tbl_Grandes_grupos (GruID)
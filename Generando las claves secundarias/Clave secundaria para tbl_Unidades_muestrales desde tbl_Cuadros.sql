use CuevonesCSQL_Isael_bd001
go

alter table tbl_Unidades_muestrales
with check
add constraint FK_tbl_Unidades_muestrales_tbl_Cuadros
foreign key (UMCuaID)
references tbl_Cuadros(CuaID);
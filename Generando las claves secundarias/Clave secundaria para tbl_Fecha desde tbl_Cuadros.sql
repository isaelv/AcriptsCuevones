use CuevonesCSQL_Isael_bd001
go

alter table tbl_Fecha
with check
add constraint FK_tbl_Fecha_tbl_Cuadros
foreign key (FeCuaID)
references tbl_Cuadros (CuaID);
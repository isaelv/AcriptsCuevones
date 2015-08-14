use CuevonesCSQL_Isael_bd001
go

alter table tbl_Cuadros
with check
add constraint FK_tbl_Cuadros_tbl_Condicion
foreign key (CuaConID)
references tbl_Condicion (ConID)
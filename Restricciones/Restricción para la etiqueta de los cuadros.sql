use CuevonesCSQL_Isael_bd001
go

alter table tbl_Cuadros
with check
add constraint CK_tbl_Cuadros_CuaNumero_de_cuadro
check (CuaNumero_de_cuadro between 1 and 80);
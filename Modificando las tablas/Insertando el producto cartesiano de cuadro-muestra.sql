use CuevonesCSQL_Isael_bd001
go

select c.CuaNumero_de_cuadro, m.UMNumero_de_muestra
from tbl_Cuadros c
cross join tbl_Unidades_muestrales m
order by c.CuaNumero_de_cuadro

insert into tbl_Muestras (MNumero_de_cuadro, MNumero_de_muestra)
select c.CuaNumero_de_cuadro, m.UMNumero_de_muestra
from tbl_Cuadros c
cross join tbl_Unidades_muestrales m
order by c.CuaNumero_de_cuadro
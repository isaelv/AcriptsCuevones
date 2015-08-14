use CuevonesCSQL_Isael_bd001
go

insert into tbl_Unidades_muestrales(UMNumero_de_muestra)

select a.Muestra
from datos2013 a

union

select b.Muestra
from datos2013 b


union

select c.Muestra
from datos2014 c

union

select d.Muestra
from Diciembre2014 d

order by Muestra
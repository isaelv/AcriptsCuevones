use CuevonesCSQL_Isael_bd001
go

update dc
set dc.DatMID=m.MID
from tbl_Muestras m
inner join tbl_Datos_de_campo dc
on m.MNumero_de_cuadro=dc.DatCuadro and dc.Datmuestra=m.MNumero_de_muestra
where dc.DatMID is null
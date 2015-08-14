use CuevonesCSQL_Isael_bd001
go

select m.MID,d.DatMID, m.MMuestras, d.DatCuadro, d.Datmuestra,d.[DatCobertura_(%)]
from tbl_Muestras m
inner join tbl_Datos_de_campo d
on m.MNumero_de_cuadro=d.DatCuadro and d.Datmuestra=m.MNumero_de_muestra
where d.DatMID is null
order by MID

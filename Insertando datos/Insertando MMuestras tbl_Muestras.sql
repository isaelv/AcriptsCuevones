use CuevonesCSQL_Isael_bd001
go

update tbl_Muestras
set MMuestras = '0'+ cast(MNumero_de_cuadro as nvarchar(50))+'0'+cast(MNumero_de_muestra as nvarchar(50))



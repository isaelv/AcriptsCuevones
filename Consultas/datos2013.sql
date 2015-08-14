use CuevonesCSQL_Isael_bd001
go

select *
from datos2013
where [Tiempo de muestreo] = 'Febrero de 2013'
order by fecha, Cuadro, Muestra

use CuevonesCSQL_Isael_bd001
go
/*
update reclutas20122015
set Muestra = 3
where consecutivo = 574
*/

select *
from reclutas20122015
where Diametro is null and altura is null and Identidad != 'SR'
order by Consecutivo
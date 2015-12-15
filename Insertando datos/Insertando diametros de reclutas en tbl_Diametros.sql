use CuevonesCSQL_Isael_bd001
go

insert into tbl_Diametro(DiaDiametro)

select distinct Diametro
from reclutas20122015
order by Diametro
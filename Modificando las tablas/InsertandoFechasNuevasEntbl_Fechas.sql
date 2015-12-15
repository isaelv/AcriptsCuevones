use CuevonesCSQL_Isael_bd001
go

insert into tbl_Fecha (FeFecha_de_colecta)
select distinct (r.Fecha) 
from reclutas20122015 r

left join tbl_Fecha m
on m.FeFecha_de_colecta = r.Fecha
where m.FeFecha_de_colecta is null
order by r.Fecha;
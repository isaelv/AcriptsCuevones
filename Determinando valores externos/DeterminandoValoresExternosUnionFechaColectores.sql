use CuevonesCSQL_Isael_bd001
go

select distinct f.FeID, c.ColID

from tbl_Fecha f, tbl_Colectores c
where  
order by f.FeID, c.ColID
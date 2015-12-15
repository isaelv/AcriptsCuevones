use CuevonesCSQL_Isael_bd001
go

insert into tbl_TejidoVivo (TVTejidoVivo)
select distinct TejidoVivotxt
from CASeptiembre2014


left join tbl_TejidoVivo
on isnull(round(TejidoVivoTxt,2),99999.99)=ISNULL(ROUND(TVTejidoVivo,2),99999.99)
where tvid is null
order by TejidoVivoTxt
use CuevonesCSQL_Isael_bd001
GO

insert into tbl_TallaColonias (TCATalla)
select distinct [Talla]
from CAFebrero2013
order by Talla
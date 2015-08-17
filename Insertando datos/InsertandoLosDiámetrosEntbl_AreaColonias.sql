use CuevonesCSQL_Isael_bd001
GO

insert into tbl_AreaColonias (ACDiametroMax, ACDiametroPer, ACarea)
select distinct MD, PD, area
from CAFebrero2013A
order by MD, PD, area
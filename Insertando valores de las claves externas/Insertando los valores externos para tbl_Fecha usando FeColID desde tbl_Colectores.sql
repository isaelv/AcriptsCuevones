use CuevonesCSQL_Isael_bd001
go

update f
	set f.FeColID=co.ColID
from tbl_Fecha f
inner join datos2012 d
	on f.FeFecha_de_colecta=d.Fecha
inner  join tbl_Colectores co
	on d.Colector=co.ColAbreviatura
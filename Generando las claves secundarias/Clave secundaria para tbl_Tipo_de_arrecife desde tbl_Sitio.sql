use CuevonesCSQL_Isael_bd001
go

alter table tbl_Tipo_de_arrecife
with check
add constraint FK_tbl_Tipo_de_arrecife_tbl_Sitio
foreign key (TipSitID)
references tbl_Sitio (SitID)
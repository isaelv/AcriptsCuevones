use CuevonesCSQL_Isael_bd001
go

alter table tbl_Condicion
with check
add constraint FK_tbl_Condicion_tbl_Sitio
foreign key (ConSitID)
references tbl_Sitio (SitID);
#Archivo readme de la Base de datos Cuevones escala 100 cm2

## Identificación de las muestras excluidas en tbl_ReclutasConglomerado

###¿Cuáles de las muestras de 10 x 10 cm no se revisaron para reclutas cada temporada?

####ARCHIVO: "C:\Users\Héctor\Desktop\Scripts creación de la BDCuevones\varillasReclutas\Identificando muestras\identificandoMuestrasConReclutasYMuestrasExcluidas_SR_NM.sql"


Para determinar las muestras en "tbl_Muestras" que no cuentan con datos ya sea por que no tuvieron reclutas o que no se revissaron se hizo una consulta con EXCEPT del tipo:  

SELECT (Primera consulta.  En esta consulta se cargan las 2000 unidades de campo)  

EXCEPT (Considerando la primera consulta EXCEPT como punto de partida reducirá el listado de tbl_Muestras para sólo desplegar aquellas resultantes de la segunda consulta SELECT)  

SELECT (Segunda consulta. En esta consulta se seleccionan las unidades muestrales en tbl_ReclutasConglomerado)  

El resultado final es el listado de las muestras no incluidas en tbl_ReclutasConglomerado ya sea porque no tenían reclutas o no se revisaron.  

###¿Cómo insertar las muestras NO MEDIDAS y SIN RECLUTAS en la tbl_ReclutasConglomerado?

####ARCHIVO: "C:\Users\Héctor\Desktop\Scripts creación de la BDCuevones\varillasReclutas\Identificando muestras\insertandoMuestrasSinReclutasYNoMedidas.sql"


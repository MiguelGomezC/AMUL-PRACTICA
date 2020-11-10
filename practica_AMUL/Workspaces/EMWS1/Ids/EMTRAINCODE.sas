*------------------------------------------------------------*;
* Configuración fuente de datos;
*------------------------------------------------------------*;
libname EMWS1 "C:\Users\Admin\Documents\GitHub\AMUL-PRACTICA\practica_AMUL\Workspaces\EMWS1";
*------------------------------------------------------------*;
* Ids: creando datos DATA;
*------------------------------------------------------------*;
data EMWS1.Ids_DATA (label="")
/ view=EMWS1.Ids_DATA
;
set AMUL.TRANSPUESTO;
run;

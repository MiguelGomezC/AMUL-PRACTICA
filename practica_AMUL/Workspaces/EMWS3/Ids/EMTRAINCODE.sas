*------------------------------------------------------------*;
* Configuración fuente de datos;
*------------------------------------------------------------*;
libname EMWS3 "C:\Users\Admin\Documents\GitHub\AMUL-PRACTICA\practica_AMUL\Workspaces\EMWS3";
*------------------------------------------------------------*;
* Ids: creando datos DATA;
*------------------------------------------------------------*;
data EMWS3.Ids_DATA (label="")
/ view=EMWS3.Ids_DATA
;
set AMUL.TERMINOS_DOCUMENTOS;
run;

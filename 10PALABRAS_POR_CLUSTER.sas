LIBNAME AMUL 'C:\Users\Admin\Documents\GitHub\AMUL-PRACTICA\DATA';

PROC SORT DATA = AMUL.TERMINOS_DOCUMENTOS_99;
  BY ID_DOCUMENTO;
RUN;
QUIT;

DATA AMUL.SEGMENTOS;
  SET AMUL.TERMINOS_DOCUMENTOS_99;
  SET AMUL.RESULTADOS;
RUN;

/* GROUPBY */

proc means data=amul.segmentos nway;
class CLASE;
var _NUMERIC_;
output out=want(drop=id_documento) sum = ;
run;

PROC TRANSPOSE DATA = WORK.WANT OUT = WORK.PALABRASPORCLUSTER(RENAME = (COL1 = ARMENIA COL2 = ISRAELPALESTINA COL3 = MEDICINA COL4 = TECNOLOGIA));
RUN;

PROC SORT DATA = WORK.PALABRASPORCLUSTER OUT = AMUL.PALABRAS_ARMENIA(KEEP=_NAME_ ARMENIA);
  BY DESCENDING ARMENIA;
RUN;
QUIT;

PROC SORT DATA = WORK.PALABRASPORCLUSTER OUT = AMUL.PALABRAS_ISRAELPALESTINA(KEEP=_NAME_ ISRAELPALESTINA);
  BY DESCENDING ISRAELPALESTINA;
RUN;
QUIT;

PROC SORT DATA = WORK.PALABRASPORCLUSTER OUT = AMUL.PALABRAS_MEDICINA(KEEP=_NAME_ MEDICINA);
  BY DESCENDING MEDICINA;
RUN;
QUIT;

PROC SORT DATA = WORK.PALABRASPORCLUSTER OUT = AMUL.PALABRAS_TECNOLOGIA(KEEP=_NAME_ TECNOLOGIA);
  BY DESCENDING TECNOLOGIA;
RUN;
QUIT;

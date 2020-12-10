
PROC SORT DATA = AMUL.textmininginputs3 OUT = WORK.ORDENADITO;
  BY ID_DOCUMENTO PALABRA;
RUN;

PROC TRANSPOSE DATA = WORK.ORDENADITO OUT = WORK.COUNTS(KEEP = ID_DOCUMENTO PITT PITTSBURGH CHASTITI);
  VAR NUMVECPAL;
  BY ID_DOCUMENTO;
  ID PALABRA;
RUN;

DATA AMUL.TABLA;
  SET WORK.COUNTS;
  IF PITTSBURGH EQ . THEN PITTSBURGH = 0;
  IF PITT EQ . THEN PITT= 0;
  IF CHASTITI EQ . THEN CHASTITI = 0;
RUN;

/* ME CARGO LAS FILAS DONDE LAS TRES PALABRAS NO APARECEN */

proc sql;
        delete from AMUL.TABLA
           where (PITTSBURGH EQ 0 AND PITT EQ 0 AND CHASTITI EQ 0);
RUN;
QUIT;

PROC CORR DATA = AMUL.TABLA pearson spearman kendall hoeffding
          plots=matrix(histogram);;
  VAR CHASTITI PITTSBURGH;
RUN;

/* COMPARAR LAS INSTANCIAS DONDE APARECEN LAS TRES VS CUANDO APARECE SOLO UNA */

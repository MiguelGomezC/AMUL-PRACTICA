LIBNAME AMUL 'C:\Users\Admin\Documents\GitHub\AMUL-PRACTICA\DATA';

/*  TF  */
PROC SQL;
  CREATE TABLE
  WORK.SUM_DOCUMENTO AS
  SELECT ID_DOCUMENTO, PALABRA, NUMVECPAL, SUM(NUMVECPAL) AS OCURRENCIAS
  FROM AMUL.Textmininginputs3
  GROUP BY ID_DOCUMENTO;
QUIT;

DATA TF(DROP = NUMVECPAL);
  SET WORK.SUM_DOCUMENTO;
  TF = NUMVECPAL/OCURRENCIAS;
RUN;

/*  IDF  */

PROC SQL;
  CREATE TABLE
  WORK.COUNT_DOCUMENTO AS
  SELECT ID_DOCUMENTO, PALABRA, NUMVECPAL, COUNT(PALABRA) AS OCURRENCIAS_EN_DOCUMENTO
  FROM AMUL.Textmininginputs3
  GROUP BY PALABRA;
RUN;

DATA IDF(DROP = NUMVECPAL);
  SET WORK.COUNT_DOCUMENTO;
  IDF = LOG(3000/(1+OCURRENCIAS_EN_DOCUMENTO));
RUN;

/*  TFIDF */

PROC SORT DATA = WORK.IDF;
  BY ID_DOCUMENTO PALABRA;
RUN;
QUIT;

PROC SORT DATA = WORK.TF;
  BY ID_DOCUMENTO PALABRA;
RUN;
QUIT;

DATA WORK.MERGED;
  MERGE WORK.IDF WORK.TF;
  BY ID_DOCUMENTO PALABRA;
RUN;

DATA AMUL.VECTORIZADO(KEEP=ID_DOCUMENTO PALABRA TFIDF);
  SET WORK.MERGED;
  TFIDF = TF * IDF;
RUN;

/*  DISTRIBUCIÓN DE SUM(TFIDF) */

PROC SQL;
  CREATE TABLE
  WORK.DISTRIBUCION_TFIDF AS
  SELECT PALABRA, SUM(TFIDF) AS TFIDF_ACUMULADO
  FROM AMUL.VECTORIZADO
  GROUP BY PALABRA;
QUIT;

PROC UNIVARIATE DATA=WORK.DISTRIBUCION_TFIDF;
	VAR TFIDF_ACUMULADO;
	OUTPUT OUT=SALIDA PCTLPTS=(0 to 100 by 0.1) 
	PCTLPRE=PERCENTIL;
RUN;
QUIT;

/* COJO EL PERCENTIL 99, POR EJEMPLO */

DATA WORK.PALABRAS_BUENAS;
SET WORK.DISTRIBUCION_TFIDF;
IF TFIDF_ACUMULADO>=6.0623868054;
RUN;

PROC SQL;
  CREATE TABLE
  WORK.INTERSECCION AS
  SELECT A.ID_DOCUMENTO, A.TFIDF, A.PALABRA
  FROM AMUL.VECTORIZADO A INNER JOIN WORK.PALABRAS_BUENAS B
  ON A.PALABRA = B.PALABRA
  ORDER BY A.ID_DOCUMENTO;
QUIT;

/*  SOLO FALTA TRANSPONER */

PROC SORT DATA = WORK.INTERSECCION;
  BY ID_DOCUMENTO;
RUN;

PROC TRANSPOSE DATA = WORK.INTERSECCION OUT = AMUL.TRANSPUESTO(DROP=_NAME_ _LABEL_)
  PREFIX = TOKEN;
  VAR TFIDF;
  BY ID_DOCUMENTO;
  ID PALABRA;
RUN;

/* HAY QUE PENSAR SI USAR UN PERCENTIL MAYOR */

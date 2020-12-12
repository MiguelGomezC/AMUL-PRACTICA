PROC FASTCLUS DATA = AMUL.TERMINOS_DOCUMENTOS(DROP = id_documento)
              OUT = AMUL.CLUSTER_PERSONALIZADO
              MAXCLUSTERS = 3
              MAXITER=1 DRIFT
              SEED = WORK.ESCANDALO_RELIGIOSO
              OUTSEED = AMUL.FINALES_PERSONALIZADOS;
  /* VAR; */
RUN;
QUIT;
LIBNAME AMUL 'C:\Users\Admin\Documents\GitHub\AMUL-PRACTICA\DATA';

DATA WORK.ESCANDALO_RELIGIOSO;
  SET AMUL.TERMINOS_DOCUMENTOS;
  IF (CHIP EQ 0 AND BATTERI EQ 0 AND JEW EQ 0 AND ARAB EQ 0 AND ISRAEL EQ 0 AND PALESTINIAN EQ 0) AND (CHASTITI NE 0 AND PITTSBURGH NE 0 AND SHAME NE 0);
RUN;

DATA WORK.CONFLICTO_ORIENTEMEDIO;
  SET AMUL.TERMINOS_DOCUMENTOS;
  IF (CHIP EQ 0 AND BATTERI EQ 0 AND CHASTITI EQ 0 AND PITTSBURGH EQ 0 AND SHAME EQ 0 AND UNIVERS EQ 0) AND (JEW NE 0 AND ARAB NE 0 AND ISRAEL NE 0 AND PALESTINIAN NE 0);
RUN;

DATA WORK.TECNOLOGIAS;
  SET AMUL.TERMINOS_DOCUMENTOS;
  IF (JEW EQ 0 AND ARAB EQ 0 AND ISRAEL EQ 0 AND PALESTINIAN EQ 0 AND CHASTITI EQ 0 AND PITTSBURGH EQ 0 AND SHAME EQ 0) AND (CHIP NE 0 AND BATTERI NE 0);
RUN;

/* TOMAR UNA OBSERVACIÓN DE CADA DATAFRAME GENERADO */

proc sort data = escandalo_religioso;
  by descending PITTSBURGH;
run;

data centroide_escandalo_religioso;
  set escandalo_religioso;
  if _n_=1 then output;
run;

proc sort data = conflicto_orientemedio;
  by descending israel;
run;

data centroide_conflicto_orientemedio;
  set conflicto_orientemedio;
  if _n_=1 then output;
run;

proc sort data = tecnologias;
  by descending chip;
run;

data centroide_tecnologias;
  set tecnologias;
  if _n_=1 then output;
run;

/* CREAR TABLA CON LOS CENTROIDES OBTENIDOS */

DATA AMUL.CENTROIDES_PERSONALIZADOS;
  SET WORK.CENTROIDE_ESCANDALO_RELIGIOSO; OUTPUT;
  SET WORK.CENTROIDE_ORIENTEMEDIO; OUTPUT;
  SET WORK.CENTROIDE_TECNOLOGIAS; OUTPUT;
RUN;

/* PROCEDER AHORA A HACER UN PROC FASTCLUS CON LOS CENTROIDES OBTENIDOS */

/*ELIMINACION DE COLUMNAS*/
DATA amul.SEEDS_935;
  SET amul.SEEDS_935 (KEEP = ABSOLUT--ZUMA);
RUN;
/*ELIMINACION DE FILAS*/
DATA amul.SEEDS_935;
  SET amul.SEEDS_935;
  ID = _N_;
RUN;
PROC SQL;
   DELETE
      FROM amul.SEEDS_935
      WHERE ID NE 9 AND ID NE 3 AND ID NE 5;
RUN;

/* FASTCLUS */
PROC FASTCLUS DATA = AMUL.TERMINOS_DOCUMENTOS(DROP = id_documento)
              OUT = AMUL.CLUSTER_PERSONALIZADO
              MAXCLUSTERS = 4
	            MAXITER=1 DRIFT
	            SEED = amul.SEEDS_935
              OUTSEED = AMUL.FINALES_PERSONALIZADOS;
  /* VAR; */
RUN;
QUIT;

LIBNAME AMUL 'C:\Users\Admin\Documents\GitHub\AMUL-PRACTICA\DATA';

/***************************/
/* COMPONENTES PRINCIPALES */
/***************************/

PROC PRINCOMP DATA = AMUL.TERMINOS_DOCUMENTOS
              OUT = AMUL.COMPONENTES
              NOINT
	      N = 50
              noprint;
  /* VAR; */
RUN;
QUIT;

DATA AMUL.COMPONENTES;
  SET AMUL.COMPONENTES(KEEP = id_documento Prin1-Prin50); /* 'keep' de las componentes */
RUN;

/* Representacion de componentes */

PROC TEMPLATE;
  define statgraph scatterplot;
  begingraph; 
    entrytitle "Componentes 1 y 2"; 
    layout overlay; 	 
      scatterplot x = prin1 y = prin2 / 
      /* datalabel = id_documento */; /*Si se pone el id no se ve nada*/
    endlayout;	
  endgraph;
end;
RUN;

PROC SGRENDER DATA = AMUL.COMPONENTES TEMPLATE = scatterplot;
RUN;

/********************/
/* ANALISIS CLUSTER */
/********************/

/* MUESTRA DE 100 DOCUMENTOS */

DATA AMUL.TERMINOS_DOCUMENTOS;
  SET AMUL.TERMINOS_DOCUMENTOS;
  ALEA = RANUNI(12345);
RUN;
 
PROC SORT DATA = AMUL.TERMINOS_DOCUMENTOS;
  BY ALEA;
RUN;
QUIT;

DATA AMUL.TERMINOS_DOCUMENTOS;
  SET AMUL.TERMINOS_DOCUMENTOS;
  IF  _N_ <= 100;
RUN;

/* PROC CLUSTER */

PROC CLUSTER DATA = AMUL.TERMINOS_DOCUMENTOS(DROP = id_documento)
             METHOD = WARD /* SINGLE, COMPLETE , AVERAGE, CENTROID */
	     OUTTREE = AMUL.CLUSTER_WARD CCC RSQUARE NOPRINT;
  /* VAR; */
RUN;
QUIT;

PROC TREE DATA = AMUL.CLUSTER_WARD
          N = 10 /* NUMERO DE CLUSTERS QUE SE GENERAN */
	  OUT = AMUL.CLUSTER_JERARQUICO;
RUN;
QUIT;

/* PROC FASTCLUS */

PROC FASTCLUS DATA = AMUL.TERMINOS_DOCUMENTOS(DROP = id_documento)
              OUT = AMUL.CLUSTER_KMEANS
              MAXCLUSTERS = 5
	      /* PONER "MAXITER=1 DRIFT" PARA MCQUEEN */
	      /* SEED = TABLA CON COORDENADAS CENTROIDES INICIALES*/  
              OUTSEED = AMUL.KMEANS_CENTROIDES_FINALES;
  /* VAR; */
RUN;
QUIT;

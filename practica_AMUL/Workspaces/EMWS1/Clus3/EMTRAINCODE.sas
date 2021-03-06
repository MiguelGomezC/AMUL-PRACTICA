*------------------------------------------------------------*;
* Clus3: clustering preliminar;
*------------------------------------------------------------*;
*------------------------------------------------------------* ;
* Clus3: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;

%mend DMDBClass;
*------------------------------------------------------------* ;
* Clus3: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    PC_1 PC_10 PC_2 PC_3 PC_4 PC_5 PC_6 PC_7 PC_8 PC_9
%mend DMDBVar;
*------------------------------------------------------------*;
* Clus3: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=EMWS1.PRINCOMP3_TRAIN
dmdbcat=WORK.Clus3_DMDB
maxlevel = 513
out=WORK.Clus3_DMDB
;
var %DMDBVar;
run;
quit;
*------------------------------------------------------------* ;
* Clus3: Inputs intervalo Macro ;
*------------------------------------------------------------* ;
%macro DMVQINTERVAL;
    PC_1 PC_10 PC_2 PC_3 PC_4 PC_5 PC_6 PC_7 PC_8 PC_9
%mend DMVQINTERVAL;
*------------------------------------------------------------*;
* Clus3: ejecutar procedimiento DMVQ;
*------------------------------------------------------------*;
title;
options nodate;
proc dmvq data=WORK.Clus3_DMDB dmdbcat=WORK.Clus3_DMDB std=RANGE nominal=GLM ordinal=RANK
;
input %DMVQINTERVAL / level=interval;
VQ maxc = 50 clusname=_SEGMENT_ CLUSLABEL="Id de segmento" DISTLABEL="Distancia";
MAKE outvar=EMWS1.Clus3_OUTVAR;
INITIAL radius=0
;
TRAIN tech=FORGY
;
SAVE outstat=WORK.Clus3_OUTSTAT outmean=EMWS1.Clus3_OUTMEAN;
code file="C:\Users\Admin\Documents\GitHub\AMUL-PRACTICA\practica_AMUL\Workspaces\EMWS1\Clus3\DMVQSCORECODE.sas"
group=Clus3
;
run;
quit;
*------------------------------------------------------------* ;
* Clus3: variables DMVQ;
*------------------------------------------------------------* ;
%macro dmvqvars;
    PC_1 PC_10 PC_2 PC_3 PC_4 PC_5 PC_6 PC_7 PC_8 PC_9
%mend ;
*------------------------------------------------------------*;
* Clus3: determinando el n�mero de cl�steres;
*------------------------------------------------------------*;
proc cluster data=EMWS1.Clus3_OUTMEAN method=WARD pseudo outtree=EMWS1.Clus3_CLUSSEED
;
var %dmvqvars;
copy _SEGMENT_;
run;
quit;
proc sort data =EMWS1.Clus3_CLUSSEED out=WORK._SEED_;
by _ncl_;
where (_ccc_ > -99999.0);
run;
data WORK._SEED2_;
retain oJump occc oncl;
set WORK._SEED_;
_lccc_=lag(_ccc_);
if _lccc_ > . then jump = _ccc_ - _lccc_;
if jump<0 and ojump>0 then do;
* Have a local Max;
numclus = oncl;
cccvalue = occc;
output;
end;
ojump = jump;
occc = _ccc_;
oncl = _ncl_;
run;
proc print data=WORK._SEED2_ label;
var numclus cccvalue;
label numclus="%sysfunc(sasmsg(sashelp.dmine, rpt_numclus_vlabel ,  NOQUOTE))";
label cccvalue="%sysfunc(sasmsg(sashelp.dmine, rpt_ccc_vlabel ,     NOQUOTE))";
title10 "%sysfunc(sasmsg(sashelp.dmine, rpt_OptClus_title, NOQUOTE))";
run;
title10;
data WORK._SEED2_;
length msg $200;
set WORK._SEED2_ end=eof;
retain select cccSelect 0 numSel;
if _N_=1 then numSel = numClus;
if cccvalue>=3 then do;
if 20>= numclus >= 2 and cccSelect<1 then do;
cccSelect = 1;
select =1;
numSel = numClus;
end;
end;
else if 20>= numclus >= 2 and select<1 then do;
select = 1;
numSel = numClus;
end;
if eof then do;
if ^(select=1 and cccselect=1) then do;
put "*------------------------------------------------------------*";
put '*;';
put "WARNING: puede que el n�mero de cl�steres seleccionados basados en los valores CCC no sean v�lidos. Consulte la documentaci�n de Cubic Clustering Criterion.";
put '*;';
put "*------------------------------------------------------------*";
end;
if select<1 then do;
msg = sasmsg('sashelp.dmine', 'rpt_noCCCclusternum_note', 'NOQUOTE');
put msg;
end;
if cccselect<1 then do;
msg = sasmsg('sashelp.dmine', 'rpt_noValidclusterNum_note', 'NOQUOTE');
put msg;
end;
call symput('em_maxC', strip(put(numSel,best.)));
end;
run;
*------------------------------------------------------------*;
* Clus3: entrenamiento;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* Clus3: ejecutar procedimiento DMVQ;
*------------------------------------------------------------*;
title;
options nodate;
proc dmvq data=WORK.Clus3_DMDB dmdbcat=WORK.Clus3_DMDB std=RANGE nominal=GLM ordinal=RANK
;
input %DMVQINTERVAL / level=interval;
VQ maxc = 26 clusname=_SEGMENT_ CLUSLABEL="Id de segmento" DISTLABEL="Distancia";
MAKE outvar=EMWS1.Clus3_OUTVAR;
INITIAL radius=0
;
TRAIN tech=FORGY
;
SAVE outstat=EMWS1.Clus3_OUTSTAT outmean=EMWS1.Clus3_OUTMEAN;
code file="C:\Users\Admin\Documents\GitHub\AMUL-PRACTICA\practica_AMUL\Workspaces\EMWS1\Clus3\DMVQSCORECODE.sas"
group=Clus3
;
run;
quit;

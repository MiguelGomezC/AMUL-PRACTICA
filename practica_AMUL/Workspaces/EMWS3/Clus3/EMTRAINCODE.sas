*------------------------------------------------------------*;
* Clus3: clustering preliminar;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* Create DMDB macros;
%let _sns = %sysfunc(getoption(SOURCE));
options nosource;
*------------------------------------------------------------* ;
* Clus3: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;

%mend DMDBClass;
*------------------------------------------------------------* ;
* Clus3: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    ACCESS ADAM ADDRESS ADVANC AMERICAN ANDI ANSWER APPLIC APPRECI ARAB AREA ARGIC
   ARMENIA ARMENIAN ATTACK AUDIO BANK BASE BATTERI BILL BOOK BRAIN BRIAN BUILD
   BUTTON CALIFORNIA CALL CAN CARD CASE CENTER CHANG CHIP CIRCUIT CLIENT CODE
   COLOR COMMUN COMP COMPANI COMPIL COMPUT CONNECT CONTROL COPI CORRECT CREAT
   CURRENT DAI DATA DAVID DEPART DEPT DESIGN DETECTOR DEVIC DISEAS DISPLAI
   DISTRIBUT DOCTOR DOESN DON DRAW DRIVE DRUG EDU EFFECT ELECTR ELECTRON EMAIL
   ENGIN ERROR EVENT EXPERI FACT FAX FEEL FILE FIND FOLLOWUP FONT FOOD FRI FRIEND
   FUNCTION GEB GENER GEORGIA GIVE GOOD GORDON GOVERN GRAPHIC GREAT GREEK GROUND
   GROUP HAPPEN HEAR HIGH HOME IDEA IMAG INCLUD INFO INFORM INPUT INSTITUT
   INTEREST INTERNET ISRA ISRAEL JEW JEWISH JOHN KEYBOARD KEYWORD KILL KIND LEVEL
   LIST LIVE LONG MACHIN MAIL MANAG MARK MED MEDIC MEDICIN MEMORI MICHAEL MIKE MON
   MOTIF MOTOROLA NATION NETWORK NEW NEWS NEWSREAD NOIS NUMBER OPER OPINION ORIGIN
   OUTPUT PAIN PALESTINIAN PART PATIENT PERSON PHONE PITT PITTSBURGH PLACE POINT
   POLICI POSIT POST POWER PROBLEM PRODUCT PROGRAM PROJECT PUBLIC QUESTION RADAR
   RADIO READ REASON RECEIV REMEMB REPLI REPORT REQUIR RESEARCH RESPONS ROBERT RUN
   SAT SCHOOL SCI SCIENC SCREEN SELL SEND SERDAR SERVER SERVIC SHOW SIDE SIGNAL
   SOFTWAR SOUND SOURC STANDARD START STATE STEVE STUDI SUBSCRIB SUGGEST SUN
   SUPPORT SWITCH SYSTEM TALK TECHNOLOG TERMIN TEST THAT THU TIME TREATMENT TRUE
   TUE TURKISH TYPE UNIV UNIVERS UNIX USENET USER UTEXA UUCP VERSION VIRGINIA
   VOLTAG WATER WED WIDGET WINDOW WIRE WONDER WORK WORLD XLIB XTERM YEAR YOU
%mend DMDBVar;
options &_sns;
* End DMDB macros generation;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* Clus3: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=EMWS3.Ids2_DATA
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
    ACCESS ADAM ADDRESS ADVANC AMERICAN ANDI ANSWER APPLIC APPRECI ARAB AREA ARGIC
   ARMENIA ARMENIAN ATTACK AUDIO BANK BASE BATTERI BILL BOOK BRAIN BRIAN BUILD
   BUTTON CALIFORNIA CALL CAN CARD CASE CENTER CHANG CHIP CIRCUIT CLIENT CODE
   COLOR COMMUN COMP COMPANI COMPIL COMPUT CONNECT CONTROL COPI CORRECT CREAT
   CURRENT DAI DATA DAVID DEPART DEPT DESIGN DETECTOR DEVIC DISEAS DISPLAI
   DISTRIBUT DOCTOR DOESN DON DRAW DRIVE DRUG EDU EFFECT ELECTR ELECTRON EMAIL
   ENGIN ERROR EVENT EXPERI FACT FAX FEEL FILE FIND FOLLOWUP FONT FOOD FRI FRIEND
   FUNCTION GEB GENER GEORGIA GIVE GOOD GORDON GOVERN GRAPHIC GREAT GREEK GROUND
   GROUP HAPPEN HEAR HIGH HOME IDEA IMAG INCLUD INFO INFORM INPUT INSTITUT
   INTEREST INTERNET ISRA ISRAEL JEW JEWISH JOHN KEYBOARD KEYWORD KILL KIND LEVEL
   LIST LIVE LONG MACHIN MAIL MANAG MARK MED MEDIC MEDICIN MEMORI MICHAEL MIKE MON
   MOTIF MOTOROLA NATION NETWORK NEW NEWS NEWSREAD NOIS NUMBER OPER OPINION ORIGIN
   OUTPUT PAIN PALESTINIAN PART PATIENT PERSON PHONE PITT PITTSBURGH PLACE POINT
   POLICI POSIT POST POWER PROBLEM PRODUCT PROGRAM PROJECT PUBLIC QUESTION RADAR
   RADIO READ REASON RECEIV REMEMB REPLI REPORT REQUIR RESEARCH RESPONS ROBERT RUN
   SAT SCHOOL SCI SCIENC SCREEN SELL SEND SERDAR SERVER SERVIC SHOW SIDE SIGNAL
   SOFTWAR SOUND SOURC STANDARD START STATE STEVE STUDI SUBSCRIB SUGGEST SUN
   SUPPORT SWITCH SYSTEM TALK TECHNOLOG TERMIN TEST THAT THU TIME TREATMENT TRUE
   TUE TURKISH TYPE UNIV UNIVERS UNIX USENET USER UTEXA UUCP VERSION VIRGINIA
   VOLTAG WATER WED WIDGET WINDOW WIRE WONDER WORK WORLD XLIB XTERM YEAR YOU
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
MAKE outvar=EMWS3.Clus3_OUTVAR;
INITIAL radius=0
;
TRAIN tech=FORGY
;
SAVE outstat=WORK.Clus3_OUTSTAT outmean=EMWS3.Clus3_OUTMEAN;
code file="C:\Users\Admin\Documents\GitHub\AMUL-PRACTICA\practica_AMUL\Workspaces\EMWS3\Clus3\DMVQSCORECODE.sas"
group=Clus3
;
run;
quit;
*------------------------------------------------------------* ;
* Clus3: variables DMVQ;
*------------------------------------------------------------* ;
%macro dmvqvars;
    ACCESS ADAM ADDRESS ADVANC AMERICAN ANDI ANSWER APPLIC APPRECI ARAB AREA ARGIC
   ARMENIA ARMENIAN ATTACK AUDIO BANK BASE BATTERI BILL BOOK BRAIN BRIAN BUILD
   BUTTON CALIFORNIA CALL CAN CARD CASE CENTER CHANG CHIP CIRCUIT CLIENT CODE
   COLOR COMMUN COMP COMPANI COMPIL COMPUT CONNECT CONTROL COPI CORRECT CREAT
   CURRENT DAI DATA DAVID DEPART DEPT DESIGN DETECTOR DEVIC DISEAS DISPLAI
   DISTRIBUT DOCTOR DOESN DON DRAW DRIVE DRUG EDU EFFECT ELECTR ELECTRON EMAIL
   ENGIN ERROR EVENT EXPERI FACT FAX FEEL FILE FIND FOLLOWUP FONT FOOD FRI FRIEND
   FUNCTION GEB GENER GEORGIA GIVE GOOD GORDON GOVERN GRAPHIC GREAT GREEK GROUND
   GROUP HAPPEN HEAR HIGH HOME IDEA IMAG INCLUD INFO INFORM INPUT INSTITUT
   INTEREST INTERNET ISRA ISRAEL JEW JEWISH JOHN KEYBOARD KEYWORD KILL KIND LEVEL
   LIST LIVE LONG MACHIN MAIL MANAG MARK MED MEDIC MEDICIN MEMORI MICHAEL MIKE MON
   MOTIF MOTOROLA NATION NETWORK NEW NEWS NEWSREAD NOIS NUMBER OPER OPINION ORIGIN
   OUTPUT PAIN PALESTINIAN PART PATIENT PERSON PHONE PITT PITTSBURGH PLACE POINT
   POLICI POSIT POST POWER PROBLEM PRODUCT PROGRAM PROJECT PUBLIC QUESTION RADAR
   RADIO READ REASON RECEIV REMEMB REPLI REPORT REQUIR RESEARCH RESPONS ROBERT RUN
   SAT SCHOOL SCI SCIENC SCREEN SELL SEND SERDAR SERVER SERVIC SHOW SIDE SIGNAL
   SOFTWAR SOUND SOURC STANDARD START STATE STEVE STUDI SUBSCRIB SUGGEST SUN
   SUPPORT SWITCH SYSTEM TALK TECHNOLOG TERMIN TEST THAT THU TIME TREATMENT TRUE
   TUE TURKISH TYPE UNIV UNIVERS UNIX USENET USER UTEXA UUCP VERSION VIRGINIA
   VOLTAG WATER WED WIDGET WINDOW WIRE WONDER WORK WORLD XLIB XTERM YEAR YOU
%mend ;
*------------------------------------------------------------*;
* Clus3: determinando el n�mero de cl�steres;
*------------------------------------------------------------*;
proc cluster data=EMWS3.Clus3_OUTMEAN method=WARD pseudo outtree=EMWS3.Clus3_CLUSSEED
;
var %dmvqvars;
copy _SEGMENT_;
run;
quit;
proc sort data =EMWS3.Clus3_CLUSSEED out=WORK._SEED_;
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
VQ maxc = 20 clusname=_SEGMENT_ CLUSLABEL="Id de segmento" DISTLABEL="Distancia";
MAKE outvar=EMWS3.Clus3_OUTVAR;
INITIAL radius=0
;
TRAIN tech=FORGY
;
SAVE outstat=EMWS3.Clus3_OUTSTAT outmean=EMWS3.Clus3_OUTMEAN;
code file="C:\Users\Admin\Documents\GitHub\AMUL-PRACTICA\practica_AMUL\Workspaces\EMWS3\Clus3\DMVQSCORECODE.sas"
group=Clus3
;
run;
quit;

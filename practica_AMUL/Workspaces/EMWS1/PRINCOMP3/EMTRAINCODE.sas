*------------------------------------------------------------*;
* Create DMDB macros;
%let _sns = %sysfunc(getoption(SOURCE));
options nosource;
*------------------------------------------------------------* ;
* EM: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;

%mend DMDBClass;
*------------------------------------------------------------* ;
* EM: DMDBVar Macro ;
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
* EM: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=EMWS1.Ids2_DATA
dmdbcat=WORK.EM_DMDB
maxlevel = 513
;
var %DMDBVar;
run;
quit;
*------------------------------------------------------------* ;
* PRINCOMP3: Input Variables Macro ;
*------------------------------------------------------------* ;
%macro INPUTS;
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
%mend INPUTS;
proc dmneurl data=EMWS1.Ids2_DATA dmdbcat=WORK.EM_DMDB
outstat=EMWS1.PRINCOMP3_OUTSTAT outclass=EMWS1.PRINCOMP3_OUTCLASS
NOMONITOR
;
var %INPUTS;
;
run;

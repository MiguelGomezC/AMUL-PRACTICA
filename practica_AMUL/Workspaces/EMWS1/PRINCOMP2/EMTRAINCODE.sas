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
    ABSOLUT ACCELER ACCEPT ACCESS ACCOUNT ACCUR ACID ACTION ACTIV ADAM ADCOM ADDIT
   ADDRESS ADMIN ADMINISTR ADRIAN ADVANC ADVIC AFFECT AGRE AID ALAN ALLERG ALLERGI
   ALLOC ALLOW ALTERN AMATEUR AMERICAN AMOUNT AMP AMPLIFI ANA ANALOG ANDI ANDREW
   ANGEL ANIM ANNOUNC ANSWER ANTENNA ANTI ANTIBIOT APP APPAR APPEAR APPL APPLI
   APPLIC APPRECI APPROACH APRIL ARAB ARCAD AREA AREN ARGIC ARGUMENT ARM ARMENIA
   ARMENIAN ARMI ARTICL ARTIFICI ASK ASSEMBL ASSIST ASSOCI ASSUM ATARI ATHEN
   ATHENA ATTACH ATTACK ATTEMPT ATTRIBUT AUDIO AUSTIN AUSTRALIA AUTHOR AVOID AZERI
   BACKGROUND BAND BANK BARBECU BASE BASIC BATTERI BECK BELL BENSON BERKELEI BEYER
   BILL BIRTHDAI BIT BITMAP BLACK BLOOD BLUE BOARD BODI BOMB BOOK BORDER BOSTON
   BOUGHT BOULDER BOX BRAD BRAIN BRAND BREAK BRIAN BRING BRITISH BROWN BTW BUFFER
   BUILD BUILT BULB BUNCH BUSH BUSI BUTTON CABL CALIFORNIA CALL CAMBRIDG CAN
   CANADA CANCER CANDIDA CAPABL CAPACITOR CAPIT CAR CARD CARE CARNEGI CARRI CARTER
   CASE CATALOG CAUS CELL CENTER CENTR CHANC CHANG CHANNEL CHARACT CHARG CHASTITI
   CHEAP CHECK CHEER CHEMIC CHICAGO CHILD CHILDREN CHINES CHIP CHOIC CHRI
   CHRISTIAN CHRISTOPH CIRCUIT CITI CITIZEN CIVIL CIVILIAN CLAIM CLASS CLEAR
   CLEVELAND CLIENT CLINIC CLINTON CLOCK CLOSE CLUB CMU CODE COLD COLLEG COLLIN
   COLOR COLORADO COLORMAP COLUMBIA COMBIN COMMAND COMMENT COMMERCI COMMIT COMMON
   COMMUN COMP COMPANI COMPAR COMPAT COMPIL COMPLET COMPON COMPUT CONCERN CONCRET
   CONDIT CONFER CONFIGUR CONFLICT CONFUS CONNECT CONSID CONSIST CONSTRUCT CONSULT
   CONTACT CONTENT CONTEXT CONTINU CONTROL CONVENT CONVERT COOL COPI CORN CORP
   CORPOR CORRECT COST COULDN COUNT COUNTRI COUPL COVER COVINGTON CPR CREAT CROHN
   CROSS CURE CURRENT CURSOR CUSTOM CUTE CYCL DAI DAILI DALE DAMAG DANGER DANIEL
   DANNI DATA DAVE DAVID DAVIDIAN DAYTON DEAD DEAL DEAR DEATH DECID DECOD DEFAULT
   DEFIN DEFINIT DEGRE DEIR DELET DEPART DEPEND DEPT DEPTH DESIGN DESTROI DETAIL
   DETECT DETECTOR DETERMIN DEVELOP DEVIC DIAGNOS DIAGRAM DIALOG DICK DIDN DIEGO
   DIET DIFFER DIGIT DIMENS DIOD DIRECT DIRECTORI DISCHARG DISCLAIM DISCUSS DISEAS
   DISK DISPLAI DISTANC DISTRIBUT DIVIS DOCTOR DOCUMENT DOESN DOMAIN DOMIN DON
   DONAT DORTMUND DOUBT DOUG DRAW DRIVE DRIVER DROP DRUG DUMP DYER EASI EASILI
   EAST EAT ECHO EDITOR EDU EDUC EDWARD EFFECT ELECTR ELECTRON EMAIL EMPLOY EMUL
   ENERGI ENGIN ENGLAND ENTIR ENTRI ENVIRON EPROM EQUAL EQUIP ERIC ERROR ESCAP
   ESSENTI EUROP EUROPEAN EVENT EVID EXACT EXECUT EXERCIS EXIST EXPANS EXPECT
   EXPENS EXPERI EXPERIENC EXPLAIN EXPLOD EXPOS EXPRESS EXTENS EXTERMIN EXTRA FACE
   FACT FAIL FALS FAMILI FAST FATHER FAVOR FAX FEATUR FEDER FEED FEEL FIELD FIGHT
   FIGUR FILE FILL FILTER FINAL FIND FINE FIRE FIX FLAME FLASH FLOOR FLUKE FOCU
   FOLK FOLLOWUP FONT FOOD FORC FORGET FORM FORMAT FOURD FRAME FRANC FRANK FREE
   FREEDOM FREEMAN FREQUENC FREQUENT FRI FRIEND FULL FUNCTION FUTUR GAIN GAME
   GARFIEL GARI GATEWAI GAZA GEB GENER GENOCID GEORG GEORGIA GERMAN GERMANI
   GILBERT GIVE GOOD GORDON GOVERN GRANT GRAPHIC GREAT GREATLI GREEK GREEN GREG
   GROUND GROUP GUESS GUEST GUI HAMAZA HAMID HAND HANDL HANG HAPPEN HAPPI HARD
   HARDWAR HARRI HARVARD HATE HAVEN HEAD HEADACH HEALTH HEAR HEARD HEART HEAT
   HEAVI HEIGHT HELP HENRI HENRIK HERNIA HERNLEM HEWLETT HEZBOLLAH HIGH HIGHER
   HINT HISTOR HISTORI HOLD HOLOCAUST HOME HOOK HOPE HOSPIT HOST HOUR HOUS HOWARD
   HUMAN HUNTSVIL ICON IDEA IGNOR ILLEG ILLINOI IMAG IMAGIN IMAK IMPLEMENT IMPORT
   IMPRESS IMPROV INCLUD INCREAS INDIVIDU INDUSTRI INFECT INFO INFORM INJECT INPUT
   INSTAL INSTITUT INSTRUMENT INTEL INTELLECT INTELLIG INTEND INTEREST INTERFAC
   INTERGRAPH INTERN INTERNET INTERVIEW INVENT INVOLV IRAN IRVIN ISLAM ISLAND ISN
   ISRA ISRAEL ISSU ITEM JACK JAKE JASON JEFF JEFFERSON JERUSALEM JESS JEW JEWISH
   JIM JIMMI JOEL JOHN JOSEPH JOYSTICK JUSTIFI KEI KEITH KEN KENNETH KEYBOARD
   KEYWORD KIDNEI KILL KIND KIRLIAN KLUTE KNOW KNOWLEDG KRILLEAN LAB LABEL
   LABORATORI LACK LAND LANGUAG LARG LARRI LASER LAW LEAD LEADER LEARN LEAV
   LEBANES LEBANON LEFT LEGAL LET LETTER LEVEL LIBRARI LICENS LIFE LIGHT LIMIT
   LINK LINUX LIST LISTEN LITERATUR LIVE LIVNI LOAD LOCAL LOCAT LOGIC LOGIN LONG
   LONGER LOOK LOOP LOST LOT LOVE LUCK LUNG LYME MACHIN MAHAN MAIL MAIN MAINTAIN
   MAJOR MAKE MAN MANAG MANUAL MAP MARC MARK MARKET MARTIN MASK MASS MASSACR
   MATERI MATH MATTER MCGILL MEAN MEASUR MECHAN MED MEDIA MEDIC MEDICIN MELLON
   MEMBER MEMORI MENTION MENU MESSAG METAL METHOD METHODOLOG MICHAEL MIDDL MIGRAIN
   MIKE MILE MILITARI MILLION MIND MINUT MISC MISS MISTAK MODE MODEL MODIFI MODUL
   MON MONEI MONITOR MONTH MORAL MOTIF MOTOROLA MOUNTAIN MOUS MOVE MOVEMENT MSG
   MULTI MULTIPL MURDER MUSCL MUSLIM NAFTALI NAME NASA NATION NATUR NAZI
   NECESSARILI NEED NEEDL NEGOTI NET NETANYAHU NETCOM NETNEW NETWORK NEUTRAL NEW
   NEWS NEWSREAD NICE NIGHT NNTP NOIS NORMAL NORTH NOTE NOTIC NUCLEAR NULL NUMBER
   OBJECT OBSERV OBTAIN OCCUP OCCUPI OCCUR ODOMET OFFER OFFIC OFFICI OHIO OLWM
   OMRAN OPEN OPENLOOK OPENWINDOW OPER OPINION OPTION ORDER ORG ORGAN ORIGIN OSCIL
   OUTLET OUTPUT OWNER PACKAG PACKARD PACKET PAGE PAID PAIN PALESTIN PALESTINIAN
   PAPER PARENT PART PARTI PASS PATCH PATIENT PATRICK PAUL PEAC PERFORM PERIOD
   PERSIAN PERSON PETER PHONE PHOTOGRAPHI PHYSIC PHYSICIAN PICA PICK PICTUR PILL
   PIN PITT PITTSBURGH PIXEL PIXMAP PLACE PLAI PLAIN PLAN PLANE PLAYER PLUG POINT
   POINTER POLIC POLICI POLIT POPUL POPULAR POPUP PORT POSIT POSSIBL POST POSTER
   POSTSCRIPT POWER PRACTIC PREFER PRESENT PRESID PRESS PRETTI PREVENT PREVIOU
   PRICE PRINT PRINTER PRIVAT PROBLEM PROCESS PRODUC PRODUCT PROGRAM PROGRAMM
   PROJECT PROLIN PROPAGANDA PROPER PROPOS PROTECT PROTOCOL PROVE PROVID PUBLIC
   PUBLISH PULL PURPOS PUT QUACK QUALITI QUESTION QUOT RACE RACISM RACIST RADAR
   RADIO RAINER RANG RATE REACTION READ READER REAL REALIZ REASON REC RECAL RECEIV
   RECOGN RECOMMEND REDUC REDUND REGION REGIST REILLI RELAI RELAT RELEAS RELIABL
   RELIGION REMAIN REMEMB REMOT REMOV REPEAT REPLAC REPLI REPORT REQUEST REQUIR
   RESEARCH RESERV RESIST RESISTOR RESOURC RESPOND RESPONS REST RESULT RETURN
   REVIEW RICH RICHARD RICHARDSON RIGHT RIND RING RISK RIVER ROAD ROBERT ROCHEST
   RON ROOM ROOT RUI RULE RUN RUSSEL RUSSIAN SALAH SALE SALMON SAMPL SAT SAVE
   SCHEMAT SCHOOL SCHWARTZ SCI SCIENC SCIENTIF SCIENTIST SCOPE SCOTT SCREEN SDSU
   SEA SEARCH SEATTL SECTION SECUR SEEK SEIZUR SELECT SELL SEMIT SEND SENS SENSIT
   SEPAR SEQUENC SERA SERDAR SERI SERIAL SERV SERVER SERVIC SET SEXUAL SHACK SHAME
   SHARE SHELL SHNEKENDORF SHOOT SHORT SHOSTACK SHOT SHOULDN SHOW SICK SIDE SIGN
   SIGNAL SIGNIFIC SIMILAR SIMM SIMPL SIMPLI SINGL SITE SITUAT SIZE SKEPTIC SKIN
   SLEEP SLOW SMALL SMOKE SOCIETI SOFTWAR SOLARI SOLDIER SOLUT SORT SOUND SOURC
   SOUTH SOVIET SPACE SPARC SPEAK SPEC SPECIAL SPECIF SPEED SPELL SPOCK SPOT STAI
   STAND STANDARD START STATE STATEMENT STATIC STATU STEIN STEPHEN STEVE STEVEN
   STONE STOP STORE STORI STRING STRIP STUDENT STUDI STUFF STUPID STYLE SUBSCRIB
   SUBSCRIV SUFFER SUGGEST SUIT SUMMARI SUN SUNO SUPERSTIT SUPPLI SUPPORT SUPPOS
   SURGERI SURPRIS SURREND SUSPECT SWITCH SYMBOL SYMPTOM SYNDROM SYRIA SYSTEM TABL
   TAKE TALK TAPE TARGET TAST TCP TECHNIC TECHNOLOG TEKTRONIX TEL TELEPHON TELL
   TEMPERATUR TERM TERMIN TERRITORI TERROR TERRORIST TEST TEXA TEXT THAT THEE
   THEORI THERAPI THERE THEY THINK THOMA THOUGHT THREAD THROW THU TIM TIME TIMER
   TITL TODAI TOLD TOM TONIGHT TOOL TOOLKIT TOPIC TORONTO TOTAL TOWER TRACE
   TRAFFIC TRAIN TRANSFORM TRANSLAT TRANSMIT TREAT TREATMENT TROOP TROUBL TRUE
   TRUTH TUBE TUE TURK TURKEI TURKISH TURN TYPE TYPIC UNDEFIN UNDERSTAND UNIT UNIV
   UNIVERS UNIX UNKNOWN UPDAT URBANA USA USENET USER UTEXA UUCP VALU VANDERBYL
   VARIABL VAX VERSION VIDEO VIEW VILLAG VIRGINIA VIRTUAL VISUAL VOIC VOLT VOLTAG
   WAI WAIT WALL WANT WAR WARN WASHINGTON WASN WAST WATCH WATER WAVE WAYN WED WEEK
   WEIGHT WEST WESTERN WHAT WHITE WIDE WIDGET WIDTH WIFE WIN WINDOW WIRE WOMEN WON
   WONDER WORD WORK WORLD WORTH WOULDN WPI WRITE WRITTEN WRONG WROTE XLIB XPUTIMAG
   XSERVER XTERM XTERMIN XVIEW XWINDOW YASSIN YEAH YEAR YEAST YIGAL YORK YOU YOUNG
   ZIONISM ZIONIST ZUMA
%mend DMDBVar;
options &_sns;
* End DMDB macros generation;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* EM: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=EMWS1.Ids_DATA
dmdbcat=WORK.EM_DMDB
maxlevel = 513
;
var %DMDBVar;
run;
quit;
*------------------------------------------------------------* ;
* PRINCOMP2: Input Variables Macro ;
*------------------------------------------------------------* ;
%macro INPUTS;
    ABSOLUT ACCELER ACCEPT ACCESS ACCOUNT ACCUR ACID ACTION ACTIV ADAM ADCOM ADDIT
   ADDRESS ADMIN ADMINISTR ADRIAN ADVANC ADVIC AFFECT AGRE AID ALAN ALLERG ALLERGI
   ALLOC ALLOW ALTERN AMATEUR AMERICAN AMOUNT AMP AMPLIFI ANA ANALOG ANDI ANDREW
   ANGEL ANIM ANNOUNC ANSWER ANTENNA ANTI ANTIBIOT APP APPAR APPEAR APPL APPLI
   APPLIC APPRECI APPROACH APRIL ARAB ARCAD AREA AREN ARGIC ARGUMENT ARM ARMENIA
   ARMENIAN ARMI ARTICL ARTIFICI ASK ASSEMBL ASSIST ASSOCI ASSUM ATARI ATHEN
   ATHENA ATTACH ATTACK ATTEMPT ATTRIBUT AUDIO AUSTIN AUSTRALIA AUTHOR AVOID AZERI
   BACKGROUND BAND BANK BARBECU BASE BASIC BATTERI BECK BELL BENSON BERKELEI BEYER
   BILL BIRTHDAI BIT BITMAP BLACK BLOOD BLUE BOARD BODI BOMB BOOK BORDER BOSTON
   BOUGHT BOULDER BOX BRAD BRAIN BRAND BREAK BRIAN BRING BRITISH BROWN BTW BUFFER
   BUILD BUILT BULB BUNCH BUSH BUSI BUTTON CABL CALIFORNIA CALL CAMBRIDG CAN
   CANADA CANCER CANDIDA CAPABL CAPACITOR CAPIT CAR CARD CARE CARNEGI CARRI CARTER
   CASE CATALOG CAUS CELL CENTER CENTR CHANC CHANG CHANNEL CHARACT CHARG CHASTITI
   CHEAP CHECK CHEER CHEMIC CHICAGO CHILD CHILDREN CHINES CHIP CHOIC CHRI
   CHRISTIAN CHRISTOPH CIRCUIT CITI CITIZEN CIVIL CIVILIAN CLAIM CLASS CLEAR
   CLEVELAND CLIENT CLINIC CLINTON CLOCK CLOSE CLUB CMU CODE COLD COLLEG COLLIN
   COLOR COLORADO COLORMAP COLUMBIA COMBIN COMMAND COMMENT COMMERCI COMMIT COMMON
   COMMUN COMP COMPANI COMPAR COMPAT COMPIL COMPLET COMPON COMPUT CONCERN CONCRET
   CONDIT CONFER CONFIGUR CONFLICT CONFUS CONNECT CONSID CONSIST CONSTRUCT CONSULT
   CONTACT CONTENT CONTEXT CONTINU CONTROL CONVENT CONVERT COOL COPI CORN CORP
   CORPOR CORRECT COST COULDN COUNT COUNTRI COUPL COVER COVINGTON CPR CREAT CROHN
   CROSS CURE CURRENT CURSOR CUSTOM CUTE CYCL DAI DAILI DALE DAMAG DANGER DANIEL
   DANNI DATA DAVE DAVID DAVIDIAN DAYTON DEAD DEAL DEAR DEATH DECID DECOD DEFAULT
   DEFIN DEFINIT DEGRE DEIR DELET DEPART DEPEND DEPT DEPTH DESIGN DESTROI DETAIL
   DETECT DETECTOR DETERMIN DEVELOP DEVIC DIAGNOS DIAGRAM DIALOG DICK DIDN DIEGO
   DIET DIFFER DIGIT DIMENS DIOD DIRECT DIRECTORI DISCHARG DISCLAIM DISCUSS DISEAS
   DISK DISPLAI DISTANC DISTRIBUT DIVIS DOCTOR DOCUMENT DOESN DOMAIN DOMIN DON
   DONAT DORTMUND DOUBT DOUG DRAW DRIVE DRIVER DROP DRUG DUMP DYER EASI EASILI
   EAST EAT ECHO EDITOR EDU EDUC EDWARD EFFECT ELECTR ELECTRON EMAIL EMPLOY EMUL
   ENERGI ENGIN ENGLAND ENTIR ENTRI ENVIRON EPROM EQUAL EQUIP ERIC ERROR ESCAP
   ESSENTI EUROP EUROPEAN EVENT EVID EXACT EXECUT EXERCIS EXIST EXPANS EXPECT
   EXPENS EXPERI EXPERIENC EXPLAIN EXPLOD EXPOS EXPRESS EXTENS EXTERMIN EXTRA FACE
   FACT FAIL FALS FAMILI FAST FATHER FAVOR FAX FEATUR FEDER FEED FEEL FIELD FIGHT
   FIGUR FILE FILL FILTER FINAL FIND FINE FIRE FIX FLAME FLASH FLOOR FLUKE FOCU
   FOLK FOLLOWUP FONT FOOD FORC FORGET FORM FORMAT FOURD FRAME FRANC FRANK FREE
   FREEDOM FREEMAN FREQUENC FREQUENT FRI FRIEND FULL FUNCTION FUTUR GAIN GAME
   GARFIEL GARI GATEWAI GAZA GEB GENER GENOCID GEORG GEORGIA GERMAN GERMANI
   GILBERT GIVE GOOD GORDON GOVERN GRANT GRAPHIC GREAT GREATLI GREEK GREEN GREG
   GROUND GROUP GUESS GUEST GUI HAMAZA HAMID HAND HANDL HANG HAPPEN HAPPI HARD
   HARDWAR HARRI HARVARD HATE HAVEN HEAD HEADACH HEALTH HEAR HEARD HEART HEAT
   HEAVI HEIGHT HELP HENRI HENRIK HERNIA HERNLEM HEWLETT HEZBOLLAH HIGH HIGHER
   HINT HISTOR HISTORI HOLD HOLOCAUST HOME HOOK HOPE HOSPIT HOST HOUR HOUS HOWARD
   HUMAN HUNTSVIL ICON IDEA IGNOR ILLEG ILLINOI IMAG IMAGIN IMAK IMPLEMENT IMPORT
   IMPRESS IMPROV INCLUD INCREAS INDIVIDU INDUSTRI INFECT INFO INFORM INJECT INPUT
   INSTAL INSTITUT INSTRUMENT INTEL INTELLECT INTELLIG INTEND INTEREST INTERFAC
   INTERGRAPH INTERN INTERNET INTERVIEW INVENT INVOLV IRAN IRVIN ISLAM ISLAND ISN
   ISRA ISRAEL ISSU ITEM JACK JAKE JASON JEFF JEFFERSON JERUSALEM JESS JEW JEWISH
   JIM JIMMI JOEL JOHN JOSEPH JOYSTICK JUSTIFI KEI KEITH KEN KENNETH KEYBOARD
   KEYWORD KIDNEI KILL KIND KIRLIAN KLUTE KNOW KNOWLEDG KRILLEAN LAB LABEL
   LABORATORI LACK LAND LANGUAG LARG LARRI LASER LAW LEAD LEADER LEARN LEAV
   LEBANES LEBANON LEFT LEGAL LET LETTER LEVEL LIBRARI LICENS LIFE LIGHT LIMIT
   LINK LINUX LIST LISTEN LITERATUR LIVE LIVNI LOAD LOCAL LOCAT LOGIC LOGIN LONG
   LONGER LOOK LOOP LOST LOT LOVE LUCK LUNG LYME MACHIN MAHAN MAIL MAIN MAINTAIN
   MAJOR MAKE MAN MANAG MANUAL MAP MARC MARK MARKET MARTIN MASK MASS MASSACR
   MATERI MATH MATTER MCGILL MEAN MEASUR MECHAN MED MEDIA MEDIC MEDICIN MELLON
   MEMBER MEMORI MENTION MENU MESSAG METAL METHOD METHODOLOG MICHAEL MIDDL MIGRAIN
   MIKE MILE MILITARI MILLION MIND MINUT MISC MISS MISTAK MODE MODEL MODIFI MODUL
   MON MONEI MONITOR MONTH MORAL MOTIF MOTOROLA MOUNTAIN MOUS MOVE MOVEMENT MSG
   MULTI MULTIPL MURDER MUSCL MUSLIM NAFTALI NAME NASA NATION NATUR NAZI
   NECESSARILI NEED NEEDL NEGOTI NET NETANYAHU NETCOM NETNEW NETWORK NEUTRAL NEW
   NEWS NEWSREAD NICE NIGHT NNTP NOIS NORMAL NORTH NOTE NOTIC NUCLEAR NULL NUMBER
   OBJECT OBSERV OBTAIN OCCUP OCCUPI OCCUR ODOMET OFFER OFFIC OFFICI OHIO OLWM
   OMRAN OPEN OPENLOOK OPENWINDOW OPER OPINION OPTION ORDER ORG ORGAN ORIGIN OSCIL
   OUTLET OUTPUT OWNER PACKAG PACKARD PACKET PAGE PAID PAIN PALESTIN PALESTINIAN
   PAPER PARENT PART PARTI PASS PATCH PATIENT PATRICK PAUL PEAC PERFORM PERIOD
   PERSIAN PERSON PETER PHONE PHOTOGRAPHI PHYSIC PHYSICIAN PICA PICK PICTUR PILL
   PIN PITT PITTSBURGH PIXEL PIXMAP PLACE PLAI PLAIN PLAN PLANE PLAYER PLUG POINT
   POINTER POLIC POLICI POLIT POPUL POPULAR POPUP PORT POSIT POSSIBL POST POSTER
   POSTSCRIPT POWER PRACTIC PREFER PRESENT PRESID PRESS PRETTI PREVENT PREVIOU
   PRICE PRINT PRINTER PRIVAT PROBLEM PROCESS PRODUC PRODUCT PROGRAM PROGRAMM
   PROJECT PROLIN PROPAGANDA PROPER PROPOS PROTECT PROTOCOL PROVE PROVID PUBLIC
   PUBLISH PULL PURPOS PUT QUACK QUALITI QUESTION QUOT RACE RACISM RACIST RADAR
   RADIO RAINER RANG RATE REACTION READ READER REAL REALIZ REASON REC RECAL RECEIV
   RECOGN RECOMMEND REDUC REDUND REGION REGIST REILLI RELAI RELAT RELEAS RELIABL
   RELIGION REMAIN REMEMB REMOT REMOV REPEAT REPLAC REPLI REPORT REQUEST REQUIR
   RESEARCH RESERV RESIST RESISTOR RESOURC RESPOND RESPONS REST RESULT RETURN
   REVIEW RICH RICHARD RICHARDSON RIGHT RIND RING RISK RIVER ROAD ROBERT ROCHEST
   RON ROOM ROOT RUI RULE RUN RUSSEL RUSSIAN SALAH SALE SALMON SAMPL SAT SAVE
   SCHEMAT SCHOOL SCHWARTZ SCI SCIENC SCIENTIF SCIENTIST SCOPE SCOTT SCREEN SDSU
   SEA SEARCH SEATTL SECTION SECUR SEEK SEIZUR SELECT SELL SEMIT SEND SENS SENSIT
   SEPAR SEQUENC SERA SERDAR SERI SERIAL SERV SERVER SERVIC SET SEXUAL SHACK SHAME
   SHARE SHELL SHNEKENDORF SHOOT SHORT SHOSTACK SHOT SHOULDN SHOW SICK SIDE SIGN
   SIGNAL SIGNIFIC SIMILAR SIMM SIMPL SIMPLI SINGL SITE SITUAT SIZE SKEPTIC SKIN
   SLEEP SLOW SMALL SMOKE SOCIETI SOFTWAR SOLARI SOLDIER SOLUT SORT SOUND SOURC
   SOUTH SOVIET SPACE SPARC SPEAK SPEC SPECIAL SPECIF SPEED SPELL SPOCK SPOT STAI
   STAND STANDARD START STATE STATEMENT STATIC STATU STEIN STEPHEN STEVE STEVEN
   STONE STOP STORE STORI STRING STRIP STUDENT STUDI STUFF STUPID STYLE SUBSCRIB
   SUBSCRIV SUFFER SUGGEST SUIT SUMMARI SUN SUNO SUPERSTIT SUPPLI SUPPORT SUPPOS
   SURGERI SURPRIS SURREND SUSPECT SWITCH SYMBOL SYMPTOM SYNDROM SYRIA SYSTEM TABL
   TAKE TALK TAPE TARGET TAST TCP TECHNIC TECHNOLOG TEKTRONIX TEL TELEPHON TELL
   TEMPERATUR TERM TERMIN TERRITORI TERROR TERRORIST TEST TEXA TEXT THAT THEE
   THEORI THERAPI THERE THEY THINK THOMA THOUGHT THREAD THROW THU TIM TIME TIMER
   TITL TODAI TOLD TOM TONIGHT TOOL TOOLKIT TOPIC TORONTO TOTAL TOWER TRACE
   TRAFFIC TRAIN TRANSFORM TRANSLAT TRANSMIT TREAT TREATMENT TROOP TROUBL TRUE
   TRUTH TUBE TUE TURK TURKEI TURKISH TURN TYPE TYPIC UNDEFIN UNDERSTAND UNIT UNIV
   UNIVERS UNIX UNKNOWN UPDAT URBANA USA USENET USER UTEXA UUCP VALU VANDERBYL
   VARIABL VAX VERSION VIDEO VIEW VILLAG VIRGINIA VIRTUAL VISUAL VOIC VOLT VOLTAG
   WAI WAIT WALL WANT WAR WARN WASHINGTON WASN WAST WATCH WATER WAVE WAYN WED WEEK
   WEIGHT WEST WESTERN WHAT WHITE WIDE WIDGET WIDTH WIFE WIN WINDOW WIRE WOMEN WON
   WONDER WORD WORK WORLD WORTH WOULDN WPI WRITE WRITTEN WRONG WROTE XLIB XPUTIMAG
   XSERVER XTERM XTERMIN XVIEW XWINDOW YASSIN YEAH YEAR YEAST YIGAL YORK YOU YOUNG
   ZIONISM ZIONIST ZUMA
%mend INPUTS;
proc dmneurl data=EMWS1.Ids_DATA dmdbcat=WORK.EM_DMDB
outstat=EMWS1.PRINCOMP2_OUTSTAT outclass=EMWS1.PRINCOMP2_OUTCLASS
NOMONITOR
;
var %INPUTS;
;
run;

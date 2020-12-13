**********************************************************;
**** Empezar código de scoring para el análisis de componentes principales;
**********************************************************;
LENGTH _FORMAT $200;
LENGTH _NORMFMT $%DMNORLEN;
;
/************************************************/
* Imputar valores ausentes para las variables de intervalo;
/************************************************/
;
length _D1 8;
if ACCESS=. then _D1 = 0.00241456723915;
else _D1=ACCESS;
length _D2 8;
if ADAM=. then _D2 = 0.00235452637421;
else _D2=ADAM;
length _D3 8;
if ADDRESS=. then _D3 = 0.0027314608283;
else _D3=ADDRESS;
length _D4 8;
if ADVANC=. then _D4 = 0.00328913891524;
else _D4=ADVANC;
length _D5 8;
if AMERICAN=. then _D5 = 0.00214521929757;
else _D5=AMERICAN;
length _D6 8;
if ANDI=. then _D6 = 0.00221462288165;
else _D6=ANDI;
length _D7 8;
if ANSWER=. then _D7 = 0.00257918238626;
else _D7=ANSWER;
length _D8 8;
if APPLIC=. then _D8 = 0.0040545623087;
else _D8=APPLIC;
length _D9 8;
if APPRECI=. then _D9 = 0.00308363506237;
else _D9=APPRECI;
length _D10 8;
if ARAB=. then _D10 = 0.00418780210332;
else _D10=ARAB;
length _D11 8;
if AREA=. then _D11 = 0.00241493833962;
else _D11=AREA;
length _D12 8;
if ARGIC=. then _D12 = 0.00212713877305;
else _D12=ARGIC;
length _D13 8;
if ARMENIA=. then _D13 = 0.00218895231325;
else _D13=ARMENIA;
length _D14 8;
if ARMENIAN=. then _D14 = 0.00455914135151;
else _D14=ARMENIAN;
length _D15 8;
if ATTACK=. then _D15 = 0.00211847381256;
else _D15=ATTACK;
length _D16 8;
if AUDIO=. then _D16 = 0.00242293347077;
else _D16=AUDIO;
length _D17 8;
if BANK=. then _D17 = 0.00456553856274;
else _D17=BANK;
length _D18 8;
if BASE=. then _D18 = 0.00208165721294;
else _D18=BASE;
length _D19 8;
if BATTERI=. then _D19 = 0.00289733758482;
else _D19=BATTERI;
length _D20 8;
if BILL=. then _D20 = 0.00240033977396;
else _D20=BILL;
length _D21 8;
if BOOK=. then _D21 = 0.0027432962116;
else _D21=BOOK;
length _D22 8;
if BRAIN=. then _D22 = 0.00205133419681;
else _D22=BRAIN;
length _D23 8;
if BRIAN=. then _D23 = 0.00247612731454;
else _D23=BRIAN;
length _D24 8;
if BUILD=. then _D24 = 0.00271351667585;
else _D24=BUILD;
length _D25 8;
if BUTTON=. then _D25 = 0.00202791357444;
else _D25=BUTTON;
length _D26 8;
if CALIFORNIA=. then _D26 = 0.00204137765411;
else _D26=CALIFORNIA;
length _D27 8;
if CALL=. then _D27 = 0.00452930248377;
else _D27=CALL;
length _D28 8;
if CAN=. then _D28 = 0.00284065705357;
else _D28=CAN;
length _D29 8;
if CARD=. then _D29 = 0.00216861177618;
else _D29=CARD;
length _D30 8;
if CASE=. then _D30 = 0.00332389955729;
else _D30=CASE;
length _D31 8;
if CENTER=. then _D31 = 0.00326904471245;
else _D31=CENTER;
length _D32 8;
if CHANG=. then _D32 = 0.00230299738637;
else _D32=CHANG;
length _D33 8;
if CHIP=. then _D33 = 0.00357223440083;
else _D33=CHIP;
length _D34 8;
if CIRCUIT=. then _D34 = 0.00313643665772;
else _D34=CIRCUIT;
length _D35 8;
if CLIENT=. then _D35 = 0.00264622993343;
else _D35=CLIENT;
length _D36 8;
if CODE=. then _D36 = 0.0030712810797;
else _D36=CODE;
length _D37 8;
if COLOR=. then _D37 = 0.00359368354327;
else _D37=COLOR;
length _D38 8;
if COMMUN=. then _D38 = 0.00249050968492;
else _D38=COMMUN;
length _D39 8;
if COMP=. then _D39 = 0.00757984177652;
else _D39=COMP;
length _D40 8;
if COMPANI=. then _D40 = 0.00280778122596;
else _D40=COMPANI;
length _D41 8;
if COMPIL=. then _D41 = 0.00270315303063;
else _D41=COMPIL;
length _D42 8;
if COMPUT=. then _D42 = 0.00559186119138;
else _D42=COMPUT;
length _D43 8;
if CONNECT=. then _D43 = 0.0023734623792;
else _D43=CONNECT;
length _D44 8;
if CONTROL=. then _D44 = 0.00281779846725;
else _D44=CONTROL;
length _D45 8;
if COPI=. then _D45 = 0.00322906112538;
else _D45=COPI;
length _D46 8;
if CORRECT=. then _D46 = 0.0022412266402;
else _D46=CORRECT;
length _D47 8;
if CREAT=. then _D47 = 0.00252827169085;
else _D47=CREAT;
length _D48 8;
if CURRENT=. then _D48 = 0.0026716403083;
else _D48=CURRENT;
length _D49 8;
if DAI=. then _D49 = 0.0023626429058;
else _D49=DAI;
length _D50 8;
if DATA=. then _D50 = 0.00307323383534;
else _D50=DATA;
length _D51 8;
if DAVID=. then _D51 = 0.00426343100299;
else _D51=DAVID;
length _D52 8;
if DEPART=. then _D52 = 0.00346500721016;
else _D52=DEPART;
length _D53 8;
if DEPT=. then _D53 = 0.00258532866736;
else _D53=DEPT;
length _D54 8;
if DESIGN=. then _D54 = 0.00256118858229;
else _D54=DESIGN;
length _D55 8;
if DETECTOR=. then _D55 = 0.00307459146048;
else _D55=DETECTOR;
length _D56 8;
if DEVIC=. then _D56 = 0.00234629139925;
else _D56=DEVIC;
length _D57 8;
if DISEAS=. then _D57 = 0.00261675344761;
else _D57=DISEAS;
length _D58 8;
if DISPLAI=. then _D58 = 0.0038384279666;
else _D58=DISPLAI;
length _D59 8;
if DISTRIBUT=. then _D59 = 0.00509292512912;
else _D59=DISTRIBUT;
length _D60 8;
if DOCTOR=. then _D60 = 0.00313535413054;
else _D60=DOCTOR;
length _D61 8;
if DOESN=. then _D61 = 0.00279164795745;
else _D61=DOESN;
length _D62 8;
if DON=. then _D62 = 0.0055263871556;
else _D62=DON;
length _D63 8;
if DRAW=. then _D63 = 0.00246192979036;
else _D63=DRAW;
length _D64 8;
if DRIVE=. then _D64 = 0.00210453525812;
else _D64=DRIVE;
length _D65 8;
if DRUG=. then _D65 = 0.00221537531382;
else _D65=DRUG;
length _D66 8;
if EDU=. then _D66 = 0.00674066844816;
else _D66=EDU;
length _D67 8;
if EFFECT=. then _D67 = 0.00336277148;
else _D67=EFFECT;
length _D68 8;
if ELECTR=. then _D68 = 0.00219289018422;
else _D68=ELECTR;
length _D69 8;
if ELECTRON=. then _D69 = 0.00820454921585;
else _D69=ELECTRON;
length _D70 8;
if EMAIL=. then _D70 = 0.00327336397091;
else _D70=EMAIL;
length _D71 8;
if ENGIN=. then _D71 = 0.003008695453;
else _D71=ENGIN;
length _D72 8;
if ERROR=. then _D72 = 0.00231468310646;
else _D72=ERROR;
length _D73 8;
if EVENT=. then _D73 = 0.00312142347936;
else _D73=EVENT;
length _D74 8;
if EXPERI=. then _D74 = 0.00250071187915;
else _D74=EXPERI;
length _D75 8;
if FACT=. then _D75 = 0.00244750828196;
else _D75=FACT;
length _D76 8;
if FAX=. then _D76 = 0.00220437467508;
else _D76=FAX;
length _D77 8;
if FEEL=. then _D77 = 0.00203832213185;
else _D77=FEEL;
length _D78 8;
if FILE=. then _D78 = 0.00418443335717;
else _D78=FILE;
length _D79 8;
if FIND=. then _D79 = 0.00432444986395;
else _D79=FIND;
length _D80 8;
if FOLLOWUP=. then _D80 = 0.00243844782018;
else _D80=FOLLOWUP;
length _D81 8;
if FONT=. then _D81 = 0.00212416554658;
else _D81=FONT;
length _D82 8;
if FOOD=. then _D82 = 0.00345823850799;
else _D82=FOOD;
length _D83 8;
if FRI=. then _D83 = 0.00406621827508;
else _D83=FRI;
length _D84 8;
if FRIEND=. then _D84 = 0.00214968036112;
else _D84=FRIEND;
length _D85 8;
if FUNCTION=. then _D85 = 0.00247932911225;
else _D85=FUNCTION;
length _D86 8;
if GEB=. then _D86 = 0.00306188143669;
else _D86=GEB;
length _D87 8;
if GENER=. then _D87 = 0.00301380927937;
else _D87=GENER;
length _D88 8;
if GEORGIA=. then _D88 = 0.00218572916771;
else _D88=GEORGIA;
length _D89 8;
if GIVE=. then _D89 = 0.00316215770165;
else _D89=GIVE;
length _D90 8;
if GOOD=. then _D90 = 0.00439292306279;
else _D90=GOOD;
length _D91 8;
if GORDON=. then _D91 = 0.00450329774963;
else _D91=GORDON;
length _D92 8;
if GOVERN=. then _D92 = 0.00217170827764;
else _D92=GOVERN;
length _D93 8;
if GRAPHIC=. then _D93 = 0.0020499196144;
else _D93=GRAPHIC;
length _D94 8;
if GREAT=. then _D94 = 0.00202579482595;
else _D94=GREAT;
length _D95 8;
if GREEK=. then _D95 = 0.00209901617457;
else _D95=GREEK;
length _D96 8;
if GROUND=. then _D96 = 0.00258379795428;
else _D96=GROUND;
length _D97 8;
if GROUP=. then _D97 = 0.00338063956226;
else _D97=GROUP;
length _D98 8;
if HAPPEN=. then _D98 = 0.00202079560181;
else _D98=HAPPEN;
length _D99 8;
if HEAR=. then _D99 = 0.00210512715255;
else _D99=HEAR;
length _D100 8;
if HIGH=. then _D100 = 0.00246389850684;
else _D100=HIGH;
length _D101 8;
if HOME=. then _D101 = 0.00210085242348;
else _D101=HOME;
length _D102 8;
if IDEA=. then _D102 = 0.00262708328034;
else _D102=IDEA;
length _D103 8;
if IMAG=. then _D103 = 0.00243414948707;
else _D103=IMAG;
length _D104 8;
if INCLUD=. then _D104 = 0.00292089090816;
else _D104=INCLUD;
length _D105 8;
if INFO=. then _D105 = 0.0035504112765;
else _D105=INFO;
length _D106 8;
if INFORM=. then _D106 = 0.0050661920796;
else _D106=INFORM;
length _D107 8;
if INPUT=. then _D107 = 0.00214818135728;
else _D107=INPUT;
length _D108 8;
if INSTITUT=. then _D108 = 0.00324362970322;
else _D108=INSTITUT;
length _D109 8;
if INTEREST=. then _D109 = 0.00342878990352;
else _D109=INTEREST;
length _D110 8;
if INTERNET=. then _D110 = 0.0051331650023;
else _D110=INTERNET;
length _D111 8;
if ISRA=. then _D111 = 0.00568007679995;
else _D111=ISRA;
length _D112 8;
if ISRAEL=. then _D112 = 0.00679350701875;
else _D112=ISRAEL;
length _D113 8;
if JEW=. then _D113 = 0.00420921178108;
else _D113=JEW;
length _D114 8;
if JEWISH=. then _D114 = 0.00211330945134;
else _D114=JEWISH;
length _D115 8;
if JOHN=. then _D115 = 0.00351006082717;
else _D115=JOHN;
length _D116 8;
if KEYBOARD=. then _D116 = 0.00230835724711;
else _D116=KEYBOARD;
length _D117 8;
if KEYWORD=. then _D117 = 0.00333077856509;
else _D117=KEYWORD;
length _D118 8;
if KILL=. then _D118 = 0.00350907582405;
else _D118=KILL;
length _D119 8;
if KIND=. then _D119 = 0.00242249299062;
else _D119=KIND;
length _D120 8;
if LEVEL=. then _D120 = 0.00205122710902;
else _D120=LEVEL;
length _D121 8;
if LIST=. then _D121 = 0.00290660930314;
else _D121=LIST;
length _D122 8;
if LIVE=. then _D122 = 0.00237232603683;
else _D122=LIVE;
length _D123 8;
if LONG=. then _D123 = 0.0030715973488;
else _D123=LONG;
length _D124 8;
if MACHIN=. then _D124 = 0.00287252946485;
else _D124=MACHIN;
length _D125 8;
if MAIL=. then _D125 = 0.00557651777199;
else _D125=MAIL;
length _D126 8;
if MANAG=. then _D126 = 0.00315923113319;
else _D126=MANAG;
length _D127 8;
if MARK=. then _D127 = 0.00312658768436;
else _D127=MARK;
length _D128 8;
if MED=. then _D128 = 0.00599764217877;
else _D128=MED;
length _D129 8;
if MEDIC=. then _D129 = 0.00297207806312;
else _D129=MEDIC;
length _D130 8;
if MEDICIN=. then _D130 = 0.00205296358153;
else _D130=MEDICIN;
length _D131 8;
if MEMORI=. then _D131 = 0.00226607539211;
else _D131=MEMORI;
length _D132 8;
if MICHAEL=. then _D132 = 0.00297343131526;
else _D132=MICHAEL;
length _D133 8;
if MIKE=. then _D133 = 0.00229023007471;
else _D133=MIKE;
length _D134 8;
if MON=. then _D134 = 0.00404727051639;
else _D134=MON;
length _D135 8;
if MOTIF=. then _D135 = 0.0049319015004;
else _D135=MOTIF;
length _D136 8;
if MOTOROLA=. then _D136 = 0.002056408655;
else _D136=MOTOROLA;
length _D137 8;
if NATION=. then _D137 = 0.00211080632871;
else _D137=NATION;
length _D138 8;
if NETWORK=. then _D138 = 0.00304800988195;
else _D138=NETWORK;
length _D139 8;
if NEW=. then _D139 = 0.00612696604333;
else _D139=NEW;
length _D140 8;
if NEWS=. then _D140 = 0.00237867593281;
else _D140=NEWS;
length _D141 8;
if NEWSREAD=. then _D141 = 0.00294173216704;
else _D141=NEWSREAD;
length _D142 8;
if NOIS=. then _D142 = 0.00215333589264;
else _D142=NOIS;
length _D143 8;
if NUMBER=. then _D143 = 0.00401015396161;
else _D143=NUMBER;
length _D144 8;
if OPER=. then _D144 = 0.00213113252601;
else _D144=OPER;
length _D145 8;
if OPINION=. then _D145 = 0.00323746260332;
else _D145=OPINION;
length _D146 8;
if ORIGIN=. then _D146 = 0.00263705329651;
else _D146=ORIGIN;
length _D147 8;
if OUTPUT=. then _D147 = 0.00226421416089;
else _D147=OUTPUT;
length _D148 8;
if PAIN=. then _D148 = 0.00210716885482;
else _D148=PAIN;
length _D149 8;
if PALESTINIAN=. then _D149 = 0.0023111371565;
else _D149=PALESTINIAN;
length _D150 8;
if PART=. then _D150 = 0.0031216120666;
else _D150=PART;
length _D151 8;
if PATIENT=. then _D151 = 0.00229790563209;
else _D151=PATIENT;
length _D152 8;
if PERSON=. then _D152 = 0.00256769744242;
else _D152=PERSON;
length _D153 8;
if PHONE=. then _D153 = 0.00411661359651;
else _D153=PHONE;
length _D154 8;
if PITT=. then _D154 = 0.00391200906948;
else _D154=PITT;
length _D155 8;
if PITTSBURGH=. then _D155 = 0.00264396309527;
else _D155=PITTSBURGH;
length _D156 8;
if PLACE=. then _D156 = 0.00264507068694;
else _D156=PLACE;
length _D157 8;
if POINT=. then _D157 = 0.00267023601777;
else _D157=POINT;
length _D158 8;
if POLICI=. then _D158 = 0.00208557904112;
else _D158=POLICI;
length _D159 8;
if POSIT=. then _D159 = 0.00214034721607;
else _D159=POSIT;
length _D160 8;
if POST=. then _D160 = 0.00436593649157;
else _D160=POST;
length _D161 8;
if POWER=. then _D161 = 0.00362597715226;
else _D161=POWER;
length _D162 8;
if PROBLEM=. then _D162 = 0.00525291920241;
else _D162=PROBLEM;
length _D163 8;
if PRODUCT=. then _D163 = 0.00258644849212;
else _D163=PRODUCT;
length _D164 8;
if PROGRAM=. then _D164 = 0.00514308172268;
else _D164=PROGRAM;
length _D165 8;
if PROJECT=. then _D165 = 0.00258352402487;
else _D165=PROJECT;
length _D166 8;
if PUBLIC=. then _D166 = 0.00289083317938;
else _D166=PUBLIC;
length _D167 8;
if QUESTION=. then _D167 = 0.0050319431904;
else _D167=QUESTION;
length _D168 8;
if RADAR=. then _D168 = 0.00219732776775;
else _D168=RADAR;
length _D169 8;
if RADIO=. then _D169 = 0.00320225543574;
else _D169=RADIO;
length _D170 8;
if READ=. then _D170 = 0.00383000151957;
else _D170=READ;
length _D171 8;
if REASON=. then _D171 = 0.00256869577966;
else _D171=REASON;
length _D172 8;
if RECEIV=. then _D172 = 0.00256334776652;
else _D172=RECEIV;
length _D173 8;
if REMEMB=. then _D173 = 0.00218575610199;
else _D173=REMEMB;
length _D174 8;
if REPLI=. then _D174 = 0.00559941135631;
else _D174=REPLI;
length _D175 8;
if REPORT=. then _D175 = 0.00257520144579;
else _D175=REPORT;
length _D176 8;
if REQUIR=. then _D176 = 0.0020582893753;
else _D176=REQUIR;
length _D177 8;
if RESEARCH=. then _D177 = 0.00416925531822;
else _D177=RESEARCH;
length _D178 8;
if RESPONS=. then _D178 = 0.0022417215599;
else _D178=RESPONS;
length _D179 8;
if ROBERT=. then _D179 = 0.00257740686974;
else _D179=ROBERT;
length _D180 8;
if RUN=. then _D180 = 0.00358707767799;
else _D180=RUN;
length _D181 8;
if SAT=. then _D181 = 0.00208905971235;
else _D181=SAT;
length _D182 8;
if SCHOOL=. then _D182 = 0.00249565600215;
else _D182=SCHOOL;
length _D183 8;
if SCI=. then _D183 = 0.00706778249801;
else _D183=SCI;
length _D184 8;
if SCIENC=. then _D184 = 0.00479034410225;
else _D184=SCIENC;
length _D185 8;
if SCREEN=. then _D185 = 0.00248710269685;
else _D185=SCREEN;
length _D186 8;
if SELL=. then _D186 = 0.0021769676698;
else _D186=SELL;
length _D187 8;
if SEND=. then _D187 = 0.00282030159156;
else _D187=SEND;
length _D188 8;
if SERDAR=. then _D188 = 0.00244926633917;
else _D188=SERDAR;
length _D189 8;
if SERVER=. then _D189 = 0.00485356183873;
else _D189=SERVER;
length _D190 8;
if SERVIC=. then _D190 = 0.00307314227706;
else _D190=SERVIC;
length _D191 8;
if SHOW=. then _D191 = 0.00213945691657;
else _D191=SHOW;
length _D192 8;
if SIDE=. then _D192 = 0.00251191441697;
else _D192=SIDE;
length _D193 8;
if SIGNAL=. then _D193 = 0.00227093229075;
else _D193=SIGNAL;
length _D194 8;
if SOFTWAR=. then _D194 = 0.00376093259333;
else _D194=SOFTWAR;
length _D195 8;
if SOUND=. then _D195 = 0.00216340251972;
else _D195=SOUND;
length _D196 8;
if SOURC=. then _D196 = 0.00335659196856;
else _D196=SOURC;
length _D197 8;
if STANDARD=. then _D197 = 0.00228264937069;
else _D197=STANDARD;
length _D198 8;
if START=. then _D198 = 0.00296563224075;
else _D198=START;
length _D199 8;
if STATE=. then _D199 = 0.00434748564902;
else _D199=STATE;
length _D200 8;
if STEVE=. then _D200 = 0.00331927690287;
else _D200=STEVE;
length _D201 8;
if STUDI=. then _D201 = 0.00219173520094;
else _D201=STUDI;
length _D202 8;
if SUBSCRIB=. then _D202 = 0.00225895340976;
else _D202=SUBSCRIB;
length _D203 8;
if SUGGEST=. then _D203 = 0.00271552665931;
else _D203=SUGGEST;
length _D204 8;
if SUN=. then _D204 = 0.00245882066328;
else _D204=SUN;
length _D205 8;
if SUPPORT=. then _D205 = 0.00306485886683;
else _D205=SUPPORT;
length _D206 8;
if SWITCH=. then _D206 = 0.00227357090703;
else _D206=SWITCH;
length _D207 8;
if SYSTEM=. then _D207 = 0.00598573231985;
else _D207=SYSTEM;
length _D208 8;
if TALK=. then _D208 = 0.00223961571553;
else _D208=TALK;
length _D209 8;
if TECHNOLOG=. then _D209 = 0.00336579865103;
else _D209=TECHNOLOG;
length _D210 8;
if TERMIN=. then _D210 = 0.00208424415769;
else _D210=TERMIN;
length _D211 8;
if TEST=. then _D211 = 0.00276692530828;
else _D211=TEST;
length _D212 8;
if THAT=. then _D212 = 0.00243269024072;
else _D212=THAT;
length _D213 8;
if THU=. then _D213 = 0.00397964591783;
else _D213=THU;
length _D214 8;
if TIME=. then _D214 = 0.00511692358758;
else _D214=TIME;
length _D215 8;
if TREATMENT=. then _D215 = 0.00203115102643;
else _D215=TREATMENT;
length _D216 8;
if TRUE=. then _D216 = 0.00221582382989;
else _D216=TRUE;
length _D217 8;
if TUE=. then _D217 = 0.00447660716504;
else _D217=TUE;
length _D218 8;
if TURKISH=. then _D218 = 0.00341699547455;
else _D218=TURKISH;
length _D219 8;
if TYPE=. then _D219 = 0.00287720102201;
else _D219=TYPE;
length _D220 8;
if UNIV=. then _D220 = 0.00256621084566;
else _D220=UNIV;
length _D221 8;
if UNIVERS=. then _D221 = 0.00760210205031;
else _D221=UNIVERS;
length _D222 8;
if UNIX=. then _D222 = 0.00267371641663;
else _D222=UNIX;
length _D223 8;
if USENET=. then _D223 = 0.0044850517139;
else _D223=USENET;
length _D224 8;
if USER=. then _D224 = 0.00317361717517;
else _D224=USER;
length _D225 8;
if UTEXA=. then _D225 = 0.00288132565226;
else _D225=UTEXA;
length _D226 8;
if UUCP=. then _D226 = 0.00305775158265;
else _D226=UUCP;
length _D227 8;
if VERSION=. then _D227 = 0.00397772767368;
else _D227=VERSION;
length _D228 8;
if VIRGINIA=. then _D228 = 0.00287849442307;
else _D228=VIRGINIA;
length _D229 8;
if VOLTAG=. then _D229 = 0.00205983514057;
else _D229=VOLTAG;
length _D230 8;
if WATER=. then _D230 = 0.00230477231589;
else _D230=WATER;
length _D231 8;
if WED=. then _D231 = 0.00312873688353;
else _D231=WED;
length _D232 8;
if WIDGET=. then _D232 = 0.00468062867706;
else _D232=WIDGET;
length _D233 8;
if WINDOW=. then _D233 = 0.01247434446553;
else _D233=WINDOW;
length _D234 8;
if WIRE=. then _D234 = 0.00259067960707;
else _D234=WIRE;
length _D235 8;
if WONDER=. then _D235 = 0.00228301678939;
else _D235=WONDER;
length _D236 8;
if WORK=. then _D236 = 0.00552634655966;
else _D236=WORK;
length _D237 8;
if WORLD=. then _D237 = 0.00410366723944;
else _D237=WORLD;
length _D238 8;
if XLIB=. then _D238 = 0.0021280472105;
else _D238=XLIB;
length _D239 8;
if XTERM=. then _D239 = 0.00339168490093;
else _D239=XTERM;
length _D240 8;
if YEAR=. then _D240 = 0.00391459055184;
else _D240=YEAR;
length _D241 8;
if YOU=. then _D241 = 0.00333589191251;
else _D241=YOU;
;
DROP _FORMAT _NORMFMT
_D1
_D2
_D3
_D4
_D5
_D6
_D7
_D8
_D9
_D10
_D11
_D12
_D13
_D14
_D15
_D16
_D17
_D18
_D19
_D20
_D21
_D22
_D23
_D24
_D25
_D26
_D27
_D28
_D29
_D30
_D31
_D32
_D33
_D34
_D35
_D36
_D37
_D38
_D39
_D40
_D41
_D42
_D43
_D44
_D45
_D46
_D47
_D48
_D49
_D50
_D51
_D52
_D53
_D54
_D55
_D56
_D57
_D58
_D59
_D60
_D61
_D62
_D63
_D64
_D65
_D66
_D67
_D68
_D69
_D70
_D71
_D72
_D73
_D74
_D75
_D76
_D77
_D78
_D79
_D80
_D81
_D82
_D83
_D84
_D85
_D86
_D87
_D88
_D89
_D90
_D91
_D92
_D93
_D94
_D95
_D96
_D97
_D98
_D99
_D100
_D101
_D102
_D103
_D104
_D105
_D106
_D107
_D108
_D109
_D110
_D111
_D112
_D113
_D114
_D115
_D116
_D117
_D118
_D119
_D120
_D121
_D122
_D123
_D124
_D125
_D126
_D127
_D128
_D129
_D130
_D131
_D132
_D133
_D134
_D135
_D136
_D137
_D138
_D139
_D140
_D141
_D142
_D143
_D144
_D145
_D146
_D147
_D148
_D149
_D150
_D151
_D152
_D153
_D154
_D155
_D156
_D157
_D158
_D159
_D160
_D161
_D162
_D163
_D164
_D165
_D166
_D167
_D168
_D169
_D170
_D171
_D172
_D173
_D174
_D175
_D176
_D177
_D178
_D179
_D180
_D181
_D182
_D183
_D184
_D185
_D186
_D187
_D188
_D189
_D190
_D191
_D192
_D193
_D194
_D195
_D196
_D197
_D198
_D199
_D200
_D201
_D202
_D203
_D204
_D205
_D206
_D207
_D208
_D209
_D210
_D211
_D212
_D213
_D214
_D215
_D216
_D217
_D218
_D219
_D220
_D221
_D222
_D223
_D224
_D225
_D226
_D227
_D228
_D229
_D230
_D231
_D232
_D233
_D234
_D235
_D236
_D237
_D238
_D239
_D240
_D241
;

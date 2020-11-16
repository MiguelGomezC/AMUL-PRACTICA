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
if ACCESS=. then _D1 = 0;
else _D1=ACCESS-0.00241456723915;
length _D2 8;
if ADAM=. then _D2 = 0;
else _D2=ADAM-0.00235452637421;
length _D3 8;
if ADDRESS=. then _D3 = 0;
else _D3=ADDRESS-0.0027314608283;
length _D4 8;
if ADVANC=. then _D4 = 0;
else _D4=ADVANC-0.00328913891524;
length _D5 8;
if AMERICAN=. then _D5 = 0;
else _D5=AMERICAN-0.00214521929757;
length _D6 8;
if ANDI=. then _D6 = 0;
else _D6=ANDI-0.00221462288165;
length _D7 8;
if ANSWER=. then _D7 = 0;
else _D7=ANSWER-0.00257918238626;
length _D8 8;
if APPLIC=. then _D8 = 0;
else _D8=APPLIC-0.0040545623087;
length _D9 8;
if APPRECI=. then _D9 = 0;
else _D9=APPRECI-0.00308363506237;
length _D10 8;
if ARAB=. then _D10 = 0;
else _D10=ARAB-0.00418780210332;
length _D11 8;
if AREA=. then _D11 = 0;
else _D11=AREA-0.00241493833962;
length _D12 8;
if ARGIC=. then _D12 = 0;
else _D12=ARGIC-0.00212713877305;
length _D13 8;
if ARMENIA=. then _D13 = 0;
else _D13=ARMENIA-0.00218895231325;
length _D14 8;
if ARMENIAN=. then _D14 = 0;
else _D14=ARMENIAN-0.00455914135151;
length _D15 8;
if ATTACK=. then _D15 = 0;
else _D15=ATTACK-0.00211847381256;
length _D16 8;
if AUDIO=. then _D16 = 0;
else _D16=AUDIO-0.00242293347077;
length _D17 8;
if BANK=. then _D17 = 0;
else _D17=BANK-0.00456553856274;
length _D18 8;
if BASE=. then _D18 = 0;
else _D18=BASE-0.00208165721294;
length _D19 8;
if BATTERI=. then _D19 = 0;
else _D19=BATTERI-0.00289733758482;
length _D20 8;
if BILL=. then _D20 = 0;
else _D20=BILL-0.00240033977396;
length _D21 8;
if BOOK=. then _D21 = 0;
else _D21=BOOK-0.0027432962116;
length _D22 8;
if BRAIN=. then _D22 = 0;
else _D22=BRAIN-0.00205133419681;
length _D23 8;
if BRIAN=. then _D23 = 0;
else _D23=BRIAN-0.00247612731454;
length _D24 8;
if BUILD=. then _D24 = 0;
else _D24=BUILD-0.00271351667585;
length _D25 8;
if BUTTON=. then _D25 = 0;
else _D25=BUTTON-0.00202791357444;
length _D26 8;
if CALIFORNIA=. then _D26 = 0;
else _D26=CALIFORNIA-0.00204137765411;
length _D27 8;
if CALL=. then _D27 = 0;
else _D27=CALL-0.00452930248377;
length _D28 8;
if CAN=. then _D28 = 0;
else _D28=CAN-0.00284065705357;
length _D29 8;
if CARD=. then _D29 = 0;
else _D29=CARD-0.00216861177618;
length _D30 8;
if CASE=. then _D30 = 0;
else _D30=CASE-0.00332389955729;
length _D31 8;
if CENTER=. then _D31 = 0;
else _D31=CENTER-0.00326904471245;
length _D32 8;
if CHANG=. then _D32 = 0;
else _D32=CHANG-0.00230299738637;
length _D33 8;
if CHIP=. then _D33 = 0;
else _D33=CHIP-0.00357223440083;
length _D34 8;
if CIRCUIT=. then _D34 = 0;
else _D34=CIRCUIT-0.00313643665772;
length _D35 8;
if CLIENT=. then _D35 = 0;
else _D35=CLIENT-0.00264622993343;
length _D36 8;
if CODE=. then _D36 = 0;
else _D36=CODE-0.0030712810797;
length _D37 8;
if COLOR=. then _D37 = 0;
else _D37=COLOR-0.00359368354327;
length _D38 8;
if COMMUN=. then _D38 = 0;
else _D38=COMMUN-0.00249050968492;
length _D39 8;
if COMP=. then _D39 = 0;
else _D39=COMP-0.00757984177652;
length _D40 8;
if COMPANI=. then _D40 = 0;
else _D40=COMPANI-0.00280778122596;
length _D41 8;
if COMPIL=. then _D41 = 0;
else _D41=COMPIL-0.00270315303063;
length _D42 8;
if COMPUT=. then _D42 = 0;
else _D42=COMPUT-0.00559186119138;
length _D43 8;
if CONNECT=. then _D43 = 0;
else _D43=CONNECT-0.0023734623792;
length _D44 8;
if CONTROL=. then _D44 = 0;
else _D44=CONTROL-0.00281779846725;
length _D45 8;
if COPI=. then _D45 = 0;
else _D45=COPI-0.00322906112538;
length _D46 8;
if CORRECT=. then _D46 = 0;
else _D46=CORRECT-0.0022412266402;
length _D47 8;
if CREAT=. then _D47 = 0;
else _D47=CREAT-0.00252827169085;
length _D48 8;
if CURRENT=. then _D48 = 0;
else _D48=CURRENT-0.0026716403083;
length _D49 8;
if DAI=. then _D49 = 0;
else _D49=DAI-0.0023626429058;
length _D50 8;
if DATA=. then _D50 = 0;
else _D50=DATA-0.00307323383534;
length _D51 8;
if DAVID=. then _D51 = 0;
else _D51=DAVID-0.00426343100299;
length _D52 8;
if DEPART=. then _D52 = 0;
else _D52=DEPART-0.00346500721016;
length _D53 8;
if DEPT=. then _D53 = 0;
else _D53=DEPT-0.00258532866736;
length _D54 8;
if DESIGN=. then _D54 = 0;
else _D54=DESIGN-0.00256118858229;
length _D55 8;
if DETECTOR=. then _D55 = 0;
else _D55=DETECTOR-0.00307459146048;
length _D56 8;
if DEVIC=. then _D56 = 0;
else _D56=DEVIC-0.00234629139925;
length _D57 8;
if DISEAS=. then _D57 = 0;
else _D57=DISEAS-0.00261675344761;
length _D58 8;
if DISPLAI=. then _D58 = 0;
else _D58=DISPLAI-0.0038384279666;
length _D59 8;
if DISTRIBUT=. then _D59 = 0;
else _D59=DISTRIBUT-0.00509292512912;
length _D60 8;
if DOCTOR=. then _D60 = 0;
else _D60=DOCTOR-0.00313535413054;
length _D61 8;
if DOESN=. then _D61 = 0;
else _D61=DOESN-0.00279164795745;
length _D62 8;
if DON=. then _D62 = 0;
else _D62=DON-0.0055263871556;
length _D63 8;
if DRAW=. then _D63 = 0;
else _D63=DRAW-0.00246192979036;
length _D64 8;
if DRIVE=. then _D64 = 0;
else _D64=DRIVE-0.00210453525812;
length _D65 8;
if DRUG=. then _D65 = 0;
else _D65=DRUG-0.00221537531382;
length _D66 8;
if EDU=. then _D66 = 0;
else _D66=EDU-0.00674066844816;
length _D67 8;
if EFFECT=. then _D67 = 0;
else _D67=EFFECT-0.00336277148;
length _D68 8;
if ELECTR=. then _D68 = 0;
else _D68=ELECTR-0.00219289018422;
length _D69 8;
if ELECTRON=. then _D69 = 0;
else _D69=ELECTRON-0.00820454921585;
length _D70 8;
if EMAIL=. then _D70 = 0;
else _D70=EMAIL-0.00327336397091;
length _D71 8;
if ENGIN=. then _D71 = 0;
else _D71=ENGIN-0.003008695453;
length _D72 8;
if ERROR=. then _D72 = 0;
else _D72=ERROR-0.00231468310646;
length _D73 8;
if EVENT=. then _D73 = 0;
else _D73=EVENT-0.00312142347936;
length _D74 8;
if EXPERI=. then _D74 = 0;
else _D74=EXPERI-0.00250071187915;
length _D75 8;
if FACT=. then _D75 = 0;
else _D75=FACT-0.00244750828196;
length _D76 8;
if FAX=. then _D76 = 0;
else _D76=FAX-0.00220437467508;
length _D77 8;
if FEEL=. then _D77 = 0;
else _D77=FEEL-0.00203832213185;
length _D78 8;
if FILE=. then _D78 = 0;
else _D78=FILE-0.00418443335717;
length _D79 8;
if FIND=. then _D79 = 0;
else _D79=FIND-0.00432444986395;
length _D80 8;
if FOLLOWUP=. then _D80 = 0;
else _D80=FOLLOWUP-0.00243844782018;
length _D81 8;
if FONT=. then _D81 = 0;
else _D81=FONT-0.00212416554658;
length _D82 8;
if FOOD=. then _D82 = 0;
else _D82=FOOD-0.00345823850799;
length _D83 8;
if FRI=. then _D83 = 0;
else _D83=FRI-0.00406621827508;
length _D84 8;
if FRIEND=. then _D84 = 0;
else _D84=FRIEND-0.00214968036112;
length _D85 8;
if FUNCTION=. then _D85 = 0;
else _D85=FUNCTION-0.00247932911225;
length _D86 8;
if GEB=. then _D86 = 0;
else _D86=GEB-0.00306188143669;
length _D87 8;
if GENER=. then _D87 = 0;
else _D87=GENER-0.00301380927937;
length _D88 8;
if GEORGIA=. then _D88 = 0;
else _D88=GEORGIA-0.00218572916771;
length _D89 8;
if GIVE=. then _D89 = 0;
else _D89=GIVE-0.00316215770165;
length _D90 8;
if GOOD=. then _D90 = 0;
else _D90=GOOD-0.00439292306279;
length _D91 8;
if GORDON=. then _D91 = 0;
else _D91=GORDON-0.00450329774963;
length _D92 8;
if GOVERN=. then _D92 = 0;
else _D92=GOVERN-0.00217170827764;
length _D93 8;
if GRAPHIC=. then _D93 = 0;
else _D93=GRAPHIC-0.0020499196144;
length _D94 8;
if GREAT=. then _D94 = 0;
else _D94=GREAT-0.00202579482595;
length _D95 8;
if GREEK=. then _D95 = 0;
else _D95=GREEK-0.00209901617457;
length _D96 8;
if GROUND=. then _D96 = 0;
else _D96=GROUND-0.00258379795428;
length _D97 8;
if GROUP=. then _D97 = 0;
else _D97=GROUP-0.00338063956226;
length _D98 8;
if HAPPEN=. then _D98 = 0;
else _D98=HAPPEN-0.00202079560181;
length _D99 8;
if HEAR=. then _D99 = 0;
else _D99=HEAR-0.00210512715255;
length _D100 8;
if HIGH=. then _D100 = 0;
else _D100=HIGH-0.00246389850684;
length _D101 8;
if HOME=. then _D101 = 0;
else _D101=HOME-0.00210085242348;
length _D102 8;
if IMAG=. then _D102 = 0;
else _D102=IMAG-0.00243414948707;
length _D103 8;
if INCLUD=. then _D103 = 0;
else _D103=INCLUD-0.00292089090816;
length _D104 8;
if INFO=. then _D104 = 0;
else _D104=INFO-0.0035504112765;
length _D105 8;
if INFORM=. then _D105 = 0;
else _D105=INFORM-0.0050661920796;
length _D106 8;
if INPUT=. then _D106 = 0;
else _D106=INPUT-0.00214818135728;
length _D107 8;
if INSTITUT=. then _D107 = 0;
else _D107=INSTITUT-0.00324362970322;
length _D108 8;
if INTEREST=. then _D108 = 0;
else _D108=INTEREST-0.00342878990352;
length _D109 8;
if INTERNET=. then _D109 = 0;
else _D109=INTERNET-0.0051331650023;
length _D110 8;
if ISRA=. then _D110 = 0;
else _D110=ISRA-0.00568007679995;
length _D111 8;
if ISRAEL=. then _D111 = 0;
else _D111=ISRAEL-0.00679350701875;
length _D112 8;
if JEW=. then _D112 = 0;
else _D112=JEW-0.00420921178108;
length _D113 8;
if JEWISH=. then _D113 = 0;
else _D113=JEWISH-0.00211330945134;
length _D114 8;
if JOHN=. then _D114 = 0;
else _D114=JOHN-0.00351006082717;
length _D115 8;
if KEYBOARD=. then _D115 = 0;
else _D115=KEYBOARD-0.00230835724711;
length _D116 8;
if KEYWORD=. then _D116 = 0;
else _D116=KEYWORD-0.00333077856509;
length _D117 8;
if KILL=. then _D117 = 0;
else _D117=KILL-0.00350907582405;
length _D118 8;
if KIND=. then _D118 = 0;
else _D118=KIND-0.00242249299062;
length _D119 8;
if LEVEL=. then _D119 = 0;
else _D119=LEVEL-0.00205122710902;
length _D120 8;
if LIST=. then _D120 = 0;
else _D120=LIST-0.00290660930314;
length _D121 8;
if LIVE=. then _D121 = 0;
else _D121=LIVE-0.00237232603683;
length _D122 8;
if LONG=. then _D122 = 0;
else _D122=LONG-0.0030715973488;
length _D123 8;
if MACHIN=. then _D123 = 0;
else _D123=MACHIN-0.00287252946485;
length _D124 8;
if MAIL=. then _D124 = 0;
else _D124=MAIL-0.00557651777199;
length _D125 8;
if MANAG=. then _D125 = 0;
else _D125=MANAG-0.00315923113319;
length _D126 8;
if MARK=. then _D126 = 0;
else _D126=MARK-0.00312658768436;
length _D127 8;
if MED=. then _D127 = 0;
else _D127=MED-0.00599764217877;
length _D128 8;
if MEDIC=. then _D128 = 0;
else _D128=MEDIC-0.00297207806312;
length _D129 8;
if MEDICIN=. then _D129 = 0;
else _D129=MEDICIN-0.00205296358153;
length _D130 8;
if MEMORI=. then _D130 = 0;
else _D130=MEMORI-0.00226607539211;
length _D131 8;
if MICHAEL=. then _D131 = 0;
else _D131=MICHAEL-0.00297343131526;
length _D132 8;
if MIKE=. then _D132 = 0;
else _D132=MIKE-0.00229023007471;
length _D133 8;
if MON=. then _D133 = 0;
else _D133=MON-0.00404727051639;
length _D134 8;
if MOTIF=. then _D134 = 0;
else _D134=MOTIF-0.0049319015004;
length _D135 8;
if MOTOROLA=. then _D135 = 0;
else _D135=MOTOROLA-0.002056408655;
length _D136 8;
if NATION=. then _D136 = 0;
else _D136=NATION-0.00211080632871;
length _D137 8;
if NETWORK=. then _D137 = 0;
else _D137=NETWORK-0.00304800988195;
length _D138 8;
if NEW=. then _D138 = 0;
else _D138=NEW-0.00612696604333;
length _D139 8;
if NEWS=. then _D139 = 0;
else _D139=NEWS-0.00237867593281;
length _D140 8;
if NEWSREAD=. then _D140 = 0;
else _D140=NEWSREAD-0.00294173216704;
length _D141 8;
if NOIS=. then _D141 = 0;
else _D141=NOIS-0.00215333589264;
length _D142 8;
if NUMBER=. then _D142 = 0;
else _D142=NUMBER-0.00401015396161;
length _D143 8;
if OPER=. then _D143 = 0;
else _D143=OPER-0.00213113252601;
length _D144 8;
if OPINION=. then _D144 = 0;
else _D144=OPINION-0.00323746260332;
length _D145 8;
if ORIGIN=. then _D145 = 0;
else _D145=ORIGIN-0.00263705329651;
length _D146 8;
if OUTPUT=. then _D146 = 0;
else _D146=OUTPUT-0.00226421416089;
length _D147 8;
if PAIN=. then _D147 = 0;
else _D147=PAIN-0.00210716885482;
length _D148 8;
if PALESTINIAN=. then _D148 = 0;
else _D148=PALESTINIAN-0.0023111371565;
length _D149 8;
if PART=. then _D149 = 0;
else _D149=PART-0.0031216120666;
length _D150 8;
if PATIENT=. then _D150 = 0;
else _D150=PATIENT-0.00229790563209;
length _D151 8;
if PERSON=. then _D151 = 0;
else _D151=PERSON-0.00256769744242;
length _D152 8;
if PHONE=. then _D152 = 0;
else _D152=PHONE-0.00411661359651;
length _D153 8;
if PITT=. then _D153 = 0;
else _D153=PITT-0.00391200906948;
length _D154 8;
if PITTSBURGH=. then _D154 = 0;
else _D154=PITTSBURGH-0.00264396309527;
length _D155 8;
if PLACE=. then _D155 = 0;
else _D155=PLACE-0.00264507068694;
length _D156 8;
if POINT=. then _D156 = 0;
else _D156=POINT-0.00267023601777;
length _D157 8;
if POLICI=. then _D157 = 0;
else _D157=POLICI-0.00208557904112;
length _D158 8;
if POSIT=. then _D158 = 0;
else _D158=POSIT-0.00214034721607;
length _D159 8;
if POST=. then _D159 = 0;
else _D159=POST-0.00436593649157;
length _D160 8;
if POWER=. then _D160 = 0;
else _D160=POWER-0.00362597715226;
length _D161 8;
if PROBLEM=. then _D161 = 0;
else _D161=PROBLEM-0.00525291920241;
length _D162 8;
if PRODUCT=. then _D162 = 0;
else _D162=PRODUCT-0.00258644849212;
length _D163 8;
if PROGRAM=. then _D163 = 0;
else _D163=PROGRAM-0.00514308172268;
length _D164 8;
if PROJECT=. then _D164 = 0;
else _D164=PROJECT-0.00258352402487;
length _D165 8;
if PUBLIC=. then _D165 = 0;
else _D165=PUBLIC-0.00289083317938;
length _D166 8;
if QUESTION=. then _D166 = 0;
else _D166=QUESTION-0.0050319431904;
length _D167 8;
if RADAR=. then _D167 = 0;
else _D167=RADAR-0.00219732776775;
length _D168 8;
if RADIO=. then _D168 = 0;
else _D168=RADIO-0.00320225543574;
length _D169 8;
if READ=. then _D169 = 0;
else _D169=READ-0.00383000151957;
length _D170 8;
if REASON=. then _D170 = 0;
else _D170=REASON-0.00256869577966;
length _D171 8;
if RECEIV=. then _D171 = 0;
else _D171=RECEIV-0.00256334776652;
length _D172 8;
if REMEMB=. then _D172 = 0;
else _D172=REMEMB-0.00218575610199;
length _D173 8;
if REPLI=. then _D173 = 0;
else _D173=REPLI-0.00559941135631;
length _D174 8;
if REPORT=. then _D174 = 0;
else _D174=REPORT-0.00257520144579;
length _D175 8;
if REQUIR=. then _D175 = 0;
else _D175=REQUIR-0.0020582893753;
length _D176 8;
if RESEARCH=. then _D176 = 0;
else _D176=RESEARCH-0.00416925531822;
length _D177 8;
if RESPONS=. then _D177 = 0;
else _D177=RESPONS-0.0022417215599;
length _D178 8;
if ROBERT=. then _D178 = 0;
else _D178=ROBERT-0.00257740686974;
length _D179 8;
if RUN=. then _D179 = 0;
else _D179=RUN-0.00358707767799;
length _D180 8;
if SAT=. then _D180 = 0;
else _D180=SAT-0.00208905971235;
length _D181 8;
if SCHOOL=. then _D181 = 0;
else _D181=SCHOOL-0.00249565600215;
length _D182 8;
if SCI=. then _D182 = 0;
else _D182=SCI-0.00706778249801;
length _D183 8;
if SCIENC=. then _D183 = 0;
else _D183=SCIENC-0.00479034410225;
length _D184 8;
if SCREEN=. then _D184 = 0;
else _D184=SCREEN-0.00248710269685;
length _D185 8;
if SELL=. then _D185 = 0;
else _D185=SELL-0.0021769676698;
length _D186 8;
if SEND=. then _D186 = 0;
else _D186=SEND-0.00282030159156;
length _D187 8;
if SERDAR=. then _D187 = 0;
else _D187=SERDAR-0.00244926633917;
length _D188 8;
if SERVER=. then _D188 = 0;
else _D188=SERVER-0.00485356183873;
length _D189 8;
if SERVIC=. then _D189 = 0;
else _D189=SERVIC-0.00307314227706;
length _D190 8;
if SHOW=. then _D190 = 0;
else _D190=SHOW-0.00213945691657;
length _D191 8;
if SIDE=. then _D191 = 0;
else _D191=SIDE-0.00251191441697;
length _D192 8;
if SIGNAL=. then _D192 = 0;
else _D192=SIGNAL-0.00227093229075;
length _D193 8;
if SOFTWAR=. then _D193 = 0;
else _D193=SOFTWAR-0.00376093259333;
length _D194 8;
if SOUND=. then _D194 = 0;
else _D194=SOUND-0.00216340251972;
length _D195 8;
if SOURC=. then _D195 = 0;
else _D195=SOURC-0.00335659196856;
length _D196 8;
if STANDARD=. then _D196 = 0;
else _D196=STANDARD-0.00228264937069;
length _D197 8;
if START=. then _D197 = 0;
else _D197=START-0.00296563224075;
length _D198 8;
if STATE=. then _D198 = 0;
else _D198=STATE-0.00434748564902;
length _D199 8;
if STEVE=. then _D199 = 0;
else _D199=STEVE-0.00331927690287;
length _D200 8;
if STUDI=. then _D200 = 0;
else _D200=STUDI-0.00219173520094;
length _D201 8;
if SUBSCRIB=. then _D201 = 0;
else _D201=SUBSCRIB-0.00225895340976;
length _D202 8;
if SUGGEST=. then _D202 = 0;
else _D202=SUGGEST-0.00271552665931;
length _D203 8;
if SUN=. then _D203 = 0;
else _D203=SUN-0.00245882066328;
length _D204 8;
if SUPPORT=. then _D204 = 0;
else _D204=SUPPORT-0.00306485886683;
length _D205 8;
if SWITCH=. then _D205 = 0;
else _D205=SWITCH-0.00227357090703;
length _D206 8;
if SYSTEM=. then _D206 = 0;
else _D206=SYSTEM-0.00598573231985;
length _D207 8;
if TALK=. then _D207 = 0;
else _D207=TALK-0.00223961571553;
length _D208 8;
if TECHNOLOG=. then _D208 = 0;
else _D208=TECHNOLOG-0.00336579865103;
length _D209 8;
if TERMIN=. then _D209 = 0;
else _D209=TERMIN-0.00208424415769;
length _D210 8;
if TEST=. then _D210 = 0;
else _D210=TEST-0.00276692530828;
length _D211 8;
if THAT=. then _D211 = 0;
else _D211=THAT-0.00243269024072;
length _D212 8;
if THU=. then _D212 = 0;
else _D212=THU-0.00397964591783;
length _D213 8;
if TIME=. then _D213 = 0;
else _D213=TIME-0.00511692358758;
length _D214 8;
if TREATMENT=. then _D214 = 0;
else _D214=TREATMENT-0.00203115102643;
length _D215 8;
if TRUE=. then _D215 = 0;
else _D215=TRUE-0.00221582382989;
length _D216 8;
if TUE=. then _D216 = 0;
else _D216=TUE-0.00447660716504;
length _D217 8;
if TURKISH=. then _D217 = 0;
else _D217=TURKISH-0.00341699547455;
length _D218 8;
if TYPE=. then _D218 = 0;
else _D218=TYPE-0.00287720102201;
length _D219 8;
if UNIV=. then _D219 = 0;
else _D219=UNIV-0.00256621084566;
length _D220 8;
if UNIVERS=. then _D220 = 0;
else _D220=UNIVERS-0.00760210205031;
length _D221 8;
if UNIX=. then _D221 = 0;
else _D221=UNIX-0.00267371641663;
length _D222 8;
if USENET=. then _D222 = 0;
else _D222=USENET-0.0044850517139;
length _D223 8;
if USER=. then _D223 = 0;
else _D223=USER-0.00317361717517;
length _D224 8;
if UTEXA=. then _D224 = 0;
else _D224=UTEXA-0.00288132565226;
length _D225 8;
if UUCP=. then _D225 = 0;
else _D225=UUCP-0.00305775158265;
length _D226 8;
if VERSION=. then _D226 = 0;
else _D226=VERSION-0.00397772767368;
length _D227 8;
if VIRGINIA=. then _D227 = 0;
else _D227=VIRGINIA-0.00287849442307;
length _D228 8;
if VOLTAG=. then _D228 = 0;
else _D228=VOLTAG-0.00205983514057;
length _D229 8;
if WATER=. then _D229 = 0;
else _D229=WATER-0.00230477231589;
length _D230 8;
if WED=. then _D230 = 0;
else _D230=WED-0.00312873688353;
length _D231 8;
if WIDGET=. then _D231 = 0;
else _D231=WIDGET-0.00468062867706;
length _D232 8;
if WINDOW=. then _D232 = 0;
else _D232=WINDOW-0.01247434446553;
length _D233 8;
if WIRE=. then _D233 = 0;
else _D233=WIRE-0.00259067960707;
length _D234 8;
if WONDER=. then _D234 = 0;
else _D234=WONDER-0.00228301678939;
length _D235 8;
if WORK=. then _D235 = 0;
else _D235=WORK-0.00552634655966;
length _D236 8;
if WORLD=. then _D236 = 0;
else _D236=WORLD-0.00410366723944;
length _D237 8;
if XLIB=. then _D237 = 0;
else _D237=XLIB-0.0021280472105;
length _D238 8;
if XTERM=. then _D238 = 0;
else _D238=XTERM-0.00339168490093;
length _D239 8;
if YEAR=. then _D239 = 0;
else _D239=YEAR-0.00391459055184;
length _D240 8;
if YOU=. then _D240 = 0;
else _D240=YOU-0.00333589191251;
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
;

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
if ABSOLUT=. then _D1 = 0.00091218342131;
else _D1=ABSOLUT;
length _D2 8;
if ACCELER=. then _D2 = 0.00092611979331;
else _D2=ACCELER;
length _D3 8;
if ACCEPT=. then _D3 = 0.001657930754;
else _D3=ACCEPT;
length _D4 8;
if ACCESS=. then _D4 = 0.00241456723915;
else _D4=ACCESS;
length _D5 8;
if ACCOUNT=. then _D5 = 0.00113878074576;
else _D5=ACCOUNT;
length _D6 8;
if ACCUR=. then _D6 = 0.00092548275323;
else _D6=ACCUR;
length _D7 8;
if ACID=. then _D7 = 0.00136354345314;
else _D7=ACID;
length _D8 8;
if ACTION=. then _D8 = 0.00158071443132;
else _D8=ACTION;
length _D9 8;
if ACTIV=. then _D9 = 0.00131977758778;
else _D9=ACTIV;
length _D10 8;
if ADAM=. then _D10 = 0.00235452637421;
else _D10=ADAM;
length _D11 8;
if ADCOM=. then _D11 = 0.0009713772061;
else _D11=ADCOM;
length _D12 8;
if ADDIT=. then _D12 = 0.00104880494436;
else _D12=ADDIT;
length _D13 8;
if ADDRESS=. then _D13 = 0.0027314608283;
else _D13=ADDRESS;
length _D14 8;
if ADMIN=. then _D14 = 0.00106998821386;
else _D14=ADMIN;
length _D15 8;
if ADMINISTR=. then _D15 = 0.0015221401562;
else _D15=ADMINISTR;
length _D16 8;
if ADRIAN=. then _D16 = 0.00130468791239;
else _D16=ADRIAN;
length _D17 8;
if ADVANC=. then _D17 = 0.00328913891524;
else _D17=ADVANC;
length _D18 8;
if ADVIC=. then _D18 = 0.00125792505593;
else _D18=ADVIC;
length _D19 8;
if AFFECT=. then _D19 = 0.00077805909596;
else _D19=AFFECT;
length _D20 8;
if AGRE=. then _D20 = 0.00127836152266;
else _D20=AGRE;
length _D21 8;
if AID=. then _D21 = 0.00096732270122;
else _D21=AID;
length _D22 8;
if ALAN=. then _D22 = 0.0016706441327;
else _D22=ALAN;
length _D23 8;
if ALLERG=. then _D23 = 0.00088754279029;
else _D23=ALLERG;
length _D24 8;
if ALLERGI=. then _D24 = 0.00074526283504;
else _D24=ALLERGI;
length _D25 8;
if ALLOC=. then _D25 = 0.00080677984574;
else _D25=ALLOC;
length _D26 8;
if ALLOW=. then _D26 = 0.00091003891213;
else _D26=ALLOW;
length _D27 8;
if ALTERN=. then _D27 = 0.0012582326644;
else _D27=ALTERN;
length _D28 8;
if AMATEUR=. then _D28 = 0.0009549526939;
else _D28=AMATEUR;
length _D29 8;
if AMERICAN=. then _D29 = 0.00214521929757;
else _D29=AMERICAN;
length _D30 8;
if AMOUNT=. then _D30 = 0.00123793520006;
else _D30=AMOUNT;
length _D31 8;
if AMP=. then _D31 = 0.00113178004453;
else _D31=AMP;
length _D32 8;
if AMPLIFI=. then _D32 = 0.00104930599863;
else _D32=AMPLIFI;
length _D33 8;
if ANA=. then _D33 = 0.00082149526109;
else _D33=ANA;
length _D34 8;
if ANALOG=. then _D34 = 0.00132483690762;
else _D34=ANALOG;
length _D35 8;
if ANDI=. then _D35 = 0.00221462288165;
else _D35=ANDI;
length _D36 8;
if ANDREW=. then _D36 = 0.00165951600952;
else _D36=ANDREW;
length _D37 8;
if ANGEL=. then _D37 = 0.00112908864524;
else _D37=ANGEL;
length _D38 8;
if ANIM=. then _D38 = 0.00107493577044;
else _D38=ANIM;
length _D39 8;
if ANNOUNC=. then _D39 = 0.00080802265843;
else _D39=ANNOUNC;
length _D40 8;
if ANSWER=. then _D40 = 0.00257918238626;
else _D40=ANSWER;
length _D41 8;
if ANTENNA=. then _D41 = 0.00108914047413;
else _D41=ANTENNA;
length _D42 8;
if ANTI=. then _D42 = 0.00162268677225;
else _D42=ANTI;
length _D43 8;
if ANTIBIOT=. then _D43 = 0.00120458270076;
else _D43=ANTIBIOT;
length _D44 8;
if APP=. then _D44 = 0.00107926915813;
else _D44=APP;
length _D45 8;
if APPAR=. then _D45 = 0.00114731104797;
else _D45=APPAR;
length _D46 8;
if APPEAR=. then _D46 = 0.001432637392;
else _D46=APPEAR;
length _D47 8;
if APPL=. then _D47 = 0.00109098870592;
else _D47=APPL;
length _D48 8;
if APPLI=. then _D48 = 0.001569337479;
else _D48=APPLI;
length _D49 8;
if APPLIC=. then _D49 = 0.0040545623087;
else _D49=APPLIC;
length _D50 8;
if APPRECI=. then _D50 = 0.00308363506237;
else _D50=APPRECI;
length _D51 8;
if APPROACH=. then _D51 = 0.00082163344871;
else _D51=APPROACH;
length _D52 8;
if APRIL=. then _D52 = 0.00098639005857;
else _D52=APRIL;
length _D53 8;
if ARAB=. then _D53 = 0.00418780210332;
else _D53=ARAB;
length _D54 8;
if ARCAD=. then _D54 = 0.00076518443368;
else _D54=ARCAD;
length _D55 8;
if AREA=. then _D55 = 0.00241493833962;
else _D55=AREA;
length _D56 8;
if AREN=. then _D56 = 0.00128499930541;
else _D56=AREN;
length _D57 8;
if ARGIC=. then _D57 = 0.00212713877305;
else _D57=ARGIC;
length _D58 8;
if ARGUMENT=. then _D58 = 0.00106920852318;
else _D58=ARGUMENT;
length _D59 8;
if ARM=. then _D59 = 0.00088424687309;
else _D59=ARM;
length _D60 8;
if ARMENIA=. then _D60 = 0.00218895231325;
else _D60=ARMENIA;
length _D61 8;
if ARMENIAN=. then _D61 = 0.00455914135151;
else _D61=ARMENIAN;
length _D62 8;
if ARMI=. then _D62 = 0.00078256728372;
else _D62=ARMI;
length _D63 8;
if ARTICL=. then _D63 = 0.0009568858035;
else _D63=ARTICL;
length _D64 8;
if ARTIFICI=. then _D64 = 0.00128966577366;
else _D64=ARTIFICI;
length _D65 8;
if ASK=. then _D65 = 0.00121779276343;
else _D65=ASK;
length _D66 8;
if ASSEMBL=. then _D66 = 0.00113267643003;
else _D66=ASSEMBL;
length _D67 8;
if ASSIST=. then _D67 = 0.00094060908546;
else _D67=ASSIST;
length _D68 8;
if ASSOCI=. then _D68 = 0.00134943805569;
else _D68=ASSOCI;
length _D69 8;
if ASSUM=. then _D69 = 0.00138508742969;
else _D69=ASSUM;
length _D70 8;
if ATARI=. then _D70 = 0.00078107518784;
else _D70=ATARI;
length _D71 8;
if ATHEN=. then _D71 = 0.00097719920242;
else _D71=ATHEN;
length _D72 8;
if ATHENA=. then _D72 = 0.0009390285106;
else _D72=ATHENA;
length _D73 8;
if ATTACH=. then _D73 = 0.00075963217637;
else _D73=ATTACH;
length _D74 8;
if ATTACK=. then _D74 = 0.00211847381256;
else _D74=ATTACK;
length _D75 8;
if ATTEMPT=. then _D75 = 0.00123808198493;
else _D75=ATTEMPT;
length _D76 8;
if ATTRIBUT=. then _D76 = 0.00100031695727;
else _D76=ATTRIBUT;
length _D77 8;
if AUDIO=. then _D77 = 0.00242293347077;
else _D77=AUDIO;
length _D78 8;
if AUSTIN=. then _D78 = 0.00111212778298;
else _D78=AUSTIN;
length _D79 8;
if AUSTRALIA=. then _D79 = 0.00127690588425;
else _D79=AUSTRALIA;
length _D80 8;
if AUTHOR=. then _D80 = 0.0015703419933;
else _D80=AUTHOR;
length _D81 8;
if AVOID=. then _D81 = 0.00127305504162;
else _D81=AVOID;
length _D82 8;
if AZERI=. then _D82 = 0.00090233897812;
else _D82=AZERI;
length _D83 8;
if BACKGROUND=. then _D83 = 0.00080763075773;
else _D83=BACKGROUND;
length _D84 8;
if BAND=. then _D84 = 0.00115251033395;
else _D84=BAND;
length _D85 8;
if BANK=. then _D85 = 0.00456553856274;
else _D85=BANK;
length _D86 8;
if BARBECU=. then _D86 = 0.00090748779102;
else _D86=BARBECU;
length _D87 8;
if BASE=. then _D87 = 0.00208165721294;
else _D87=BASE;
length _D88 8;
if BASIC=. then _D88 = 0.00144939354457;
else _D88=BASIC;
length _D89 8;
if BATTERI=. then _D89 = 0.00289733758482;
else _D89=BATTERI;
length _D90 8;
if BECK=. then _D90 = 0.00111539885737;
else _D90=BECK;
length _D91 8;
if BELL=. then _D91 = 0.00118475301621;
else _D91=BELL;
length _D92 8;
if BENSON=. then _D92 = 0.00116942468106;
else _D92=BENSON;
length _D93 8;
if BERKELEI=. then _D93 = 0.0010250980493;
else _D93=BERKELEI;
length _D94 8;
if BEYER=. then _D94 = 0.00176107740931;
else _D94=BEYER;
length _D95 8;
if BILL=. then _D95 = 0.00240033977396;
else _D95=BILL;
length _D96 8;
if BIRTHDAI=. then _D96 = 0.00085728831307;
else _D96=BIRTHDAI;
length _D97 8;
if BIT=. then _D97 = 0.00171493954376;
else _D97=BIT;
length _D98 8;
if BITMAP=. then _D98 = 0.00111872389144;
else _D98=BITMAP;
length _D99 8;
if BLACK=. then _D99 = 0.0009196853231;
else _D99=BLACK;
length _D100 8;
if BLOOD=. then _D100 = 0.00177502459554;
else _D100=BLOOD;
length _D101 8;
if BLUE=. then _D101 = 0.0011932717698;
else _D101=BLUE;
length _D102 8;
if BOARD=. then _D102 = 0.00194847184724;
else _D102=BOARD;
length _D103 8;
if BODI=. then _D103 = 0.00164466550767;
else _D103=BODI;
length _D104 8;
if BOMB=. then _D104 = 0.00083491177733;
else _D104=BOMB;
length _D105 8;
if BOOK=. then _D105 = 0.0027432962116;
else _D105=BOOK;
length _D106 8;
if BORDER=. then _D106 = 0.00147323326741;
else _D106=BORDER;
length _D107 8;
if BOSTON=. then _D107 = 0.00111826166075;
else _D107=BOSTON;
length _D108 8;
if BOUGHT=. then _D108 = 0.00095820383408;
else _D108=BOUGHT;
length _D109 8;
if BOULDER=. then _D109 = 0.00082033599838;
else _D109=BOULDER;
length _D110 8;
if BOX=. then _D110 = 0.00145177088356;
else _D110=BOX;
length _D111 8;
if BRAD=. then _D111 = 0.0013653726022;
else _D111=BRAD;
length _D112 8;
if BRAIN=. then _D112 = 0.00205133419681;
else _D112=BRAIN;
length _D113 8;
if BRAND=. then _D113 = 0.00083247344605;
else _D113=BRAND;
length _D114 8;
if BREAK=. then _D114 = 0.00100802670583;
else _D114=BREAK;
length _D115 8;
if BRIAN=. then _D115 = 0.00247612731454;
else _D115=BRIAN;
length _D116 8;
if BRING=. then _D116 = 0.00078583555669;
else _D116=BRING;
length _D117 8;
if BRITISH=. then _D117 = 0.00096897929641;
else _D117=BRITISH;
length _D118 8;
if BROWN=. then _D118 = 0.0013847432902;
else _D118=BROWN;
length _D119 8;
if BTW=. then _D119 = 0.00081869601834;
else _D119=BTW;
length _D120 8;
if BUFFER=. then _D120 = 0.00082119839293;
else _D120=BUFFER;
length _D121 8;
if BUILD=. then _D121 = 0.00271351667585;
else _D121=BUILD;
length _D122 8;
if BUILT=. then _D122 = 0.00140629445111;
else _D122=BUILT;
length _D123 8;
if BULB=. then _D123 = 0.00083997821506;
else _D123=BULB;
length _D124 8;
if BUNCH=. then _D124 = 0.00100354870175;
else _D124=BUNCH;
length _D125 8;
if BUSH=. then _D125 = 0.00081926128707;
else _D125=BUSH;
length _D126 8;
if BUSI=. then _D126 = 0.00131447510131;
else _D126=BUSI;
length _D127 8;
if BUTTON=. then _D127 = 0.00202791357444;
else _D127=BUTTON;
length _D128 8;
if CABL=. then _D128 = 0.00122214448972;
else _D128=CABL;
length _D129 8;
if CALIFORNIA=. then _D129 = 0.00204137765411;
else _D129=CALIFORNIA;
length _D130 8;
if CALL=. then _D130 = 0.00452930248377;
else _D130=CALL;
length _D131 8;
if CAMBRIDG=. then _D131 = 0.00163725243646;
else _D131=CAMBRIDG;
length _D132 8;
if CAN=. then _D132 = 0.00284065705357;
else _D132=CAN;
length _D133 8;
if CANADA=. then _D133 = 0.0019610471025;
else _D133=CANADA;
length _D134 8;
if CANCER=. then _D134 = 0.00187136154431;
else _D134=CANCER;
length _D135 8;
if CANDIDA=. then _D135 = 0.00138810079275;
else _D135=CANDIDA;
length _D136 8;
if CAPABL=. then _D136 = 0.00078277039474;
else _D136=CAPABL;
length _D137 8;
if CAPACITOR=. then _D137 = 0.00095826794939;
else _D137=CAPACITOR;
length _D138 8;
if CAPIT=. then _D138 = 0.0009210646093;
else _D138=CAPIT;
length _D139 8;
if CAR=. then _D139 = 0.00115513425596;
else _D139=CAR;
length _D140 8;
if CARD=. then _D140 = 0.00216861177618;
else _D140=CARD;
length _D141 8;
if CARE=. then _D141 = 0.00151422094983;
else _D141=CARE;
length _D142 8;
if CARNEGI=. then _D142 = 0.00117281268067;
else _D142=CARNEGI;
length _D143 8;
if CARRI=. then _D143 = 0.00087046821652;
else _D143=CARRI;
length _D144 8;
if CARTER=. then _D144 = 0.00094991945473;
else _D144=CARTER;
length _D145 8;
if CASE=. then _D145 = 0.00332389955729;
else _D145=CASE;
length _D146 8;
if CATALOG=. then _D146 = 0.00097851811439;
else _D146=CATALOG;
length _D147 8;
if CAUS=. then _D147 = 0.00113561889149;
else _D147=CAUS;
length _D148 8;
if CELL=. then _D148 = 0.00154860375419;
else _D148=CELL;
length _D149 8;
if CENTER=. then _D149 = 0.00326904471245;
else _D149=CENTER;
length _D150 8;
if CENTR=. then _D150 = 0.00110517229862;
else _D150=CENTR;
length _D151 8;
if CHANC=. then _D151 = 0.00096617793132;
else _D151=CHANC;
length _D152 8;
if CHANG=. then _D152 = 0.00230299738637;
else _D152=CHANG;
length _D153 8;
if CHANNEL=. then _D153 = 0.00131314177238;
else _D153=CHANNEL;
length _D154 8;
if CHARACT=. then _D154 = 0.00117417928188;
else _D154=CHARACT;
length _D155 8;
if CHARG=. then _D155 = 0.00088381125778;
else _D155=CHARG;
length _D156 8;
if CHASTITI=. then _D156 = 0.00147176016502;
else _D156=CHASTITI;
length _D157 8;
if CHEAP=. then _D157 = 0.00119190782724;
else _D157=CHEAP;
length _D158 8;
if CHECK=. then _D158 = 0.00179238311041;
else _D158=CHECK;
length _D159 8;
if CHEER=. then _D159 = 0.00125481873288;
else _D159=CHEER;
length _D160 8;
if CHEMIC=. then _D160 = 0.00102507312333;
else _D160=CHEMIC;
length _D161 8;
if CHICAGO=. then _D161 = 0.00095234729525;
else _D161=CHICAGO;
length _D162 8;
if CHILD=. then _D162 = 0.0014998945992;
else _D162=CHILD;
length _D163 8;
if CHILDREN=. then _D163 = 0.00119682824899;
else _D163=CHILDREN;
length _D164 8;
if CHINES=. then _D164 = 0.00120301877538;
else _D164=CHINES;
length _D165 8;
if CHIP=. then _D165 = 0.00357223440083;
else _D165=CHIP;
length _D166 8;
if CHOIC=. then _D166 = 0.00092236752218;
else _D166=CHOIC;
length _D167 8;
if CHRI=. then _D167 = 0.00153352122649;
else _D167=CHRI;
length _D168 8;
if CHRISTIAN=. then _D168 = 0.00097679186679;
else _D168=CHRISTIAN;
length _D169 8;
if CHRISTOPH=. then _D169 = 0.00102657549872;
else _D169=CHRISTOPH;
length _D170 8;
if CIRCUIT=. then _D170 = 0.00313643665772;
else _D170=CIRCUIT;
length _D171 8;
if CITI=. then _D171 = 0.0015991150892;
else _D171=CITI;
length _D172 8;
if CITIZEN=. then _D172 = 0.00085600731081;
else _D172=CITIZEN;
length _D173 8;
if CIVIL=. then _D173 = 0.00116876319093;
else _D173=CIVIL;
length _D174 8;
if CIVILIAN=. then _D174 = 0.00154990006016;
else _D174=CIVILIAN;
length _D175 8;
if CLAIM=. then _D175 = 0.00177873041914;
else _D175=CLAIM;
length _D176 8;
if CLASS=. then _D176 = 0.00119978413917;
else _D176=CLASS;
length _D177 8;
if CLEAR=. then _D177 = 0.00128281807306;
else _D177=CLEAR;
length _D178 8;
if CLEVELAND=. then _D178 = 0.00092771321825;
else _D178=CLEVELAND;
length _D179 8;
if CLIENT=. then _D179 = 0.00264622993343;
else _D179=CLIENT;
length _D180 8;
if CLINIC=. then _D180 = 0.00127232043819;
else _D180=CLINIC;
length _D181 8;
if CLINTON=. then _D181 = 0.00080810284764;
else _D181=CLINTON;
length _D182 8;
if CLOCK=. then _D182 = 0.0017396582214;
else _D182=CLOCK;
length _D183 8;
if CLOSE=. then _D183 = 0.00163970894391;
else _D183=CLOSE;
length _D184 8;
if CLUB=. then _D184 = 0.0008176292199;
else _D184=CLUB;
length _D185 8;
if CMU=. then _D185 = 0.00074382754477;
else _D185=CMU;
length _D186 8;
if CODE=. then _D186 = 0.0030712810797;
else _D186=CODE;
length _D187 8;
if COLD=. then _D187 = 0.00087257837693;
else _D187=COLD;
length _D188 8;
if COLLEG=. then _D188 = 0.00193577490611;
else _D188=COLLEG;
length _D189 8;
if COLLIN=. then _D189 = 0.00077396544264;
else _D189=COLLIN;
length _D190 8;
if COLOR=. then _D190 = 0.00359368354327;
else _D190=COLOR;
length _D191 8;
if COLORADO=. then _D191 = 0.00100386511398;
else _D191=COLORADO;
length _D192 8;
if COLORMAP=. then _D192 = 0.00193483997272;
else _D192=COLORMAP;
length _D193 8;
if COLUMBIA=. then _D193 = 0.0014339197722;
else _D193=COLUMBIA;
length _D194 8;
if COMBIN=. then _D194 = 0.00085516554629;
else _D194=COMBIN;
length _D195 8;
if COMMAND=. then _D195 = 0.00117758146915;
else _D195=COMMAND;
length _D196 8;
if COMMENT=. then _D196 = 0.00112138295357;
else _D196=COMMENT;
length _D197 8;
if COMMERCI=. then _D197 = 0.00098393152743;
else _D197=COMMERCI;
length _D198 8;
if COMMIT=. then _D198 = 0.00085116790965;
else _D198=COMMIT;
length _D199 8;
if COMMON=. then _D199 = 0.00156654838905;
else _D199=COMMON;
length _D200 8;
if COMMUN=. then _D200 = 0.00249050968492;
else _D200=COMMUN;
length _D201 8;
if COMP=. then _D201 = 0.00757984177652;
else _D201=COMP;
length _D202 8;
if COMPANI=. then _D202 = 0.00280778122596;
else _D202=COMPANI;
length _D203 8;
if COMPAR=. then _D203 = 0.00109613560994;
else _D203=COMPAR;
length _D204 8;
if COMPAT=. then _D204 = 0.00077619629524;
else _D204=COMPAT;
length _D205 8;
if COMPIL=. then _D205 = 0.00270315303063;
else _D205=COMPIL;
length _D206 8;
if COMPLET=. then _D206 = 0.00141273322983;
else _D206=COMPLET;
length _D207 8;
if COMPON=. then _D207 = 0.00127253139231;
else _D207=COMPON;
length _D208 8;
if COMPUT=. then _D208 = 0.00559186119138;
else _D208=COMPUT;
length _D209 8;
if CONCERN=. then _D209 = 0.00111127290491;
else _D209=CONCERN;
length _D210 8;
if CONCRET=. then _D210 = 0.00099966564713;
else _D210=CONCRET;
length _D211 8;
if CONDIT=. then _D211 = 0.0014795528338;
else _D211=CONDIT;
length _D212 8;
if CONFER=. then _D212 = 0.0007424467262;
else _D212=CONFER;
length _D213 8;
if CONFIGUR=. then _D213 = 0.00091540047326;
else _D213=CONFIGUR;
length _D214 8;
if CONFLICT=. then _D214 = 0.00084982312887;
else _D214=CONFLICT;
length _D215 8;
if CONFUS=. then _D215 = 0.00076761034629;
else _D215=CONFUS;
length _D216 8;
if CONNECT=. then _D216 = 0.0023734623792;
else _D216=CONNECT;
length _D217 8;
if CONSID=. then _D217 = 0.00084663282068;
else _D217=CONSID;
length _D218 8;
if CONSIST=. then _D218 = 0.00081926615372;
else _D218=CONSIST;
length _D219 8;
if CONSTRUCT=. then _D219 = 0.00080952459023;
else _D219=CONSTRUCT;
length _D220 8;
if CONSULT=. then _D220 = 0.00075949994607;
else _D220=CONSULT;
length _D221 8;
if CONTACT=. then _D221 = 0.00145793566124;
else _D221=CONTACT;
length _D222 8;
if CONTENT=. then _D222 = 0.00084667712055;
else _D222=CONTENT;
length _D223 8;
if CONTEXT=. then _D223 = 0.00109070709072;
else _D223=CONTEXT;
length _D224 8;
if CONTINU=. then _D224 = 0.00130063214881;
else _D224=CONTINU;
length _D225 8;
if CONTROL=. then _D225 = 0.00281779846725;
else _D225=CONTROL;
length _D226 8;
if CONVENT=. then _D226 = 0.00074884009341;
else _D226=CONVENT;
length _D227 8;
if CONVERT=. then _D227 = 0.00185277626274;
else _D227=CONVERT;
length _D228 8;
if COOL=. then _D228 = 0.0017735701151;
else _D228=COOL;
length _D229 8;
if COPI=. then _D229 = 0.00322906112538;
else _D229=COPI;
length _D230 8;
if CORN=. then _D230 = 0.00074319856105;
else _D230=CORN;
length _D231 8;
if CORP=. then _D231 = 0.00140587981319;
else _D231=CORP;
length _D232 8;
if CORPOR=. then _D232 = 0.0020140156703;
else _D232=CORPOR;
length _D233 8;
if CORRECT=. then _D233 = 0.0022412266402;
else _D233=CORRECT;
length _D234 8;
if COST=. then _D234 = 0.00174790952423;
else _D234=COST;
length _D235 8;
if COULDN=. then _D235 = 0.00110202397668;
else _D235=COULDN;
length _D236 8;
if COUNT=. then _D236 = 0.00092658002806;
else _D236=COUNT;
length _D237 8;
if COUNTRI=. then _D237 = 0.00185597216337;
else _D237=COUNTRI;
length _D238 8;
if COUPL=. then _D238 = 0.00170157327009;
else _D238=COUPL;
length _D239 8;
if COVER=. then _D239 = 0.0008821097573;
else _D239=COVER;
length _D240 8;
if COVINGTON=. then _D240 = 0.0012043776183;
else _D240=COVINGTON;
length _D241 8;
if CPR=. then _D241 = 0.00090192538005;
else _D241=CPR;
length _D242 8;
if CREAT=. then _D242 = 0.00252827169085;
else _D242=CREAT;
length _D243 8;
if CROHN=. then _D243 = 0.00075595703521;
else _D243=CROHN;
length _D244 8;
if CROSS=. then _D244 = 0.00073185929742;
else _D244=CROSS;
length _D245 8;
if CURE=. then _D245 = 0.0008353506376;
else _D245=CURE;
length _D246 8;
if CURRENT=. then _D246 = 0.0026716403083;
else _D246=CURRENT;
length _D247 8;
if CURSOR=. then _D247 = 0.00149925636578;
else _D247=CURSOR;
length _D248 8;
if CUSTOM=. then _D248 = 0.00075716692047;
else _D248=CUSTOM;
length _D249 8;
if CUTE=. then _D249 = 0.00091199208772;
else _D249=CUTE;
length _D250 8;
if CYCL=. then _D250 = 0.00125139101827;
else _D250=CYCL;
length _D251 8;
if DAI=. then _D251 = 0.0023626429058;
else _D251=DAI;
length _D252 8;
if DAILI=. then _D252 = 0.00093748750748;
else _D252=DAILI;
length _D253 8;
if DALE=. then _D253 = 0.00086670247721;
else _D253=DALE;
length _D254 8;
if DAMAG=. then _D254 = 0.00076008134271;
else _D254=DAMAG;
length _D255 8;
if DANGER=. then _D255 = 0.00148090446759;
else _D255=DANGER;
length _D256 8;
if DANIEL=. then _D256 = 0.00112791895319;
else _D256=DANIEL;
length _D257 8;
if DANNI=. then _D257 = 0.00103415195245;
else _D257=DANNI;
length _D258 8;
if DATA=. then _D258 = 0.00307323383534;
else _D258=DATA;
length _D259 8;
if DAVE=. then _D259 = 0.00148467132971;
else _D259=DAVE;
length _D260 8;
if DAVID=. then _D260 = 0.00426343100299;
else _D260=DAVID;
length _D261 8;
if DAVIDIAN=. then _D261 = 0.0009566738029;
else _D261=DAVIDIAN;
length _D262 8;
if DAYTON=. then _D262 = 0.00074921429727;
else _D262=DAYTON;
length _D263 8;
if DEAD=. then _D263 = 0.00109297321027;
else _D263=DEAD;
length _D264 8;
if DEAL=. then _D264 = 0.00131940424943;
else _D264=DEAL;
length _D265 8;
if DEAR=. then _D265 = 0.00072589061866;
else _D265=DEAR;
length _D266 8;
if DEATH=. then _D266 = 0.00124762176666;
else _D266=DEATH;
length _D267 8;
if DECID=. then _D267 = 0.00100044079071;
else _D267=DECID;
length _D268 8;
if DECOD=. then _D268 = 0.00097008288047;
else _D268=DECOD;
length _D269 8;
if DEFAULT=. then _D269 = 0.00163240238197;
else _D269=DEFAULT;
length _D270 8;
if DEFIN=. then _D270 = 0.00180550846142;
else _D270=DEFIN;
length _D271 8;
if DEFINIT=. then _D271 = 0.00074666772828;
else _D271=DEFINIT;
length _D272 8;
if DEGRE=. then _D272 = 0.00083111812483;
else _D272=DEGRE;
length _D273 8;
if DEIR=. then _D273 = 0.00073248436739;
else _D273=DEIR;
length _D274 8;
if DELET=. then _D274 = 0.00080402630801;
else _D274=DELET;
length _D275 8;
if DEPART=. then _D275 = 0.00346500721016;
else _D275=DEPART;
length _D276 8;
if DEPEND=. then _D276 = 0.00102498973456;
else _D276=DEPEND;
length _D277 8;
if DEPT=. then _D277 = 0.00258532866736;
else _D277=DEPT;
length _D278 8;
if DEPTH=. then _D278 = 0.00103397009723;
else _D278=DEPTH;
length _D279 8;
if DESIGN=. then _D279 = 0.00256118858229;
else _D279=DESIGN;
length _D280 8;
if DESTROI=. then _D280 = 0.00087731636097;
else _D280=DESTROI;
length _D281 8;
if DETAIL=. then _D281 = 0.00133966855714;
else _D281=DETAIL;
length _D282 8;
if DETECT=. then _D282 = 0.00166684003337;
else _D282=DETECT;
length _D283 8;
if DETECTOR=. then _D283 = 0.00307459146048;
else _D283=DETECTOR;
length _D284 8;
if DETERMIN=. then _D284 = 0.00108883572798;
else _D284=DETERMIN;
length _D285 8;
if DEVELOP=. then _D285 = 0.00189203135207;
else _D285=DEVELOP;
length _D286 8;
if DEVIC=. then _D286 = 0.00234629139925;
else _D286=DEVIC;
length _D287 8;
if DIAGNOS=. then _D287 = 0.00108498508368;
else _D287=DIAGNOS;
length _D288 8;
if DIAGRAM=. then _D288 = 0.00072521522679;
else _D288=DIAGRAM;
length _D289 8;
if DIALOG=. then _D289 = 0.00096912563181;
else _D289=DIALOG;
length _D290 8;
if DICK=. then _D290 = 0.00074149341616;
else _D290=DICK;
length _D291 8;
if DIDN=. then _D291 = 0.00194292465066;
else _D291=DIDN;
length _D292 8;
if DIEGO=. then _D292 = 0.00075513945323;
else _D292=DIEGO;
length _D293 8;
if DIET=. then _D293 = 0.0015567798941;
else _D293=DIET;
length _D294 8;
if DIFFER=. then _D294 = 0.00154858795646;
else _D294=DIFFER;
length _D295 8;
if DIGIT=. then _D295 = 0.00177628165699;
else _D295=DIGIT;
length _D296 8;
if DIMENS=. then _D296 = 0.0009983274605;
else _D296=DIMENS;
length _D297 8;
if DIOD=. then _D297 = 0.00073640088916;
else _D297=DIOD;
length _D298 8;
if DIRECT=. then _D298 = 0.00151917697121;
else _D298=DIRECT;
length _D299 8;
if DIRECTORI=. then _D299 = 0.00092285788038;
else _D299=DIRECTORI;
length _D300 8;
if DISCHARG=. then _D300 = 0.00083902707737;
else _D300=DISCHARG;
length _D301 8;
if DISCLAIM=. then _D301 = 0.00131792342084;
else _D301=DISCLAIM;
length _D302 8;
if DISCUSS=. then _D302 = 0.00180431976049;
else _D302=DISCUSS;
length _D303 8;
if DISEAS=. then _D303 = 0.00261675344761;
else _D303=DISEAS;
length _D304 8;
if DISK=. then _D304 = 0.00151647458044;
else _D304=DISK;
length _D305 8;
if DISPLAI=. then _D305 = 0.0038384279666;
else _D305=DISPLAI;
length _D306 8;
if DISTANC=. then _D306 = 0.00111802206371;
else _D306=DISTANC;
length _D307 8;
if DISTRIBUT=. then _D307 = 0.00509292512912;
else _D307=DISTRIBUT;
length _D308 8;
if DIVIS=. then _D308 = 0.00151347690743;
else _D308=DIVIS;
length _D309 8;
if DOCTOR=. then _D309 = 0.00313535413054;
else _D309=DOCTOR;
length _D310 8;
if DOCUMENT=. then _D310 = 0.00158521884408;
else _D310=DOCUMENT;
length _D311 8;
if DOESN=. then _D311 = 0.00279164795745;
else _D311=DOESN;
length _D312 8;
if DOMAIN=. then _D312 = 0.00106762666556;
else _D312=DOMAIN;
length _D313 8;
if DOMIN=. then _D313 = 0.00109416639795;
else _D313=DOMIN;
length _D314 8;
if DON=. then _D314 = 0.0055263871556;
else _D314=DON;
length _D315 8;
if DONAT=. then _D315 = 0.00074727367629;
else _D315=DONAT;
length _D316 8;
if DORTMUND=. then _D316 = 0.00104639028765;
else _D316=DORTMUND;
length _D317 8;
if DOUBT=. then _D317 = 0.00088027224848;
else _D317=DOUBT;
length _D318 8;
if DOUG=. then _D318 = 0.0015269096341;
else _D318=DOUG;
length _D319 8;
if DRAW=. then _D319 = 0.00246192979036;
else _D319=DRAW;
length _D320 8;
if DRIVE=. then _D320 = 0.00210453525812;
else _D320=DRIVE;
length _D321 8;
if DRIVER=. then _D321 = 0.00079931574584;
else _D321=DRIVER;
length _D322 8;
if DROP=. then _D322 = 0.00109714026673;
else _D322=DROP;
length _D323 8;
if DRUG=. then _D323 = 0.00221537531382;
else _D323=DRUG;
length _D324 8;
if DUMP=. then _D324 = 0.0008057487801;
else _D324=DUMP;
length _D325 8;
if DYER=. then _D325 = 0.0019891193881;
else _D325=DYER;
length _D326 8;
if EASI=. then _D326 = 0.00119760908327;
else _D326=EASI;
length _D327 8;
if EASILI=. then _D327 = 0.00086994683729;
else _D327=EASILI;
length _D328 8;
if EAST=. then _D328 = 0.00097225366033;
else _D328=EAST;
length _D329 8;
if EAT=. then _D329 = 0.00084328740873;
else _D329=EAT;
length _D330 8;
if ECHO=. then _D330 = 0.00098277658157;
else _D330=ECHO;
length _D331 8;
if EDITOR=. then _D331 = 0.00095248893975;
else _D331=EDITOR;
length _D332 8;
if EDU=. then _D332 = 0.00674066844816;
else _D332=EDU;
length _D333 8;
if EDUC=. then _D333 = 0.00143624673231;
else _D333=EDUC;
length _D334 8;
if EDWARD=. then _D334 = 0.00106793535349;
else _D334=EDWARD;
length _D335 8;
if EFFECT=. then _D335 = 0.00336277148;
else _D335=EFFECT;
length _D336 8;
if ELECTR=. then _D336 = 0.00219289018422;
else _D336=ELECTR;
length _D337 8;
if ELECTRON=. then _D337 = 0.00820454921585;
else _D337=ELECTRON;
length _D338 8;
if EMAIL=. then _D338 = 0.00327336397091;
else _D338=EMAIL;
length _D339 8;
if EMPLOY=. then _D339 = 0.00120839279597;
else _D339=EMPLOY;
length _D340 8;
if EMUL=. then _D340 = 0.00103380275401;
else _D340=EMUL;
length _D341 8;
if ENERGI=. then _D341 = 0.00089843693466;
else _D341=ENERGI;
length _D342 8;
if ENGIN=. then _D342 = 0.003008695453;
else _D342=ENGIN;
length _D343 8;
if ENGLAND=. then _D343 = 0.0007433486121;
else _D343=ENGLAND;
length _D344 8;
if ENTIR=. then _D344 = 0.00074621376955;
else _D344=ENTIR;
length _D345 8;
if ENTRI=. then _D345 = 0.0007546945344;
else _D345=ENTRI;
length _D346 8;
if ENVIRON=. then _D346 = 0.00123299886313;
else _D346=ENVIRON;
length _D347 8;
if EPROM=. then _D347 = 0.00088594146528;
else _D347=EPROM;
length _D348 8;
if EQUAL=. then _D348 = 0.0010668741329;
else _D348=EQUAL;
length _D349 8;
if EQUIP=. then _D349 = 0.0012947236273;
else _D349=EQUIP;
length _D350 8;
if ERIC=. then _D350 = 0.00115239458987;
else _D350=ERIC;
length _D351 8;
if ERROR=. then _D351 = 0.00231468310646;
else _D351=ERROR;
length _D352 8;
if ESCAP=. then _D352 = 0.00135283064678;
else _D352=ESCAP;
length _D353 8;
if ESSENTI=. then _D353 = 0.0008617247388;
else _D353=ESSENTI;
length _D354 8;
if EUROP=. then _D354 = 0.00092034184699;
else _D354=EUROP;
length _D355 8;
if EUROPEAN=. then _D355 = 0.00096319658752;
else _D355=EUROPEAN;
length _D356 8;
if EVENT=. then _D356 = 0.00312142347936;
else _D356=EVENT;
length _D357 8;
if EVID=. then _D357 = 0.00145403060882;
else _D357=EVID;
length _D358 8;
if EXACT=. then _D358 = 0.00078501955404;
else _D358=EXACT;
length _D359 8;
if EXECUT=. then _D359 = 0.00099102562898;
else _D359=EXECUT;
length _D360 8;
if EXERCIS=. then _D360 = 0.00095132001497;
else _D360=EXERCIS;
length _D361 8;
if EXIST=. then _D361 = 0.00187009129486;
else _D361=EXIST;
length _D362 8;
if EXPANS=. then _D362 = 0.00130988346224;
else _D362=EXPANS;
length _D363 8;
if EXPECT=. then _D363 = 0.00109465114916;
else _D363=EXPECT;
length _D364 8;
if EXPENS=. then _D364 = 0.0007620082319;
else _D364=EXPENS;
length _D365 8;
if EXPERI=. then _D365 = 0.00250071187915;
else _D365=EXPERI;
length _D366 8;
if EXPERIENC=. then _D366 = 0.00073324202778;
else _D366=EXPERIENC;
length _D367 8;
if EXPLAIN=. then _D367 = 0.00126555368779;
else _D367=EXPLAIN;
length _D368 8;
if EXPLOD=. then _D368 = 0.00074841400818;
else _D368=EXPLOD;
length _D369 8;
if EXPOS=. then _D369 = 0.00144124808497;
else _D369=EXPOS;
length _D370 8;
if EXPRESS=. then _D370 = 0.00140622287141;
else _D370=EXPRESS;
length _D371 8;
if EXTENS=. then _D371 = 0.00087964101843;
else _D371=EXTENS;
length _D372 8;
if EXTERMIN=. then _D372 = 0.00085017605842;
else _D372=EXTERMIN;
length _D373 8;
if EXTRA=. then _D373 = 0.00091322872707;
else _D373=EXTRA;
length _D374 8;
if FACE=. then _D374 = 0.00125416766106;
else _D374=FACE;
length _D375 8;
if FACT=. then _D375 = 0.00244750828196;
else _D375=FACT;
length _D376 8;
if FAIL=. then _D376 = 0.00183148413967;
else _D376=FAIL;
length _D377 8;
if FALS=. then _D377 = 0.00096267577197;
else _D377=FALS;
length _D378 8;
if FAMILI=. then _D378 = 0.00111586001208;
else _D378=FAMILI;
length _D379 8;
if FAST=. then _D379 = 0.00096638733877;
else _D379=FAST;
length _D380 8;
if FATHER=. then _D380 = 0.00075940712104;
else _D380=FATHER;
length _D381 8;
if FAVOR=. then _D381 = 0.00074461054538;
else _D381=FAVOR;
length _D382 8;
if FAX=. then _D382 = 0.00220437467508;
else _D382=FAX;
length _D383 8;
if FEATUR=. then _D383 = 0.00099032933895;
else _D383=FEATUR;
length _D384 8;
if FEDER=. then _D384 = 0.00084605558406;
else _D384=FEDER;
length _D385 8;
if FEED=. then _D385 = 0.00095131872747;
else _D385=FEED;
length _D386 8;
if FEEL=. then _D386 = 0.00203832213185;
else _D386=FEEL;
length _D387 8;
if FIELD=. then _D387 = 0.00132302402569;
else _D387=FIELD;
length _D388 8;
if FIGHT=. then _D388 = 0.00088345438371;
else _D388=FIGHT;
length _D389 8;
if FIGUR=. then _D389 = 0.00118713046868;
else _D389=FIGUR;
length _D390 8;
if FILE=. then _D390 = 0.00418443335717;
else _D390=FILE;
length _D391 8;
if FILL=. then _D391 = 0.00074807179191;
else _D391=FILL;
length _D392 8;
if FILTER=. then _D392 = 0.00115587049197;
else _D392=FILTER;
length _D393 8;
if FINAL=. then _D393 = 0.00154601093814;
else _D393=FINAL;
length _D394 8;
if FIND=. then _D394 = 0.00432444986395;
else _D394=FIND;
length _D395 8;
if FINE=. then _D395 = 0.00162563293203;
else _D395=FINE;
length _D396 8;
if FIRE=. then _D396 = 0.00127574843238;
else _D396=FIRE;
length _D397 8;
if FIX=. then _D397 = 0.0012322217088;
else _D397=FIX;
length _D398 8;
if FLAME=. then _D398 = 0.00104179357204;
else _D398=FLAME;
length _D399 8;
if FLASH=. then _D399 = 0.00079240597815;
else _D399=FLASH;
length _D400 8;
if FLOOR=. then _D400 = 0.00083331843114;
else _D400=FLOOR;
length _D401 8;
if FLUKE=. then _D401 = 0.00076604900913;
else _D401=FLUKE;
length _D402 8;
if FOCU=. then _D402 = 0.00108971433388;
else _D402=FOCU;
length _D403 8;
if FOLK=. then _D403 = 0.00124327978183;
else _D403=FOLK;
length _D404 8;
if FOLLOWUP=. then _D404 = 0.00243844782018;
else _D404=FOLLOWUP;
length _D405 8;
if FONT=. then _D405 = 0.00212416554658;
else _D405=FONT;
length _D406 8;
if FOOD=. then _D406 = 0.00345823850799;
else _D406=FOOD;
length _D407 8;
if FORC=. then _D407 = 0.00157139101717;
else _D407=FORC;
length _D408 8;
if FORGET=. then _D408 = 0.00078252453743;
else _D408=FORGET;
length _D409 8;
if FORM=. then _D409 = 0.00138864440945;
else _D409=FORM;
length _D410 8;
if FORMAT=. then _D410 = 0.00113872317569;
else _D410=FORMAT;
length _D411 8;
if FOURD=. then _D411 = 0.00089801887258;
else _D411=FOURD;
length _D412 8;
if FRAME=. then _D412 = 0.00093987875261;
else _D412=FRAME;
length _D413 8;
if FRANC=. then _D413 = 0.00077106426018;
else _D413=FRANC;
length _D414 8;
if FRANK=. then _D414 = 0.00142935538402;
else _D414=FRANK;
length _D415 8;
if FREE=. then _D415 = 0.0019840328225;
else _D415=FREE;
length _D416 8;
if FREEDOM=. then _D416 = 0.00195230124832;
else _D416=FREEDOM;
length _D417 8;
if FREEMAN=. then _D417 = 0.00139780714431;
else _D417=FREEMAN;
length _D418 8;
if FREQUENC=. then _D418 = 0.00146862930992;
else _D418=FREQUENC;
length _D419 8;
if FREQUENT=. then _D419 = 0.00075203004381;
else _D419=FREQUENT;
length _D420 8;
if FRI=. then _D420 = 0.00406621827508;
else _D420=FRI;
length _D421 8;
if FRIEND=. then _D421 = 0.00214968036112;
else _D421=FRIEND;
length _D422 8;
if FULL=. then _D422 = 0.00130822283357;
else _D422=FULL;
length _D423 8;
if FUNCTION=. then _D423 = 0.00247932911225;
else _D423=FUNCTION;
length _D424 8;
if FUTUR=. then _D424 = 0.00073633942679;
else _D424=FUTUR;
length _D425 8;
if GAIN=. then _D425 = 0.00114078275717;
else _D425=GAIN;
length _D426 8;
if GAME=. then _D426 = 0.00120975166524;
else _D426=GAME;
length _D427 8;
if GARFIEL=. then _D427 = 0.00100304276435;
else _D427=GARFIEL;
length _D428 8;
if GARI=. then _D428 = 0.00112354733797;
else _D428=GARI;
length _D429 8;
if GATEWAI=. then _D429 = 0.00152555391486;
else _D429=GATEWAI;
length _D430 8;
if GAZA=. then _D430 = 0.00137473049412;
else _D430=GAZA;
length _D431 8;
if GEB=. then _D431 = 0.00306188143669;
else _D431=GEB;
length _D432 8;
if GENER=. then _D432 = 0.00301380927937;
else _D432=GENER;
length _D433 8;
if GENOCID=. then _D433 = 0.00143818765783;
else _D433=GENOCID;
length _D434 8;
if GEORG=. then _D434 = 0.00142834077531;
else _D434=GEORG;
length _D435 8;
if GEORGIA=. then _D435 = 0.00218572916771;
else _D435=GEORGIA;
length _D436 8;
if GERMAN=. then _D436 = 0.0009859378521;
else _D436=GERMAN;
length _D437 8;
if GERMANI=. then _D437 = 0.00180981624171;
else _D437=GERMANI;
length _D438 8;
if GILBERT=. then _D438 = 0.00101911582936;
else _D438=GILBERT;
length _D439 8;
if GIVE=. then _D439 = 0.00316215770165;
else _D439=GIVE;
length _D440 8;
if GOOD=. then _D440 = 0.00439292306279;
else _D440=GOOD;
length _D441 8;
if GORDON=. then _D441 = 0.00450329774963;
else _D441=GORDON;
length _D442 8;
if GOVERN=. then _D442 = 0.00217170827764;
else _D442=GOVERN;
length _D443 8;
if GRANT=. then _D443 = 0.00092890658836;
else _D443=GRANT;
length _D444 8;
if GRAPHIC=. then _D444 = 0.0020499196144;
else _D444=GRAPHIC;
length _D445 8;
if GREAT=. then _D445 = 0.00202579482595;
else _D445=GREAT;
length _D446 8;
if GREATLI=. then _D446 = 0.00190316336456;
else _D446=GREATLI;
length _D447 8;
if GREEK=. then _D447 = 0.00209901617457;
else _D447=GREEK;
length _D448 8;
if GREEN=. then _D448 = 0.00101738787266;
else _D448=GREEN;
length _D449 8;
if GREG=. then _D449 = 0.00113219027673;
else _D449=GREG;
length _D450 8;
if GROUND=. then _D450 = 0.00258379795428;
else _D450=GROUND;
length _D451 8;
if GROUP=. then _D451 = 0.00338063956226;
else _D451=GROUP;
length _D452 8;
if GUESS=. then _D452 = 0.00152435946594;
else _D452=GUESS;
length _D453 8;
if GUEST=. then _D453 = 0.00098126980759;
else _D453=GUEST;
length _D454 8;
if GUI=. then _D454 = 0.00119120983991;
else _D454=GUI;
length _D455 8;
if HAMAZA=. then _D455 = 0.00077243629683;
else _D455=HAMAZA;
length _D456 8;
if HAMID=. then _D456 = 0.00092776872252;
else _D456=HAMID;
length _D457 8;
if HAND=. then _D457 = 0.00139236595009;
else _D457=HAND;
length _D458 8;
if HANDL=. then _D458 = 0.00129829022903;
else _D458=HANDL;
length _D459 8;
if HANG=. then _D459 = 0.00077661571948;
else _D459=HANG;
length _D460 8;
if HAPPEN=. then _D460 = 0.00202079560181;
else _D460=HAPPEN;
length _D461 8;
if HAPPI=. then _D461 = 0.00169327702013;
else _D461=HAPPI;
length _D462 8;
if HARD=. then _D462 = 0.00143084815301;
else _D462=HARD;
length _D463 8;
if HARDWAR=. then _D463 = 0.00107101813385;
else _D463=HARDWAR;
length _D464 8;
if HARRI=. then _D464 = 0.00129828202636;
else _D464=HARRI;
length _D465 8;
if HARVARD=. then _D465 = 0.00107154888781;
else _D465=HARVARD;
length _D466 8;
if HATE=. then _D466 = 0.00110596290964;
else _D466=HATE;
length _D467 8;
if HAVEN=. then _D467 = 0.00100595047233;
else _D467=HAVEN;
length _D468 8;
if HEAD=. then _D468 = 0.00161443811273;
else _D468=HEAD;
length _D469 8;
if HEADACH=. then _D469 = 0.00074350649472;
else _D469=HEADACH;
length _D470 8;
if HEALTH=. then _D470 = 0.00185607428763;
else _D470=HEALTH;
length _D471 8;
if HEAR=. then _D471 = 0.00210512715255;
else _D471=HEAR;
length _D472 8;
if HEARD=. then _D472 = 0.00193219669678;
else _D472=HEARD;
length _D473 8;
if HEART=. then _D473 = 0.00101023410278;
else _D473=HEART;
length _D474 8;
if HEAT=. then _D474 = 0.00124200796721;
else _D474=HEAT;
length _D475 8;
if HEAVI=. then _D475 = 0.00073460374275;
else _D475=HEAVI;
length _D476 8;
if HEIGHT=. then _D476 = 0.00079330787063;
else _D476=HEIGHT;
length _D477 8;
if HELP=. then _D477 = 0.0014283518185;
else _D477=HELP;
length _D478 8;
if HENRI=. then _D478 = 0.00090938829937;
else _D478=HENRI;
length _D479 8;
if HENRIK=. then _D479 = 0.00105518625039;
else _D479=HENRIK;
length _D480 8;
if HERNIA=. then _D480 = 0.0008617254306;
else _D480=HERNIA;
length _D481 8;
if HERNLEM=. then _D481 = 0.00074317858842;
else _D481=HERNLEM;
length _D482 8;
if HEWLETT=. then _D482 = 0.000732366833;
else _D482=HEWLETT;
length _D483 8;
if HEZBOLLAH=. then _D483 = 0.00093531391362;
else _D483=HEZBOLLAH;
length _D484 8;
if HIGH=. then _D484 = 0.00246389850684;
else _D484=HIGH;
length _D485 8;
if HIGHER=. then _D485 = 0.00090300189573;
else _D485=HIGHER;
length _D486 8;
if HINT=. then _D486 = 0.00094837207978;
else _D486=HINT;
length _D487 8;
if HISTOR=. then _D487 = 0.00074500978765;
else _D487=HISTOR;
length _D488 8;
if HISTORI=. then _D488 = 0.00122031251942;
else _D488=HISTORI;
length _D489 8;
if HOLD=. then _D489 = 0.00127708390336;
else _D489=HOLD;
length _D490 8;
if HOLOCAUST=. then _D490 = 0.00167505311315;
else _D490=HOLOCAUST;
length _D491 8;
if HOME=. then _D491 = 0.00210085242348;
else _D491=HOME;
length _D492 8;
if HOOK=. then _D492 = 0.00141580639393;
else _D492=HOOK;
length _D493 8;
if HOPE=. then _D493 = 0.0018033980526;
else _D493=HOPE;
length _D494 8;
if HOSPIT=. then _D494 = 0.00144054048541;
else _D494=HOSPIT;
length _D495 8;
if HOST=. then _D495 = 0.00125581338489;
else _D495=HOST;
length _D496 8;
if HOUR=. then _D496 = 0.00116601742788;
else _D496=HOUR;
length _D497 8;
if HOUS=. then _D497 = 0.00121172397954;
else _D497=HOUS;
length _D498 8;
if HOWARD=. then _D498 = 0.00102112247539;
else _D498=HOWARD;
length _D499 8;
if HUMAN=. then _D499 = 0.00179141826975;
else _D499=HUMAN;
length _D500 8;
if HUNTSVIL=. then _D500 = 0.00078535482321;
else _D500=HUNTSVIL;
length _D501 8;
if ICON=. then _D501 = 0.00165938208799;
else _D501=ICON;
length _D502 8;
if IDEA=. then _D502 = 0.00262708328034;
else _D502=IDEA;
length _D503 8;
if IGNOR=. then _D503 = 0.00121831220242;
else _D503=IGNOR;
length _D504 8;
if ILLEG=. then _D504 = 0.00078698891556;
else _D504=ILLEG;
length _D505 8;
if ILLINOI=. then _D505 = 0.00140484898112;
else _D505=ILLINOI;
length _D506 8;
if IMAG=. then _D506 = 0.00243414948707;
else _D506=IMAG;
length _D507 8;
if IMAGIN=. then _D507 = 0.00081253933277;
else _D507=IMAGIN;
length _D508 8;
if IMAK=. then _D508 = 0.00134832254714;
else _D508=IMAK;
length _D509 8;
if IMPLEMENT=. then _D509 = 0.0015985906878;
else _D509=IMPLEMENT;
length _D510 8;
if IMPORT=. then _D510 = 0.0013431484921;
else _D510=IMPORT;
length _D511 8;
if IMPRESS=. then _D511 = 0.00080890164556;
else _D511=IMPRESS;
length _D512 8;
if IMPROV=. then _D512 = 0.00086675335298;
else _D512=IMPROV;
length _D513 8;
if INCLUD=. then _D513 = 0.00292089090816;
else _D513=INCLUD;
length _D514 8;
if INCREAS=. then _D514 = 0.0007554886146;
else _D514=INCREAS;
length _D515 8;
if INDIVIDU=. then _D515 = 0.00077934736676;
else _D515=INDIVIDU;
length _D516 8;
if INDUSTRI=. then _D516 = 0.00103550981853;
else _D516=INDUSTRI;
length _D517 8;
if INFECT=. then _D517 = 0.00168936099459;
else _D517=INFECT;
length _D518 8;
if INFO=. then _D518 = 0.0035504112765;
else _D518=INFO;
length _D519 8;
if INFORM=. then _D519 = 0.0050661920796;
else _D519=INFORM;
length _D520 8;
if INJECT=. then _D520 = 0.00088966835761;
else _D520=INJECT;
length _D521 8;
if INPUT=. then _D521 = 0.00214818135728;
else _D521=INPUT;
length _D522 8;
if INSTAL=. then _D522 = 0.00187625598076;
else _D522=INSTAL;
length _D523 8;
if INSTITUT=. then _D523 = 0.00324362970322;
else _D523=INSTITUT;
length _D524 8;
if INSTRUMENT=. then _D524 = 0.00075426916222;
else _D524=INSTRUMENT;
length _D525 8;
if INTEL=. then _D525 = 0.00084182296572;
else _D525=INTEL;
length _D526 8;
if INTELLECT=. then _D526 = 0.00148962323835;
else _D526=INTELLECT;
length _D527 8;
if INTELLIG=. then _D527 = 0.00176418198223;
else _D527=INTELLIG;
length _D528 8;
if INTEND=. then _D528 = 0.00078735657488;
else _D528=INTEND;
length _D529 8;
if INTEREST=. then _D529 = 0.00342878990352;
else _D529=INTEREST;
length _D530 8;
if INTERFAC=. then _D530 = 0.00152971044685;
else _D530=INTERFAC;
length _D531 8;
if INTERGRAPH=. then _D531 = 0.00111502522509;
else _D531=INTERGRAPH;
length _D532 8;
if INTERN=. then _D532 = 0.00167033158379;
else _D532=INTERN;
length _D533 8;
if INTERNET=. then _D533 = 0.0051331650023;
else _D533=INTERNET;
length _D534 8;
if INTERVIEW=. then _D534 = 0.00099286122959;
else _D534=INTERVIEW;
length _D535 8;
if INVENT=. then _D535 = 0.00082569179094;
else _D535=INVENT;
length _D536 8;
if INVOLV=. then _D536 = 0.00158507344833;
else _D536=INVOLV;
length _D537 8;
if IRAN=. then _D537 = 0.00092883471555;
else _D537=IRAN;
length _D538 8;
if IRVIN=. then _D538 = 0.00135412754308;
else _D538=IRVIN;
length _D539 8;
if ISLAM=. then _D539 = 0.00119163235169;
else _D539=ISLAM;
length _D540 8;
if ISLAND=. then _D540 = 0.00074598607707;
else _D540=ISLAND;
length _D541 8;
if ISN=. then _D541 = 0.00178169181341;
else _D541=ISN;
length _D542 8;
if ISRA=. then _D542 = 0.00568007679995;
else _D542=ISRA;
length _D543 8;
if ISRAEL=. then _D543 = 0.00679350701875;
else _D543=ISRAEL;
length _D544 8;
if ISSU=. then _D544 = 0.00145557067434;
else _D544=ISSU;
length _D545 8;
if ITEM=. then _D545 = 0.00099982712655;
else _D545=ITEM;
length _D546 8;
if JACK=. then _D546 = 0.00126231550041;
else _D546=JACK;
length _D547 8;
if JAKE=. then _D547 = 0.00177365917841;
else _D547=JAKE;
length _D548 8;
if JASON=. then _D548 = 0.00114028713086;
else _D548=JASON;
length _D549 8;
if JEFF=. then _D549 = 0.00122933381378;
else _D549=JEFF;
length _D550 8;
if JEFFERSON=. then _D550 = 0.0007342644155;
else _D550=JEFFERSON;
length _D551 8;
if JERUSALEM=. then _D551 = 0.00132193339456;
else _D551=JERUSALEM;
length _D552 8;
if JESS=. then _D552 = 0.00077407359859;
else _D552=JESS;
length _D553 8;
if JEW=. then _D553 = 0.00420921178108;
else _D553=JEW;
length _D554 8;
if JEWISH=. then _D554 = 0.00211330945134;
else _D554=JEWISH;
length _D555 8;
if JIM=. then _D555 = 0.00131293477182;
else _D555=JIM;
length _D556 8;
if JIMMI=. then _D556 = 0.00077734309564;
else _D556=JIMMI;
length _D557 8;
if JOEL=. then _D557 = 0.00109732997986;
else _D557=JOEL;
length _D558 8;
if JOHN=. then _D558 = 0.00351006082717;
else _D558=JOHN;
length _D559 8;
if JOSEPH=. then _D559 = 0.00110294730991;
else _D559=JOSEPH;
length _D560 8;
if JOYSTICK=. then _D560 = 0.00087013225299;
else _D560=JOYSTICK;
length _D561 8;
if JUSTIFI=. then _D561 = 0.00072676630495;
else _D561=JUSTIFI;
length _D562 8;
if KEI=. then _D562 = 0.00188327312836;
else _D562=KEI;
length _D563 8;
if KEITH=. then _D563 = 0.00074235204547;
else _D563=KEITH;
length _D564 8;
if KEN=. then _D564 = 0.00118572943811;
else _D564=KEN;
length _D565 8;
if KENNETH=. then _D565 = 0.00119339210746;
else _D565=KENNETH;
length _D566 8;
if KEYBOARD=. then _D566 = 0.00230835724711;
else _D566=KEYBOARD;
length _D567 8;
if KEYWORD=. then _D567 = 0.00333077856509;
else _D567=KEYWORD;
length _D568 8;
if KIDNEI=. then _D568 = 0.00075223767077;
else _D568=KIDNEI;
length _D569 8;
if KILL=. then _D569 = 0.00350907582405;
else _D569=KILL;
length _D570 8;
if KIND=. then _D570 = 0.00242249299062;
else _D570=KIND;
length _D571 8;
if KIRLIAN=. then _D571 = 0.00077871598335;
else _D571=KIRLIAN;
length _D572 8;
if KLUTE=. then _D572 = 0.00072748672181;
else _D572=KLUTE;
length _D573 8;
if KNOW=. then _D573 = 0.00081719067996;
else _D573=KNOW;
length _D574 8;
if KNOWLEDG=. then _D574 = 0.00086545583868;
else _D574=KNOWLEDG;
length _D575 8;
if KRILLEAN=. then _D575 = 0.00106390376965;
else _D575=KRILLEAN;
length _D576 8;
if LAB=. then _D576 = 0.00150483953866;
else _D576=LAB;
length _D577 8;
if LABEL=. then _D577 = 0.00099764262496;
else _D577=LABEL;
length _D578 8;
if LABORATORI=. then _D578 = 0.00161815875372;
else _D578=LABORATORI;
length _D579 8;
if LACK=. then _D579 = 0.00089844775555;
else _D579=LACK;
length _D580 8;
if LAND=. then _D580 = 0.0019263535347;
else _D580=LAND;
length _D581 8;
if LANGUAG=. then _D581 = 0.00088885582956;
else _D581=LANGUAG;
length _D582 8;
if LARG=. then _D582 = 0.00121973686334;
else _D582=LARG;
length _D583 8;
if LARRI=. then _D583 = 0.00113793137431;
else _D583=LARRI;
length _D584 8;
if LASER=. then _D584 = 0.00123205257084;
else _D584=LASER;
length _D585 8;
if LAW=. then _D585 = 0.00086425156409;
else _D585=LAW;
length _D586 8;
if LEAD=. then _D586 = 0.0015251468523;
else _D586=LEAD;
length _D587 8;
if LEADER=. then _D587 = 0.00087784397216;
else _D587=LEADER;
length _D588 8;
if LEARN=. then _D588 = 0.00156889805435;
else _D588=LEARN;
length _D589 8;
if LEAV=. then _D589 = 0.00124987078023;
else _D589=LEAV;
length _D590 8;
if LEBANES=. then _D590 = 0.00146838420501;
else _D590=LEBANES;
length _D591 8;
if LEBANON=. then _D591 = 0.00139840466201;
else _D591=LEBANON;
length _D592 8;
if LEFT=. then _D592 = 0.0017490787661;
else _D592=LEFT;
length _D593 8;
if LEGAL=. then _D593 = 0.00101637420606;
else _D593=LEGAL;
length _D594 8;
if LET=. then _D594 = 0.0012840509345;
else _D594=LET;
length _D595 8;
if LETTER=. then _D595 = 0.00096577352795;
else _D595=LETTER;
length _D596 8;
if LEVEL=. then _D596 = 0.00205122710902;
else _D596=LEVEL;
length _D597 8;
if LIBRARI=. then _D597 = 0.00169946462531;
else _D597=LIBRARI;
length _D598 8;
if LICENS=. then _D598 = 0.00079037906078;
else _D598=LICENS;
length _D599 8;
if LIFE=. then _D599 = 0.00143102613617;
else _D599=LIFE;
length _D600 8;
if LIGHT=. then _D600 = 0.00165226998143;
else _D600=LIGHT;
length _D601 8;
if LIMIT=. then _D601 = 0.00155985312008;
else _D601=LIMIT;
length _D602 8;
if LINK=. then _D602 = 0.00125172904155;
else _D602=LINK;
length _D603 8;
if LINUX=. then _D603 = 0.00095747417125;
else _D603=LINUX;
length _D604 8;
if LIST=. then _D604 = 0.00290660930314;
else _D604=LIST;
length _D605 8;
if LISTEN=. then _D605 = 0.0007409774429;
else _D605=LISTEN;
length _D606 8;
if LITERATUR=. then _D606 = 0.00084837591019;
else _D606=LITERATUR;
length _D607 8;
if LIVE=. then _D607 = 0.00237232603683;
else _D607=LIVE;
length _D608 8;
if LIVNI=. then _D608 = 0.00167464607585;
else _D608=LIVNI;
length _D609 8;
if LOAD=. then _D609 = 0.00116425331698;
else _D609=LOAD;
length _D610 8;
if LOCAL=. then _D610 = 0.00182134845101;
else _D610=LOCAL;
length _D611 8;
if LOCAT=. then _D611 = 0.00121217771368;
else _D611=LOCAT;
length _D612 8;
if LOGIC=. then _D612 = 0.00168093498011;
else _D612=LOGIC;
length _D613 8;
if LOGIN=. then _D613 = 0.00109335024157;
else _D613=LOGIN;
length _D614 8;
if LONG=. then _D614 = 0.0030715973488;
else _D614=LONG;
length _D615 8;
if LONGER=. then _D615 = 0.00122365279253;
else _D615=LONGER;
length _D616 8;
if LOOK=. then _D616 = 0.00111344138908;
else _D616=LOOK;
length _D617 8;
if LOOP=. then _D617 = 0.00088382406373;
else _D617=LOOP;
length _D618 8;
if LOST=. then _D618 = 0.00108293798672;
else _D618=LOST;
length _D619 8;
if LOT=. then _D619 = 0.00173853251187;
else _D619=LOT;
length _D620 8;
if LOVE=. then _D620 = 0.0010383774218;
else _D620=LOVE;
length _D621 8;
if LUCK=. then _D621 = 0.00083292530408;
else _D621=LUCK;
length _D622 8;
if LUNG=. then _D622 = 0.00100423878937;
else _D622=LUNG;
length _D623 8;
if LYME=. then _D623 = 0.00104352447485;
else _D623=LYME;
length _D624 8;
if MACHIN=. then _D624 = 0.00287252946485;
else _D624=MACHIN;
length _D625 8;
if MAHAN=. then _D625 = 0.00127505056416;
else _D625=MAHAN;
length _D626 8;
if MAIL=. then _D626 = 0.00557651777199;
else _D626=MAIL;
length _D627 8;
if MAIN=. then _D627 = 0.00170966159023;
else _D627=MAIN;
length _D628 8;
if MAINTAIN=. then _D628 = 0.000909515498;
else _D628=MAINTAIN;
length _D629 8;
if MAJOR=. then _D629 = 0.00124759987795;
else _D629=MAJOR;
length _D630 8;
if MAKE=. then _D630 = 0.00158098185291;
else _D630=MAKE;
length _D631 8;
if MAN=. then _D631 = 0.00113501368513;
else _D631=MAN;
length _D632 8;
if MANAG=. then _D632 = 0.00315923113319;
else _D632=MANAG;
length _D633 8;
if MANUAL=. then _D633 = 0.00135099494563;
else _D633=MANUAL;
length _D634 8;
if MAP=. then _D634 = 0.00106978608551;
else _D634=MAP;
length _D635 8;
if MARC=. then _D635 = 0.00156864960127;
else _D635=MARC;
length _D636 8;
if MARK=. then _D636 = 0.00312658768436;
else _D636=MARK;
length _D637 8;
if MARKET=. then _D637 = 0.00084675537176;
else _D637=MARKET;
length _D638 8;
if MARTIN=. then _D638 = 0.0015581040262;
else _D638=MARTIN;
length _D639 8;
if MASK=. then _D639 = 0.00098107142151;
else _D639=MASK;
length _D640 8;
if MASS=. then _D640 = 0.00076556918838;
else _D640=MASS;
length _D641 8;
if MASSACR=. then _D641 = 0.0009693850586;
else _D641=MASSACR;
length _D642 8;
if MATERI=. then _D642 = 0.00078782462537;
else _D642=MATERI;
length _D643 8;
if MATH=. then _D643 = 0.00125367218299;
else _D643=MATH;
length _D644 8;
if MATTER=. then _D644 = 0.00139139967917;
else _D644=MATTER;
length _D645 8;
if MCGILL=. then _D645 = 0.00119013601258;
else _D645=MCGILL;
length _D646 8;
if MEAN=. then _D646 = 0.00192971486918;
else _D646=MEAN;
length _D647 8;
if MEASUR=. then _D647 = 0.00153802991553;
else _D647=MEASUR;
length _D648 8;
if MECHAN=. then _D648 = 0.00082403513764;
else _D648=MECHAN;
length _D649 8;
if MED=. then _D649 = 0.00599764217877;
else _D649=MED;
length _D650 8;
if MEDIA=. then _D650 = 0.0011562262938;
else _D650=MEDIA;
length _D651 8;
if MEDIC=. then _D651 = 0.00297207806312;
else _D651=MEDIC;
length _D652 8;
if MEDICIN=. then _D652 = 0.00205296358153;
else _D652=MEDICIN;
length _D653 8;
if MELLON=. then _D653 = 0.00118248411027;
else _D653=MELLON;
length _D654 8;
if MEMBER=. then _D654 = 0.00125354338681;
else _D654=MEMBER;
length _D655 8;
if MEMORI=. then _D655 = 0.00226607539211;
else _D655=MEMORI;
length _D656 8;
if MENTION=. then _D656 = 0.00174852761214;
else _D656=MENTION;
length _D657 8;
if MENU=. then _D657 = 0.00105532277396;
else _D657=MENU;
length _D658 8;
if MESSAG=. then _D658 = 0.00092811187071;
else _D658=MESSAG;
length _D659 8;
if METAL=. then _D659 = 0.00072550666197;
else _D659=METAL;
length _D660 8;
if METHOD=. then _D660 = 0.00145802847557;
else _D660=METHOD;
length _D661 8;
if METHODOLOG=. then _D661 = 0.00083219776115;
else _D661=METHODOLOG;
length _D662 8;
if MICHAEL=. then _D662 = 0.00297343131526;
else _D662=MICHAEL;
length _D663 8;
if MIDDL=. then _D663 = 0.00114933690787;
else _D663=MIDDL;
length _D664 8;
if MIGRAIN=. then _D664 = 0.00135879251175;
else _D664=MIGRAIN;
length _D665 8;
if MIKE=. then _D665 = 0.00229023007471;
else _D665=MIKE;
length _D666 8;
if MILE=. then _D666 = 0.00074445453275;
else _D666=MILE;
length _D667 8;
if MILITARI=. then _D667 = 0.00089071502284;
else _D667=MILITARI;
length _D668 8;
if MILLION=. then _D668 = 0.00101147770575;
else _D668=MILLION;
length _D669 8;
if MIND=. then _D669 = 0.00183812263715;
else _D669=MIND;
length _D670 8;
if MINUT=. then _D670 = 0.00074997527954;
else _D670=MINUT;
length _D671 8;
if MISC=. then _D671 = 0.00075834588894;
else _D671=MISC;
length _D672 8;
if MISS=. then _D672 = 0.00112789470764;
else _D672=MISS;
length _D673 8;
if MISTAK=. then _D673 = 0.00108665841603;
else _D673=MISTAK;
length _D674 8;
if MODE=. then _D674 = 0.0015618929865;
else _D674=MODE;
length _D675 8;
if MODEL=. then _D675 = 0.00182808427725;
else _D675=MODEL;
length _D676 8;
if MODIFI=. then _D676 = 0.00112369324352;
else _D676=MODIFI;
length _D677 8;
if MODUL=. then _D677 = 0.00112150001178;
else _D677=MODUL;
length _D678 8;
if MON=. then _D678 = 0.00404727051639;
else _D678=MON;
length _D679 8;
if MONEI=. then _D679 = 0.00124922670445;
else _D679=MONEI;
length _D680 8;
if MONITOR=. then _D680 = 0.00138567873202;
else _D680=MONITOR;
length _D681 8;
if MONTH=. then _D681 = 0.00161986737577;
else _D681=MONTH;
length _D682 8;
if MORAL=. then _D682 = 0.00078780540468;
else _D682=MORAL;
length _D683 8;
if MOTIF=. then _D683 = 0.0049319015004;
else _D683=MOTIF;
length _D684 8;
if MOTOROLA=. then _D684 = 0.002056408655;
else _D684=MOTOROLA;
length _D685 8;
if MOUNTAIN=. then _D685 = 0.00082790990127;
else _D685=MOUNTAIN;
length _D686 8;
if MOUS=. then _D686 = 0.00170315006475;
else _D686=MOUS;
length _D687 8;
if MOVE=. then _D687 = 0.00182747211913;
else _D687=MOVE;
length _D688 8;
if MOVEMENT=. then _D688 = 0.00086807492218;
else _D688=MOVEMENT;
length _D689 8;
if MSG=. then _D689 = 0.00121044002007;
else _D689=MSG;
length _D690 8;
if MULTI=. then _D690 = 0.00097766760213;
else _D690=MULTI;
length _D691 8;
if MULTIPL=. then _D691 = 0.00107256150044;
else _D691=MULTIPL;
length _D692 8;
if MURDER=. then _D692 = 0.00107053735902;
else _D692=MURDER;
length _D693 8;
if MUSCL=. then _D693 = 0.00092029015372;
else _D693=MUSCL;
length _D694 8;
if MUSLIM=. then _D694 = 0.00170786625392;
else _D694=MUSLIM;
length _D695 8;
if NAFTALI=. then _D695 = 0.00079591453218;
else _D695=NAFTALI;
length _D696 8;
if NAME=. then _D696 = 0.00126838388907;
else _D696=NAME;
length _D697 8;
if NASA=. then _D697 = 0.00145467704537;
else _D697=NASA;
length _D698 8;
if NATION=. then _D698 = 0.00211080632871;
else _D698=NATION;
length _D699 8;
if NATUR=. then _D699 = 0.00127888519127;
else _D699=NATUR;
length _D700 8;
if NAZI=. then _D700 = 0.00143993321593;
else _D700=NAZI;
length _D701 8;
if NECESSARILI=. then _D701 = 0.00084644999616;
else _D701=NECESSARILI;
length _D702 8;
if NEED=. then _D702 = 0.00170087905817;
else _D702=NEED;
length _D703 8;
if NEEDL=. then _D703 = 0.00125512908956;
else _D703=NEEDL;
length _D704 8;
if NEGOTI=. then _D704 = 0.00078398158527;
else _D704=NEGOTI;
length _D705 8;
if NET=. then _D705 = 0.00198687645216;
else _D705=NET;
length _D706 8;
if NETANYAHU=. then _D706 = 0.00100621145792;
else _D706=NETANYAHU;
length _D707 8;
if NETCOM=. then _D707 = 0.00134176235468;
else _D707=NETCOM;
length _D708 8;
if NETNEW=. then _D708 = 0.00089155698565;
else _D708=NETNEW;
length _D709 8;
if NETWORK=. then _D709 = 0.00304800988195;
else _D709=NETWORK;
length _D710 8;
if NEUTRAL=. then _D710 = 0.00127038523486;
else _D710=NEUTRAL;
length _D711 8;
if NEW=. then _D711 = 0.00612696604333;
else _D711=NEW;
length _D712 8;
if NEWS=. then _D712 = 0.00237867593281;
else _D712=NEWS;
length _D713 8;
if NEWSREAD=. then _D713 = 0.00294173216704;
else _D713=NEWSREAD;
length _D714 8;
if NICE=. then _D714 = 0.00149901403692;
else _D714=NICE;
length _D715 8;
if NIGHT=. then _D715 = 0.00093229939976;
else _D715=NIGHT;
length _D716 8;
if NNTP=. then _D716 = 0.00078005582465;
else _D716=NNTP;
length _D717 8;
if NOIS=. then _D717 = 0.00215333589264;
else _D717=NOIS;
length _D718 8;
if NORMAL=. then _D718 = 0.00121754724567;
else _D718=NORMAL;
length _D719 8;
if NORTH=. then _D719 = 0.00075676463867;
else _D719=NORTH;
length _D720 8;
if NOTE=. then _D720 = 0.00160658631501;
else _D720=NOTE;
length _D721 8;
if NOTIC=. then _D721 = 0.00125900917252;
else _D721=NOTIC;
length _D722 8;
if NUCLEAR=. then _D722 = 0.00139737087295;
else _D722=NUCLEAR;
length _D723 8;
if NULL=. then _D723 = 0.00076891576832;
else _D723=NULL;
length _D724 8;
if NUMBER=. then _D724 = 0.00401015396161;
else _D724=NUMBER;
length _D725 8;
if OBJECT=. then _D725 = 0.0018121836549;
else _D725=OBJECT;
length _D726 8;
if OBSERV=. then _D726 = 0.00074404726637;
else _D726=OBSERV;
length _D727 8;
if OBTAIN=. then _D727 = 0.00111935586467;
else _D727=OBTAIN;
length _D728 8;
if OCCUP=. then _D728 = 0.00082225056863;
else _D728=OCCUP;
length _D729 8;
if OCCUPI=. then _D729 = 0.00106619210861;
else _D729=OCCUPI;
length _D730 8;
if OCCUR=. then _D730 = 0.00146397274392;
else _D730=OCCUR;
length _D731 8;
if ODOMET=. then _D731 = 0.00081575582793;
else _D731=ODOMET;
length _D732 8;
if OFFER=. then _D732 = 0.0011775818553;
else _D732=OFFER;
length _D733 8;
if OFFIC=. then _D733 = 0.00140274766641;
else _D733=OFFIC;
length _D734 8;
if OFFICI=. then _D734 = 0.00082605326813;
else _D734=OFFICI;
length _D735 8;
if OHIO=. then _D735 = 0.00125652216572;
else _D735=OHIO;
length _D736 8;
if OLWM=. then _D736 = 0.0010165605779;
else _D736=OLWM;
length _D737 8;
if OMRAN=. then _D737 = 0.00075418966697;
else _D737=OMRAN;
length _D738 8;
if OPEN=. then _D738 = 0.00192187842181;
else _D738=OPEN;
length _D739 8;
if OPENLOOK=. then _D739 = 0.00078318879905;
else _D739=OPENLOOK;
length _D740 8;
if OPENWINDOW=. then _D740 = 0.00140616855315;
else _D740=OPENWINDOW;
length _D741 8;
if OPER=. then _D741 = 0.00213113252601;
else _D741=OPER;
length _D742 8;
if OPINION=. then _D742 = 0.00323746260332;
else _D742=OPINION;
length _D743 8;
if OPTION=. then _D743 = 0.0014492090196;
else _D743=OPTION;
length _D744 8;
if ORDER=. then _D744 = 0.0019031021611;
else _D744=ORDER;
length _D745 8;
if ORG=. then _D745 = 0.00122245765069;
else _D745=ORG;
length _D746 8;
if ORGAN=. then _D746 = 0.00098347021559;
else _D746=ORGAN;
length _D747 8;
if ORIGIN=. then _D747 = 0.00263705329651;
else _D747=ORIGIN;
length _D748 8;
if OSCIL=. then _D748 = 0.00073456094856;
else _D748=OSCIL;
length _D749 8;
if OUTLET=. then _D749 = 0.00145383495318;
else _D749=OUTLET;
length _D750 8;
if OUTPUT=. then _D750 = 0.00226421416089;
else _D750=OUTPUT;
length _D751 8;
if OWNER=. then _D751 = 0.00128667666232;
else _D751=OWNER;
length _D752 8;
if PACKAG=. then _D752 = 0.0018979757314;
else _D752=PACKAG;
length _D753 8;
if PACKARD=. then _D753 = 0.00077298891325;
else _D753=PACKARD;
length _D754 8;
if PACKET=. then _D754 = 0.00093286957393;
else _D754=PACKET;
length _D755 8;
if PAGE=. then _D755 = 0.00171252491128;
else _D755=PAGE;
length _D756 8;
if PAID=. then _D756 = 0.00074690081178;
else _D756=PAID;
length _D757 8;
if PAIN=. then _D757 = 0.00210716885482;
else _D757=PAIN;
length _D758 8;
if PALESTIN=. then _D758 = 0.00101563724738;
else _D758=PALESTIN;
length _D759 8;
if PALESTINIAN=. then _D759 = 0.0023111371565;
else _D759=PALESTINIAN;
length _D760 8;
if PAPER=. then _D760 = 0.00123986033688;
else _D760=PAPER;
length _D761 8;
if PARENT=. then _D761 = 0.00090432346243;
else _D761=PARENT;
length _D762 8;
if PART=. then _D762 = 0.0031216120666;
else _D762=PART;
length _D763 8;
if PARTI=. then _D763 = 0.00108445542499;
else _D763=PARTI;
length _D764 8;
if PASS=. then _D764 = 0.00129181475244;
else _D764=PASS;
length _D765 8;
if PATCH=. then _D765 = 0.00190343388996;
else _D765=PATCH;
length _D766 8;
if PATIENT=. then _D766 = 0.00229790563209;
else _D766=PATIENT;
length _D767 8;
if PATRICK=. then _D767 = 0.00084632405359;
else _D767=PATRICK;
length _D768 8;
if PAUL=. then _D768 = 0.00164727100139;
else _D768=PAUL;
length _D769 8;
if PEAC=. then _D769 = 0.00188612744645;
else _D769=PEAC;
length _D770 8;
if PERFORM=. then _D770 = 0.00132230905919;
else _D770=PERFORM;
length _D771 8;
if PERIOD=. then _D771 = 0.0008519918832;
else _D771=PERIOD;
length _D772 8;
if PERSIAN=. then _D772 = 0.00100149202585;
else _D772=PERSIAN;
length _D773 8;
if PERSON=. then _D773 = 0.00256769744242;
else _D773=PERSON;
length _D774 8;
if PETER=. then _D774 = 0.00183647257802;
else _D774=PETER;
length _D775 8;
if PHONE=. then _D775 = 0.00411661359651;
else _D775=PHONE;
length _D776 8;
if PHOTOGRAPHI=. then _D776 = 0.00154515267299;
else _D776=PHOTOGRAPHI;
length _D777 8;
if PHYSIC=. then _D777 = 0.0013172200904;
else _D777=PHYSIC;
length _D778 8;
if PHYSICIAN=. then _D778 = 0.0013408303563;
else _D778=PHYSICIAN;
length _D779 8;
if PICA=. then _D779 = 0.00136869345024;
else _D779=PICA;
length _D780 8;
if PICK=. then _D780 = 0.00101405722675;
else _D780=PICK;
length _D781 8;
if PICTUR=. then _D781 = 0.00145866609154;
else _D781=PICTUR;
length _D782 8;
if PILL=. then _D782 = 0.00073814001832;
else _D782=PILL;
length _D783 8;
if PIN=. then _D783 = 0.00121859388002;
else _D783=PIN;
length _D784 8;
if PITT=. then _D784 = 0.00391200906948;
else _D784=PITT;
length _D785 8;
if PITTSBURGH=. then _D785 = 0.00264396309527;
else _D785=PITTSBURGH;
length _D786 8;
if PIXEL=. then _D786 = 0.00104093615545;
else _D786=PIXEL;
length _D787 8;
if PIXMAP=. then _D787 = 0.00176520906051;
else _D787=PIXMAP;
length _D788 8;
if PLACE=. then _D788 = 0.00264507068694;
else _D788=PLACE;
length _D789 8;
if PLAI=. then _D789 = 0.00095075311182;
else _D789=PLAI;
length _D790 8;
if PLAIN=. then _D790 = 0.00080220851519;
else _D790=PLAIN;
length _D791 8;
if PLAN=. then _D791 = 0.0010932821136;
else _D791=PLAN;
length _D792 8;
if PLANE=. then _D792 = 0.00187891672505;
else _D792=PLANE;
length _D793 8;
if PLAYER=. then _D793 = 0.00076954623779;
else _D793=PLAYER;
length _D794 8;
if PLUG=. then _D794 = 0.00088037929236;
else _D794=PLUG;
length _D795 8;
if POINT=. then _D795 = 0.00267023601777;
else _D795=POINT;
length _D796 8;
if POINTER=. then _D796 = 0.00193425067957;
else _D796=POINTER;
length _D797 8;
if POLIC=. then _D797 = 0.00104771416762;
else _D797=POLIC;
length _D798 8;
if POLICI=. then _D798 = 0.00208557904112;
else _D798=POLICI;
length _D799 8;
if POLIT=. then _D799 = 0.00150394966605;
else _D799=POLIT;
length _D800 8;
if POPUL=. then _D800 = 0.0012609378159;
else _D800=POPUL;
length _D801 8;
if POPULAR=. then _D801 = 0.00073633586335;
else _D801=POPULAR;
length _D802 8;
if POPUP=. then _D802 = 0.00084249226253;
else _D802=POPUP;
length _D803 8;
if PORT=. then _D803 = 0.00166256808414;
else _D803=PORT;
length _D804 8;
if POSIT=. then _D804 = 0.00214034721607;
else _D804=POSIT;
length _D805 8;
if POSSIBL=. then _D805 = 0.00107385480027;
else _D805=POSSIBL;
length _D806 8;
if POST=. then _D806 = 0.00436593649157;
else _D806=POST;
length _D807 8;
if POSTER=. then _D807 = 0.00179082044992;
else _D807=POSTER;
length _D808 8;
if POSTSCRIPT=. then _D808 = 0.00139723470941;
else _D808=POSTSCRIPT;
length _D809 8;
if POWER=. then _D809 = 0.00362597715226;
else _D809=POWER;
length _D810 8;
if PRACTIC=. then _D810 = 0.00127265360257;
else _D810=PRACTIC;
length _D811 8;
if PREFER=. then _D811 = 0.00148738202119;
else _D811=PREFER;
length _D812 8;
if PRESENT=. then _D812 = 0.00103214109175;
else _D812=PRESENT;
length _D813 8;
if PRESID=. then _D813 = 0.00112550609231;
else _D813=PRESID;
length _D814 8;
if PRESS=. then _D814 = 0.00152852383087;
else _D814=PRESS;
length _D815 8;
if PRETTI=. then _D815 = 0.00141179193886;
else _D815=PRETTI;
length _D816 8;
if PREVENT=. then _D816 = 0.00139388755985;
else _D816=PREVENT;
length _D817 8;
if PREVIOU=. then _D817 = 0.00100617292906;
else _D817=PREVIOU;
length _D818 8;
if PRICE=. then _D818 = 0.00176240246503;
else _D818=PRICE;
length _D819 8;
if PRINT=. then _D819 = 0.00106967245908;
else _D819=PRINT;
length _D820 8;
if PRINTER=. then _D820 = 0.0009301409453;
else _D820=PRINTER;
length _D821 8;
if PRIVAT=. then _D821 = 0.00104275824581;
else _D821=PRIVAT;
length _D822 8;
if PROBLEM=. then _D822 = 0.00525291920241;
else _D822=PROBLEM;
length _D823 8;
if PROCESS=. then _D823 = 0.00191420726102;
else _D823=PROCESS;
length _D824 8;
if PRODUC=. then _D824 = 0.0013548345647;
else _D824=PRODUC;
length _D825 8;
if PRODUCT=. then _D825 = 0.00258644849212;
else _D825=PRODUCT;
length _D826 8;
if PROGRAM=. then _D826 = 0.00514308172268;
else _D826=PROGRAM;
length _D827 8;
if PROGRAMM=. then _D827 = 0.00130312456684;
else _D827=PROGRAMM;
length _D828 8;
if PROJECT=. then _D828 = 0.00258352402487;
else _D828=PROJECT;
length _D829 8;
if PROLIN=. then _D829 = 0.00105312882232;
else _D829=PROLIN;
length _D830 8;
if PROPAGANDA=. then _D830 = 0.00091992343764;
else _D830=PROPAGANDA;
length _D831 8;
if PROPER=. then _D831 = 0.00076760367748;
else _D831=PROPER;
length _D832 8;
if PROPOS=. then _D832 = 0.00113249519419;
else _D832=PROPOS;
length _D833 8;
if PROTECT=. then _D833 = 0.00200257265838;
else _D833=PROTECT;
length _D834 8;
if PROTOCOL=. then _D834 = 0.00073616024509;
else _D834=PROTOCOL;
length _D835 8;
if PROVE=. then _D835 = 0.00093482819188;
else _D835=PROVE;
length _D836 8;
if PROVID=. then _D836 = 0.00152188555378;
else _D836=PROVID;
length _D837 8;
if PUBLIC=. then _D837 = 0.00289083317938;
else _D837=PUBLIC;
length _D838 8;
if PUBLISH=. then _D838 = 0.00102344684991;
else _D838=PUBLISH;
length _D839 8;
if PULL=. then _D839 = 0.00094339169769;
else _D839=PULL;
length _D840 8;
if PURPOS=. then _D840 = 0.00124993223523;
else _D840=PURPOS;
length _D841 8;
if PUT=. then _D841 = 0.00105444651435;
else _D841=PUT;
length _D842 8;
if QUACK=. then _D842 = 0.00131953004237;
else _D842=QUACK;
length _D843 8;
if QUALITI=. then _D843 = 0.00138722598883;
else _D843=QUALITI;
length _D844 8;
if QUESTION=. then _D844 = 0.0050319431904;
else _D844=QUESTION;
length _D845 8;
if QUOT=. then _D845 = 0.00118010602264;
else _D845=QUOT;
length _D846 8;
if RACE=. then _D846 = 0.00088629837828;
else _D846=RACE;
length _D847 8;
if RACISM=. then _D847 = 0.00137130214129;
else _D847=RACISM;
length _D848 8;
if RACIST=. then _D848 = 0.00074666492033;
else _D848=RACIST;
length _D849 8;
if RADAR=. then _D849 = 0.00219732776775;
else _D849=RADAR;
length _D850 8;
if RADIO=. then _D850 = 0.00320225543574;
else _D850=RADIO;
length _D851 8;
if RAINER=. then _D851 = 0.00135011159398;
else _D851=RAINER;
length _D852 8;
if RANG=. then _D852 = 0.00106163094792;
else _D852=RANG;
length _D853 8;
if RATE=. then _D853 = 0.00148094878802;
else _D853=RATE;
length _D854 8;
if REACTION=. then _D854 = 0.00126923989906;
else _D854=REACTION;
length _D855 8;
if READ=. then _D855 = 0.00383000151957;
else _D855=READ;
length _D856 8;
if READER=. then _D856 = 0.00097636563772;
else _D856=READER;
length _D857 8;
if REAL=. then _D857 = 0.00186716489879;
else _D857=REAL;
length _D858 8;
if REALIZ=. then _D858 = 0.00106221754087;
else _D858=REALIZ;
length _D859 8;
if REASON=. then _D859 = 0.00256869577966;
else _D859=REASON;
length _D860 8;
if REC=. then _D860 = 0.00077840426715;
else _D860=REC;
length _D861 8;
if RECAL=. then _D861 = 0.00119457986644;
else _D861=RECAL;
length _D862 8;
if RECEIV=. then _D862 = 0.00256334776652;
else _D862=RECEIV;
length _D863 8;
if RECOGN=. then _D863 = 0.00094129532649;
else _D863=RECOGN;
length _D864 8;
if RECOMMEND=. then _D864 = 0.0009488002583;
else _D864=RECOMMEND;
length _D865 8;
if REDUC=. then _D865 = 0.00097564503533;
else _D865=REDUC;
length _D866 8;
if REDUND=. then _D866 = 0.00074056506476;
else _D866=REDUND;
length _D867 8;
if REGION=. then _D867 = 0.00109117349476;
else _D867=REGION;
length _D868 8;
if REGIST=. then _D868 = 0.00084782618182;
else _D868=REGIST;
length _D869 8;
if REILLI=. then _D869 = 0.00078666616771;
else _D869=REILLI;
length _D870 8;
if RELAI=. then _D870 = 0.00119672441654;
else _D870=RELAI;
length _D871 8;
if RELAT=. then _D871 = 0.00172399108807;
else _D871=RELAT;
length _D872 8;
if RELEAS=. then _D872 = 0.00109192133068;
else _D872=RELEAS;
length _D873 8;
if RELIABL=. then _D873 = 0.00075214185359;
else _D873=RELIABL;
length _D874 8;
if RELIGION=. then _D874 = 0.00094186686263;
else _D874=RELIGION;
length _D875 8;
if REMAIN=. then _D875 = 0.00077884697766;
else _D875=REMAIN;
length _D876 8;
if REMEMB=. then _D876 = 0.00218575610199;
else _D876=REMEMB;
length _D877 8;
if REMOT=. then _D877 = 0.0012488152275;
else _D877=REMOT;
length _D878 8;
if REMOV=. then _D878 = 0.00100069321527;
else _D878=REMOV;
length _D879 8;
if REPEAT=. then _D879 = 0.00079043862592;
else _D879=REPEAT;
length _D880 8;
if REPLAC=. then _D880 = 0.00147741900707;
else _D880=REPLAC;
length _D881 8;
if REPLI=. then _D881 = 0.00559941135631;
else _D881=REPLI;
length _D882 8;
if REPORT=. then _D882 = 0.00257520144579;
else _D882=REPORT;
length _D883 8;
if REQUEST=. then _D883 = 0.00194385674275;
else _D883=REQUEST;
length _D884 8;
if REQUIR=. then _D884 = 0.0020582893753;
else _D884=REQUIR;
length _D885 8;
if RESEARCH=. then _D885 = 0.00416925531822;
else _D885=RESEARCH;
length _D886 8;
if RESERV=. then _D886 = 0.00092231058934;
else _D886=RESERV;
length _D887 8;
if RESIST=. then _D887 = 0.00155380901229;
else _D887=RESIST;
length _D888 8;
if RESISTOR=. then _D888 = 0.00138982042245;
else _D888=RESISTOR;
length _D889 8;
if RESOURC=. then _D889 = 0.00141903147427;
else _D889=RESOURC;
length _D890 8;
if RESPOND=. then _D890 = 0.00129810647697;
else _D890=RESPOND;
length _D891 8;
if RESPONS=. then _D891 = 0.0022417215599;
else _D891=RESPONS;
length _D892 8;
if REST=. then _D892 = 0.00090144105438;
else _D892=REST;
length _D893 8;
if RESULT=. then _D893 = 0.00200289364479;
else _D893=RESULT;
length _D894 8;
if RETURN=. then _D894 = 0.00161211193396;
else _D894=RETURN;
length _D895 8;
if REVIEW=. then _D895 = 0.00081129877067;
else _D895=REVIEW;
length _D896 8;
if RICH=. then _D896 = 0.00073292913332;
else _D896=RICH;
length _D897 8;
if RICHARD=. then _D897 = 0.00159167368454;
else _D897=RICHARD;
length _D898 8;
if RICHARDSON=. then _D898 = 0.00091437031195;
else _D898=RICHARDSON;
length _D899 8;
if RIGHT=. then _D899 = 0.00168319272944;
else _D899=RIGHT;
length _D900 8;
if RIND=. then _D900 = 0.00075293573465;
else _D900=RIND;
length _D901 8;
if RING=. then _D901 = 0.00117314534337;
else _D901=RING;
length _D902 8;
if RISK=. then _D902 = 0.00133599775139;
else _D902=RISK;
length _D903 8;
if RIVER=. then _D903 = 0.00077249723453;
else _D903=RIVER;
length _D904 8;
if ROAD=. then _D904 = 0.000994056038;
else _D904=ROAD;
length _D905 8;
if ROBERT=. then _D905 = 0.00257740686974;
else _D905=ROBERT;
length _D906 8;
if ROCHEST=. then _D906 = 0.00083099667353;
else _D906=ROCHEST;
length _D907 8;
if RON=. then _D907 = 0.0008128524023;
else _D907=RON;
length _D908 8;
if ROOM=. then _D908 = 0.0008193071071;
else _D908=ROOM;
length _D909 8;
if ROOT=. then _D909 = 0.00102622139067;
else _D909=ROOT;
length _D910 8;
if RUI=. then _D910 = 0.00136869345024;
else _D910=RUI;
length _D911 8;
if RULE=. then _D911 = 0.0011304876396;
else _D911=RULE;
length _D912 8;
if RUN=. then _D912 = 0.00358707767799;
else _D912=RUN;
length _D913 8;
if RUSSEL=. then _D913 = 0.00078656615996;
else _D913=RUSSEL;
length _D914 8;
if RUSSIAN=. then _D914 = 0.00072478837109;
else _D914=RUSSIAN;
length _D915 8;
if SALAH=. then _D915 = 0.00128335193958;
else _D915=SALAH;
length _D916 8;
if SALE=. then _D916 = 0.00099568521933;
else _D916=SALE;
length _D917 8;
if SALMON=. then _D917 = 0.00074478378942;
else _D917=SALMON;
length _D918 8;
if SAMPL=. then _D918 = 0.00125355490053;
else _D918=SAMPL;
length _D919 8;
if SAT=. then _D919 = 0.00208905971235;
else _D919=SAT;
length _D920 8;
if SAVE=. then _D920 = 0.00088952171885;
else _D920=SAVE;
length _D921 8;
if SCHEMAT=. then _D921 = 0.00104598184385;
else _D921=SCHEMAT;
length _D922 8;
if SCHOOL=. then _D922 = 0.00249565600215;
else _D922=SCHOOL;
length _D923 8;
if SCHWARTZ=. then _D923 = 0.00075557847712;
else _D923=SCHWARTZ;
length _D924 8;
if SCI=. then _D924 = 0.00706778249801;
else _D924=SCI;
length _D925 8;
if SCIENC=. then _D925 = 0.00479034410225;
else _D925=SCIENC;
length _D926 8;
if SCIENTIF=. then _D926 = 0.00121899542352;
else _D926=SCIENTIF;
length _D927 8;
if SCIENTIST=. then _D927 = 0.00093423979696;
else _D927=SCIENTIST;
length _D928 8;
if SCOPE=. then _D928 = 0.00155113678862;
else _D928=SCOPE;
length _D929 8;
if SCOTT=. then _D929 = 0.00159346832036;
else _D929=SCOTT;
length _D930 8;
if SCREEN=. then _D930 = 0.00248710269685;
else _D930=SCREEN;
length _D931 8;
if SDSU=. then _D931 = 0.0009079249853;
else _D931=SDSU;
length _D932 8;
if SEA=. then _D932 = 0.0008184191458;
else _D932=SEA;
length _D933 8;
if SEARCH=. then _D933 = 0.00109181308532;
else _D933=SEARCH;
length _D934 8;
if SEATTL=. then _D934 = 0.00079534595658;
else _D934=SEATTL;
length _D935 8;
if SECTION=. then _D935 = 0.00079152013879;
else _D935=SECTION;
length _D936 8;
if SECUR=. then _D936 = 0.00101284662616;
else _D936=SECUR;
length _D937 8;
if SEEK=. then _D937 = 0.00073680522849;
else _D937=SEEK;
length _D938 8;
if SEIZUR=. then _D938 = 0.00159452925194;
else _D938=SEIZUR;
length _D939 8;
if SELECT=. then _D939 = 0.00133103107129;
else _D939=SELECT;
length _D940 8;
if SELL=. then _D940 = 0.0021769676698;
else _D940=SELL;
length _D941 8;
if SEMIT=. then _D941 = 0.00078383637091;
else _D941=SEMIT;
length _D942 8;
if SEND=. then _D942 = 0.00282030159156;
else _D942=SEND;
length _D943 8;
if SENS=. then _D943 = 0.00118864058515;
else _D943=SENS;
length _D944 8;
if SENSIT=. then _D944 = 0.001765075682;
else _D944=SENSIT;
length _D945 8;
if SEPAR=. then _D945 = 0.00103817949769;
else _D945=SEPAR;
length _D946 8;
if SEQUENC=. then _D946 = 0.00097324080457;
else _D946=SEQUENC;
length _D947 8;
if SERA=. then _D947 = 0.00097242770763;
else _D947=SERA;
length _D948 8;
if SERDAR=. then _D948 = 0.00244926633917;
else _D948=SERDAR;
length _D949 8;
if SERI=. then _D949 = 0.00109352949784;
else _D949=SERI;
length _D950 8;
if SERIAL=. then _D950 = 0.00113834187717;
else _D950=SERIAL;
length _D951 8;
if SERV=. then _D951 = 0.00103780212051;
else _D951=SERV;
length _D952 8;
if SERVER=. then _D952 = 0.00485356183873;
else _D952=SERVER;
length _D953 8;
if SERVIC=. then _D953 = 0.00307314227706;
else _D953=SERVIC;
length _D954 8;
if SET=. then _D954 = 0.00143730520772;
else _D954=SET;
length _D955 8;
if SEXUAL=. then _D955 = 0.00077864102383;
else _D955=SEXUAL;
length _D956 8;
if SHACK=. then _D956 = 0.00117426817398;
else _D956=SHACK;
length _D957 8;
if SHAME=. then _D957 = 0.00152639845385;
else _D957=SHAME;
length _D958 8;
if SHARE=. then _D958 = 0.00126755129885;
else _D958=SHARE;
length _D959 8;
if SHELL=. then _D959 = 0.00163304860631;
else _D959=SHELL;
length _D960 8;
if SHNEKENDORF=. then _D960 = 0.00082124311474;
else _D960=SHNEKENDORF;
length _D961 8;
if SHOOT=. then _D961 = 0.00099104278938;
else _D961=SHOOT;
length _D962 8;
if SHORT=. then _D962 = 0.00180038553239;
else _D962=SHORT;
length _D963 8;
if SHOSTACK=. then _D963 = 0.00098814269626;
else _D963=SHOSTACK;
length _D964 8;
if SHOT=. then _D964 = 0.00108259494108;
else _D964=SHOT;
length _D965 8;
if SHOULDN=. then _D965 = 0.00087804553985;
else _D965=SHOULDN;
length _D966 8;
if SHOW=. then _D966 = 0.00213945691657;
else _D966=SHOW;
length _D967 8;
if SICK=. then _D967 = 0.00099342410021;
else _D967=SICK;
length _D968 8;
if SIDE=. then _D968 = 0.00251191441697;
else _D968=SIDE;
length _D969 8;
if SIGN=. then _D969 = 0.00088736056394;
else _D969=SIGN;
length _D970 8;
if SIGNAL=. then _D970 = 0.00227093229075;
else _D970=SIGNAL;
length _D971 8;
if SIGNIFIC=. then _D971 = 0.00077980710675;
else _D971=SIGNIFIC;
length _D972 8;
if SIMILAR=. then _D972 = 0.00164880503891;
else _D972=SIMILAR;
length _D973 8;
if SIMM=. then _D973 = 0.00164065144958;
else _D973=SIMM;
length _D974 8;
if SIMPL=. then _D974 = 0.00182197877195;
else _D974=SIMPL;
length _D975 8;
if SIMPLI=. then _D975 = 0.0012211503884;
else _D975=SIMPLI;
length _D976 8;
if SINGL=. then _D976 = 0.00122261760513;
else _D976=SINGL;
length _D977 8;
if SITE=. then _D977 = 0.00188540596204;
else _D977=SITE;
length _D978 8;
if SITUAT=. then _D978 = 0.00137311853911;
else _D978=SITUAT;
length _D979 8;
if SIZE=. then _D979 = 0.00173112118209;
else _D979=SIZE;
length _D980 8;
if SKEPTIC=. then _D980 = 0.00159392576232;
else _D980=SKEPTIC;
length _D981 8;
if SKIN=. then _D981 = 0.00085737778915;
else _D981=SKIN;
length _D982 8;
if SLEEP=. then _D982 = 0.00106964544519;
else _D982=SLEEP;
length _D983 8;
if SLOW=. then _D983 = 0.00075079264321;
else _D983=SLOW;
length _D984 8;
if SMALL=. then _D984 = 0.00163421414491;
else _D984=SMALL;
length _D985 8;
if SMOKE=. then _D985 = 0.00086533453258;
else _D985=SMOKE;
length _D986 8;
if SOCIETI=. then _D986 = 0.00106368586697;
else _D986=SOCIETI;
length _D987 8;
if SOFTWAR=. then _D987 = 0.00376093259333;
else _D987=SOFTWAR;
length _D988 8;
if SOLARI=. then _D988 = 0.00072191152722;
else _D988=SOLARI;
length _D989 8;
if SOLDIER=. then _D989 = 0.00179776870685;
else _D989=SOLDIER;
length _D990 8;
if SOLUT=. then _D990 = 0.00137688345501;
else _D990=SOLUT;
length _D991 8;
if SORT=. then _D991 = 0.0014180588427;
else _D991=SORT;
length _D992 8;
if SOUND=. then _D992 = 0.00216340251972;
else _D992=SOUND;
length _D993 8;
if SOURC=. then _D993 = 0.00335659196856;
else _D993=SOURC;
length _D994 8;
if SOUTH=. then _D994 = 0.00078742117626;
else _D994=SOUTH;
length _D995 8;
if SOVIET=. then _D995 = 0.0012966630756;
else _D995=SOVIET;
length _D996 8;
if SPACE=. then _D996 = 0.00144253062819;
else _D996=SPACE;
length _D997 8;
if SPARC=. then _D997 = 0.00094464374904;
else _D997=SPARC;
length _D998 8;
if SPEAK=. then _D998 = 0.00154492229917;
else _D998=SPEAK;
length _D999 8;
if SPEC=. then _D999 = 0.00109180240447;
else _D999=SPEC;
length _D1000 8;
if SPECIAL=. then _D1000 = 0.00120387052341;
else _D1000=SPECIAL;
length _D1001 8;
if SPECIF=. then _D1001 = 0.00171431777107;
else _D1001=SPECIF;
length _D1002 8;
if SPEED=. then _D1002 = 0.00149010544099;
else _D1002=SPEED;
length _D1003 8;
if SPELL=. then _D1003 = 0.00074933334968;
else _D1003=SPELL;
length _D1004 8;
if SPOCK=. then _D1004 = 0.00083187373665;
else _D1004=SPOCK;
length _D1005 8;
if SPOT=. then _D1005 = 0.00099286913732;
else _D1005=SPOT;
length _D1006 8;
if STAI=. then _D1006 = 0.00088973475411;
else _D1006=STAI;
length _D1007 8;
if STAND=. then _D1007 = 0.00081015557121;
else _D1007=STAND;
length _D1008 8;
if STANDARD=. then _D1008 = 0.00228264937069;
else _D1008=STANDARD;
length _D1009 8;
if START=. then _D1009 = 0.00296563224075;
else _D1009=START;
length _D1010 8;
if STATE=. then _D1010 = 0.00434748564902;
else _D1010=STATE;
length _D1011 8;
if STATEMENT=. then _D1011 = 0.0011794135175;
else _D1011=STATEMENT;
length _D1012 8;
if STATIC=. then _D1012 = 0.00076863951139;
else _D1012=STATIC;
length _D1013 8;
if STATU=. then _D1013 = 0.00105899449861;
else _D1013=STATU;
length _D1014 8;
if STEIN=. then _D1014 = 0.00110267784665;
else _D1014=STEIN;
length _D1015 8;
if STEPHEN=. then _D1015 = 0.00098524794964;
else _D1015=STEPHEN;
length _D1016 8;
if STEVE=. then _D1016 = 0.00331927690287;
else _D1016=STEVE;
length _D1017 8;
if STEVEN=. then _D1017 = 0.00121207183861;
else _D1017=STEVEN;
length _D1018 8;
if STONE=. then _D1018 = 0.00088095245442;
else _D1018=STONE;
length _D1019 8;
if STOP=. then _D1019 = 0.00153796294956;
else _D1019=STOP;
length _D1020 8;
if STORE=. then _D1020 = 0.00113217152617;
else _D1020=STORE;
length _D1021 8;
if STORI=. then _D1021 = 0.00143988815677;
else _D1021=STORI;
length _D1022 8;
if STRING=. then _D1022 = 0.00097227459623;
else _D1022=STRING;
length _D1023 8;
if STRIP=. then _D1023 = 0.00088345662835;
else _D1023=STRIP;
length _D1024 8;
if STUDENT=. then _D1024 = 0.00154619420143;
else _D1024=STUDENT;
length _D1025 8;
if STUDI=. then _D1025 = 0.00219173520094;
else _D1025=STUDI;
length _D1026 8;
if STUFF=. then _D1026 = 0.00170406637263;
else _D1026=STUFF;
length _D1027 8;
if STUPID=. then _D1027 = 0.00105577544559;
else _D1027=STUPID;
length _D1028 8;
if STYLE=. then _D1028 = 0.00112080171362;
else _D1028=STYLE;
length _D1029 8;
if SUBSCRIB=. then _D1029 = 0.00225895340976;
else _D1029=SUBSCRIB;
length _D1030 8;
if SUBSCRIV=. then _D1030 = 0.00153680270865;
else _D1030=SUBSCRIV;
length _D1031 8;
if SUFFER=. then _D1031 = 0.00134443486561;
else _D1031=SUFFER;
length _D1032 8;
if SUGGEST=. then _D1032 = 0.00271552665931;
else _D1032=SUGGEST;
length _D1033 8;
if SUIT=. then _D1033 = 0.00101324219856;
else _D1033=SUIT;
length _D1034 8;
if SUMMARI=. then _D1034 = 0.00199218329269;
else _D1034=SUMMARI;
length _D1035 8;
if SUN=. then _D1035 = 0.00245882066328;
else _D1035=SUN;
length _D1036 8;
if SUNO=. then _D1036 = 0.00106202833608;
else _D1036=SUNO;
length _D1037 8;
if SUPERSTIT=. then _D1037 = 0.00101187310389;
else _D1037=SUPERSTIT;
length _D1038 8;
if SUPPLI=. then _D1038 = 0.00193403267255;
else _D1038=SUPPLI;
length _D1039 8;
if SUPPORT=. then _D1039 = 0.00306485886683;
else _D1039=SUPPORT;
length _D1040 8;
if SUPPOS=. then _D1040 = 0.00131349982074;
else _D1040=SUPPOS;
length _D1041 8;
if SURGERI=. then _D1041 = 0.00099474053032;
else _D1041=SURGERI;
length _D1042 8;
if SURPRIS=. then _D1042 = 0.00089566818199;
else _D1042=SURPRIS;
length _D1043 8;
if SURREND=. then _D1043 = 0.00146817284483;
else _D1043=SURREND;
length _D1044 8;
if SUSPECT=. then _D1044 = 0.00103346514553;
else _D1044=SUSPECT;
length _D1045 8;
if SWITCH=. then _D1045 = 0.00227357090703;
else _D1045=SWITCH;
length _D1046 8;
if SYMBOL=. then _D1046 = 0.00095611726552;
else _D1046=SYMBOL;
length _D1047 8;
if SYMPTOM=. then _D1047 = 0.00116739730113;
else _D1047=SYMPTOM;
length _D1048 8;
if SYNDROM=. then _D1048 = 0.00131286928281;
else _D1048=SYNDROM;
length _D1049 8;
if SYRIA=. then _D1049 = 0.00076115901144;
else _D1049=SYRIA;
length _D1050 8;
if SYSTEM=. then _D1050 = 0.00598573231985;
else _D1050=SYSTEM;
length _D1051 8;
if TABL=. then _D1051 = 0.00113988766015;
else _D1051=TABL;
length _D1052 8;
if TAKE=. then _D1052 = 0.00081837531066;
else _D1052=TAKE;
length _D1053 8;
if TALK=. then _D1053 = 0.00223961571553;
else _D1053=TALK;
length _D1054 8;
if TAPE=. then _D1054 = 0.00109978983217;
else _D1054=TAPE;
length _D1055 8;
if TARGET=. then _D1055 = 0.00075652417488;
else _D1055=TARGET;
length _D1056 8;
if TAST=. then _D1056 = 0.00129073568475;
else _D1056=TAST;
length _D1057 8;
if TCP=. then _D1057 = 0.00083674368699;
else _D1057=TCP;
length _D1058 8;
if TECHNIC=. then _D1058 = 0.0010348954236;
else _D1058=TECHNIC;
length _D1059 8;
if TECHNOLOG=. then _D1059 = 0.00336579865103;
else _D1059=TECHNOLOG;
length _D1060 8;
if TEKTRONIX=. then _D1060 = 0.00101056675437;
else _D1060=TEKTRONIX;
length _D1061 8;
if TEL=. then _D1061 = 0.00166186109563;
else _D1061=TEL;
length _D1062 8;
if TELEPHON=. then _D1062 = 0.00108224439793;
else _D1062=TELEPHON;
length _D1063 8;
if TELL=. then _D1063 = 0.00080772591899;
else _D1063=TELL;
length _D1064 8;
if TEMPERATUR=. then _D1064 = 0.00084383759142;
else _D1064=TEMPERATUR;
length _D1065 8;
if TERM=. then _D1065 = 0.00158912675009;
else _D1065=TERM;
length _D1066 8;
if TERMIN=. then _D1066 = 0.00208424415769;
else _D1066=TERMIN;
length _D1067 8;
if TERRITORI=. then _D1067 = 0.00120350920231;
else _D1067=TERRITORI;
length _D1068 8;
if TERROR=. then _D1068 = 0.00161256998667;
else _D1068=TERROR;
length _D1069 8;
if TERRORIST=. then _D1069 = 0.00104544778528;
else _D1069=TERRORIST;
length _D1070 8;
if TEST=. then _D1070 = 0.00276692530828;
else _D1070=TEST;
length _D1071 8;
if TEXA=. then _D1071 = 0.00127112298107;
else _D1071=TEXA;
length _D1072 8;
if TEXT=. then _D1072 = 0.00149035084239;
else _D1072=TEXT;
length _D1073 8;
if THAT=. then _D1073 = 0.00243269024072;
else _D1073=THAT;
length _D1074 8;
if THEE=. then _D1074 = 0.00080014266889;
else _D1074=THEE;
length _D1075 8;
if THEORI=. then _D1075 = 0.00147337755501;
else _D1075=THEORI;
length _D1076 8;
if THERAPI=. then _D1076 = 0.00100489563182;
else _D1076=THERAPI;
length _D1077 8;
if THERE=. then _D1077 = 0.00160759142579;
else _D1077=THERE;
length _D1078 8;
if THEY=. then _D1078 = 0.00147405405902;
else _D1078=THEY;
length _D1079 8;
if THINK=. then _D1079 = 0.00166368841342;
else _D1079=THINK;
length _D1080 8;
if THOMA=. then _D1080 = 0.00126606690801;
else _D1080=THOMA;
length _D1081 8;
if THOUGHT=. then _D1081 = 0.00195705322825;
else _D1081=THOUGHT;
length _D1082 8;
if THREAD=. then _D1082 = 0.00081227124313;
else _D1082=THREAD;
length _D1083 8;
if THROW=. then _D1083 = 0.00076945738868;
else _D1083=THROW;
length _D1084 8;
if THU=. then _D1084 = 0.00397964591783;
else _D1084=THU;
length _D1085 8;
if TIM=. then _D1085 = 0.00173791024265;
else _D1085=TIM;
length _D1086 8;
if TIME=. then _D1086 = 0.00511692358758;
else _D1086=TIME;
length _D1087 8;
if TIMER=. then _D1087 = 0.00075833675569;
else _D1087=TIMER;
length _D1088 8;
if TITL=. then _D1088 = 0.00143281997602;
else _D1088=TITL;
length _D1089 8;
if TODAI=. then _D1089 = 0.0013575337545;
else _D1089=TODAI;
length _D1090 8;
if TOLD=. then _D1090 = 0.00175367791494;
else _D1090=TOLD;
length _D1091 8;
if TOM=. then _D1091 = 0.00081630635409;
else _D1091=TOM;
length _D1092 8;
if TONIGHT=. then _D1092 = 0.00081684280703;
else _D1092=TONIGHT;
length _D1093 8;
if TOOL=. then _D1093 = 0.00125006232274;
else _D1093=TOOL;
length _D1094 8;
if TOOLKIT=. then _D1094 = 0.00121327835227;
else _D1094=TOOLKIT;
length _D1095 8;
if TOPIC=. then _D1095 = 0.00085892076801;
else _D1095=TOPIC;
length _D1096 8;
if TORONTO=. then _D1096 = 0.001088372804;
else _D1096=TORONTO;
length _D1097 8;
if TOTAL=. then _D1097 = 0.00104056334407;
else _D1097=TOTAL;
length _D1098 8;
if TOWER=. then _D1098 = 0.00116928941886;
else _D1098=TOWER;
length _D1099 8;
if TRACE=. then _D1099 = 0.00095202338215;
else _D1099=TRACE;
length _D1100 8;
if TRAFFIC=. then _D1100 = 0.00090369126108;
else _D1100=TRAFFIC;
length _D1101 8;
if TRAIN=. then _D1101 = 0.0007233694767;
else _D1101=TRAIN;
length _D1102 8;
if TRANSFORM=. then _D1102 = 0.00103864986042;
else _D1102=TRANSFORM;
length _D1103 8;
if TRANSLAT=. then _D1103 = 0.00131600594106;
else _D1103=TRANSLAT;
length _D1104 8;
if TRANSMIT=. then _D1104 = 0.00083458783569;
else _D1104=TRANSMIT;
length _D1105 8;
if TREAT=. then _D1105 = 0.00171121590446;
else _D1105=TREAT;
length _D1106 8;
if TREATMENT=. then _D1106 = 0.00203115102643;
else _D1106=TREATMENT;
length _D1107 8;
if TROOP=. then _D1107 = 0.0007970677724;
else _D1107=TROOP;
length _D1108 8;
if TROUBL=. then _D1108 = 0.00099524081369;
else _D1108=TROUBL;
length _D1109 8;
if TRUE=. then _D1109 = 0.00221582382989;
else _D1109=TRUE;
length _D1110 8;
if TRUTH=. then _D1110 = 0.00095604904233;
else _D1110=TRUTH;
length _D1111 8;
if TUBE=. then _D1111 = 0.00145442453909;
else _D1111=TUBE;
length _D1112 8;
if TUE=. then _D1112 = 0.00447660716504;
else _D1112=TUE;
length _D1113 8;
if TURK=. then _D1113 = 0.00169594571603;
else _D1113=TURK;
length _D1114 8;
if TURKEI=. then _D1114 = 0.00166251258429;
else _D1114=TURKEI;
length _D1115 8;
if TURKISH=. then _D1115 = 0.00341699547455;
else _D1115=TURKISH;
length _D1116 8;
if TURN=. then _D1116 = 0.00176735886157;
else _D1116=TURN;
length _D1117 8;
if TYPE=. then _D1117 = 0.00287720102201;
else _D1117=TYPE;
length _D1118 8;
if TYPIC=. then _D1118 = 0.00081270533327;
else _D1118=TYPIC;
length _D1119 8;
if UNDEFIN=. then _D1119 = 0.0008531137475;
else _D1119=UNDEFIN;
length _D1120 8;
if UNDERSTAND=. then _D1120 = 0.00185432636991;
else _D1120=UNDERSTAND;
length _D1121 8;
if UNIT=. then _D1121 = 0.00156300122597;
else _D1121=UNIT;
length _D1122 8;
if UNIV=. then _D1122 = 0.00256621084566;
else _D1122=UNIV;
length _D1123 8;
if UNIVERS=. then _D1123 = 0.00760210205031;
else _D1123=UNIVERS;
length _D1124 8;
if UNIX=. then _D1124 = 0.00267371641663;
else _D1124=UNIX;
length _D1125 8;
if UNKNOWN=. then _D1125 = 0.0012095536726;
else _D1125=UNKNOWN;
length _D1126 8;
if UPDAT=. then _D1126 = 0.0009061789008;
else _D1126=UPDAT;
length _D1127 8;
if URBANA=. then _D1127 = 0.00113031967286;
else _D1127=URBANA;
length _D1128 8;
if USA=. then _D1128 = 0.00112136992103;
else _D1128=USA;
length _D1129 8;
if USENET=. then _D1129 = 0.0044850517139;
else _D1129=USENET;
length _D1130 8;
if USER=. then _D1130 = 0.00317361717517;
else _D1130=USER;
length _D1131 8;
if UTEXA=. then _D1131 = 0.00288132565226;
else _D1131=UTEXA;
length _D1132 8;
if UUCP=. then _D1132 = 0.00305775158265;
else _D1132=UUCP;
length _D1133 8;
if VALU=. then _D1133 = 0.00125094197889;
else _D1133=VALU;
length _D1134 8;
if VANDERBYL=. then _D1134 = 0.00103374191939;
else _D1134=VANDERBYL;
length _D1135 8;
if VARIABL=. then _D1135 = 0.0007853833233;
else _D1135=VARIABL;
length _D1136 8;
if VAX=. then _D1136 = 0.0007740478562;
else _D1136=VAX;
length _D1137 8;
if VERSION=. then _D1137 = 0.00397772767368;
else _D1137=VERSION;
length _D1138 8;
if VIDEO=. then _D1138 = 0.00174392138264;
else _D1138=VIDEO;
length _D1139 8;
if VIEW=. then _D1139 = 0.00184580762021;
else _D1139=VIEW;
length _D1140 8;
if VILLAG=. then _D1140 = 0.00134852115119;
else _D1140=VILLAG;
length _D1141 8;
if VIRGINIA=. then _D1141 = 0.00287849442307;
else _D1141=VIRGINIA;
length _D1142 8;
if VIRTUAL=. then _D1142 = 0.00099633601694;
else _D1142=VIRTUAL;
length _D1143 8;
if VISUAL=. then _D1143 = 0.00195915966332;
else _D1143=VISUAL;
length _D1144 8;
if VOIC=. then _D1144 = 0.00149252502234;
else _D1144=VOIC;
length _D1145 8;
if VOLT=. then _D1145 = 0.0009254434335;
else _D1145=VOLT;
length _D1146 8;
if VOLTAG=. then _D1146 = 0.00205983514057;
else _D1146=VOLTAG;
length _D1147 8;
if WAI=. then _D1147 = 0.00096649811138;
else _D1147=WAI;
length _D1148 8;
if WAIT=. then _D1148 = 0.0009002167767;
else _D1148=WAIT;
length _D1149 8;
if WALL=. then _D1149 = 0.00078918215517;
else _D1149=WALL;
length _D1150 8;
if WANT=. then _D1150 = 0.00184738414779;
else _D1150=WANT;
length _D1151 8;
if WAR=. then _D1151 = 0.00093856058548;
else _D1151=WAR;
length _D1152 8;
if WARN=. then _D1152 = 0.00101985380128;
else _D1152=WARN;
length _D1153 8;
if WASHINGTON=. then _D1153 = 0.00121248907136;
else _D1153=WASHINGTON;
length _D1154 8;
if WASN=. then _D1154 = 0.00090608307088;
else _D1154=WASN;
length _D1155 8;
if WAST=. then _D1155 = 0.00091738046627;
else _D1155=WAST;
length _D1156 8;
if WATCH=. then _D1156 = 0.0010634207492;
else _D1156=WATCH;
length _D1157 8;
if WATER=. then _D1157 = 0.00230477231589;
else _D1157=WATER;
length _D1158 8;
if WAVE=. then _D1158 = 0.00119070861242;
else _D1158=WAVE;
length _D1159 8;
if WAYN=. then _D1159 = 0.00109913835728;
else _D1159=WAYN;
length _D1160 8;
if WED=. then _D1160 = 0.00312873688353;
else _D1160=WED;
length _D1161 8;
if WEEK=. then _D1161 = 0.00193565132856;
else _D1161=WEEK;
length _D1162 8;
if WEIGHT=. then _D1162 = 0.00157163849499;
else _D1162=WEIGHT;
length _D1163 8;
if WEST=. then _D1163 = 0.0012687738211;
else _D1163=WEST;
length _D1164 8;
if WESTERN=. then _D1164 = 0.00176461094686;
else _D1164=WESTERN;
length _D1165 8;
if WHAT=. then _D1165 = 0.001201803701;
else _D1165=WHAT;
length _D1166 8;
if WHITE=. then _D1166 = 0.00130554807715;
else _D1166=WHITE;
length _D1167 8;
if WIDE=. then _D1167 = 0.00081362410918;
else _D1167=WIDE;
length _D1168 8;
if WIDGET=. then _D1168 = 0.00468062867706;
else _D1168=WIDGET;
length _D1169 8;
if WIDTH=. then _D1169 = 0.00089884986551;
else _D1169=WIDTH;
length _D1170 8;
if WIFE=. then _D1170 = 0.00116056825173;
else _D1170=WIFE;
length _D1171 8;
if WIN=. then _D1171 = 0.00109100594769;
else _D1171=WIN;
length _D1172 8;
if WINDOW=. then _D1172 = 0.01247434446553;
else _D1172=WINDOW;
length _D1173 8;
if WIRE=. then _D1173 = 0.00259067960707;
else _D1173=WIRE;
length _D1174 8;
if WOMEN=. then _D1174 = 0.00096812176536;
else _D1174=WOMEN;
length _D1175 8;
if WON=. then _D1175 = 0.00138125173043;
else _D1175=WON;
length _D1176 8;
if WONDER=. then _D1176 = 0.00228301678939;
else _D1176=WONDER;
length _D1177 8;
if WORD=. then _D1177 = 0.00143744551329;
else _D1177=WORD;
length _D1178 8;
if WORK=. then _D1178 = 0.00552634655966;
else _D1178=WORK;
length _D1179 8;
if WORLD=. then _D1179 = 0.00410366723944;
else _D1179=WORLD;
length _D1180 8;
if WORTH=. then _D1180 = 0.00100740232644;
else _D1180=WORTH;
length _D1181 8;
if WOULDN=. then _D1181 = 0.00142562475879;
else _D1181=WOULDN;
length _D1182 8;
if WPI=. then _D1182 = 0.00092192377724;
else _D1182=WPI;
length _D1183 8;
if WRITE=. then _D1183 = 0.00084823497235;
else _D1183=WRITE;
length _D1184 8;
if WRITTEN=. then _D1184 = 0.00119743829775;
else _D1184=WRITTEN;
length _D1185 8;
if WRONG=. then _D1185 = 0.00201808434094;
else _D1185=WRONG;
length _D1186 8;
if WROTE=. then _D1186 = 0.001893401003;
else _D1186=WROTE;
length _D1187 8;
if XLIB=. then _D1187 = 0.0021280472105;
else _D1187=XLIB;
length _D1188 8;
if XPUTIMAG=. then _D1188 = 0.0007497223501;
else _D1188=XPUTIMAG;
length _D1189 8;
if XSERVER=. then _D1189 = 0.00092538190162;
else _D1189=XSERVER;
length _D1190 8;
if XTERM=. then _D1190 = 0.00339168490093;
else _D1190=XTERM;
length _D1191 8;
if XTERMIN=. then _D1191 = 0.00079438194523;
else _D1191=XTERMIN;
length _D1192 8;
if XVIEW=. then _D1192 = 0.00110922475719;
else _D1192=XVIEW;
length _D1193 8;
if XWINDOW=. then _D1193 = 0.00079615429066;
else _D1193=XWINDOW;
length _D1194 8;
if YASSIN=. then _D1194 = 0.00108053067206;
else _D1194=YASSIN;
length _D1195 8;
if YEAH=. then _D1195 = 0.00074856709666;
else _D1195=YEAH;
length _D1196 8;
if YEAR=. then _D1196 = 0.00391459055184;
else _D1196=YEAR;
length _D1197 8;
if YEAST=. then _D1197 = 0.00192526483172;
else _D1197=YEAST;
length _D1198 8;
if YIGAL=. then _D1198 = 0.00085249593876;
else _D1198=YIGAL;
length _D1199 8;
if YORK=. then _D1199 = 0.00167847774527;
else _D1199=YORK;
length _D1200 8;
if YOU=. then _D1200 = 0.00333589191251;
else _D1200=YOU;
length _D1201 8;
if YOUNG=. then _D1201 = 0.00103829395309;
else _D1201=YOUNG;
length _D1202 8;
if ZIONISM=. then _D1202 = 0.00167028230807;
else _D1202=ZIONISM;
length _D1203 8;
if ZIONIST=. then _D1203 = 0.000880329168;
else _D1203=ZIONIST;
length _D1204 8;
if ZUMA=. then _D1204 = 0.00101473541327;
else _D1204=ZUMA;
/****************************************/
* Componente principal 1;
/****************************************/
;
length PC_1 8;
label PC_1 = "Componente principal 1";
PC_1 =
0.0041682745*_D1+
0.006910827*_D2+
0.0116988777*_D3+
0.0175173368*_D4+
0.0061105026*_D5+
0.005535628*_D6+
0.0048325625*_D7+
0.0081950536*_D8+
0.0060191035*_D9+
0.0094277979*_D10+
0.0035216154*_D11+
0.0047898589*_D12+
0.0174233003*_D13+
0.0073899089*_D14+
0.0097494818*_D15+
0.0131991655*_D16+
0.0252099069*_D17+
0.0058781022*_D18+
0.0032667155*_D19+
0.0056203665*_D20+
0.0033102106*_D21+
0.0089094375*_D22+
0.0033139224*_D23+
0.0026887665*_D24+
0.0071300915*_D25+
0.0043166635*_D26+
0.0061488337*_D27+
0.0056021745*_D28+
0.0082965324*_D29+
0.005499636*_D30+
0.0051417158*_D31+
0.0048827544*_D32+
0.0031599965*_D33+
0.0064252111*_D34+
0.0109899996*_D35+
0.0109711791*_D36+
0.0071997768*_D37+
0.006856014*_D38+
0.0039182169*_D39+
0.0161999559*_D40+
0.00506603*_D41+
0.0061381064*_D42+
0.0046727711*_D43+
0.0104828981*_D44+
0.0051505961*_D45+
0.0095156934*_D46+
0.0054140797*_D47+
0.0078514111*_D48+
0.0380485319*_D49+
0.0220363437*_D50+
0.0044007762*_D51+
0.0040679491*_D52+
0.015974475*_D53+
0.0043736016*_D54+
0.0114230427*_D55+
0.0060165366*_D56+
0.0137609439*_D57+
0.0073520102*_D58+
0.0030099679*_D59+
0.0071842083*_D60+
0.0140946604*_D61+
0.0024327644*_D62+
0.0058366166*_D63+
0.0065419037*_D64+
0.0052757248*_D65+
0.0053079343*_D66+
0.0047829659*_D67+
0.0100930582*_D68+
0.0079312171*_D69+
0.0035517201*_D70+
0.0059782033*_D71+
0.0094004737*_D72+
0.0036854385*_D73+
0.007640347*_D74+
0.0052607869*_D75+
0.0084913757*_D76+
0.012617681*_D77+
0.0070826945*_D78+
0.0087704774*_D79+
0.0086588987*_D80+
0.0072230112*_D81+
0.0025572826*_D82+
0.005485877*_D83+
0.0054712523*_D84+
0.0281035187*_D85+
0.0030546327*_D86+
0.0127227689*_D87+
0.0076145196*_D88+
0.012423263*_D89+
0.009474927*_D90+
0.0064912616*_D91+
0.0336768271*_D92+
0.0051625851*_D93+
0.0076761081*_D94+
0.0147483553*_D95+
0.005353319*_D96+
0.0133234643*_D97+
0.0141399953*_D98+
0.0048903104*_D99+
0.0071393441*_D100+
0.0057164299*_D101+
0.0102730648*_D102+
0.006502018*_D103+
0.0029262413*_D104+
0.0133419007*_D105+
0.008872085*_D106+
0.0050836649*_D107+
0.0045785366*_D108+
0.0058041135*_D109+
0.0098854567*_D110+
0.0067984741*_D111+
0.0142555774*_D112+
0.0037189252*_D113+
0.0045731267*_D114+
0.0203299656*_D115+
0.0036671846*_D116+
0.0044009426*_D117+
0.0066832299*_D118+
0.0041490217*_D119+
0.005799254*_D120+
0.015679694*_D121+
0.0080814118*_D122+
0.0031415965*_D123+
0.0055947811*_D124+
0.003304706*_D125+
0.0068993161*_D126+
0.0176270309*_D127+
0.005141654*_D128+
0.009893375*_D129+
0.027915792*_D130+
0.0085040445*_D131+
0.014602407*_D132+
0.0099427215*_D133+
0.0073933799*_D134+
0.0051438116*_D135+
0.0047758665*_D136+
0.0045395945*_D137+
0.0062981248*_D138+
0.0052592123*_D139+
0.0131596813*_D140+
0.0074931445*_D141+
0.007980296*_D142+
0.0033558273*_D143+
0.0040830755*_D144+
0.0162364072*_D145+
0.0062588322*_D146+
0.0048117789*_D147+
0.0079919218*_D148+
0.0169770314*_D149+
0.0090497172*_D150+
0.0042758099*_D151+
0.0154370659*_D152+
0.0054877345*_D153+
0.008555604*_D154+
0.0037214583*_D155+
0.0098474988*_D156+
0.0057829499*_D157+
0.0110277845*_D158+
0.0072303556*_D159+
0.003725357*_D160+
0.005877947*_D161+
0.0097102597*_D162+
0.0046340239*_D163+
0.003898788*_D164+
0.0183895609*_D165+
0.0060151496*_D166+
0.0074914165*_D167+
0.004063108*_D168+
0.0057007971*_D169+
0.015344*_D170+
0.0080153453*_D171+
0.003278214*_D172+
0.0048567547*_D173+
0.0053214301*_D174+
0.0069533057*_D175+
0.0086448807*_D176+
0.0054068788*_D177+
0.0051026948*_D178+
0.0244878126*_D179+
0.0052419624*_D180+
0.0035349031*_D181+
0.0074025301*_D182+
0.0074157627*_D183+
0.0034858471*_D184+
0.0052568581*_D185+
0.025710884*_D186+
0.0032443905*_D187+
0.0093664357*_D188+
0.0063057452*_D189+
0.0358835719*_D190+
0.0062686237*_D191+
0.0186834925*_D192+
0.0081584365*_D193+
0.0039699532*_D194+
0.0092296693*_D195+
0.0053860387*_D196+
0.0057110646*_D197+
0.0030266469*_D198+
0.0072304585*_D199+
0.0156760412*_D200+
0.2038745326*_D201+
0.0164757631*_D202+
0.0047963782*_D203+
0.004802806*_D204+
0.0221885327*_D205+
0.0071806582*_D206+
0.0059579799*_D207+
0.0370218466*_D208+
0.0045796921*_D209+
0.0042624982*_D210+
0.0067484462*_D211+
0.0036496128*_D212+
0.0086796782*_D213+
0.0038210288*_D214+
0.0034755821*_D215+
0.0152695817*_D216+
0.0048456601*_D217+
0.0035098265*_D218+
0.0037890683*_D219+
0.0035435435*_D220+
0.0075410778*_D221+
0.0047521518*_D222+
0.0096429057*_D223+
0.0058712641*_D224+
0.0143709981*_D225+
0.0029392944*_D226+
0.0144994949*_D227+
0.0075091685*_D228+
0.0189645267*_D229+
0.0038342312*_D230+
0.0077191339*_D231+
0.0128143682*_D232+
0.0132858298*_D233+
0.0080640453*_D234+
0.0056764558*_D235+
0.0035097429*_D236+
0.0070939499*_D237+
0.0086227597*_D238+
0.0036059346*_D239+
0.0070827578*_D240+
0.0034548874*_D241+
0.0218320273*_D242+
0.0029198501*_D243+
0.0034284832*_D244+
0.0030440678*_D245+
0.0146616568*_D246+
0.0154286354*_D247+
0.004633125*_D248+
0.0114241575*_D249+
0.0049378792*_D250+
0.0136491731*_D251+
0.0051714562*_D252+
0.0044712346*_D253+
0.0039801051*_D254+
0.0053657277*_D255+
0.0063335145*_D256+
0.0033554851*_D257+
0.0194227493*_D258+
0.009790639*_D259+
0.0218830804*_D260+
0.0033425469*_D261+
0.003772309*_D262+
0.0049407681*_D263+
0.0066176362*_D264+
0.0058350315*_D265+
0.0054515503*_D266+
0.0049397085*_D267+
0.0052117488*_D268+
0.0160912912*_D269+
0.0115052424*_D270+
0.0039536094*_D271+
0.0041913877*_D272+
0.0022961825*_D273+
0.0067237719*_D274+
0.0201800384*_D275+
0.0055677192*_D276+
0.0173022362*_D277+
0.0085414746*_D278+
0.01393605*_D279+
0.0038171424*_D280+
0.0067203133*_D281+
0.0087538267*_D282+
0.0170020456*_D283+
0.0062120521*_D284+
0.0119764703*_D285+
0.0131708787*_D286+
0.0045144478*_D287+
0.0039447263*_D288+
0.0077523437*_D289+
0.0045761959*_D290+
0.0092467823*_D291+
0.0045638791*_D292+
0.0062141798*_D293+
0.0078767396*_D294+
0.0093817734*_D295+
0.0115929825*_D296+
0.0052850919*_D297+
0.0086967057*_D298+
0.0070454916*_D299+
0.0034405834*_D300+
0.0070699235*_D301+
0.0086655068*_D302+
0.0105912438*_D303+
0.0085102213*_D304+
0.0339156235*_D305+
0.0046231172*_D306+
0.0310554061*_D307+
0.0078955239*_D308+
0.0130416315*_D309+
0.0103754536*_D310+
0.0165602104*_D311+
0.0079100533*_D312+
0.0046642043*_D313+
0.0294015238*_D314+
0.0035985965*_D315+
0.0077618792*_D316+
0.0042629585*_D317+
0.007988047*_D318+
0.020458731*_D319+
0.0109364483*_D320+
0.0051262455*_D321+
0.0054033849*_D322+
0.0091656943*_D323+
0.0066098643*_D324+
0.0074165371*_D325+
0.007151015*_D326+
0.0045521161*_D327+
0.0039068952*_D328+
0.0028037434*_D329+
0.0052562979*_D330+
0.00688754*_D331+
0.052689001*_D332+
0.0061458775*_D333+
0.0060530483*_D334+
0.0149935721*_D335+
0.0113539884*_D336+
0.0440326217*_D337+
0.0252050978*_D338+
0.0059053448*_D339+
0.0112614867*_D340+
0.0035117562*_D341+
0.0175187684*_D342+
0.0053604623*_D343+
0.0034283552*_D344+
0.0049205915*_D345+
0.0093216734*_D346+
0.0045924421*_D347+
0.0046474372*_D348+
0.0065872393*_D349+
0.0062447377*_D350+
0.0168085844*_D351+
0.0072090546*_D352+
0.0037701419*_D353+
0.0061722678*_D354+
0.0043662058*_D355+
0.0251112821*_D356+
0.0050827283*_D357+
0.0044896749*_D358+
0.0069258757*_D359+
0.0035592084*_D360+
0.0097585375*_D361+
0.0056197397*_D362+
0.0059449857*_D363+
0.0033202138*_D364+
0.0130918876*_D365+
0.0030944653*_D366+
0.0051692001*_D367+
0.0030054934*_D368+
0.0129426255*_D369+
0.0074260438*_D370+
0.0061397676*_D371+
0.002640149*_D372+
0.004489818*_D373+
0.0051440179*_D374+
0.0102879782*_D375+
0.0096268826*_D376+
0.0049753424*_D377+
0.0049200935*_D378+
0.0056950614*_D379+
0.0029085514*_D380+
0.0027454319*_D381+
0.01639786*_D382+
0.0087602886*_D383+
0.0043796289*_D384+
0.0063489405*_D385+
0.0093622497*_D386+
0.0062580991*_D387+
0.002836196*_D388+
0.0090818983*_D389+
0.0374920521*_D390+
0.0035251729*_D391+
0.0056838019*_D392+
0.0074690327*_D393+
0.0270402128*_D394+
0.0105770886*_D395+
0.0044034405*_D396+
0.0084130401*_D397+
0.0046447577*_D398+
0.0044293526*_D399+
0.0041914914*_D400+
0.0030017456*_D401+
0.0105821767*_D402+
0.0107806119*_D403+
0.0127593387*_D404+
0.0199941126*_D405+
0.0120655476*_D406+
0.0087835966*_D407+
0.0033037265*_D408+
0.0064147524*_D409+
0.0098640292*_D410+
0.0123195308*_D411+
0.0081534313*_D412+
0.006053811*_D413+
0.0313474429*_D414+
0.0116531071*_D415+
0.0077041862*_D416+
0.0105945881*_D417+
0.0066081945*_D418+
0.0031115007*_D419+
0.0256583472*_D420+
0.0098304358*_D421+
0.0066645387*_D422+
0.01876013*_D423+
0.0042376584*_D424+
0.0050704029*_D425+
0.0072703402*_D426+
0.0052085717*_D427+
0.00568284*_D428+
0.027048086*_D429+
0.0052087051*_D430+
0.0199485391*_D431+
0.0163481819*_D432+
0.004397548*_D433+
0.0064774996*_D434+
0.0146549968*_D435+
0.0055692269*_D436+
0.0125093737*_D437+
0.0043364169*_D438+
0.0198561911*_D439+
0.0219702103*_D440+
0.0294746842*_D441+
0.0076898541*_D442+
0.0046325296*_D443+
0.0211076712*_D444+
0.0095552905*_D445+
0.0127181221*_D446+
0.0065391109*_D447+
0.0068062695*_D448+
0.0107076454*_D449+
0.0123965753*_D450+
0.0212999664*_D451+
0.0071020746*_D452+
0.005167125*_D453+
0.0071038355*_D454+
0.002867439*_D455+
0.004979996*_D456+
0.0063553204*_D457+
0.0113348738*_D458+
0.0059141081*_D459+
0.0108200754*_D460+
0.0098835103*_D461+
0.0067685492*_D462+
0.0074211844*_D463+
0.00570635*_D464+
0.004477087*_D465+
0.0050748534*_D466+
0.0046875712*_D467+
0.0075355148*_D468+
0.0030046373*_D469+
0.0076359128*_D470+
0.010235492*_D471+
0.0085349871*_D472+
0.0038884076*_D473+
0.0044433952*_D474+
0.0025364896*_D475+
0.0059374776*_D476+
0.0067249162*_D477+
0.0037813324*_D478+
0.0053042228*_D479+
0.0033688785*_D480+
0.0028536528*_D481+
0.0036396358*_D482+
0.0037498869*_D483+
0.0111617402*_D484+
0.0047049351*_D485+
0.0090715215*_D486+
0.0024611856*_D487+
0.0043139162*_D488+
0.0065637879*_D489+
0.006364936*_D490+
0.0103067676*_D491+
0.007752537*_D492+
0.008592053*_D493+
0.0062755308*_D494+
0.0081427989*_D495+
0.0043213042*_D496+
0.0045152041*_D497+
0.0056885942*_D498+
0.0069675589*_D499+
0.0061397911*_D500+
0.0241300721*_D501+
0.0143317626*_D502+
0.0058798954*_D503+
0.0033901518*_D504+
0.0072942521*_D505+
0.0174431112*_D506+
0.0034844801*_D507+
0.0102837077*_D508+
0.014451016*_D509+
0.006871294*_D510+
0.0038827699*_D511+
0.0041755441*_D512+
0.0172220501*_D513+
0.0027458888*_D514+
0.0037631206*_D515+
0.0051598748*_D516+
0.0065524014*_D517+
0.0244759402*_D518+
0.032881681*_D519+
0.0026423962*_D520+
0.0133003636*_D521+
0.0125578453*_D522+
0.0214676585*_D523+
0.0050364957*_D524+
0.005148914*_D525+
0.0101225795*_D526+
0.0093334699*_D527+
0.003667386*_D528+
0.0191430883*_D529+
0.0093891175*_D530+
0.0077924604*_D531+
0.0077931478*_D532+
0.2426905152*_D533+
0.0063115778*_D534+
0.0038262551*_D535+
0.0064454996*_D536+
0.0027347905*_D537+
0.0057650595*_D538+
0.0040336294*_D539+
0.0028562147*_D540+
0.0089656544*_D541+
0.0235947492*_D542+
0.0290646704*_D543+
0.0064664466*_D544+
0.0073417237*_D545+
0.0054852868*_D546+
0.006949749*_D547+
0.0049618359*_D548+
0.0073772049*_D549+
0.0034785411*_D550+
0.0054825558*_D551+
0.0056717139*_D552+
0.0154222984*_D553+
0.0071467577*_D554+
0.0054745857*_D555+
0.0031505601*_D556+
0.0082052292*_D557+
0.019577988*_D558+
0.0069206903*_D559+
0.0048144195*_D560+
0.0026918838*_D561+
0.0127944576*_D562+
0.0038837911*_D563+
0.007355193*_D564+
0.0054119836*_D565+
0.0202037093*_D566+
0.0226304026*_D567+
0.0026243579*_D568+
0.0140929455*_D569+
0.0121305076*_D570+
0.003372658*_D571+
0.0052367965*_D572+
0.0068327213*_D573+
0.0035208249*_D574+
0.004737316*_D575+
0.0081371883*_D576+
0.0064036835*_D577+
0.0099617562*_D578+
0.0037728643*_D579+
0.0070876042*_D580+
0.0072875315*_D581+
0.0061942772*_D582+
0.0072988779*_D583+
0.005836505*_D584+
0.0035130889*_D585+
0.0063887113*_D586+
0.0030064122*_D587+
0.0064372737*_D588+
0.0053283426*_D589+
0.0055308763*_D590+
0.0053713444*_D591+
0.0082813347*_D592+
0.0043903294*_D593+
0.006271032*_D594+
0.0043259491*_D595+
0.0104003621*_D596+
0.0144356499*_D597+
0.0038668588*_D598+
0.0063463877*_D599+
0.0069476845*_D600+
0.0095012938*_D601+
0.0075240841*_D602+
0.0065118002*_D603+
0.0314529957*_D604+
0.0028618689*_D605+
0.0038029358*_D606+
0.0096994421*_D607+
0.0065962814*_D608+
0.0072240549*_D609+
0.0104034259*_D610+
0.0098851851*_D611+
0.0083019828*_D612+
0.0086318058*_D613+
0.017303024*_D614+
0.0061328528*_D615+
0.0061915233*_D616+
0.0058998605*_D617+
0.0059154049*_D618+
0.0084195955*_D619+
0.0051370955*_D620+
0.005169057*_D621+
0.0044501658*_D622+
0.0054398044*_D623+
0.0196170973*_D624+
0.014269483*_D625+
0.1149946641*_D626+
0.0114391219*_D627+
0.0057680248*_D628+
0.0053217113*_D629+
0.0077096113*_D630+
0.0058169221*_D631+
0.0363651655*_D632+
0.0097914287*_D633+
0.0094679553*_D634+
0.0126898108*_D635+
0.0150749042*_D636+
0.0038475878*_D637+
0.0102681554*_D638+
0.0071839865*_D639+
0.002593832*_D640+
0.0029309058*_D641+
0.003548656*_D642+
0.0083852541*_D643+
0.007120246*_D644+
0.0071440466*_D645+
0.0132355129*_D646+
0.0070435826*_D647+
0.0038710864*_D648+
0.0250545575*_D649+
0.005003928*_D650+
0.0132034714*_D651+
0.0093234174*_D652+
0.0080266511*_D653+
0.0050962186*_D654+
0.0146506167*_D655+
0.0094317049*_D656+
0.0092727522*_D657+
0.0062826248*_D658+
0.0029036667*_D659+
0.0068310858*_D660+
0.0030897844*_D661+
0.0217138322*_D662+
0.0064163489*_D663+
0.0064024188*_D664+
0.0429143632*_D665+
0.0028045795*_D666+
0.0027125426*_D667+
0.003323316*_D668+
0.008354334*_D669+
0.0028817318*_D670+
0.0035743976*_D671+
0.0061030512*_D672+
0.0041162377*_D673+
0.0112243417*_D674+
0.0098818126*_D675+
0.0072788978*_D676+
0.0054529907*_D677+
0.0243566388*_D678+
0.0059112099*_D679+
0.0082116932*_D680+
0.0061865096*_D681+
0.0031271428*_D682+
0.0541609782*_D683+
0.0119015753*_D684+
0.0030319745*_D685+
0.0166898794*_D686+
0.012429819*_D687+
0.0031616766*_D688+
0.0044751716*_D689+
0.0083947265*_D690+
0.0105354692*_D691+
0.0038727536*_D692+
0.0027977244*_D693+
0.0053742519*_D694+
0.0038957639*_D695+
0.0069738115*_D696+
0.010466648*_D697+
0.0100345597*_D698+
0.0050477337*_D699+
0.0051117638*_D700+
0.0044126379*_D701+
0.0105358138*_D702+
0.0037193404*_D703+
0.0027663102*_D704+
0.0100949258*_D705+
0.0034128324*_D706+
0.0073924407*_D707+
0.006080957*_D708+
0.0171716911*_D709+
0.0062085824*_D710+
0.043771944*_D711+
0.015304439*_D712+
0.0219065623*_D713+
0.0080402566*_D714+
0.0037091981*_D715+
0.0042735468*_D716+
0.0098501617*_D717+
0.0054748461*_D718+
0.0045192913*_D719+
0.0090092693*_D720+
0.0063049203*_D721+
0.0056109989*_D722+
0.0051931975*_D723+
0.0229727729*_D724+
0.0100679448*_D725+
0.0031305899*_D726+
0.0073183518*_D727+
0.0030000036*_D728+
0.0038099562*_D729+
0.0066452737*_D730+
0.0032787078*_D731+
0.005913416*_D732+
0.0077053965*_D733+
0.0035204227*_D734+
0.006215815*_D735+
0.0108070491*_D736+
0.0030681247*_D737+
0.0128848579*_D738+
0.0084809233*_D739+
0.0139831597*_D740+
0.0115108638*_D741+
0.0148614106*_D742+
0.0106897406*_D743+
0.0093466401*_D744+
0.0068783669*_D745+
0.003790958*_D746+
0.0145150697*_D747+
0.004179722*_D748+
0.0076275004*_D749+
0.0129453904*_D750+
0.0068443831*_D751+
0.0135715668*_D752+
0.0040141943*_D753+
0.0079966662*_D754+
0.0092902403*_D755+
0.0032771571*_D756+
0.0077033092*_D757+
0.0037469782*_D758+
0.0087674774*_D759+
0.0069762642*_D760+
0.0091079743*_D761+
0.0153473277*_D762+
0.0043152618*_D763+
0.007258177*_D764+
0.0150283721*_D765+
0.0088580289*_D766+
0.0081667502*_D767+
0.0096320596*_D768+
0.0069267887*_D769+
0.0090641145*_D770+
0.0040218091*_D771+
0.0044594408*_D772+
0.0133983099*_D773+
0.0092628263*_D774+
0.0315747951*_D775+
0.006675369*_D776+
0.0070956006*_D777+
0.0057347621*_D778+
0.3799887616*_D779+
0.0052114995*_D780+
0.0061971977*_D781+
0.0028335311*_D782+
0.0059263444*_D783+
0.0242316794*_D784+
0.0163112366*_D785+
0.009353654*_D786+
0.0163290135*_D787+
0.0167029404*_D788+
0.0043941731*_D789+
0.0048625937*_D790+
0.0052190391*_D791+
0.0111786083*_D792+
0.0031187127*_D793+
0.0049786581*_D794+
0.0134023509*_D795+
0.0182780176*_D796+
0.0043581822*_D797+
0.0083279602*_D798+
0.0056331998*_D799+
0.0042831114*_D800+
0.0040963525*_D801+
0.0086962053*_D802+
0.0129550177*_D803+
0.0170192832*_D804+
0.005430517*_D805+
0.0239855955*_D806+
0.0081611223*_D807+
0.0148140255*_D808+
0.0167812445*_D809+
0.0053275595*_D810+
0.0093947951*_D811+
0.0055761176*_D812+
0.0044527415*_D813+
0.0095477033*_D814+
0.0076702157*_D815+
0.0060461534*_D816+
0.0054929837*_D817+
0.0082583369*_D818+
0.0066830722*_D819+
0.0048241549*_D820+
0.0050886466*_D821+
0.0341515671*_D822+
0.01218534*_D823+
0.0061590123*_D824+
0.0129564554*_D825+
0.0395774413*_D826+
0.0080197525*_D827+
0.0166958865*_D828+
0.0338596919*_D829+
0.0040972084*_D830+
0.004189487*_D831+
0.0041070605*_D832+
0.0092124751*_D833+
0.0067642065*_D834+
0.0038759518*_D835+
0.0083327808*_D836+
0.0160238752*_D837+
0.0045369694*_D838+
0.0045472409*_D839+
0.0054877022*_D840+
0.0054427151*_D841+
0.0052272712*_D842+
0.0066581869*_D843+
0.0303323775*_D844+
0.0105569143*_D845+
0.0039006379*_D846+
0.0067795776*_D847+
0.0025357711*_D848+
0.0116950195*_D849+
0.0185718608*_D850+
0.0124551148*_D851+
0.004813847*_D852+
0.0062373351*_D853+
0.0045278053*_D854+
0.0203426152*_D855+
0.0045824634*_D856+
0.0094692987*_D857+
0.0069988888*_D858+
0.0132094631*_D859+
0.0034824724*_D860+
0.0047338799*_D861+
0.0177893162*_D862+
0.003571811*_D863+
0.0041195468*_D864+
0.0035953746*_D865+
0.0029856774*_D866+
0.0040396863*_D867+
0.0048019081*_D868+
0.0081760774*_D869+
0.0063067695*_D870+
0.0106562778*_D871+
0.0081831552*_D872+
0.0045767189*_D873+
0.0032024287*_D874+
0.0034592344*_D875+
0.0111716684*_D876+
0.0089960597*_D877+
0.0056160167*_D878+
0.0032200829*_D879+
0.0070347522*_D880+
0.0356737079*_D881+
0.0115086384*_D882+
0.0147052127*_D883+
0.0122372054*_D884+
0.0230355621*_D885+
0.0040668827*_D886+
0.0064567462*_D887+
0.0064862825*_D888+
0.0111081685*_D889+
0.0076946954*_D890+
0.0114226085*_D891+
0.0039382778*_D892+
0.0098271551*_D893+
0.0095510769*_D894+
0.0041190998*_D895+
0.0039892396*_D896+
0.010096264*_D897+
0.0071092942*_D898+
0.0076681283*_D899+
0.0025961925*_D900+
0.0055837487*_D901+
0.0048510372*_D902+
0.0028911312*_D903+
0.0043264881*_D904+
0.0154812484*_D905+
0.0042420323*_D906+
0.0063011857*_D907+
0.0036168966*_D908+
0.0088643866*_D909+
0.3799887616*_D910+
0.0045569895*_D911+
0.0280761733*_D912+
0.0028282143*_D913+
0.0021615882*_D914+
0.0044932028*_D915+
0.0045479364*_D916+
0.0051234597*_D917+
0.0072292919*_D918+
0.0118908719*_D919+
0.0065385605*_D920+
0.0049414895*_D921+
0.0143672585*_D922+
0.0029580357*_D923+
0.0340135359*_D924+
0.0311587031*_D925+
0.0051420979*_D926+
0.0044005923*_D927+
0.0086372297*_D928+
0.0108332967*_D929+
0.0207008878*_D930+
0.0084825969*_D931+
0.0030936277*_D932+
0.0054759543*_D933+
0.0037892701*_D934+
0.0046257518*_D935+
0.0046969311*_D936+
0.0030310069*_D937+
0.007948972*_D938+
0.0086719157*_D939+
0.0103917037*_D940+
0.002991267*_D941+
0.0199555937*_D942+
0.0047612162*_D943+
0.0075372729*_D944+
0.0051708585*_D945+
0.0064530793*_D946+
0.0030435474*_D947+
0.0243609863*_D948+
0.0058780719*_D949+
0.0076282381*_D950+
0.0040556632*_D951+
0.0504591194*_D952+
0.0168232905*_D953+
0.0096816283*_D954+
0.0026898616*_D955+
0.0066585616*_D956+
0.0098356971*_D957+
0.0098131451*_D958+
0.011801081*_D959+
0.004085544*_D960+
0.003792158*_D961+
0.0080658575*_D962+
0.0039495964*_D963+
0.0036870088*_D964+
0.0041240831*_D965+
0.0117736203*_D966+
0.0044662612*_D967+
0.0113310761*_D968+
0.0042565732*_D969+
0.0125595928*_D970+
0.0033710399*_D971+
0.0102244756*_D972+
0.0074368351*_D973+
0.0111266752*_D974+
0.005874325*_D975+
0.0059644818*_D976+
0.011401489*_D977+
0.0061904612*_D978+
0.0142107986*_D979+
0.0101364921*_D980+
0.0031028436*_D981+
0.0046881068*_D982+
0.0049700385*_D983+
0.0067769024*_D984+
0.0032542191*_D985+
0.0043157175*_D986+
0.027892661*_D987+
0.0065846678*_D988+
0.0065369851*_D989+
0.0079270673*_D990+
0.0074455864*_D991+
0.0092493949*_D992+
0.0227626405*_D993+
0.0041496579*_D994+
0.0040883668*_D995+
0.0096113515*_D996+
0.008418222*_D997+
0.0070062947*_D998+
0.0060380963*_D999+
0.0067949452*_D1000+
0.0132902444*_D1001+
0.0076798963*_D1002+
0.0029539146*_D1003+
0.0046653807*_D1004+
0.0038590841*_D1005+
0.0040260804*_D1006+
0.0031396484*_D1007+
0.0126743677*_D1008+
0.0174921491*_D1009+
0.0211365801*_D1010+
0.0048600745*_D1011+
0.0051273899*_D1012+
0.0099768505*_D1013+
0.0047656864*_D1014+
0.0047638045*_D1015+
0.0177506703*_D1016+
0.0066559955*_D1017+
0.003066629*_D1018+
0.0073912158*_D1019+
0.0060185746*_D1020+
0.0063668489*_D1021+
0.0064246337*_D1022+
0.0040580487*_D1023+
0.0072844939*_D1024+
0.0081813015*_D1025+
0.0096158592*_D1026+
0.0080188588*_D1027+
0.0085699965*_D1028+
0.3633711405*_D1029+
0.4878358652*_D1030+
0.0048354483*_D1031+
0.0151725159*_D1032+
0.006884038*_D1033+
0.012204612*_D1034+
0.0141342032*_D1035+
0.0089361473*_D1036+
0.0034520325*_D1037+
0.0098358926*_D1038+
0.0234341844*_D1039+
0.0072645065*_D1040+
0.0037353904*_D1041+
0.0035731143*_D1042+
0.0096788287*_D1043+
0.0044235023*_D1044+
0.0133311873*_D1045+
0.0062260383*_D1046+
0.0044507215*_D1047+
0.0045691577*_D1048+
0.0030984099*_D1049+
0.0394062241*_D1050+
0.0063253198*_D1051+
0.0037619356*_D1052+
0.0096562903*_D1053+
0.0062363505*_D1054+
0.0031790903*_D1055+
0.0045194747*_D1056+
0.007207188*_D1057+
0.0070747607*_D1058+
0.0214874006*_D1059+
0.0081372161*_D1060+
0.0104865135*_D1061+
0.0075246581*_D1062+
0.0059242259*_D1063+
0.0030265212*_D1064+
0.0087674524*_D1065+
0.0201539506*_D1066+
0.0042783822*_D1067+
0.0066636653*_D1068+
0.0039830347*_D1069+
0.0146218815*_D1070+
0.008914003*_D1071+
0.0107393343*_D1072+
0.0123245853*_D1073+
0.0042606874*_D1074+
0.0061950969*_D1075+
0.0037587439*_D1076+
0.0098868899*_D1077+
0.0080655771*_D1078+
0.0079742373*_D1079+
0.0101780056*_D1080+
0.0096081976*_D1081+
0.0048553271*_D1082+
0.0031681182*_D1083+
0.0235451188*_D1084+
0.0092855037*_D1085+
0.0265205748*_D1086+
0.0043205269*_D1087+
0.0130106113*_D1088+
0.0048217336*_D1089+
0.0072695838*_D1090+
0.0050554753*_D1091+
0.0028037045*_D1092+
0.0092275531*_D1093+
0.0106063662*_D1094+
0.0037796019*_D1095+
0.0054025064*_D1096+
0.0046730019*_D1097+
0.0050607601*_D1098+
0.0048101338*_D1099+
0.0055848945*_D1100+
0.002771001*_D1101+
0.0052815058*_D1102+
0.0083234452*_D1103+
0.0038916474*_D1104+
0.0069816467*_D1105+
0.0077598856*_D1106+
0.0025334055*_D1107+
0.0044540795*_D1108+
0.0109215317*_D1109+
0.0041482515*_D1110+
0.006285067*_D1111+
0.0264108397*_D1112+
0.0051021041*_D1113+
0.0049842602*_D1114+
0.011188251*_D1115+
0.008166064*_D1116+
0.0169017797*_D1117+
0.003604334*_D1118+
0.0059101452*_D1119+
0.0083781668*_D1120+
0.0062816745*_D1121+
0.0165794688*_D1122+
0.0437137434*_D1123+
0.0203501434*_D1124+
0.009330864*_D1125+
0.0073525747*_D1126+
0.0059787057*_D1127+
0.00475491*_D1128+
0.0259941059*_D1129+
0.0299336031*_D1130+
0.0713328297*_D1131+
0.0307163302*_D1132+
0.0092541881*_D1133+
0.0053220474*_D1134+
0.0058245408*_D1135+
0.003954726*_D1136+
0.0323621379*_D1137+
0.0106223847*_D1138+
0.0101286683*_D1139+
0.0044168652*_D1140+
0.0159441497*_D1141+
0.0061365914*_D1142+
0.0161057463*_D1143+
0.0097032374*_D1144+
0.0041926865*_D1145+
0.0101669112*_D1146+
0.0049577733*_D1147+
0.004735705*_D1148+
0.0039038569*_D1149+
0.0092433655*_D1150+
0.0033763489*_D1151+
0.0060398097*_D1152+
0.0057363563*_D1153+
0.0040635095*_D1154+
0.0038463068*_D1155+
0.0072512985*_D1156+
0.0080889172*_D1157+
0.0046928268*_D1158+
0.006187925*_D1159+
0.0188245791*_D1160+
0.0082982851*_D1161+
0.0072111773*_D1162+
0.0074203187*_D1163+
0.0082534081*_D1164+
0.0065914944*_D1165+
0.0060766711*_D1166+
0.0038716238*_D1167+
0.0496596674*_D1168+
0.0076640011*_D1169+
0.004199699*_D1170+
0.006246063*_D1171+
0.2614032251*_D1172+
0.0128234741*_D1173+
0.0032089402*_D1174+
0.0086807864*_D1175+
0.012800325*_D1176+
0.0082545225*_D1177+
0.0334993043*_D1178+
0.021303917*_D1179+
0.0061915807*_D1180+
0.0057878488*_D1181+
0.00581595*_D1182+
0.0059148531*_D1183+
0.0082164415*_D1184+
0.0114541505*_D1185+
0.0098679736*_D1186+
0.0221070215*_D1187+
0.0060830863*_D1188+
0.0104767156*_D1189+
0.0360157213*_D1190+
0.0080039505*_D1191+
0.0101463805*_D1192+
0.0092689783*_D1193+
0.0033521278*_D1194+
0.0029913767*_D1195+
0.0160213686*_D1196+
0.0072628848*_D1197+
0.0035909302*_D1198+
0.0078071665*_D1199+
0.0206068053*_D1200+
0.0048746294*_D1201+
0.0085184604*_D1202+
0.0028728914*_D1203+
0.0031592675*_D1204;
/****************************************/
* Componente principal 2;
/****************************************/
;
length PC_2 8;
label PC_2 = "Componente principal 2";
PC_2 =
0.0103746416*_D1+
0.0120581599*_D2+
0.0211171206*_D3+
0.0329324908*_D4+
0.0137028703*_D5+
0.0128107292*_D6+
0.0140779845*_D7+
0.0193777646*_D8+
0.0150791966*_D9+
0.0297519949*_D10+
0.0100505924*_D11+
0.0121124594*_D12+
0.0359499558*_D13+
0.0145226628*_D14+
0.0196683461*_D15+
0.0204392137*_D16+
0.0471362369*_D17+
0.0160326331*_D18+
0.0088021992*_D19+
0.0152101496*_D20+
0.0100852262*_D21+
0.0233363668*_D22+
0.0097166992*_D23+
0.0078690687*_D24+
0.0118681178*_D25+
0.0113208781*_D26+
0.0159312325*_D27+
0.0139797573*_D28+
0.0230426741*_D29+
0.0147229463*_D30+
0.0143161432*_D31+
0.0140135719*_D32+
0.0094855996*_D33+
0.0164772358*_D34+
0.0313752557*_D35+
0.0229294412*_D36+
0.0137484162*_D37+
0.0131929804*_D38+
0.0092475895*_D39+
0.0353593373*_D40+
0.0137069834*_D41+
0.0179772755*_D42+
0.0139074798*_D43+
0.0175446048*_D44+
0.013120045*_D45+
0.0200122638*_D46+
0.0142156631*_D47+
0.0182405548*_D48+
0.0636913209*_D49+
0.0464102831*_D50+
0.0102263756*_D51+
0.0095075762*_D52+
0.0484954755*_D53+
0.0119511459*_D54+
0.0282913193*_D55+
0.0155851928*_D56+
0.0301703969*_D57+
0.0142426715*_D58+
0.0087766248*_D59+
0.0217941061*_D60+
0.0415347542*_D61+
0.0072743255*_D62+
0.0114118404*_D63+
0.0173047345*_D64+
0.0144831664*_D65+
0.0137984598*_D66+
0.0120551726*_D67+
0.0204213461*_D68+
0.017216867*_D69+
0.0098733667*_D70+
0.0167323689*_D71+
0.0156190866*_D72+
0.0101468872*_D73+
0.0233963632*_D74+
0.0141575318*_D75+
0.0132078059*_D76+
0.0333649781*_D77+
0.0143600729*_D78+
0.0180291509*_D79+
0.019848211*_D80+
0.0151682117*_D81+
0.0077850243*_D82+
0.01088041*_D83+
0.0142460611*_D84+
0.0984099601*_D85+
0.009155781*_D86+
0.0274563228*_D87+
0.017825805*_D88+
0.0364498126*_D89+
0.0165870375*_D90+
0.0148799137*_D91+
0.0461406538*_D92+
0.0132468627*_D93+
0.0234382671*_D94+
0.0323338134*_D95+
0.0174207855*_D96+
0.0235846631*_D97+
0.0194534224*_D98+
0.0114751088*_D99+
0.0222040857*_D100+
0.0145062501*_D101+
0.0244524327*_D102+
0.0168212405*_D103+
0.0087752744*_D104+
0.0339040428*_D105+
0.0181936628*_D106+
0.0127511272*_D107+
0.0116277082*_D108+
0.0110842916*_D109+
0.0200931279*_D110+
0.0176706961*_D111+
0.0310142779*_D112+
0.0113524896*_D113+
0.0113054916*_D114+
0.0355708137*_D115+
0.0090772235*_D116+
0.0111674789*_D117+
0.0179999294*_D118+
0.0093793835*_D119+
0.0107953181*_D120+
0.033375067*_D121+
0.0179299095*_D122+
0.0090875641*_D123+
0.0132331576*_D124+
0.0104354754*_D125+
0.0159196841*_D126+
0.030884417*_D127+
0.0136691451*_D128+
0.0256783598*_D129+
0.0607307413*_D130+
0.0192865668*_D131+
0.035224952*_D132+
0.0239904835*_D133+
0.0215245613*_D134+
0.0156267155*_D135+
0.0101941451*_D136+
0.0117495411*_D137+
0.0112140253*_D138+
0.01496573*_D139+
0.0303849472*_D140+
0.0186431437*_D141+
0.0178443875*_D142+
0.0093312071*_D143+
0.0126151873*_D144+
0.0406485828*_D145+
0.0145666781*_D146+
0.0129007594*_D147+
0.0176193743*_D148+
0.0398330336*_D149+
0.0146257581*_D150+
0.0112155231*_D151+
0.0298344999*_D152+
0.0151799043*_D153+
0.0154901986*_D154+
0.0104497003*_D155+
0.0351702336*_D156+
0.0148410597*_D157+
0.0223769075*_D158+
0.0160043602*_D159+
0.0106851797*_D160+
0.0130753046*_D161+
0.0183311404*_D162+
0.0120344182*_D163+
0.0112103224*_D164+
0.048792829*_D165+
0.0123449094*_D166+
0.0189030705*_D167+
0.0104465625*_D168+
0.0124046771*_D169+
0.042654468*_D170+
0.0179393198*_D171+
0.0101243039*_D172+
0.0145957045*_D173+
0.0165024269*_D174+
0.0200253608*_D175+
0.0157178685*_D176+
0.0140584731*_D177+
0.0129415656*_D178+
0.0389495843*_D179+
0.0141947969*_D180+
0.009975467*_D181+
0.0212264741*_D182+
0.018092832*_D183+
0.0100721633*_D184+
0.0116650013*_D185+
0.0424706203*_D186+
0.0092684756*_D187+
0.0229036058*_D188+
0.0111048778*_D189+
0.0597754336*_D190+
0.0134461168*_D191+
0.0315131275*_D192+
0.0184658535*_D193+
0.0098143876*_D194+
0.0156527949*_D195+
0.0136620305*_D196+
0.0130979565*_D197+
0.0094223779*_D198+
0.0194405929*_D199+
0.0319496425*_D200+
0.0432144017*_D201+
0.0373306683*_D202+
0.012917622*_D203+
0.0098325412*_D204+
0.0373019139*_D205+
0.0168578142*_D206+
0.0150866328*_D207+
0.0898674778*_D208+
0.0123429334*_D209+
0.0124492659*_D210+
0.0171700137*_D211+
0.0080259256*_D212+
0.0136945198*_D213+
0.0095040659*_D214+
0.0085624256*_D215+
0.0331017558*_D216+
0.0096651321*_D217+
0.0092677734*_D218+
0.0093691148*_D219+
0.0087802475*_D220+
0.016674281*_D221+
0.0099393711*_D222+
0.0174949612*_D223+
0.0147475608*_D224+
0.035917015*_D225+
0.007766291*_D226+
0.0265869601*_D227+
0.0205470343*_D228+
0.0423670677*_D229+
0.0119018653*_D230+
0.0171641186*_D231+
0.0256803662*_D232+
0.0290005983*_D233+
0.0210489237*_D234+
0.0138940136*_D235+
0.0095051645*_D236+
0.0210647513*_D237+
0.0207335577*_D238+
0.0097410929*_D239+
0.0198282205*_D240+
0.009912204*_D241+
0.0354665016*_D242+
0.0083490982*_D243+
0.009620826*_D244+
0.0092539413*_D245+
0.0344001425*_D246+
0.0244445424*_D247+
0.0102226732*_D248+
0.0290978442*_D249+
0.0147375984*_D250+
0.0258967279*_D251+
0.0113764336*_D252+
0.0116961895*_D253+
0.0100412471*_D254+
0.0160671891*_D255+
0.0152991603*_D256+
0.0105620121*_D257+
0.0420995965*_D258+
0.0198699806*_D259+
0.0543174918*_D260+
0.0098941652*_D261+
0.0110964802*_D262+
0.012056448*_D263+
0.016080939*_D264+
0.0099246434*_D265+
0.0138454138*_D266+
0.0119093183*_D267+
0.0129426713*_D268+
0.025342542*_D269+
0.0223310579*_D270+
0.0093956061*_D271+
0.0098825803*_D272+
0.0073170817*_D273+
0.0103074457*_D274+
0.0473813352*_D275+
0.012504519*_D276+
0.0361151783*_D277+
0.0138710043*_D278+
0.0336902838*_D279+
0.0092868429*_D280+
0.0160722635*_D281+
0.0238137741*_D282+
0.0558413349*_D283+
0.0137694572*_D284+
0.0236067044*_D285+
0.0321242393*_D286+
0.0136156599*_D287+
0.0097727616*_D288+
0.0142918789*_D289+
0.0082963978*_D290+
0.0227576961*_D291+
0.0100364318*_D292+
0.0192642247*_D293+
0.0177164108*_D294+
0.0223079145*_D295+
0.0294961006*_D296+
0.012422521*_D297+
0.019367965*_D298+
0.012396849*_D299+
0.0097500223*_D300+
0.0163262706*_D301+
0.0200442334*_D302+
0.0310413327*_D303+
0.0187818864*_D304+
0.0583285823*_D305+
0.0130564014*_D306+
0.0658718575*_D307+
0.0187640165*_D308+
0.0372599144*_D309+
0.0204246243*_D310+
0.0365551696*_D311+
0.0148266532*_D312+
0.0148718392*_D313+
0.0710727159*_D314+
0.0101417255*_D315+
0.0155376549*_D316+
0.0110639597*_D317+
0.0174504869*_D318+
0.0359634072*_D319+
0.0268460213*_D320+
0.0101333342*_D321+
0.0133755284*_D322+
0.0276010005*_D323+
0.0107363279*_D324+
0.0228799089*_D325+
0.0151448483*_D326+
0.0109538582*_D327+
0.0099144635*_D328+
0.0079984233*_D329+
0.0115729563*_D330+
0.0127686389*_D331+
0.1302250873*_D332+
0.0162988683*_D333+
0.015961743*_D334+
0.0405989828*_D335+
0.0299866714*_D336+
0.1172206487*_D337+
0.0459110522*_D338+
0.0152335698*_D339+
0.0164066118*_D340+
0.0099786881*_D341+
0.0408378654*_D342+
0.0100874281*_D343+
0.0085528503*_D344+
0.0096171288*_D345+
0.0168558716*_D346+
0.0119472356*_D347+
0.0123317667*_D348+
0.0160484554*_D349+
0.0144730055*_D350+
0.0317999359*_D351+
0.015215928*_D352+
0.0093669264*_D353+
0.0113186928*_D354+
0.0114520554*_D355+
0.043888511*_D356+
0.0148322987*_D357+
0.0098718931*_D358+
0.0133654608*_D359+
0.0106466673*_D360+
0.0221856366*_D361+
0.016696452*_D362+
0.0129293783*_D363+
0.0094523145*_D364+
0.0302147919*_D365+
0.0073227243*_D366+
0.0144056545*_D367+
0.0086995432*_D368+
0.0200445792*_D369+
0.0165737152*_D370+
0.011815311*_D371+
0.0077975856*_D372+
0.0107544881*_D373+
0.0129855399*_D374+
0.0279207646*_D375+
0.0236720281*_D376+
0.0119131988*_D377+
0.0127885705*_D378+
0.0118560293*_D379+
0.0082963459*_D380+
0.0084098983*_D381+
0.0287149048*_D382+
0.014211837*_D383+
0.0097745139*_D384+
0.0118419278*_D385+
0.0240541495*_D386+
0.0142851699*_D387+
0.008636118*_D388+
0.0164242665*_D389+
0.0593280124*_D390+
0.0085306214*_D391+
0.0145506853*_D392+
0.0181280526*_D393+
0.0589685839*_D394+
0.0221962383*_D395+
0.0125840196*_D396+
0.0172438296*_D397+
0.011570477*_D398+
0.0100730646*_D399+
0.0099109436*_D400+
0.0086682517*_D401+
0.0180505039*_D402+
0.0175424457*_D403+
0.0301817482*_D404+
0.032521674*_D405+
0.0354613286*_D406+
0.0182956565*_D407+
0.0085260344*_D408+
0.016091726*_D409+
0.0164068065*_D410+
0.0316114566*_D411+
0.014216617*_D412+
0.0091298973*_D413+
0.0456750194*_D414+
0.0272993345*_D415+
0.0217622557*_D416+
0.0232716605*_D417+
0.0181480665*_D418+
0.0082970499*_D419+
0.0542250948*_D420+
0.0262225242*_D421+
0.0157528659*_D422+
0.0345061165*_D423+
0.0092799807*_D424+
0.0136277184*_D425+
0.0163529293*_D426+
0.0147534097*_D427+
0.0134012434*_D428+
0.0403487475*_D429+
0.0160731711*_D430+
0.0708184964*_D431+
0.0372166626*_D432+
0.0130580055*_D433+
0.0179554801*_D434+
0.037014216*_D435+
0.0112264723*_D436+
0.0245282637*_D437+
0.0135199184*_D438+
0.0437979329*_D439+
0.0549677276*_D440+
0.100862327*_D441+
0.0226347961*_D442+
0.0104751269*_D443+
0.0313588324*_D444+
0.0243421899*_D445+
0.0279810682*_D446+
0.0187703398*_D447+
0.0145918776*_D448+
0.0166199235*_D449+
0.0353453954*_D450+
0.043780951*_D451+
0.0182076145*_D452+
0.0115639641*_D453+
0.0158312635*_D454+
0.009294159*_D455+
0.0159329651*_D456+
0.0157676621*_D457+
0.0187450063*_D458+
0.0112392115*_D459+
0.0232728573*_D460+
0.0265805749*_D461+
0.0180844178*_D462+
0.0152440061*_D463+
0.0154675472*_D464+
0.0124986981*_D465+
0.0131025251*_D466+
0.0118370727*_D467+
0.0186187662*_D468+
0.0085033268*_D469+
0.0209106039*_D470+
0.0255283181*_D471+
0.0226712806*_D472+
0.011778787*_D473+
0.012857483*_D474+
0.007424786*_D475+
0.0105001373*_D476+
0.0161260366*_D477+
0.0099943653*_D478+
0.0130169789*_D479+
0.0101267328*_D480+
0.0087636525*_D481+
0.0087639595*_D482+
0.0114790446*_D483+
0.0294794851*_D484+
0.0110958196*_D485+
0.0143088795*_D486+
0.007294287*_D487+
0.0127563029*_D488+
0.0148713915*_D489+
0.0186275319*_D490+
0.0245430299*_D491+
0.0203629451*_D492+
0.0214172653*_D493+
0.0172209844*_D494+
0.0167772911*_D495+
0.0120600854*_D496+
0.012884227*_D497+
0.0132254635*_D498+
0.0199080584*_D499+
0.0106674862*_D500+
0.03089519*_D501+
0.0324490503*_D502+
0.0143814424*_D503+
0.0105023929*_D504+
0.0198107866*_D505+
0.0332177132*_D506+
0.0094282527*_D507+
0.0201357329*_D508+
0.0243580976*_D509+
0.0157381101*_D510+
0.0097048172*_D511+
0.0100042302*_D512+
0.036383316*_D513+
0.0079482931*_D514+
0.0095275065*_D515+
0.0124791079*_D516+
0.0197417855*_D517+
0.050308266*_D518+
0.0694840118*_D519+
0.0080578617*_D520+
0.0299523185*_D521+
0.0252693295*_D522+
0.043911515*_D523+
0.0094374726*_D524+
0.0122192192*_D525+
0.0353128452*_D526+
0.023381786*_D527+
0.0095587788*_D528+
0.0434939728*_D529+
0.0195835226*_D530+
0.0142254188*_D531+
0.0192630297*_D532+
-0.023625539*_D533+
0.0134334671*_D534+
0.0092291471*_D535+
0.017846931*_D536+
0.0080158934*_D537+
0.0168214905*_D538+
0.0124162337*_D539+
0.0072035417*_D540+
0.0219172973*_D541+
0.0711617449*_D542+
0.0876965232*_D543+
0.0165158092*_D544+
0.0126462896*_D545+
0.0154448766*_D546+
0.0220482706*_D547+
0.0143271785*_D548+
0.0166414517*_D549+
0.0103075173*_D550+
0.0157260235*_D551+
0.0105687828*_D552+
0.0485151753*_D553+
0.0216633047*_D554+
0.0143864403*_D555+
0.01001255*_D556+
0.0145934714*_D557+
0.0452769189*_D558+
0.0162390699*_D559+
0.0124619096*_D560+
0.0080235331*_D561+
0.0255894099*_D562+
0.0089858483*_D563+
0.0167617698*_D564+
0.0157842232*_D565+
0.0351071517*_D566+
0.0458275084*_D567+
0.008359364*_D568+
0.0413473786*_D569+
0.0311720332*_D570+
0.0085080584*_D571+
0.0107375405*_D572+
0.0110490243*_D573+
0.0095260553*_D574+
0.012729521*_D575+
0.0181801658*_D576+
0.0137728052*_D577+
0.0207918044*_D578+
0.0099133188*_D579+
0.0211656802*_D580+
0.0140957607*_D581+
0.0144585359*_D582+
0.0135271564*_D583+
0.0136684659*_D584+
0.0105902708*_D585+
0.0175627869*_D586+
0.0085940437*_D587+
0.0173881896*_D588+
0.0142042945*_D589+
0.0170485875*_D590+
0.016571888*_D591+
0.0203787508*_D592+
0.0127654078*_D593+
0.0154824899*_D594+
0.0120352569*_D595+
0.0254155906*_D596+
0.0252945761*_D597+
0.0091469311*_D598+
0.0166633616*_D599+
0.0190282231*_D600+
0.020630656*_D601+
0.0160704733*_D602+
0.0137782374*_D603+
0.0406162964*_D604+
0.0076559576*_D605+
0.0106884708*_D606+
0.0272077985*_D607+
0.0210059083*_D608+
0.0151869586*_D609+
0.0238979934*_D610+
0.0168032966*_D611+
0.0201195773*_D612+
0.0146404995*_D613+
0.0380801193*_D614+
0.0140602519*_D615+
0.0143734134*_D616+
0.0128249306*_D617+
0.0143257186*_D618+
0.0223526813*_D619+
0.0120148737*_D620+
0.011143388*_D621+
0.0128654259*_D622+
0.0177578713*_D623+
0.0394847415*_D624+
0.0170910436*_D625+
0.0505348048*_D626+
0.0220134932*_D627+
0.0134712227*_D628+
0.0135093252*_D629+
0.0194389985*_D630+
0.013162945*_D631+
0.0506684284*_D632+
0.0179047872*_D633+
0.0157017678*_D634+
0.0197532138*_D635+
0.0392971989*_D636+
0.0097951062*_D637+
0.0247277708*_D638+
0.0125758688*_D639+
0.0075382473*_D640+
0.0088038074*_D641+
0.0086342952*_D642+
0.0171305573*_D643+
0.0167507134*_D644+
0.0174959151*_D645+
0.0326559543*_D646+
0.0182702982*_D647+
0.0094296713*_D648+
0.0729271864*_D649+
0.0138841235*_D650+
0.0355233229*_D651+
0.0247343102*_D652+
0.0179628817*_D653+
0.0142292765*_D654+
0.0295222165*_D655+
0.0214021187*_D656+
0.0164028657*_D657+
0.0124136967*_D658+
0.0081784984*_D659+
0.0173555901*_D660+
0.0081799146*_D661+
0.0440286757*_D662+
0.0133672747*_D663+
0.0220677729*_D664+
0.0216534351*_D665+
0.0079129042*_D666+
0.0080715816*_D667+
0.009918976*_D668+
0.0212501796*_D669+
0.0080894262*_D670+
0.0083240816*_D671+
0.0134728691*_D672+
0.0110037458*_D673+
0.0226199314*_D674+
0.0242704084*_D675+
0.0144293538*_D676+
0.01463045*_D677+
0.0552133213*_D678+
0.0150947693*_D679+
0.0184109724*_D680+
0.0176669491*_D681+
0.009026123*_D682+
0.0852035018*_D683+
0.0291828295*_D684+
0.0078680976*_D685+
0.0273436211*_D686+
0.024637649*_D687+
0.0089719879*_D688+
0.0118978725*_D689+
0.0152093862*_D690+
0.0173148155*_D691+
0.0112677703*_D692+
0.008080726*_D693+
0.0157826774*_D694+
0.0085168758*_D695+
0.0152950794*_D696+
0.0204002801*_D697+
0.0240718175*_D698+
0.0141803252*_D699+
0.0155766871*_D700+
0.0105386101*_D701+
0.0239051345*_D702+
0.0111101402*_D703+
0.008497316*_D704+
0.0254881662*_D705+
0.0100154896*_D706+
0.0165299573*_D707+
0.0119457533*_D708+
0.0403040385*_D709+
0.0173393142*_D710+
0.0920320861*_D711+
0.0328998251*_D712+
0.0411743028*_D713+
0.0200785914*_D714+
0.0103157377*_D715+
0.0104550847*_D716+
0.0285407706*_D717+
0.0139644524*_D718+
0.0092959653*_D719+
0.0198152632*_D720+
0.0154493514*_D721+
0.0158950898*_D722+
0.0101048271*_D723+
0.0574357314*_D724+
0.0216460194*_D725+
0.0084324239*_D726+
0.0143212556*_D727+
0.0089643204*_D728+
0.0114223127*_D729+
0.016436395*_D730+
0.0094967427*_D731+
0.0139242779*_D732+
0.016471372*_D733+
0.0089141296*_D734+
0.016396507*_D735+
0.0171419561*_D736+
0.0091148034*_D737+
0.0255231824*_D738+
0.0132406348*_D739+
0.0222055898*_D740+
0.0291043581*_D741+
0.0383982574*_D742+
0.0187232488*_D743+
0.0226465218*_D744+
0.0143259172*_D745+
0.0109077431*_D746+
0.0342208753*_D747+
0.0137781148*_D748+
0.0220009511*_D749+
0.0296518461*_D750+
0.0174603759*_D751+
0.0255604575*_D752+
0.0093891901*_D753+
0.0144852116*_D754+
0.021139303*_D755+
0.0084366076*_D756+
0.0229985849*_D757+
0.0116676365*_D758+
0.0270084625*_D759+
0.0146975803*_D760+
0.012385694*_D761+
0.0405723108*_D762+
0.0117410941*_D763+
0.0151510314*_D764+
0.0264196379*_D765+
0.0270177032*_D766+
0.0116926998*_D767+
0.0201662741*_D768+
0.0208354655*_D769+
0.0179904757*_D770+
0.0100781667*_D771+
0.0108238101*_D772+
0.0306019595*_D773+
0.0252021132*_D774+
0.0697850153*_D775+
0.0179827529*_D776+
0.0152982431*_D777+
0.0176270534*_D778+
-0.22451309*_D779+
0.0134349817*_D780+
0.0170178277*_D781+
0.0088520779*_D782+
0.0154514062*_D783+
0.0841615057*_D784+
0.0507591517*_D785+
0.0147539571*_D786+
0.0277872291*_D787+
0.0342940639*_D788+
0.0116514532*_D789+
0.0094934792*_D790+
0.0130401631*_D791+
0.0246547886*_D792+
0.0086581933*_D793+
0.0111005618*_D794+
0.0322210179*_D795+
0.0315286962*_D796+
0.0120578534*_D797+
0.0234838339*_D798+
0.0162266134*_D799+
0.012740286*_D800+
0.0084297208*_D801+
0.0132645032*_D802+
0.024662539*_D803+
0.0294308954*_D804+
0.0126071585*_D805+
0.0554641285*_D806+
0.0216216436*_D807+
0.0241042323*_D808+
0.0450164994*_D809+
0.0151372276*_D810+
0.0200305373*_D811+
0.0126207967*_D812+
0.0136113822*_D813+
0.0201605168*_D814+
0.0177329383*_D815+
0.0152215115*_D816+
0.0123195471*_D817+
0.0201636074*_D818+
0.0136625412*_D819+
0.0105004125*_D820+
0.0123428205*_D821+
0.0690123483*_D822+
0.0250485799*_D823+
0.0150089716*_D824+
0.0302470143*_D825+
0.0748467525*_D826+
0.017429567*_D827+
0.0371183979*_D828+
0.0453664842*_D829+
0.012247222*_D830+
0.0089585599*_D831+
0.0111704347*_D832+
0.0236010856*_D833+
0.0107281188*_D834+
0.0098532215*_D835+
0.0192801247*_D836+
0.0367383493*_D837+
0.0118219318*_D838+
0.0111167128*_D839+
0.014483055*_D840+
0.0139982058*_D841+
0.016874104*_D842+
0.0162189711*_D843+
0.0691880365*_D844+
0.0266074446*_D845+
0.0109333086*_D846+
0.0185452428*_D847+
0.0077166638*_D848+
0.0375376204*_D849+
0.0477043221*_D850+
0.0198519645*_D851+
0.0128703803*_D852+
0.0167740888*_D853+
0.0132918251*_D854+
0.0491766532*_D855+
0.0117015701*_D856+
0.0220922718*_D857+
0.0121775846*_D858+
0.0304436669*_D859+
0.0093698209*_D860+
0.0134669644*_D861+
0.0329128968*_D862+
0.010045161*_D863+
0.0106445498*_D864+
0.0105201173*_D865+
0.0094499814*_D866+
0.0111164813*_D867+
0.010367744*_D868+
0.0120760026*_D869+
0.0187154339*_D870+
0.0209950684*_D871+
0.0145390106*_D872+
0.0096358589*_D873+
0.0100760478*_D874+
0.0087133416*_D875+
0.0259418199*_D876+
0.017531748*_D877+
0.0117283984*_D878+
0.0080978392*_D879+
0.0191339275*_D880+
0.0803723347*_D881+
0.0307872325*_D882+
0.0262027468*_D883+
0.0270812096*_D884+
0.0535124936*_D885+
0.0114297163*_D886+
0.0185307586*_D887+
0.0178820068*_D888+
0.0195972203*_D889+
0.0169558678*_D890+
0.0275267546*_D891+
0.0103062472*_D892+
0.0239118879*_D893+
0.0201330717*_D894+
0.0091331869*_D895+
0.0086729267*_D896+
0.0213017097*_D897+
0.0118297779*_D898+
0.0215009767*_D899+
0.0081443384*_D900+
0.0148351947*_D901+
0.0142940371*_D902+
0.0090763323*_D903+
0.0099426257*_D904+
0.032349621*_D905+
0.0100082875*_D906+
0.0083356954*_D907+
0.0091645179*_D908+
0.0134925549*_D909+
-0.22451309*_D910+
0.0125257096*_D911+
0.0503931936*_D912+
0.0081605078*_D913+
0.0063900638*_D914+
0.014366173*_D915+
0.011481123*_D916+
0.0104881541*_D917+
0.0164049109*_D918+
0.0263358564*_D919+
0.0118433488*_D920+
0.0117366646*_D921+
0.0323364161*_D922+
0.0095563871*_D923+
0.0937070393*_D924+
0.0734274495*_D925+
0.0130546473*_D926+
0.0125028833*_D927+
0.0211378252*_D928+
0.0234141474*_D929+
0.0358434113*_D930+
0.0137856978*_D931+
0.0092778157*_D932+
0.0123243318*_D933+
0.0096285914*_D934+
0.0099047405*_D935+
0.0113233003*_D936+
0.0083935796*_D937+
0.0215930797*_D938+
0.0171905907*_D939+
0.0279229131*_D940+
0.0093778465*_D941+
0.0394348406*_D942+
0.0130229045*_D943+
0.0199350324*_D944+
0.0124505315*_D945+
0.0135598461*_D946+
0.0088266384*_D947+
0.0468655769*_D948+
0.0140363962*_D949+
0.015196056*_D950+
0.0100217126*_D951+
0.0788443675*_D952+
0.0395193717*_D953+
0.0199438239*_D954+
0.0080841075*_D955+
0.0186521673*_D956+
0.0346919262*_D957+
0.0173498426*_D958+
0.02301599*_D959+
0.0131575535*_D960+
0.0112424784*_D961+
0.0204443781*_D962+
0.0123914962*_D963+
0.0110557596*_D964+
0.010275211*_D965+
0.0268336722*_D966+
0.0115732996*_D967+
0.0290182243*_D968+
0.0108229781*_D969+
0.030911347*_D970+
0.0086110186*_D971+
0.0211729463*_D972+
0.0224763963*_D973+
0.02422187*_D974+
0.0140286603*_D975+
0.0143139603*_D976+
0.024692307*_D977+
0.0169427762*_D978+
0.0242627213*_D979+
0.0357561911*_D980+
0.0089833874*_D981+
0.0131748547*_D982+
0.010606998*_D983+
0.0177215183*_D984+
0.0095347478*_D985+
0.0111360078*_D986+
0.0540692275*_D987+
0.0101631976*_D988+
0.0193678363*_D989+
0.0171674381*_D990+
0.0179204231*_D991+
0.025369591*_D992+
0.043607752*_D993+
0.0098062861*_D994+
0.0122990609*_D995+
0.0182351213*_D996+
0.0136154499*_D997+
0.0193884423*_D998+
0.014471898*_D999+
0.0140486948*_D1000+
0.0230898493*_D1001+
0.0187345623*_D1002+
0.007970518*_D1003+
0.013351729*_D1004+
0.0104277658*_D1005+
0.010088768*_D1006+
0.0085231028*_D1007+
0.0301794347*_D1008+
0.0376412002*_D1009+
0.0545460286*_D1010+
0.0136159554*_D1011+
0.0102062156*_D1012+
0.0150682474*_D1013+
0.0147950422*_D1014+
0.0106988476*_D1015+
0.0417041359*_D1016+
0.0156952802*_D1017+
0.0094883863*_D1018+
0.0180901286*_D1019+
0.0142809232*_D1020+
0.0179253519*_D1021+
0.0127882293*_D1022+
0.0100704002*_D1023+
0.0189837048*_D1024+
0.0232261887*_D1025+
0.0204881269*_D1026+
0.0163364941*_D1027+
0.0161867185*_D1028+
-0.156479038*_D1029+
-0.313223996*_D1030+
0.0150321638*_D1031+
0.0352903915*_D1032+
0.0124247212*_D1033+
0.0256917797*_D1034+
0.0308928834*_D1035+
0.0159706158*_D1036+
0.0100317043*_D1037+
0.0257410527*_D1038+
0.0410775094*_D1039+
0.0172239723*_D1040+
0.0112248476*_D1041+
0.0094801336*_D1042+
0.0345539979*_D1043+
0.0118223595*_D1044+
0.033087712*_D1045+
0.0114320687*_D1046+
0.0122233953*_D1047+
0.0137821493*_D1048+
0.0091459226*_D1049+
0.0847378126*_D1050+
0.0141511059*_D1051+
0.0094503509*_D1052+
0.0258492316*_D1053+
0.015274373*_D1054+
0.0081512235*_D1055+
0.0130248288*_D1056+
0.010682407*_D1057+
0.0122413604*_D1058+
0.0463374119*_D1059+
0.0137274728*_D1060+
0.0215356487*_D1061+
0.0150959775*_D1062+
0.0109298734*_D1063+
0.0089572379*_D1064+
0.0209027448*_D1065+
0.032792478*_D1066+
0.0130371813*_D1067+
0.0210080531*_D1068+
0.0113865533*_D1069+
0.0354928151*_D1070+
0.0171649178*_D1071+
0.0202599384*_D1072+
0.0291389578*_D1073+
0.0140264597*_D1074+
0.0165997576*_D1075+
0.0110960206*_D1076+
0.0210362249*_D1077+
0.0186718595*_D1078+
0.0189264017*_D1079+
0.0167325748*_D1080+
0.0238805498*_D1081+
0.0097185405*_D1082+
0.0088663826*_D1083+
0.0536099835*_D1084+
0.0216106964*_D1085+
0.0625474169*_D1086+
0.0101629429*_D1087+
0.0194621609*_D1088+
0.0136253791*_D1089+
0.0200217147*_D1090+
0.0105063203*_D1091+
0.0085843107*_D1092+
0.0164360808*_D1093+
0.0180827152*_D1094+
0.0098310552*_D1095+
0.0129725826*_D1096+
0.0130059246*_D1097+
0.0135826815*_D1098+
0.0128662662*_D1099+
0.0118544729*_D1100+
0.0072341514*_D1101+
0.0128215671*_D1102+
0.0175073262*_D1103+
0.0101372763*_D1104+
0.021482086*_D1105+
0.0231958536*_D1106+
0.0077529079*_D1107+
0.0116323977*_D1108+
0.0273195203*_D1109+
0.0122160488*_D1110+
0.0163089481*_D1111+
0.0597978042*_D1112+
0.014951578*_D1113+
0.0149198027*_D1114+
0.0337479691*_D1115+
0.0205884934*_D1116+
0.038880318*_D1117+
0.0089347242*_D1118+
0.0101769183*_D1119+
0.0225477529*_D1120+
0.0170200939*_D1121+
0.0486623635*_D1122+
0.1028971081*_D1123+
0.0364405726*_D1124+
0.0213370831*_D1125+
0.0129618891*_D1126+
0.0163407426*_D1127+
0.0131162135*_D1128+
0.0596667124*_D1129+
0.044395139*_D1130+
0.1109432615*_D1131+
0.0519594598*_D1132+
0.0179574213*_D1133+
0.0153174008*_D1134+
0.0107996342*_D1135+
0.0099177966*_D1136+
0.0560491784*_D1137+
0.0236894342*_D1138+
0.0228184801*_D1139+
0.0133796052*_D1140+
0.0428423723*_D1141+
0.0132734112*_D1142+
0.0286792552*_D1143+
0.0186777601*_D1144+
0.0120174432*_D1145+
0.0279649498*_D1146+
0.0109403875*_D1147+
0.0104089303*_D1148+
0.0108964524*_D1149+
0.0237716562*_D1150+
0.0096108737*_D1151+
0.0126894362*_D1152+
0.0149175004*_D1153+
0.0104032692*_D1154+
0.0110780961*_D1155+
0.0152108236*_D1156+
0.0244816937*_D1157+
0.0130642232*_D1158+
0.015800304*_D1159+
0.0412611798*_D1160+
0.0210574674*_D1161+
0.0215590612*_D1162+
0.0152508649*_D1163+
0.0217168579*_D1164+
0.0152402613*_D1165+
0.0156280136*_D1166+
0.009556942*_D1167+
0.0810845909*_D1168+
0.0119111776*_D1169+
0.0124174276*_D1170+
0.0121970853*_D1171+
0.1317403184*_D1172+
0.0358908858*_D1173+
0.0092635951*_D1174+
0.0174853815*_D1175+
0.0303512769*_D1176+
0.0188377652*_D1177+
0.0729669568*_D1178+
0.0482494788*_D1179+
0.0122691989*_D1180+
0.0166483831*_D1181+
0.0164384073*_D1182+
0.0116624741*_D1183+
0.0159016496*_D1184+
0.0262104853*_D1185+
0.0235786578*_D1186+
0.0327259532*_D1187+
0.0102990474*_D1188+
0.0139518554*_D1189+
0.056731546*_D1190+
0.0129231016*_D1191+
0.017138667*_D1192+
0.0124467967*_D1193+
0.0107240214*_D1194+
0.0079313268*_D1195+
0.045333559*_D1196+
0.0222735681*_D1197+
0.0103196232*_D1198+
0.0200271259*_D1199+
0.0513671013*_D1200+
0.012054033*_D1201+
0.0235213884*_D1202+
0.0088231323*_D1203+
0.0091625028*_D1204;
/****************************************/
* Componente principal 3;
/****************************************/
;
length PC_3 8;
label PC_3 = "Componente principal 3";
PC_3 =
0.0029296804*_D1+
0.0059109488*_D2+
0.0082170138*_D3+
0.0126590445*_D4+
0.0043273708*_D5+
0.0042511977*_D6+
0.0047912107*_D7+
0.0064071333*_D8+
0.0049141987*_D9+
0.0073043722*_D10+
0.0040873664*_D11+
0.0030763506*_D12+
0.0084991803*_D13+
0.0056635209*_D14+
0.0067377987*_D15+
0.0131356782*_D16+
0.0166593185*_D17+
0.0045599836*_D18+
0.0024217658*_D19+
0.0035313183*_D20+
0.0013373127*_D21+
0.0069098526*_D22+
0.0023466681*_D23+
0.0017501188*_D24+
0.0065384753*_D25+
0.0030049588*_D26+
0.0040176748*_D27+
0.0043503783*_D28+
0.0063722904*_D29+
0.0030568011*_D30+
0.0050508338*_D31+
0.0045660239*_D32+
0.0034610087*_D33+
0.0049442829*_D34+
0.0116056318*_D35+
0.0056519038*_D36+
0.0031961025*_D37+
0.0058403747*_D38+
0.0028250088*_D39+
0.010580813*_D40+
0.0044421088*_D41+
0.0054769878*_D42+
0.002308236*_D43+
0.0093927665*_D44+
0.003715246*_D45+
0.0057591003*_D46+
0.0048979273*_D47+
0.0063206673*_D48+
0.0331269843*_D49+
0.016030889*_D50+
0.0032219287*_D51+
0.001960203*_D52+
0.0145679232*_D53+
0.0030392779*_D54+
0.0089302795*_D55+
0.0013270111*_D56+
-0.088796479*_D57+
0.0067683946*_D58+
0.0012637046*_D59+
-0.00188574*_D60+
-0.00912701*_D61+
0.0007313053*_D62+
0.0030476819*_D63+
0.0019325003*_D64+
0.0032403389*_D65+
0.0041940135*_D66+
0.0020169696*_D67+
0.00957644*_D68+
0.0058313087*_D69+
0.0034401413*_D70+
0.0046317359*_D71+
0.0084065735*_D72+
0.0016761179*_D73+
0.0048454473*_D74+
0.0039904809*_D75+
0.0061560444*_D76+
0.0112051749*_D77+
0.0055117799*_D78+
0.0058242001*_D79+
0.0054260211*_D80+
0.0052846757*_D81+
-0.000548948*_D82+
0.0051829128*_D83+
0.0050443331*_D84+
-0.023561881*_D85+
0.0021077072*_D86+
0.0094479044*_D87+
0.0050658554*_D88+
0.0123320118*_D89+
0.0074995046*_D90+
0.0060779566*_D91+
-0.305862044*_D92+
0.0055728916*_D93+
0.0076154955*_D94+
0.0082453365*_D95+
0.0059010372*_D96+
0.0113105659*_D97+
0.0112264679*_D98+
0.0041278981*_D99+
-0.000347984*_D100+
0.0045418815*_D101+
0.008223109*_D102+
-0.004944321*_D103+
0.0025623084*_D104+
0.0102128035*_D105+
0.0077479083*_D106+
0.0025996381*_D107+
0.003657542*_D108+
0.0043994961*_D109+
0.007834499*_D110+
0.0072223428*_D111+
-0.025091769*_D112+
0.0027436612*_D113+
0.0037436182*_D114+
0.0119509787*_D115+
0.0032249163*_D116+
0.0028123824*_D117+
0.0027132046*_D118+
0.0033108602*_D119+
0.0050584861*_D120+
0.0097421866*_D121+
0.0066733119*_D122+
0.0034194533*_D123+
0.0046925982*_D124+
0.0039339868*_D125+
0.0049055394*_D126+
0.0154594558*_D127+
0.0041874078*_D128+
0.0058435803*_D129+
0.0220152406*_D130+
0.0066074013*_D131+
0.0108545574*_D132+
0.0078156381*_D133+
0.0057010716*_D134+
0.0028745748*_D135+
0.0042631736*_D136+
0.0035271859*_D137+
0.0046772881*_D138+
0.0044887483*_D139+
0.0080920117*_D140+
0.002387157*_D141+
0.0034682673*_D142+
0.001955439*_D143+
0.004247463*_D144+
0.0065085159*_D145+
0.0037186311*_D146+
0.0039115567*_D147+
0.0070183521*_D148+
0.0131412347*_D149+
0.0054950841*_D150+
0.0012805525*_D151+
0.0131305574*_D152+
0.0047088787*_D153+
0.0067083574*_D154+
0.0034154792*_D155+
-0.010177279*_D156+
0.0047695197*_D157+
0.0079542092*_D158+
0.0061288726*_D159+
0.0027358157*_D160+
0.0038513158*_D161+
0.0062811563*_D162+
0.0021724541*_D163+
0.0027480582*_D164+
0.0096414256*_D165+
0.0045745973*_D166+
0.0050451141*_D167+
0.0026444125*_D168+
0.0041840279*_D169+
0.0141130486*_D170+
0.0060857316*_D171+
0.0013513177*_D172+
0.0047292346*_D173+
0.0037332717*_D174+
0.0061110148*_D175+
0.0066629496*_D176+
0.0038603271*_D177+
0.0059105407*_D178+
0.020769716*_D179+
0.00356628*_D180+
0.0025934459*_D181+
0.0066916986*_D182+
0.0022248894*_D183+
0.0004185852*_D184+
0.0012730302*_D185+
0.016046274*_D186+
0.0020442532*_D187+
0.0071114064*_D188+
0.0054751661*_D189+
0.0311694038*_D190+
0.0053518139*_D191+
0.0189721473*_D192+
0.0018372378*_D193+
0.0035154307*_D194+
0.0068191893*_D195+
0.0042183409*_D196+
0.005254715*_D197+
0.0012966489*_D198+
0.0059444515*_D199+
0.012051301*_D200+
0.0573334883*_D201+
0.0099064395*_D202+
0.0040546963*_D203+
0.0029891136*_D204+
0.0171860928*_D205+
0.0054881746*_D206+
0.0056734155*_D207+
-0.022940808*_D208+
0.003643876*_D209+
0.0046550531*_D210+
0.0042765442*_D211+
0.0025814765*_D212+
0.0073170896*_D213+
0.0030798982*_D214+
0.0024558869*_D215+
0.0118155021*_D216+
0.0032632406*_D217+
0.0030161266*_D218+
0.0030406256*_D219+
0.0013413856*_D220+
0.0046276474*_D221+
0.0038934245*_D222+
0.0088340675*_D223+
0.0039901675*_D224+
0.0116515515*_D225+
0.0020673734*_D226+
0.0095031571*_D227+
0.005576951*_D228+
0.015295779*_D229+
-0.000983699*_D230+
0.005102897*_D231+
0.0090427628*_D232+
0.009252441*_D233+
0.0065330723*_D234+
0.0034659895*_D235+
0.0028518457*_D236+
0.0053148438*_D237+
0.0029528314*_D238+
0.0021062338*_D239+
0.0056563014*_D240+
0.0002761162*_D241+
0.0179991637*_D242+
0.0012022865*_D243+
0.0017925779*_D244+
0.0014175589*_D245+
0.0127611824*_D246+
0.0131265353*_D247+
0.003324189*_D248+
-0.108690486*_D249+
0.0028835726*_D250+
0.0055238193*_D251+
0.0038087062*_D252+
0.004735061*_D253+
-0.008978654*_D254+
0.003262628*_D255+
0.0044632625*_D256+
0.0037870431*_D257+
0.0139021098*_D258+
0.0042948823*_D259+
0.0145388375*_D260+
0.0014247992*_D261+
0.0034450468*_D262+
0.0027862025*_D263+
0.0034256906*_D264+
0.0040295982*_D265+
0.002861269*_D266+
0.0043227479*_D267+
-0.000375077*_D268+
0.0149956143*_D269+
0.0096200888*_D270+
0.0021330504*_D271+
0.0032074813*_D272+
0.0016019799*_D273+
0.0035009776*_D274+
0.016535527*_D275+
0.0049967488*_D276+
0.0129992047*_D277+
0.0078935284*_D278+
0.0125903334*_D279+
0.0018638651*_D280+
0.0059820071*_D281+
0.0098373076*_D282+
0.0257329061*_D283+
0.0048749061*_D284+
0.0083960865*_D285+
0.010126945*_D286+
0.0016900364*_D287+
0.0040286453*_D288+
0.008211871*_D289+
0.0034135858*_D290+
0.0065898301*_D291+
0.0013775423*_D292+
0.0006808721*_D293+
0.0066793293*_D294+
0.0071493337*_D295+
-0.10607237*_D296+
-0.021762446*_D297+
0.0070900261*_D298+
0.0053841165*_D299+
0.0032586103*_D300+
0.0042067105*_D301+
0.0052044151*_D302+
0.0024970962*_D303+
0.0065289205*_D304+
0.0302014142*_D305+
0.0046062937*_D306+
0.0210947123*_D307+
0.0046672258*_D308+
0.006917482*_D309+
0.0082213355*_D310+
0.0120326584*_D311+
0.0057457946*_D312+
0.0008173358*_D313+
0.0194990192*_D314+
0.0015113611*_D315+
0.0072960194*_D316+
0.0026414467*_D317+
0.0056087043*_D318+
0.0201679616*_D319+
0.008914349*_D320+
0.0037266663*_D321+
0.0033659507*_D322+
0.0035846635*_D323+
0.0053553792*_D324+
0.0046218487*_D325+
0.0033994559*_D326+
0.003873828*_D327+
0.0020803342*_D328+
0.0021432256*_D329+
0.004913671*_D330+
0.0061019061*_D331+
-0.162950172*_D332+
0.0046280686*_D333+
0.0058984616*_D334+
0.0087814325*_D335+
0.0083026031*_D336+
0.0280331036*_D337+
0.015585322*_D338+
0.0059036702*_D339+
0.0105162916*_D340+
0.0023599172*_D341+
0.0116209773*_D342+
0.004121966*_D343+
0.001594428*_D344+
0.0044467537*_D345+
0.0083659052*_D346+
0.00382523*_D347+
0.0035287271*_D348+
0.0049112121*_D349+
0.0045225396*_D350+
0.0142689777*_D351+
0.0015217706*_D352+
0.0021232914*_D353+
0.0040214843*_D354+
0.0018574775*_D355+
0.0228702556*_D356+
0.0036618691*_D357+
0.0021607803*_D358+
0.0041034051*_D359+
0.0013703599*_D360+
0.0049297593*_D361+
0.0054768429*_D362+
0.0040861744*_D363+
0.0017137014*_D364+
0.0090820541*_D365+
0.002596067*_D366+
0.0036246176*_D367+
0.0031296686*_D368+
0.0117889295*_D369+
0.0044145433*_D370+
0.0045091005*_D371+
-0.004082889*_D372+
0.0027995448*_D373+
0.0030359862*_D374+
0.0066275097*_D375+
0.0099529013*_D376+
0.0036174362*_D377+
0.002868656*_D378+
0.0049345353*_D379+
0.0018774325*_D380+
0.0019074388*_D381+
0.0092481611*_D382+
0.0068392586*_D383+
0.0036363599*_D384+
0.001778644*_D385+
0.0074067586*_D386+
0.0049063265*_D387+
0.0024536174*_D388+
0.0068121753*_D389+
0.0262140565*_D390+
0.0022568284*_D391+
0.005624846*_D392+
0.005360945*_D393+
0.0184688779*_D394+
0.0085792679*_D395+
0.003081226*_D396+
0.0079437417*_D397+
0.0014751159*_D398+
0.0038476449*_D399+
0.0038678001*_D400+
0.0033952161*_D401+
0.0096045066*_D402+
0.007451798*_D403+
0.0045817894*_D404+
0.0179565922*_D405+
0.0077613632*_D406+
0.0064049319*_D407+
0.0023594075*_D408+
0.0038942676*_D409+
0.0073598219*_D410+
-0.124606143*_D411+
0.0075352689*_D412+
0.0029623088*_D413+
-0.269255114*_D414+
0.0070224303*_D415+
0.0044154381*_D416+
-0.042734971*_D417+
0.0064598423*_D418+
0.0018025758*_D419+
0.0177442334*_D420+
0.0072040476*_D421+
0.0047632749*_D422+
0.0160765364*_D423+
0.0022689085*_D424+
0.0021914071*_D425+
0.0052492336*_D426+
-0.007352983*_D427+
0.0036022606*_D428+
-0.213292213*_D429+
0.0043549229*_D430+
-0.019755554*_D431+
0.0119824614*_D432+
-0.005236681*_D433+
0.0053334405*_D434+
0.0095944898*_D435+
0.0033132725*_D436+
0.0097031541*_D437+
0.000106874*_D438+
0.0147405657*_D439+
0.0098561304*_D440+
-0.025166535*_D441+
0.0034067773*_D442+
0.0026220794*_D443+
0.0177164535*_D444+
0.0052133675*_D445+
0.0091009497*_D446+
0.003235763*_D447+
0.0057015133*_D448+
0.0087934588*_D449+
0.0118447475*_D450+
0.0134611415*_D451+
0.0060440291*_D452+
0.0038459274*_D453+
0.0052437471*_D454+
0.0031459981*_D455+
0.0061910188*_D456+
0.0034009698*_D457+
0.0089389853*_D458+
0.0056871849*_D459+
0.007001333*_D460+
0.0089303153*_D461+
0.0040830624*_D462+
0.0054527333*_D463+
0.0034491769*_D464+
0.0026609824*_D465+
-0.006223564*_D466+
0.0034986244*_D467+
0.003699804*_D468+
0.000542985*_D469+
0.0032877189*_D470+
0.0075718296*_D471+
0.0055580024*_D472+
0.0025779498*_D473+
0.00340593*_D474+
0.0015860776*_D475+
0.0055435806*_D476+
0.0048080083*_D477+
0.0035965137*_D478+
0.0032294869*_D479+
0.0022791765*_D480+
0.0028285648*_D481+
0.0033827057*_D482+
0.0039179029*_D483+
0.0085006278*_D484+
0.0030042985*_D485+
0.0073361022*_D486+
0.0001364066*_D487+
0.0019725751*_D488+
0.0046563748*_D489+
0.0053745221*_D490+
0.008174502*_D491+
0.0060103216*_D492+
0.0054642803*_D493+
0.0022861544*_D494+
0.0076767087*_D495+
0.0030792627*_D496+
0.0036727699*_D497+
0.0021103479*_D498+
0.0042640742*_D499+
0.0001113546*_D500+
0.0193285047*_D501+
0.0045386591*_D502+
0.004341303*_D503+
0.0035328282*_D504+
0.0035737264*_D505+
0.0152784206*_D506+
0.0032892718*_D507+
0.0097171452*_D508+
0.0118047277*_D509+
0.0047829299*_D510+
0.0026835452*_D511+
0.0035045127*_D512+
0.0122731192*_D513+
0.0018812252*_D514+
0.0025879413*_D515+
0.0040455246*_D516+
0.0039192495*_D517+
0.0160239264*_D518+
0.0206415722*_D519+
0.0026133947*_D520+
0.012635182*_D521+
0.0108180973*_D522+
0.012426705*_D523+
0.0018964825*_D524+
0.0035773913*_D525+
-0.00978692*_D526+
0.004758518*_D527+
0.0028029657*_D528+
0.0122043201*_D529+
0.0079019917*_D530+
0.0009534276*_D531+
0.0045898632*_D532+
-0.112119972*_D533+
0.0052725053*_D534+
0.0033957974*_D535+
0.0040098415*_D536+
0.0025009244*_D537+
0.0054499802*_D538+
0.0037611469*_D539+
0.001762298*_D540+
0.0052221799*_D541+
0.0225745875*_D542+
0.0276669281*_D543+
0.0043129747*_D544+
0.0059039279*_D545+
0.0042377833*_D546+
0.0086032018*_D547+
0.0043045663*_D548+
0.0048943682*_D549+
0.0021006695*_D550+
0.0047633567*_D551+
0.0016068685*_D552+
0.0138532973*_D553+
0.0059695969*_D554+
0.0035025516*_D555+
0.0038951381*_D556+
0.0037580871*_D557+
0.013913742*_D558+
0.0035102976*_D559+
0.0032858853*_D560+
0.0022264237*_D561+
0.0115197825*_D562+
0.0030260047*_D563+
0.0017636752*_D564+
0.0008443393*_D565+
0.0193976115*_D566+
0.0189880683*_D567+
0.0014751307*_D568+
0.0100961662*_D569+
0.0096567784*_D570+
0.002797957*_D571+
0.0048362631*_D572+
0.003033019*_D573+
0.0027565375*_D574+
0.0031171813*_D575+
0.0031422588*_D576+
0.0057133226*_D577+
0.0081011121*_D578+
0.0029028152*_D579+
0.0056904248*_D580+
-0.026932698*_D581+
0.0048707668*_D582+
0.0050970315*_D583+
0.0036871143*_D584+
0.0020829435*_D585+
0.0056618771*_D586+
0.0017742897*_D587+
0.0042198582*_D588+
0.0047060707*_D589+
0.0056702764*_D590+
0.0052729286*_D591+
0.0057805893*_D592+
0.0035857022*_D593+
0.0053027103*_D594+
0.0014890721*_D595+
0.0066229995*_D596+
0.0105179896*_D597+
0.0031168354*_D598+
-0.00342659*_D599+
0.0064248237*_D600+
0.0086857526*_D601+
0.0060063398*_D602+
0.0050878623*_D603+
0.0126965144*_D604+
0.0020642931*_D605+
7.1188706E-6*_D606+
0.0061736604*_D607+
0.0082492392*_D608+
0.0065550781*_D609+
0.0067625213*_D610+
0.006533407*_D611+
0.007687778*_D612+
0.0058792544*_D613+
0.0108845432*_D614+
0.0002117306*_D615+
0.0051281522*_D616+
0.0049547994*_D617+
0.0035662784*_D618+
0.0051342781*_D619+
0.004855716*_D620+
0.0028038541*_D621+
0.0025899386*_D622+
-0.001447171*_D623+
0.0155816493*_D624+
0.0095374914*_D625+
-0.103842101*_D626+
0.0079744346*_D627+
0.0014764844*_D628+
0.0037779986*_D629+
0.006769942*_D630+
0.003820179*_D631+
0.0284753224*_D632+
0.0074185343*_D633+
0.0087633595*_D634+
0.0034045482*_D635+
0.0130272063*_D636+
0.0029800299*_D637+
-0.013620477*_D638+
0.0062683629*_D639+
0.0017843269*_D640+
-0.000358923*_D641+
0.002408402*_D642+
0.0068536936*_D643+
-0.002426167*_D644+
0.0067503814*_D645+
-0.053378956*_D646+
0.005854826*_D647+
0.0029508403*_D648+
0.007997851*_D649+
0.0034487161*_D650+
0.004599363*_D651+
0.0041937584*_D652+
0.0034907543*_D653+
0.002753719*_D654+
0.0136710984*_D655+
0.0069016964*_D656+
0.0082663043*_D657+
0.0004370234*_D658+
0.002138198*_D659+
0.0049926767*_D660+
0.0024049947*_D661+
0.0142672786*_D662+
0.0041906596*_D663+
-0.003031601*_D664+
0.0118109193*_D665+
0.0018850349*_D666+
0.0018210238*_D667+
-0.002955467*_D668+
0.0067493175*_D669+
0.0022135062*_D670+
0.0014771548*_D671+
0.0042274619*_D672+
0.0035038307*_D673+
0.0083712505*_D674+
-0.001734148*_D675+
0.0066933028*_D676+
0.0047667448*_D677+
0.017205224*_D678+
0.0044687503*_D679+
0.0056205383*_D680+
0.0045224587*_D681+
0.0017678216*_D682+
0.0462543757*_D683+
0.0077230469*_D684+
-0.002299205*_D685+
0.0146132693*_D686+
0.0107050543*_D687+
0.0024624834*_D688+
0.0024814392*_D689+
0.0070836192*_D690+
0.0075903721*_D691+
0.0021409279*_D692+
0.0018144047*_D693+
-0.001320878*_D694+
0.0011799479*_D695+
0.0053879493*_D696+
0.0072722026*_D697+
0.0056196356*_D698+
0.0032771555*_D699+
0.0021596798*_D700+
0.0033852699*_D701+
0.0086931563*_D702+
0.0032306153*_D703+
0.0027484555*_D704+
0.0039190727*_D705+
0.0017606048*_D706+
0.0050778508*_D707+
0.0047159217*_D708+
0.0097322826*_D709+
0.0063600561*_D710+
-0.062740936*_D711+
0.0093762065*_D712+
0.0167748325*_D713+
0.0054445409*_D714+
0.0024827384*_D715+
0.0018469283*_D716+
0.0069457532*_D717+
0.0040694968*_D718+
0.002495713*_D719+
0.0066512276*_D720+
0.0049459705*_D721+
0.0046824831*_D722+
0.0054313994*_D723+
0.0146876393*_D724+
0.0085614164*_D725+
0.0023205745*_D726+
0.0042725832*_D727+
0.0023113462*_D728+
0.0030352965*_D729+
0.0050737246*_D730+
0.0030682625*_D731+
0.0039838319*_D732+
0.0019667079*_D733+
0.0015558874*_D734+
0.0063862794*_D735+
0.0094679746*_D736+
0.0034332509*_D737+
0.0097958695*_D738+
0.0070291094*_D739+
0.011929341*_D740+
0.0092669803*_D741+
0.0117907308*_D742+
0.0089475488*_D743+
0.0057868623*_D744+
0.0026087956*_D745+
0.0018482603*_D746+
0.0107788443*_D747+
0.0064637568*_D748+
0.0072011646*_D749+
0.0109577682*_D750+
0.0042132428*_D751+
0.0105849632*_D752+
0.0037306447*_D753+
0.0047781989*_D754+
0.0019867057*_D755+
0.0018989486*_D756+
0.004316214*_D757+
0.003692967*_D758+
0.0080213143*_D759+
0.0043185253*_D760+
0.006683033*_D761+
0.0132557778*_D762+
0.0030180917*_D763+
0.0023506433*_D764+
0.0121187136*_D765+
0.0023712853*_D766+
0.0057447187*_D767+
0.0061503789*_D768+
0.0055369132*_D769+
0.0071566428*_D770+
0.0032790727*_D771+
0.0034940743*_D772+
0.0083044464*_D773+
-0.002572034*_D774+
-0.044595344*_D775+
0.004344715*_D776+
0.005700382*_D777+
0.0014938409*_D778+
0.0100692007*_D779+
0.0029104545*_D780+
0.0051618444*_D781+
0.0012208749*_D782+
0.0050053349*_D783+
-0.022255297*_D784+
-0.007417355*_D785+
0.0075724471*_D786+
0.0172275939*_D787+
0.0114451688*_D788+
0.0027196417*_D789+
0.0033284722*_D790+
0.0033478078*_D791+
0.0091313469*_D792+
0.0031164861*_D793+
0.0019425104*_D794+
0.0106299862*_D795+
0.0157487904*_D796+
0.0039835454*_D797+
0.0053336938*_D798+
0.0039140284*_D799+
0.0005713857*_D800+
0.0028585001*_D801+
0.0083985489*_D802+
0.0094395895*_D803+
0.0135661869*_D804+
0.0035820439*_D805+
0.0129098079*_D806+
0.0075314235*_D807+
0.0096648434*_D808+
0.0150398114*_D809+
0.0034029429*_D810+
0.0074259418*_D811+
0.0050676036*_D812+
0.0044818843*_D813+
0.0081011456*_D814+
0.0060356102*_D815+
0.0039865597*_D816+
0.0044165889*_D817+
0.0067250027*_D818+
0.0037145594*_D819+
0.0021357698*_D820+
0.0035760847*_D821+
0.0277145839*_D822+
0.0103011511*_D823+
0.0048784052*_D824+
0.0098725865*_D825+
0.0338834286*_D826+
0.0043796503*_D827+
0.0128652595*_D828+
-0.309877401*_D829+
0.003360591*_D830+
0.0028152323*_D831+
0.00331832*_D832+
0.0081120573*_D833+
0.0050562723*_D834+
0.0028322216*_D835+
0.0055382888*_D836+
0.0123842877*_D837+
0.0009723273*_D838+
0.0035053779*_D839+
0.0047606005*_D840+
0.0052199515*_D841+
0.0022631364*_D842+
0.0050787409*_D843+
0.0171762261*_D844+
-0.076752804*_D845+
0.001031571*_D846+
0.0060615356*_D847+
0.0017545944*_D848+
0.0163847378*_D849+
0.0134047068*_D850+
0.0087722313*_D851+
0.0045756461*_D852+
0.0042073379*_D853+
0.0034325277*_D854+
0.0129987391*_D855+
-0.000401264*_D856+
0.006807589*_D857+
0.0038922672*_D858+
0.0093726031*_D859+
0.0028889621*_D860+
0.0031236974*_D861+
0.0097777414*_D862+
0.0022431885*_D863+
0.0031330756*_D864+
0.0028569311*_D865+
0.0036598294*_D866+
0.0024703297*_D867+
0.0033474465*_D868+
0.0080005366*_D869+
0.0078729629*_D870+
0.0046709475*_D871+
0.0072952036*_D872+
0.0034810425*_D873+
0.0028752355*_D874+
0.0021896444*_D875+
0.0060749651*_D876+
0.0072621207*_D877+
0.0034595831*_D878+
0.0028001754*_D879+
0.0061967723*_D880+
0.0137365109*_D881+
0.0085592411*_D882+
0.0093763666*_D883+
0.00952832*_D884+
0.0160716199*_D885+
0.0045408816*_D886+
0.0053684817*_D887+
0.0072889218*_D888+
0.0090985722*_D889+
0.004682128*_D890+
0.0083999015*_D891+
0.0012572353*_D892+
0.0075851586*_D893+
0.0081047095*_D894+
0.0031568038*_D895+
0.0019430977*_D896+
0.0072731699*_D897+
0.0056793489*_D898+
-0.004506571*_D899+
0.0022987137*_D900+
0.0042394012*_D901+
0.0028906081*_D902+
0.0018247855*_D903+
-0.001072099*_D904+
0.0128924174*_D905+
0.0026122859*_D906+
0.0005382181*_D907+
0.0029096358*_D908+
0.0064523621*_D909+
0.0100692007*_D910+
0.0029130947*_D911+
0.0240926269*_D912+
0.0014970292*_D913+
-0.000898466*_D914+
0.0048294618*_D915+
0.0040815947*_D916+
0.0053689929*_D917+
0.0070726443*_D918+
0.0075545131*_D919+
0.0047235736*_D920+
0.0029337557*_D921+
-0.0107339*_D922+
0.0038285884*_D923+
0.0165900553*_D924+
0.0105818955*_D925+
0.0039312021*_D926+
0.0028384344*_D927+
0.0050239237*_D928+
0.0104040161*_D929+
0.0173962044*_D930+
0.0030583056*_D931+
0.0022846982*_D932+
0.0039567928*_D933+
0.0035642636*_D934+
0.0026166432*_D935+
0.0033312981*_D936+
0.0021696357*_D937+
0.0017934388*_D938+
0.0069980541*_D939+
0.0066883204*_D940+
0.0028929298*_D941+
0.0110937426*_D942+
0.0035758228*_D943+
0.0036835294*_D944+
0.0044172344*_D945+
0.0063473767*_D946+
-0.006845082*_D947+
-0.194166641*_D948+
0.0041287777*_D949+
0.0064217113*_D950+
-0.001160316*_D951+
0.0368052156*_D952+
0.0097881046*_D953+
0.008297378*_D954+
0.0017023154*_D955+
0.0061643262*_D956+
-0.008958553*_D957+
0.0052523425*_D958+
0.0111608616*_D959+
0.0044583383*_D960+
0.0021637096*_D961+
0.0066169288*_D962+
0.0023476121*_D963+
0.0011905278*_D964+
0.0029294466*_D965+
0.0083722597*_D966+
-0.008300144*_D967+
0.008715046*_D968+
0.0031804488*_D969+
0.0103390197*_D970+
0.0023697549*_D971+
0.0082381583*_D972+
0.0076790686*_D973+
0.0098998689*_D974+
0.0045728154*_D975+
0.0017515236*_D976+
0.0077527585*_D977+
0.0045986757*_D978+
0.0130189887*_D979+
-0.009215653*_D980+
0.0017304184*_D981+
0.0031556621*_D982+
0.0043334366*_D983+
0.0049811201*_D984+
0.002121278*_D985+
0.0031502561*_D986+
0.0194758525*_D987+
0.0050485632*_D988+
0.0053165172*_D989+
0.0062332594*_D990+
0.0052256091*_D991+
0.0079926561*_D992+
0.0157544763*_D993+
0.0038258167*_D994+
-0.004685713*_D995+
0.0068296353*_D996+
0.0066487735*_D997+
0.0049062094*_D998+
0.0052300042*_D999+
0.0045056855*_D1000+
0.0099849495*_D1001+
0.0062087596*_D1002+
-0.000486017*_D1003+
-0.001741986*_D1004+
0.0015553447*_D1005+
0.0034258576*_D1006+
0.0027118672*_D1007+
0.0117721549*_D1008+
0.0129096846*_D1009+
0.0155541749*_D1010+
0.0040500963*_D1011+
0.005300581*_D1012+
0.0062909571*_D1013+
0.0048272424*_D1014+
0.0042580102*_D1015+
0.0120707831*_D1016+
0.0045140716*_D1017+
0.0016686196*_D1018+
0.0037649919*_D1019+
0.0054125108*_D1020+
0.0046100943*_D1021+
0.0063621764*_D1022+
0.00345388*_D1023+
0.0053108541*_D1024+
0.0053281397*_D1025+
0.0076189297*_D1026+
-0.032650859*_D1027+
0.0056818199*_D1028+
-0.002925208*_D1029+
0.0259458195*_D1030+
0.0042970843*_D1031+
0.0107622013*_D1032+
0.0033656701*_D1033+
0.0090804477*_D1034+
0.0122143607*_D1035+
0.0081271237*_D1036+
0.0020920204*_D1037+
0.0091204206*_D1038+
0.0182036774*_D1039+
0.0052382428*_D1040+
0.0022060323*_D1041+
0.0019000354*_D1042+
-0.009810382*_D1043+
0.0028259259*_D1044+
0.013139061*_D1045+
0.0056876566*_D1046+
0.0030076276*_D1047+
0.002238596*_D1048+
0.0029315562*_D1049+
-0.007259824*_D1050+
0.0063447954*_D1051+
0.00326084*_D1052+
0.0071773672*_D1053+
0.0052036043*_D1054+
0.0027149739*_D1055+
0.0033559958*_D1056+
0.0056028681*_D1057+
0.0034671037*_D1058+
0.015262254*_D1059+
0.0063853904*_D1060+
0.0083352171*_D1061+
0.0043604747*_D1062+
0.0050040129*_D1063+
0.0031553215*_D1064+
0.0063449728*_D1065+
0.0167767195*_D1066+
0.0032891459*_D1067+
0.0068697894*_D1068+
0.0030817921*_D1069+
0.0098120844*_D1070+
0.0050496589*_D1071+
0.0098583483*_D1072+
0.007623233*_D1073+
0.005982344*_D1074+
0.0052877245*_D1075+
0.0016127222*_D1076+
0.0074098915*_D1077+
0.0037367496*_D1078+
0.0067423532*_D1079+
0.0065202019*_D1080+
0.0062516553*_D1081+
0.0047707075*_D1082+
0.002106729*_D1083+
0.0143834442*_D1084+
0.0063569669*_D1085+
0.016814029*_D1086+
0.0037097302*_D1087+
0.0089930742*_D1088+
-0.000062063*_D1089+
0.0053959368*_D1090+
0.0047492208*_D1091+
0.0023816104*_D1092+
0.0073545757*_D1093+
0.0084011706*_D1094+
0.0024235738*_D1095+
0.0032156784*_D1096+
0.0015089184*_D1097+
0.0034883212*_D1098+
0.0035715698*_D1099+
0.0044342967*_D1100+
0.0013007192*_D1101+
0.0049653068*_D1102+
0.0070629792*_D1103+
0.0026167997*_D1104+
0.0026611449*_D1105+
0.0033158602*_D1106+
0.001429536*_D1107+
0.0039929797*_D1108+
0.0080856045*_D1109+
0.0041794978*_D1110+
0.0054458507*_D1111+
0.0189215277*_D1112+
-0.003846142*_D1113+
0.001282609*_D1114+
-0.001713434*_D1115+
0.0067932005*_D1116+
0.0109075304*_D1117+
0.0029231109*_D1118+
0.0050511318*_D1119+
0.006178023*_D1120+
0.0049692543*_D1121+
-0.00368579*_D1122+
0.0301943264*_D1123+
0.0157645202*_D1124+
0.0079112972*_D1125+
0.0056821099*_D1126+
0.0034202838*_D1127+
0.0044856232*_D1128+
0.0105190531*_D1129+
0.0181224802*_D1130+
-0.650856698*_D1131+
-0.1354349*_D1132+
0.0098069464*_D1133+
0.0049133526*_D1134+
0.0043577388*_D1135+
0.0021274804*_D1136+
0.0242895925*_D1137+
0.0089589204*_D1138+
0.008496531*_D1139+
0.0010491776*_D1140+
0.0153445199*_D1141+
0.0037554459*_D1142+
0.0152685285*_D1143+
0.0059016082*_D1144+
0.0040587217*_D1145+
0.008095382*_D1146+
-0.000018575*_D1147+
0.0042707412*_D1148+
0.0023045246*_D1149+
0.0056347469*_D1150+
0.00075495*_D1151+
0.0055715622*_D1152+
0.0045577955*_D1153+
0.0019380889*_D1154+
0.0003161379*_D1155+
-0.024337757*_D1156+
0.0069937902*_D1157+
0.0044283418*_D1158+
0.0045620692*_D1159+
0.0151487453*_D1160+
0.0050943585*_D1161+
-0.000176607*_D1162+
0.0044716161*_D1163+
0.0077636471*_D1164+
0.0031242754*_D1165+
0.0051353099*_D1166+
0.0032146083*_D1167+
0.0513374359*_D1168+
0.0069545205*_D1169+
0.0026735495*_D1170+
0.0069901124*_D1171+
0.1111236697*_D1172+
0.0115201211*_D1173+
0.0004792236*_D1174+
0.0036996924*_D1175+
0.0089975344*_D1176+
-0.005887763*_D1177+
0.0233044104*_D1178+
0.0143685913*_D1179+
0.0026313931*_D1180+
0.0036823215*_D1181+
-0.004500984*_D1182+
0.0049347652*_D1183+
0.0063257211*_D1184+
0.0092972103*_D1185+
0.0068508218*_D1186+
0.0192904481*_D1187+
0.0054742241*_D1188+
0.0077244153*_D1189+
0.0300685129*_D1190+
0.0069587228*_D1191+
0.0083254969*_D1192+
0.0073173965*_D1193+
0.0023781977*_D1194+
0.0022188498*_D1195+
0.0107757213*_D1196+
0.0058087982*_D1197+
0.0020327083*_D1198+
0.0060603207*_D1199+
-0.038585927*_D1200+
0.0038742995*_D1201+
0.0075205453*_D1202+
0.0023218159*_D1203+
-0.007054213*_D1204;
/****************************************/
* Componente principal 4;
/****************************************/
;
length PC_4 8;
label PC_4 = "Componente principal 4";
PC_4 =
0.0014441807*_D1+
-0.00902212*_D2+
-0.005930173*_D3+
-0.013498111*_D4+
-0.002371928*_D5+
0.0033832553*_D6+
0.0027472009*_D7+
-0.001750642*_D8+
0.0015245081*_D9+
0.0070583445*_D10+
-0.001048296*_D11+
0.000031696*_D12+
-0.008138645*_D13+
-0.007259075*_D14+
-0.00612526*_D15+
-0.0210623*_D16+
-0.020294363*_D17+
0.0056563726*_D18+
0.0040932581*_D19+
0.0071007783*_D20+
0.0123120465*_D21+
0.0092221859*_D22+
0.0048714533*_D23+
0.0038186279*_D24+
-0.009666335*_D25+
0.003694844*_D26+
0.0033642507*_D27+
0.0003933041*_D28+
0.0038751103*_D29+
0.0079611476*_D30+
-0.001883158*_D31+
0.000067273*_D32+
0.0014799489*_D33+
-0.002631713*_D34+
0.0033206072*_D35+
-0.008312805*_D36+
-0.001767433*_D37+
-0.004913873*_D38+
-0.002300915*_D39+
0.0000199392*_D40+
-0.001078709*_D41+
0.0038730427*_D42+
0.0155844374*_D43+
-0.016319021*_D44+
0.0031442195*_D45+
-0.002611095*_D46+
0.0016619966*_D47+
-0.000195582*_D48+
-0.053916631*_D49+
-0.009643828*_D50+
0.0020268905*_D51+
0.0000203506*_D52+
0.0121879334*_D53+
-0.003142032*_D54+
0.0002344395*_D55+
0.0075340272*_D56+
-0.01206843*_D57+
-0.006391298*_D58+
0.0042455613*_D59+
-0.000133399*_D60+
-0.000993588*_D61+
0.000700014*_D62+
0.0004217651*_D63+
0.0027019556*_D64+
0.0029361195*_D65+
-0.001184024*_D66+
0.0024027412*_D67+
-0.009603459*_D68+
-0.003060699*_D69+
-0.001759615*_D70+
0.0017832885*_D71+
-0.015804164*_D72+
0.0109114706*_D73+
0.0125434339*_D74+
-0.000661394*_D75+
-0.00845842*_D76+
-0.006195443*_D77+
-0.004925407*_D78+
-0.005934456*_D79+
-0.000564268*_D80+
0.0018322755*_D81+
0.000116511*_D82+
-0.004890048*_D83+
-0.002730875*_D84+
0.3820510823*_D85+
0.005525574*_D86+
0.0009593515*_D87+
0.0008374678*_D88+
0.0012730702*_D89+
-0.009453486*_D90+
-0.004404076*_D91+
-0.051972157*_D92+
0.0007358706*_D93+
0.0049218259*_D94+
0.0019825731*_D95+
0.0053485819*_D96+
-0.016236747*_D97+
-0.021787877*_D98+
-0.002447314*_D99+
0.0415028442*_D100+
0.0038753553*_D101+
-0.004700031*_D102+
0.0071573995*_D103+
0.0022861798*_D104+
0.0030497377*_D105+
-0.004997986*_D106+
0.003049996*_D107+
-0.001738524*_D108+
-0.005347057*_D109+
-0.006752623*_D110+
-0.001204626*_D111+
0.018198565*_D112+
0.0060313383*_D113+
-0.00139776*_D114+
-0.009582795*_D115+
0.0003027088*_D116+
-0.000094107*_D117+
0.0081181665*_D118+
-0.002377548*_D119+
-0.006313004*_D120+
-0.011059362*_D121+
-0.005789229*_D122+
-0.00078831*_D123+
-0.00110985*_D124+
0.0016291944*_D125+
-0.000746965*_D126+
-0.026774412*_D127+
-0.001590197*_D128+
0.0046027131*_D129+
-0.006779393*_D130+
-0.00335455*_D131+
0.0041558219*_D132+
-0.000944515*_D133+
0.0141833284*_D134+
0.0179910907*_D135+
-0.003986515*_D136+
-0.001564767*_D137+
-0.005656048*_D138+
0.0000946137*_D139+
-0.007300248*_D140+
0.0090162834*_D141+
0.0047978985*_D142+
0.0017392495*_D143+
0.0019950492*_D144+
0.0110900729*_D145+
-0.00338352*_D146+
0.0041949052*_D147+
-0.003957228*_D148+
-0.005170989*_D149+
-0.006599292*_D150+
0.002093743*_D151+
-0.013473957*_D152+
-0.001359297*_D153+
-0.011186907*_D154+
0.000571685*_D155+
0.1487111809*_D156+
-0.002582298*_D157+
-0.003925936*_D158+
-0.005210512*_D159+
0.0054901868*_D160+
0.000178903*_D161+
-0.0035921*_D162+
0.0022551928*_D163+
0.0051040811*_D164+
-0.007984557*_D165+
0.0016920303*_D166+
0.0017664471*_D167+
-0.000724635*_D168+
-0.002488596*_D169+
-0.004266068*_D170+
-0.002720897*_D171+
0.0103297566*_D172+
0.0039436824*_D173+
0.0037707638*_D174+
0.0042321922*_D175+
-0.00883069*_D176+
0.0024214681*_D177+
-0.002407969*_D178+
-0.032339442*_D179+
0.0088628843*_D180+
0.0051385725*_D181+
0.0018480477*_D182+
-0.00229335*_D183+
0.0036291113*_D184+
0.0020214487*_D185+
-0.032546843*_D186+
0.0040204226*_D187+
-0.000571318*_D188+
-0.006930517*_D189+
-0.046035396*_D190+
-0.004719547*_D191+
-0.030653291*_D192+
-0.001640506*_D193+
0.0008417975*_D194+
-0.011902198*_D195+
0.0039846863*_D196+
-0.004603751*_D197+
0.0053545494*_D198+
0.0070912064*_D199+
-0.004744387*_D200+
-0.104614552*_D201+
-0.006003878*_D202+
0.0014714839*_D203+
-0.004403012*_D204+
-0.026412311*_D205+
0.001265894*_D206+
-0.002716521*_D207+
0.0647337054*_D208+
0.0049885702*_D209+
0.0001207208*_D210+
0.0057964629*_D211+
-0.001274352*_D212+
-0.012747306*_D213+
-0.001623695*_D214+
0.0000891613*_D215+
-0.007417119*_D216+
-0.001669488*_D217+
-0.000117935*_D218+
-0.000172409*_D219+
0.0014892422*_D220+
-0.001685921*_D221+
-0.002884887*_D222+
-0.011954412*_D223+
-0.000334475*_D224+
0.0003553326*_D225+
0.0008914112*_D226+
-0.015125278*_D227+
0.0014126256*_D228+
-0.010199303*_D229+
0.0224797308*_D230+
-0.004601894*_D231+
-0.010669676*_D232+
-0.001045858*_D233+
0.0027554856*_D234+
0.0066520996*_D235+
0.0006052051*_D236+
0.0056436409*_D237+
0.0038598953*_D238+
0.0023141222*_D239+
0.0022369524*_D240+
0.0006839157*_D241+
-0.028502427*_D242+
0.005432795*_D243+
0.008790675*_D244+
0.0122420814*_D245+
-0.009180389*_D246+
-0.026623346*_D247+
-0.00488849*_D248+
-0.005066025*_D249+
0.0149165956*_D250+
0.001191739*_D251+
0.0012793128*_D252+
-0.002764817*_D253+
0.0117973848*_D254+
0.0130712013*_D255+
0.0052914614*_D256+
0.0029712515*_D257+
-0.016141742*_D258+
-0.005414788*_D259+
0.005173479*_D260+
0.0010270566*_D261+
0.0023126175*_D262+
-0.001119378*_D263+
0.0018563529*_D264+
-0.005912297*_D265+
0.0001963301*_D266+
-0.000163266*_D267+
-0.00374471*_D268+
-0.025476055*_D269+
-0.010391959*_D270+
0.0042577575*_D271+
0.0003985093*_D272+
0.0028522387*_D273+
-0.005989076*_D274+
0.0008584319*_D275+
-0.002685853*_D276+
-0.007793195*_D277+
-0.01293838*_D278+
-0.009368708*_D279+
-0.001610887*_D280+
-0.001908953*_D281+
-0.003469034*_D282+
-0.004083226*_D283+
-0.00399622*_D284+
-0.003111044*_D285+
-0.00627176*_D286+
0.0195846962*_D287+
-0.002664089*_D288+
-0.012374707*_D289+
-0.003983489*_D290+
0.006846622*_D291+
0.0007357356*_D292+
0.0343588443*_D293+
-0.001815942*_D294+
-0.005242765*_D295+
-0.005793079*_D296+
-0.004674187*_D297+
-0.003962461*_D298+
-0.008696272*_D299+
0.000373853*_D300+
0.0036673005*_D301+
-0.000188484*_D302+
0.0430188941*_D303+
-0.006694425*_D304+
-0.050256599*_D305+
-0.000898439*_D306+
-0.013405766*_D307+
-0.001630406*_D308+
0.03687509*_D309+
-0.009302241*_D310+
0.0000490647*_D311+
-0.007079688*_D312+
0.0300606272*_D313+
0.0156607978*_D314+
0.0139600104*_D315+
-0.004313564*_D316+
0.0037485017*_D317+
-0.005415397*_D318+
-0.029271143*_D319+
-0.005511716*_D320+
-0.004104077*_D321+
0.0070758415*_D322+
0.0318989957*_D323+
-0.007766209*_D324+
0.0231248794*_D325+
-0.003175762*_D326+
-0.000417005*_D327+
0.001029738*_D328+
0.0042934804*_D329+
-0.006138462*_D330+
-0.007569649*_D331+
0.1843357818*_D332+
0.0010211155*_D333+
0.0009406537*_D334+
0.0290449539*_D335+
0.0018323292*_D336+
-0.007045573*_D337+
-0.017697255*_D338+
-0.000353885*_D339+
-0.01957063*_D340+
0.0055078664*_D341+
-0.000499413*_D342+
-0.002004336*_D343+
0.0017177308*_D344+
-0.00697988*_D345+
-0.011534958*_D346+
-0.002326229*_D347+
0.0001785514*_D348+
-0.004106841*_D349+
0.0011926339*_D350+
-0.017488586*_D351+
-0.003362422*_D352+
0.0054009326*_D353+
-0.00383914*_D354+
0.0032162085*_D355+
-0.029267478*_D356+
0.0067264993*_D357+
-0.003217571*_D358+
-0.005492417*_D359+
0.015251283*_D360+
-0.002546799*_D361+
0.0035396226*_D362+
-0.002320849*_D363+
0.0087192789*_D364+
0.0007492796*_D365+
0.0003135239*_D366+
0.0056941801*_D367+
0.0008940133*_D368+
-0.017333149*_D369+
-0.00312722*_D370+
-0.005712819*_D371+
-0.000472303*_D372+
-0.000394692*_D373+
0.0028522727*_D374+
0.0106793975*_D375+
-0.003932511*_D376+
0.0014697742*_D377+
0.0035909958*_D378+
-0.004283882*_D379+
0.0023895675*_D380+
0.0018649643*_D381+
-0.015215709*_D382+
-0.011154805*_D383+
-0.00149044*_D384+
-0.003783963*_D385+
0.0039518659*_D386+
-0.000736365*_D387+
0.0010812305*_D388+
-0.005501652*_D389+
-0.047556653*_D390+
0.0008019864*_D391+
-0.002037581*_D392+
-0.001040289*_D393+
-0.004973354*_D394+
-0.008480703*_D395+
0.0023562893*_D396+
-0.00618674*_D397+
-0.000758188*_D398+
-0.003140069*_D399+
-0.001252834*_D400+
-0.000729251*_D401+
-0.015537599*_D402+
-0.00815212*_D403+
0.0026619365*_D404+
-0.028833743*_D405+
0.0176351093*_D406+
-0.003248574*_D407+
0.0008376681*_D408+
0.0036576424*_D409+
-0.011749995*_D410+
-0.005611026*_D411+
-0.010900799*_D412+
-0.006023845*_D413+
-0.046979621*_D414+
0.0021840894*_D415+
0.0050652674*_D416+
-0.00572396*_D417+
-0.002014268*_D418+
0.0034323872*_D419+
-0.012862439*_D420+
0.0067410228*_D421+
-0.001007873*_D422+
-0.022295002*_D423+
0.0027789628*_D424+
0.0108336225*_D425+
-0.005788121*_D426+
0.0003572663*_D427+
-0.000196645*_D428+
-0.037469988*_D429+
0.0034605873*_D430+
0.2928337738*_D431+
0.0002512059*_D432+
-0.000466012*_D433+
0.0040394826*_D434+
-0.00126862*_D435+
-0.004627527*_D436+
-0.011174632*_D437+
0.0199518682*_D438+
-0.000372208*_D439+
0.0119597472*_D440+
0.3997384234*_D441+
0.0028102607*_D442+
0.0007170918*_D443+
-0.032571112*_D444+
0.0096189308*_D445+
-0.006023267*_D446+
0.0015614545*_D447+
-0.000667778*_D448+
-0.011083464*_D449+
-0.003783*_D450+
-0.004817898*_D451+
-0.000907938*_D452+
0.0018340862*_D453+
-0.005282133*_D454+
0.0028751233*_D455+
0.0032379465*_D456+
0.0036677163*_D457+
-0.012240024*_D458+
-0.006478311*_D459+
0.0005814069*_D460+
0.0033552131*_D461+
0.0107617942*_D462+
-0.007859727*_D463+
0.0033775426*_D464+
0.0041314083*_D465+
0.0008016915*_D466+
0.002874865*_D467+
0.0059909198*_D468+
0.0139760185*_D469+
0.0206442789*_D470+
0.0058625788*_D471+
0.0105840303*_D472+
0.0083573789*_D473+
0.0045813687*_D474+
0.0030226916*_D475+
-0.007641857*_D476+
-0.000635894*_D477+
-0.001915718*_D478+
-0.004172061*_D479+
0.0083630104*_D480+
0.0017022076*_D481+
-0.002373138*_D482+
0.0016730611*_D483+
0.0082181869*_D484+
-0.002293292*_D485+
-0.01178538*_D486+
0.0005744584*_D487+
0.0055729252*_D488+
0.0005450246*_D489+
0.0038074878*_D490+
0.0000622536*_D491+
-0.003790239*_D492+
0.0056517828*_D493+
0.0208247098*_D494+
-0.009320185*_D495+
0.0049058573*_D496+
0.0009796*_D497+
0.0111418689*_D498+
0.0087197454*_D499+
-0.003768013*_D500+
-0.04358381*_D501+
-0.002103215*_D502+
0.0023721964*_D503+
0.0033370245*_D504+
0.0055613417*_D505+
-0.016941281*_D506+
0.0008822687*_D507+
-0.009352786*_D508+
-0.019142326*_D509+
-0.000844136*_D510+
0.0008486068*_D511+
0.0000828491*_D512+
-0.007537697*_D513+
0.0047770294*_D514+
0.0032555754*_D515+
0.0003107076*_D516+
0.0232126853*_D517+
-0.01033621*_D518+
0.0012141612*_D519+
0.0050067091*_D520+
-0.013862753*_D521+
-0.013305459*_D522+
-0.009536933*_D523+
-0.002591285*_D524+
-0.002338913*_D525+
0.1468461386*_D526+
-0.000147953*_D527+
0.0030423233*_D528+
0.0020650501*_D529+
-0.009496791*_D530+
-0.003107536*_D531+
0.0052414666*_D532+
-0.070365951*_D533+
-0.002499197*_D534+
2.0873663E-6*_D535+
0.0103189906*_D536+
0.0002417803*_D537+
0.001490678*_D538+
0.003156332*_D539+
0.0003673708*_D540+
0.0113965156*_D541+
0.0143913878*_D542+
0.0201909276*_D543+
0.0041845666*_D544+
-0.007868865*_D545+
-0.000662182*_D546+
0.0034600119*_D547+
0.0034141528*_D548+
-0.003707704*_D549+
0.0027192131*_D550+
0.0035262098*_D551+
0.0051139286*_D552+
0.012952142*_D553+
0.0038232698*_D554+
0.0089463565*_D555+
0.0015837117*_D556+
-0.008988019*_D557+
0.0056584076*_D558+
0.0005520382*_D559+
-0.003697454*_D560+
0.002245432*_D561+
-0.018419625*_D562+
0.0026243827*_D563+
0.0126185591*_D564+
0.017357233*_D565+
-0.03000379*_D566+
-0.015718214*_D567+
0.0126956432*_D568+
0.0130645441*_D569+
0.0065008209*_D570+
0.0011335996*_D571+
-0.002179806*_D572+
-0.007208178*_D573+
0.0027549054*_D574+
0.0024444105*_D575+
-0.000585723*_D576+
-0.006565456*_D577+
-0.007273176*_D578+
0.0015284223*_D579+
0.0053287458*_D580+
-0.00627863*_D581+
-0.000952315*_D582+
-0.004112551*_D583+
-0.000640828*_D584+
0.0085248907*_D585+
0.0006417261*_D586+
0.0013250821*_D587+
0.006007684*_D588+
0.0007078903*_D589+
0.0040332737*_D590+
0.0037884057*_D591+
0.0034378639*_D592+
0.0059474242*_D593+
-0.001661775*_D594+
0.0086702793*_D595+
0.0034150677*_D596+
-0.009833031*_D597+
0.000731343*_D598+
0.0034783706*_D599+
-0.000710863*_D600+
-0.006284261*_D601+
-0.003811103*_D602+
-0.008578481*_D603+
-0.035214074*_D604+
0.0007193012*_D605+
0.0166002167*_D606+
0.0110376924*_D607+
0.0033242902*_D608+
-0.007454339*_D609+
0.0022593062*_D610+
-0.006985449*_D611+
-0.003214374*_D612+
-0.010628135*_D613+
0.0103930716*_D614+
-0.00011554*_D615+
-0.00150715*_D616+
-0.005517656*_D617+
0.0075372966*_D618+
0.0054526302*_D619+
-0.003314397*_D620+
0.0010918021*_D621+
0.0078517204*_D622+
0.0529389284*_D623+
-0.016910085*_D624+
-0.019766733*_D625+
-0.055209229*_D626+
-0.008869502*_D627+
0.0182652287*_D628+
0.0018371969*_D629+
-0.000820557*_D630+
-0.002630603*_D631+
-0.042100976*_D632+
-0.009356153*_D633+
-0.011506699*_D634+
-0.006183539*_D635+
0.0011451508*_D636+
-0.000727221*_D637+
-0.004570006*_D638+
-0.010745717*_D639+
0.0032311015*_D640+
0.0010188321*_D641+
0.0000635773*_D642+
-0.004642445*_D643+
0.001996198*_D644+
-0.000600966*_D645+
-0.003888613*_D646+
-0.000519454*_D647+
0.0001993969*_D648+
0.0928288073*_D649+
0.0011104511*_D650+
0.0435913489*_D651+
0.0214446162*_D652+
0.0048428375*_D653+
0.0036705742*_D654+
-0.014870941*_D655+
0.001578531*_D656+
-0.015523392*_D657+
-0.006457079*_D658+
0.000715686*_D659+
0.0019844966*_D660+
0.0020424439*_D661+
-0.009092692*_D662+
-0.002931045*_D663+
0.0769145408*_D664+
-0.037606596*_D665+
0.0013034269*_D666+
0.0011764644*_D667+
0.0027247055*_D668+
0.0005207931*_D669+
0.0045587452*_D670+
0.0011094805*_D671+
-0.002209509*_D672+
0.0015818894*_D673+
-0.01033535*_D674+
-0.004579253*_D675+
-0.008847488*_D676+
-0.001891458*_D677+
-0.005422978*_D678+
0.0061090526*_D679+
-0.004149774*_D680+
0.0074497328*_D681+
0.0045086573*_D682+
-0.097498297*_D683+
-0.005803673*_D684+
-0.000402266*_D685+
-0.024845117*_D686+
-0.00917597*_D687+
0.0008571061*_D688+
0.0045447529*_D689+
-0.011540059*_D690+
-0.005453604*_D691+
0.0018118745*_D692+
0.0045946854*_D693+
0.0011189144*_D694+
0.0017985278*_D695+
-0.000888731*_D696+
-0.007390057*_D697+
0.0003562101*_D698+
0.0078206494*_D699+
0.0017456541*_D700+
0.0025962334*_D701+
-0.000103391*_D702+
0.005715811*_D703+
0.0018785561*_D704+
0.0027348356*_D705+
0.0033932233*_D706+
0.0039663922*_D707+
-0.004125797*_D708+
-0.006760949*_D709+
-0.000666824*_D710+
-0.014386539*_D711+
-0.007029781*_D712+
-0.018618575*_D713+
0.0019574347*_D714+
0.0021485766*_D715+
0.0027080334*_D716+
0.0015128595*_D717+
0.0064417515*_D718+
-0.003016543*_D719+
-0.002379834*_D720+
-0.00131171*_D721+
0.0008933187*_D722+
-0.008335878*_D723+
-0.004594118*_D724+
-0.005523061*_D725+
0.0034771291*_D726+
-0.004127217*_D727+
0.0023188418*_D728+
0.001836632*_D729+
0.0033155832*_D730+
0.0000796947*_D731+
0.0000878258*_D732+
-0.00029733*_D733+
0.0009559797*_D734+
-0.000978156*_D735+
-0.01551913*_D736+
0.0010574836*_D737+
-0.008859593*_D738+
-0.013275792*_D739+
-0.021676048*_D740+
-0.000733472*_D741+
0.0040539111*_D742+
-0.011740892*_D743+
0.002431532*_D744+
-0.004713767*_D745+
0.007439828*_D746+
-0.00327254*_D747+
-0.000354404*_D748+
-0.001127915*_D749+
-0.010779343*_D750+
-0.000376473*_D751+
-0.012067848*_D752+
-0.003032674*_D753+
-0.003978257*_D754+
-0.00334305*_D755+
0.0037557139*_D756+
0.0280180259*_D757+
0.0032223575*_D758+
0.0067841029*_D759+
-0.000346106*_D760+
-0.010993072*_D761+
0.0004746617*_D762+
0.0027502986*_D763+
-0.005186696*_D764+
-0.017644272*_D765+
0.0437157538*_D766+
-0.010500981*_D767+
-0.002660273*_D768+
0.0043654362*_D769+
-0.00413114*_D770+
-0.000650412*_D771+
-0.002467281*_D772+
0.0055397265*_D773+
0.0038583778*_D774+
-0.016369122*_D775+
0.0037166979*_D776+
-0.001074757*_D777+
0.0325916185*_D778+
0.0741862926*_D779+
0.0001236855*_D780+
0.0018068247*_D781+
0.0129644567*_D782+
-0.00313213*_D783+
0.318592312*_D784+
0.1506171519*_D785+
-0.009896728*_D786+
-0.028904921*_D787+
-0.005779253*_D788+
0.0068750302*_D789+
-0.00378529*_D790+
-0.000659917*_D791+
-0.010038109*_D792+
-0.000278595*_D793+
-0.001738344*_D794+
0.0005990003*_D795+
-0.021700693*_D796+
-0.000294404*_D797+
0.0024804439*_D798+
0.0015999666*_D799+
0.00703131*_D800+
-0.000817661*_D801+
-0.013364456*_D802+
-0.015753033*_D803+
-0.011590238*_D804+
0.0020189872*_D805+
0.0003433836*_D806+
0.0013669059*_D807+
-0.02087108*_D808+
-0.000806548*_D809+
0.0104758273*_D810+
-0.002150989*_D811+
-0.002623419*_D812+
0.0016252341*_D813+
-0.008631531*_D814+
-0.001539658*_D815+
0.0062673788*_D816+
-0.000296703*_D817+
-0.003393424*_D818+
-0.003587471*_D819+
-0.001831884*_D820+
0.0019395125*_D821+
-0.024628486*_D822+
-0.006949829*_D823+
-0.000590741*_D824+
-0.001701984*_D825+
-0.039572596*_D826+
0.001721014*_D827+
-0.00991959*_D828+
-0.052607315*_D829+
0.0016418749*_D830+
-0.001080432*_D831+
0.0009396288*_D832+
-0.003759351*_D833+
-0.005779746*_D834+
0.0010745088*_D835+
0.0045424596*_D836+
-0.00217906*_D837+
0.0076240096*_D838+
-0.00112859*_D839+
0.0004985884*_D840+
-0.001217209*_D841+
0.030148928*_D842+
0.0013231086*_D843+
-0.000035115*_D844+
-0.004340239*_D845+
0.0077595056*_D846+
0.0007806655*_D847+
0.0014493167*_D848+
-0.002616727*_D849+
-0.000365669*_D850+
-0.014926208*_D851+
-0.000463023*_D852+
-0.000543925*_D853+
0.0055185775*_D854+
0.0088863221*_D855+
0.0024116075*_D856+
-0.000706454*_D857+
0.0005895501*_D858+
0.0002315476*_D859+
0.0001758457*_D860+
0.0054637281*_D861+
-0.009330508*_D862+
0.0025046558*_D863+
0.0042205166*_D864+
0.0063049418*_D865+
0.0014416398*_D866+
0.0020137237*_D867+
-0.002667172*_D868+
-0.013164007*_D869+
-0.002581812*_D870+
0.0060064639*_D871+
-0.010134004*_D872+
-0.000026746*_D873+
0.0025692991*_D874+
-0.000781787*_D875+
-0.000089949*_D876+
-0.00850596*_D877+
0.0001131108*_D878+
-0.001023276*_D879+
-0.000679876*_D880+
0.0404469567*_D881+
0.0061326711*_D882+
-0.011139147*_D883+
-0.003962533*_D884+
0.0023698194*_D885+
0.0002444696*_D886+
0.0063690504*_D887+
-0.003920411*_D888+
-0.011179082*_D889+
0.0055661055*_D890+
-0.000142662*_D891+
0.0008733789*_D892+
0.0036033349*_D893+
-0.008062241*_D894+
-0.002251662*_D895+
0.0028475888*_D896+
0.0018177006*_D897+
-0.007017888*_D898+
0.0033859*_D899+
0.0069681817*_D900+
-0.000032379*_D901+
0.0123221438*_D902+
0.0088010037*_D903+
-0.001505598*_D904+
-0.004109642*_D905+
-0.000133848*_D906+
-0.00356744*_D907+
-0.000205842*_D908+
-0.010513201*_D909+
0.0741862926*_D910+
0.004183465*_D911+
-0.033581581*_D912+
0.0085726852*_D913+
0.0001775704*_D914+
0.004607192*_D915+
-0.001943426*_D916+
-0.006741555*_D917+
-0.005412908*_D918+
-0.001967592*_D919+
-0.003955007*_D920+
-0.001322493*_D921+
0.0076861298*_D922+
0.0021394853*_D923+
0.0496035877*_D924+
0.0821601137*_D925+
0.0054111507*_D926+
0.0065484515*_D927+
-0.00334269*_D928+
-0.010447537*_D929+
-0.029563133*_D930+
-0.003547844*_D931+
0.0014632951*_D932+
-0.001900377*_D933+
-0.001126418*_D934+
0.0005531863*_D935+
-0.001051312*_D936+
0.0035751883*_D937+
0.0250223862*_D938+
-0.007486309*_D939+
-0.002043723*_D940+
0.0017853991*_D941+
-0.016166338*_D942+
0.0021874812*_D943+
0.0106709742*_D944+
-0.001748534*_D945+
-0.008680597*_D946+
-0.001034881*_D947+
-0.026762196*_D948+
-0.003699325*_D949+
-0.007532766*_D950+
-0.000703451*_D951+
-0.074785058*_D952+
0.0033541693*_D953+
-0.006755642*_D954+
0.0026517725*_D955+
-0.001772519*_D956+
0.140192737*_D957+
-0.00329763*_D958+
-0.015194732*_D959+
0.0034284868*_D960+
0.0001422454*_D961+
0.0009131701*_D962+
0.0029342966*_D963+
0.0045354603*_D964+
0.0041492951*_D965+
0.0019291513*_D966+
0.0063808818*_D967+
0.0053390842*_D968+
0.0012409883*_D969+
-0.007848102*_D970+
0.004099127*_D971+
-0.006214777*_D972+
0.0084559173*_D973+
-0.009150249*_D974+
-0.001122131*_D975+
-0.001631062*_D976+
-0.003212481*_D977+
0.0020697349*_D978+
-0.01903423*_D979+
0.1437899074*_D980+
0.0067787977*_D981+
0.0091871603*_D982+
0.0000604703*_D983+
0.000430998*_D984+
0.0048809367*_D985+
0.0001655768*_D986+
-0.022829918*_D987+
-0.008999279*_D988+
0.0045629146*_D989+
-0.004327129*_D990+
0.0071383389*_D991+
0.0051563526*_D992+
-0.017019865*_D993+
-0.002110307*_D994+
0.0007482649*_D995+
-0.009441764*_D996+
-0.01204686*_D997+
0.0096499294*_D998+
-0.003673858*_D999+
-0.003909942*_D1000+
-0.009858524*_D1001+
-0.002478736*_D1002+
0.0011029406*_D1003+
0.0074412153*_D1004+
0.0119064633*_D1005+
-0.000379433*_D1006+
0.000460086*_D1007+
-0.007847927*_D1008+
-0.000617905*_D1009+
0.0055814633*_D1010+
0.0010073612*_D1011+
-0.007306828*_D1012+
-0.008356905*_D1013+
0.0044070754*_D1014+
-0.001637119*_D1015+
0.0125848751*_D1016+
-0.001087781*_D1017+
0.0116355788*_D1018+
0.0008282013*_D1019+
-0.003380891*_D1020+
0.0052608382*_D1021+
-0.008654314*_D1022+
-0.001049822*_D1023+
0.0025146526*_D1024+
0.0133480202*_D1025+
-0.005615603*_D1026+
-0.006493403*_D1027+
-0.009411214*_D1028+
-0.142521526*_D1029+
0.2081757731*_D1030+
0.0078975316*_D1031+
-0.002350077*_D1032+
-0.005149047*_D1033+
-0.006446963*_D1034+
-0.008599302*_D1035+
-0.013354058*_D1036+
0.0048389121*_D1037+
-0.001529981*_D1038+
-0.023719456*_D1039+
0.0023153914*_D1040+
0.0128337759*_D1041+
0.0036939025*_D1042+
0.1451603047*_D1043+
0.0075925884*_D1044+
-0.00950934*_D1045+
-0.008833807*_D1046+
0.0078067907*_D1047+
0.0149841161*_D1048+
0.0016950012*_D1049+
-0.02051952*_D1050+
-0.006517547*_D1051+
0.0014430538*_D1052+
0.0079981186*_D1053+
-0.002165099*_D1054+
-0.000492558*_D1055+
0.0040686764*_D1056+
-0.009407966*_D1057+
-0.005344112*_D1058+
-0.011620997*_D1059+
-0.009478186*_D1060+
-0.007114464*_D1061+
-0.005909354*_D1062+
-0.004066573*_D1063+
0.0013806915*_D1064+
0.0064647577*_D1065+
-0.029409407*_D1066+
0.0036973541*_D1067+
0.0038061102*_D1068+
0.001601608*_D1069+
0.01370633*_D1070+
-0.006120552*_D1071+
-0.013819485*_D1072+
0.0037806874*_D1073+
0.0024466958*_D1074+
0.0047891246*_D1075+
0.0149214826*_D1076+
-0.00164377*_D1077+
0.0068689951*_D1078+
0.0002899973*_D1079+
-0.008430306*_D1080+
0.0073039097*_D1081+
-0.004780713*_D1082+
0.0033636249*_D1083+
-0.006876524*_D1084+
-0.002107502*_D1085+
0.0019861056*_D1086+
-0.003250663*_D1087+
-0.016957461*_D1088+
0.0010031682*_D1089+
0.006538627*_D1090+
-0.003944304*_D1091+
0.0024266361*_D1092+
-0.009711265*_D1093+
-0.014758257*_D1094+
0.0014136477*_D1095+
-0.00153917*_D1096+
0.0065739521*_D1097+
-0.000043924*_D1098+
-0.001452431*_D1099+
-0.004621149*_D1100+
0.0046330727*_D1101+
-0.003190295*_D1102+
-0.009128771*_D1103+
0.0050569649*_D1104+
0.0298688341*_D1105+
0.0309728994*_D1106+
0.0012043211*_D1107+
0.0019659152*_D1108+
0.0042159667*_D1109+
0.001641542*_D1110+
-0.001516817*_D1111+
-0.007484358*_D1112+
-0.000407875*_D1113+
0.0031375157*_D1114+
0.0009230023*_D1115+
0.0026615657*_D1116+
0.006471429*_D1117+
0.0001842074*_D1118+
-0.007824804*_D1119+
0.0076465309*_D1120+
0.000691044*_D1121+
0.1293464283*_D1122+
-0.003269497*_D1123+
-0.021910912*_D1124+
-0.004700955*_D1125+
-0.004489902*_D1126+
0.0007860116*_D1127+
0.0006808654*_D1128+
-0.008708356*_D1129+
-0.033519086*_D1130+
-0.098143938*_D1131+
-0.021590794*_D1132+
-0.010937276*_D1133+
-0.000260017*_D1134+
-0.007213549*_D1135+
0.0001047305*_D1136+
-0.033639216*_D1137+
-0.008357429*_D1138+
-0.004838522*_D1139+
0.0020853029*_D1140+
0.0038056334*_D1141+
0.0027358991*_D1142+
-0.021733891*_D1143+
-0.006758702*_D1144+
-0.001366631*_D1145+
-0.00446269*_D1146+
-0.003214556*_D1147+
-0.002026909*_D1148+
0.0033187594*_D1149+
0.0080504519*_D1150+
0.0018346105*_D1151+
-0.006504491*_D1152+
0.0005903208*_D1153+
0.0039713839*_D1154+
0.0037005871*_D1155+
-0.002739545*_D1156+
0.0121152845*_D1157+
-0.000517709*_D1158+
0.0005444166*_D1159+
-0.009395984*_D1160+
0.0112674059*_D1161+
0.0434349657*_D1162+
0.0020029754*_D1163+
-0.002057332*_D1164+
0.0006364724*_D1165+
-0.000746308*_D1166+
-0.001544052*_D1167+
-0.094604303*_D1168+
-0.01170654*_D1169+
0.0092571594*_D1170+
-0.009959737*_D1171+
-0.205683276*_D1172+
-0.003775523*_D1173+
0.0068188802*_D1174+
0.0108772297*_D1175+
0.0067577843*_D1176+
-0.003614617*_D1177+
-0.005771331*_D1178+
-0.007567033*_D1179+
-0.002133202*_D1180+
0.0070280904*_D1181+
0.0067840121*_D1182+
-0.005804343*_D1183+
-0.008505814*_D1184+
-0.00384277*_D1185+
0.0000613814*_D1186+
-0.033247166*_D1187+
-0.008432527*_D1188+
-0.014572093*_D1189+
-0.062175535*_D1190+
-0.011212598*_D1191+
-0.013754351*_D1192+
-0.012813022*_D1193+
0.0041964607*_D1194+
0.0014506066*_D1195+
0.0204485037*_D1196+
0.0192399402*_D1197+
0.0019780693*_D1198+
0.000888389*_D1199+
0.0084043205*_D1200+
-0.000779308*_D1201+
0.0015077392*_D1202+
0.0019540145*_D1203+
-0.001086581*_D1204;
/****************************************/
* Componente principal 5;
/****************************************/
;
length PC_5 8;
label PC_5 = "Componente principal 5";
PC_5 =
0.0062486927*_D1+
-0.001832089*_D2+
0.0017477866*_D3+
0.0011302501*_D4+
0.0071331372*_D5+
0.0054212743*_D6+
0.0083775133*_D7+
0.0097220109*_D8+
0.0034191221*_D9+
0.0408903552*_D10+
0.0062957267*_D11+
0.0046471604*_D12+
0.0065956875*_D13+
0.001351214*_D14+
0.0046184712*_D15+
-0.010133987*_D16+
-0.001992325*_D17+
0.0058041001*_D18+
0.0021081694*_D19+
0.0079908134*_D20+
0.0003038808*_D21+
0.0144444974*_D22+
0.0034567086*_D23+
0.0032863238*_D24+
-0.003577664*_D25+
0.0055047796*_D26+
0.004708561*_D27+
0.0080864875*_D28+
0.0189641819*_D29+
0.0022151933*_D30+
0.0087188348*_D31+
0.0086190643*_D32+
0.0130477746*_D33+
0.0087004368*_D34+
0.0389318322*_D35+
0.0017018448*_D36+
0.0031791131*_D37+
-0.000857444*_D38+
0.0034666335*_D39+
0.0077147113*_D40+
0.01308384*_D41+
0.0193364929*_D42+
0.0002497791*_D43+
-0.005798519*_D44+
0.0046764994*_D45+
0.0011397923*_D46+
0.0042532815*_D47+
0.0050369253*_D48+
-0.019723366*_D49+
0.0030826591*_D50+
0.0000911503*_D51+
0.0050685691*_D52+
0.0648791201*_D53+
0.005222104*_D54+
0.0121989241*_D55+
0.0061068465*_D56+
0.0244393045*_D57+
0.0019484807*_D58+
0.0060427763*_D59+
0.0253594046*_D60+
0.0469328343*_D61+
0.0079794575*_D62+
0.0024502334*_D63+
0.0089286415*_D64+
0.0073629776*_D65+
0.0060629864*_D66+
0.0071240299*_D67+
0.0010408839*_D68+
0.005576409*_D69+
0.0049811359*_D70+
0.0111661327*_D71+
-0.008138117*_D72+
-0.002609938*_D73+
0.0230135742*_D74+
0.0117563912*_D75+
-0.003981673*_D76+
0.0196297037*_D77+
0.0011289365*_D78+
0.0065665902*_D79+
0.0088518798*_D80+
-0.000065162*_D81+
0.0090095513*_D82+
-0.003100875*_D83+
0.0095652389*_D84+
-0.155883569*_D85+
0.0029122389*_D86+
0.0057876758*_D87+
0.0036195248*_D88+
0.0261463639*_D89+
-0.006773384*_D90+
0.0046929928*_D91+
0.0176695726*_D92+
0.0105440616*_D93+
0.0303704594*_D94+
0.0067364407*_D95+
0.0296463683*_D96+
-0.002171971*_D97+
-0.011758669*_D98+
0.0037028677*_D99+
-0.00768619*_D100+
0.0007533336*_D101+
0.0082641312*_D102+
0.0067629725*_D103+
0.0098916358*_D104+
0.0119009078*_D105+
0.0099362368*_D106+
0.0053760321*_D107+
0.0047479366*_D108+
0.001953541*_D109+
0.0016247969*_D110+
0.0175211004*_D111+
-0.004276438*_D112+
0.0089869168*_D113+
0.005577989*_D114+
-0.011340299*_D115+
0.0044424395*_D116+
0.0088167135*_D117+
0.0109775152*_D118+
0.0025543826*_D119+
0.0011714457*_D120+
0.0081108046*_D121+
0.0058794932*_D122+
0.006132191*_D123+
0.0054535847*_D124+
0.0148247619*_D125+
0.0058928588*_D126+
-0.007703043*_D127+
0.0071475113*_D128+
0.014134157*_D129+
0.0070436944*_D130+
0.006476197*_D131+
0.0054312189*_D132+
0.0167696443*_D133+
0.0058692455*_D134+
0.0010478657*_D135+
0.0022108537*_D136+
0.0063693365*_D137+
0.0022762103*_D138+
0.015313021*_D139+
0.0133096278*_D140+
0.0036624976*_D141+
-0.001143704*_D142+
0.0054739291*_D143+
0.0156430446*_D144+
0.0135731372*_D145+
0.0048390566*_D146+
0.0038286472*_D147+
0.0014189834*_D148+
0.0205896677*_D149+
0.0035754708*_D150+
0.0038625611*_D151+
-0.001053449*_D152+
0.0100651873*_D153+
-0.000765934*_D154+
0.0066136641*_D155+
-0.064132134*_D156+
0.0080537469*_D157+
-0.000617018*_D158+
0.003989093*_D159+
0.0032930338*_D160+
0.0005520339*_D161+
0.0016364077*_D162+
0.0083310193*_D163+
0.0047612174*_D164+
0.0250356152*_D165+
0.0000816489*_D166+
0.009345218*_D167+
0.0084595189*_D168+
0.0031831263*_D169+
0.0279646002*_D170+
0.0054706407*_D171+
0.0046301317*_D172+
0.0156267251*_D173+
0.0220245632*_D174+
0.0188631472*_D175+
-0.000651731*_D176+
0.0079892396*_D177+
0.0104782356*_D178+
-0.0170804*_D179+
0.0009513634*_D180+
0.0058197553*_D181+
0.0214599225*_D182+
0.0097554873*_D183+
0.0056719615*_D184+
-0.000472799*_D185+
-0.0113336*_D186+
0.0040875123*_D187+
0.0091466567*_D188+
0.0001331004*_D189+
-0.027057966*_D190+
0.0031841348*_D191+
-0.013222017*_D192+
0.0097780483*_D193+
0.0022402881*_D194+
-0.002237121*_D195+
0.0042695069*_D196+
0.0019797451*_D197+
0.0089451267*_D198+
0.0051849725*_D199+
0.0030743497*_D200+
-0.105981795*_D201+
0.0128990672*_D202+
0.0084412359*_D203+
0.0011681219*_D204+
-0.009479742*_D205+
0.0030655368*_D206+
0.0066280205*_D207+
-0.013818969*_D208+
0.0034654124*_D209+
0.0093525268*_D210+
0.0044569644*_D211+
0.0018760606*_D212+
-0.005132778*_D213+
0.0070713852*_D214+
0.0060924819*_D215+
0.0046207602*_D216+
0.0015895731*_D217+
0.0062307364*_D218+
0.0037844497*_D219+
0.0023068254*_D220+
0.0037561603*_D221+
0.0027572625*_D222+
-0.002901728*_D223+
0.0069037565*_D224+
0.0127310882*_D225+
0.0042615346*_D226+
-0.000584038*_D227+
0.0118991344*_D228+
0.0080050222*_D229+
-0.00549447*_D230+
0.0065253019*_D231+
0.0060726072*_D232+
0.00344598*_D233+
0.0070334472*_D234+
0.0016203832*_D235+
0.0058045933*_D236+
0.022104179*_D237+
0.004636888*_D238+
0.0055942887*_D239+
0.012799506*_D240+
0.0109840112*_D241+
-0.009821327*_D242+
0.0013524831*_D243+
-0.000583209*_D244+
-0.001229962*_D245+
0.0125320675*_D246+
-0.013547507*_D247+
0.0016571856*_D248+
0.0166581525*_D249+
-0.000046815*_D250+
0.0000812838*_D251+
0.0041130079*_D252+
0.0032987285*_D253+
-0.00230695*_D254+
0.0045249511*_D255+
-0.000238388*_D256+
0.0131723319*_D257+
0.006608199*_D258+
0.0070295873*_D259+
0.0188624979*_D260+
0.0103090893*_D261+
0.0054376195*_D262+
0.0071642751*_D263+
0.0063206164*_D264+
0.0005798855*_D265+
0.0111987939*_D266+
0.0045672323*_D267+
0.0069523987*_D268+
-0.012584062*_D269+
-0.002517948*_D270+
-0.00074179*_D271+
0.0038813348*_D272+
0.0093646268*_D273+
-0.000925557*_D274+
0.0237590836*_D275+
0.0029206299*_D276+
0.0055310978*_D277+
-0.005519486*_D278+
0.012748096*_D279+
0.0069234908*_D280+
0.0066783831*_D281+
0.0259425378*_D282+
0.129355029*_D283+
0.0043513873*_D284+
-0.001487922*_D285+
0.0146124672*_D286+
-0.002585163*_D287+
0.0035878844*_D288+
-0.00412941*_D289+
-0.000462102*_D290+
0.008113109*_D291+
0.0017648688*_D292+
-0.008204905*_D293+
0.0049051397*_D294+
0.0102193277*_D295+
0.0165147313*_D296+
0.0069599683*_D297+
0.0046999114*_D298+
-0.002741344*_D299+
0.0065299678*_D300+
-0.000704967*_D301+
0.0077360477*_D302+
-0.006868084*_D303+
0.004197105*_D304+
-0.015963781*_D305+
0.0090314934*_D306+
0.0088692308*_D307+
0.0050117968*_D308+
0.0012532541*_D309+
0.0011971334*_D310+
0.0019377238*_D311+
-0.000951758*_D312+
-0.00776519*_D313+
0.021424239*_D314+
-0.002827377*_D315+
-0.006104*_D316+
0.0059323512*_D317+
0.0020196169*_D318+
-0.00703636*_D319+
0.013626008*_D320+
0.0026944765*_D321+
0.0007023594*_D322+
0.0023144499*_D323+
-0.001855272*_D324+
0.0043443478*_D325+
0.0018667182*_D326+
0.0028656383*_D327+
0.0079688667*_D328+
0.0024374885*_D329+
0.0001277753*_D330+
-0.001134383*_D331+
-0.057104451*_D332+
0.0104030726*_D333+
0.0190138396*_D334+
0.0037336125*_D335+
0.0135810455*_D336+
0.0686292231*_D337+
-0.004474139*_D338+
0.0152710643*_D339+
-0.009270827*_D340+
0.0027774632*_D341+
0.012213053*_D342+
-0.001003935*_D343+
0.0040973946*_D344+
-0.001378611*_D345+
-0.002086409*_D346+
0.0040339978*_D347+
0.0065521522*_D348+
0.0074443957*_D349+
0.0024808089*_D350+
-0.007043615*_D351+
0.0044089823*_D352+
0.0013383917*_D353+
0.0002431298*_D354+
0.0042281911*_D355+
-0.002939613*_D356+
0.0091290162*_D357+
0.0027179559*_D358+
0.0008018461*_D359+
-0.001953225*_D360+
0.0092474196*_D361+
0.0212505706*_D362+
0.0033678061*_D363+
0.0003009886*_D364+
0.0070050185*_D365+
0.0011196959*_D366+
0.0077006216*_D367+
0.0054362442*_D368+
-0.006523337*_D369+
0.0065075803*_D370+
-0.001013927*_D371+
0.0092741269*_D372+
0.0040534456*_D373+
0.0068907185*_D374+
0.0143800534*_D375+
0.0138634388*_D376+
0.0055015933*_D377+
0.0056318977*_D378+
0.0013617666*_D379+
0.0063683861*_D380+
0.0095440835*_D381+
0.0025853383*_D382+
-0.004676035*_D383+
0.0057216282*_D384+
0.0047529463*_D385+
0.010175834*_D386+
0.003562119*_D387+
0.0104599345*_D388+
-0.000114088*_D389+
-0.017127558*_D390+
0.0029265985*_D391+
0.0060834532*_D392+
0.0131105077*_D393+
0.0075906647*_D394+
0.0041570901*_D395+
0.0091377308*_D396+
-0.001150218*_D397+
0.0051404403*_D398+
0.0030407611*_D399+
0.0051106993*_D400+
0.0053642188*_D401+
-0.005083803*_D402+
-0.002445532*_D403+
0.006728607*_D404+
-0.013347652*_D405+
0.0146188969*_D406+
0.0080736241*_D407+
0.006315125*_D408+
0.0066424461*_D409+
-0.0044941*_D410+
0.0182868623*_D411+
-0.003158583*_D412+
0.0003047358*_D413+
0.0185873114*_D414+
0.0042766673*_D415+
0.0206661288*_D416+
0.0173381225*_D417+
0.0128199045*_D418+
0.0017595883*_D419+
0.0112610325*_D420+
0.009119845*_D421+
0.0068464828*_D422+
-0.003432599*_D423+
0.0000296458*_D424+
0.0005371388*_D425+
0.0047829801*_D426+
0.0142002763*_D427+
0.0029094008*_D428+
0.0155129228*_D429+
0.0205486715*_D430+
-0.125418056*_D431+
0.0095699557*_D432+
0.0161235538*_D433+
0.0140146897*_D434+
0.0198723262*_D435+
0.003055884*_D436+
0.0036216476*_D437+
-0.002536625*_D438+
0.0082731086*_D439+
0.0149984325*_D440+
-0.171312069*_D441+
0.0241128344*_D442+
0.0040759478*_D443+
-0.014052781*_D444+
0.0033028574*_D445+
0.0041416392*_D446+
0.0173670153*_D447+
-0.001905518*_D448+
-0.002719448*_D449+
0.0284531985*_D450+
0.0067400533*_D451+
0.0103067239*_D452+
0.000810011*_D453+
0.005731194*_D454+
0.013648661*_D455+
0.0275162702*_D456+
0.0042111199*_D457+
-0.005335621*_D458+
-0.001845887*_D459+
0.0077990094*_D460+
0.0310773959*_D461+
0.0022834445*_D462+
0.0011885706*_D463+
0.0110067582*_D464+
0.009588962*_D465+
0.0117930124*_D466+
0.002185972*_D467+
0.006546308*_D468+
-0.003585607*_D469+
-0.001759006*_D470+
0.0111808626*_D471+
0.0061645275*_D472+
0.005094306*_D473+
0.0060856595*_D474+
0.00402681*_D475+
-0.000067105*_D476+
0.003680862*_D477+
0.006551765*_D478+
0.0080448211*_D479+
0.0013191596*_D480+
0.0119189751*_D481+
0.0035483969*_D482+
0.0154871279*_D483+
0.0094354328*_D484+
0.0035982235*_D485+
-0.004090801*_D486+
0.0076672001*_D487+
0.0088539038*_D488+
0.0036628865*_D489+
0.0209446259*_D490+
0.0118299039*_D491+
0.0118922531*_D492+
0.0077710605*_D493+
-0.000860652*_D494+
0.0005875792*_D495+
0.0038595135*_D496+
0.0114073513*_D497+
-0.004834164*_D498+
0.0136362498*_D499+
0.0049032737*_D500+
-0.025265754*_D501+
0.0057237646*_D502+
0.0093295194*_D503+
0.0135294352*_D504+
0.0162174289*_D505+
-0.002029427*_D506+
0.0070212905*_D507+
-0.004821204*_D508+
-0.004659527*_D509+
0.0042084551*_D510+
0.0027309189*_D511+
0.0016057974*_D512+
0.0067236821*_D513+
0.0026860012*_D514+
0.0023701632*_D515+
0.0041945378*_D516+
0.0005124317*_D517+
0.005462066*_D518+
0.0078074604*_D519+
0.0033949096*_D520+
0.0070309237*_D521+
0.0036184448*_D522+
0.0071010399*_D523+
0.0006009742*_D524+
0.002676579*_D525+
-0.063674769*_D526+
0.0151871829*_D527+
0.0024576272*_D528+
0.0122037225*_D529+
0.0031453919*_D530+
0.0083411882*_D531+
0.0049943884*_D532+
-0.090966099*_D533+
-0.000085499*_D534+
0.0008581826*_D535+
0.0056373288*_D536+
0.0074144892*_D537+
0.0203379487*_D538+
0.0151498995*_D539+
0.0037464032*_D540+
0.0031013216*_D541+
0.0962106661*_D542+
0.1167415773*_D543+
0.0067664732*_D544+
-0.00278877*_D545+
0.0106994204*_D546+
0.0321623787*_D547+
0.007343398*_D548+
0.0027907138*_D549+
0.0103082104*_D550+
0.0172560372*_D551+
0.0017741652*_D552+
0.0663596606*_D553+
0.0272151974*_D554+
0.0013454129*_D555+
0.0145904789*_D556+
0.0007904268*_D557+
0.0106479769*_D558+
0.0026018271*_D559+
0.0052197334*_D560+
0.0082242463*_D561+
-0.001025201*_D562+
-0.000701182*_D563+
-0.006981497*_D564+
-0.001706055*_D565+
-0.010487758*_D566+
0.0008350579*_D567+
-0.000902396*_D568+
0.0464761649*_D569+
0.0114920672*_D570+
0.0029955709*_D571+
-0.004094156*_D572+
-0.004852231*_D573+
0.0036940405*_D574+
0.0048704197*_D575+
0.0056637091*_D576+
0.0019576943*_D577+
0.001151389*_D578+
0.0045184039*_D579+
0.022862915*_D580+
0.0068510234*_D581+
0.0036364997*_D582+
-0.000132402*_D583+
0.0030734001*_D584+
0.0071139892*_D585+
0.0110501242*_D586+
0.0093577723*_D587+
0.0087871017*_D588+
0.0118437214*_D589+
0.0234320446*_D590+
0.0229021803*_D591+
0.0069250894*_D592+
0.0073382933*_D593+
0.0094094922*_D594+
0.0022781875*_D595+
0.0046750263*_D596+
-0.007646465*_D597+
0.0017645428*_D598+
0.0086423002*_D599+
0.0113174554*_D600+
0.0032764935*_D601+
0.0010156499*_D602+
-0.001385038*_D603+
-0.021278395*_D604+
0.004402483*_D605+
-0.003011305*_D606+
0.018833673*_D607+
0.0310462058*_D608+
0.0014420337*_D609+
0.0050328959*_D610+
-0.003723175*_D611+
0.0087460716*_D612+
-0.002815129*_D613+
0.0015616944*_D614+
0.0061577339*_D615+
0.004721767*_D616+
0.0021549516*_D617+
-0.000951658*_D618+
0.0076593377*_D619+
0.0030242482*_D620+
0.0003922791*_D621+
0.0030045784*_D622+
-0.020221874*_D623+
0.0085141128*_D624+
-0.011591588*_D625+
-0.053174635*_D626+
0.0010657036*_D627+
-0.008267681*_D628+
0.0059819681*_D629+
0.0087504972*_D630+
0.0040488312*_D631+
-0.030000159*_D632+
0.0024625868*_D633+
-0.007277778*_D634+
0.0016415384*_D635+
0.0192684649*_D636+
0.0046486207*_D637+
0.0097952391*_D638+
-0.002968223*_D639+
0.0042293433*_D640+
0.0102233579*_D641+
0.0035973372*_D642+
0.0047018047*_D643+
0.006930118*_D644+
0.0169454983*_D645+
0.0173791321*_D646+
0.0098239791*_D647+
0.0031465568*_D648+
-0.011853178*_D649+
0.011861267*_D650+
-0.006604585*_D651+
-0.000443509*_D652+
-0.001143651*_D653+
0.0103930473*_D654+
0.0003339766*_D655+
0.0053479673*_D656+
-0.0053587*_D657+
0.001606914*_D658+
0.0045691661*_D659+
0.006593009*_D660+
0.0026460396*_D661+
0.0077063051*_D662+
0.0059293567*_D663+
-0.030039543*_D664+
-0.088506669*_D665+
0.0045594391*_D666+
0.0080516234*_D667+
0.0088397233*_D668+
0.0112507092*_D669+
0.0015637553*_D670+
0.0014727607*_D671+
0.0029733254*_D672+
0.0059839938*_D673+
0.0019367259*_D674+
0.0080983404*_D675+
-0.000638764*_D676+
0.0089634495*_D677+
0.0242424158*_D678+
0.0031330137*_D679+
0.0042304231*_D680+
0.00838467*_D681+
0.0060127978*_D682+
-0.042780643*_D683+
0.0103061863*_D684+
0.0065277403*_D685+
-0.011063768*_D686+
0.0017019166*_D687+
0.0071589054*_D688+
0.0045755184*_D689+
-0.004798912*_D690+
-0.009814498*_D691+
0.0134293791*_D692+
0.0023517828*_D693+
0.0193486553*_D694+
0.0085785795*_D695+
0.0041132525*_D696+
0.0004329791*_D697+
0.0121346948*_D698+
0.0039080275*_D699+
0.0192160017*_D700+
0.0025664776*_D701+
0.0030754975*_D702+
0.005069922*_D703+
0.0110808179*_D704+
0.0151925273*_D705+
0.008620393*_D706+
0.0010064696*_D707+
0.0015718509*_D708+
0.0167006242*_D709+
0.0181613262*_D710+
0.0246448839*_D711+
0.005650808*_D712+
-0.000189969*_D713+
0.0087964854*_D714+
0.0045032761*_D715+
0.007206621*_D716+
0.0267548124*_D717+
0.0010781808*_D718+
0.0021482262*_D719+
0.004828445*_D720+
0.0058753333*_D721+
0.0105167721*_D722+
-0.001723023*_D723+
0.0283263053*_D724+
0.0064248066*_D725+
0.0041697579*_D726+
0.0013654554*_D727+
0.0110683774*_D728+
0.0137847667*_D729+
0.0025185895*_D730+
0.0056426528*_D731+
0.0031039993*_D732+
0.0061966975*_D733+
0.0047185203*_D734+
0.0112695044*_D735+
-0.008817541*_D736+
0.0124757304*_D737+
-0.000784219*_D738+
-0.006297142*_D739+
-0.00974541*_D740+
0.018681135*_D741+
0.0299104474*_D742+
-0.002019965*_D743+
0.0069596178*_D744+
0.0052645855*_D745+
0.0047190838*_D746+
0.0121280939*_D747+
0.0291051302*_D748+
0.0185458048*_D749+
0.0094830754*_D750+
0.0162046702*_D751+
-0.001213977*_D752+
0.0031924394*_D753+
0.0010523423*_D754+
0.0032587566*_D755+
0.0035576652*_D756+
-0.002146279*_D757+
0.0151329642*_D758+
0.0354562539*_D759+
0.0042814581*_D760+
-0.00543902*_D761+
0.022992437*_D762+
0.0095543339*_D763+
0.0054851295*_D764+
-0.006022153*_D765+
-0.00825875*_D766+
-0.002662394*_D767+
0.0043662188*_D768+
0.0256224498*_D769+
-0.002161263*_D770+
0.0034434377*_D771+
0.0056787819*_D772+
0.0057376537*_D773+
0.0147890088*_D774+
0.0267153877*_D775+
0.0070915465*_D776+
0.0034764616*_D777+
-0.007558508*_D778+
0.0669060875*_D779+
0.0085015552*_D780+
0.0109307031*_D781+
-0.001517908*_D782+
0.0094657549*_D783+
-0.132505535*_D784+
-0.061192161*_D785+
-0.007398228*_D786+
-0.012727363*_D787+
0.0070010265*_D788+
0.0022680501*_D789+
0.0018131013*_D790+
0.0073629229*_D791+
0.0115777406*_D792+
0.0044975049*_D793+
0.0065484722*_D794+
0.0129732966*_D795+
-0.009641769*_D796+
0.0139562602*_D797+
0.024611799*_D798+
0.0172640861*_D799+
0.0084688623*_D800+
0.0020658795*_D801+
-0.006259385*_D802+
-0.000614249*_D803+
-0.002598729*_D804+
0.0028719893*_D805+
0.0185423549*_D806+
0.0130285176*_D807+
-0.007751971*_D808+
0.025433245*_D809+
0.004017293*_D810+
0.0013224509*_D811+
0.0036107913*_D812+
0.0177101439*_D813+
0.0073991355*_D814+
0.0042322449*_D815+
0.0034944194*_D816+
0.0067533921*_D817+
0.0092569299*_D818+
0.0029519514*_D819+
0.0025126283*_D820+
0.00313331*_D821+
-0.001853012*_D822+
0.0008184077*_D823+
0.0046315116*_D824+
0.0064356015*_D825+
-0.004960409*_D826+
-0.000675932*_D827+
0.0098633766*_D828+
0.0164447035*_D829+
0.0155332385*_D830+
0.0020146785*_D831+
0.0083567138*_D832+
0.0107801319*_D833+
-0.004318381*_D834+
0.0057617798*_D835+
0.0030762452*_D836+
0.0104809434*_D837+
0.0027529277*_D838+
0.0052278497*_D839+
0.0096724433*_D840+
0.0114355376*_D841+
-0.004078843*_D842+
0.0062312705*_D843+
0.0168520332*_D844+
0.015587599*_D845+
0.0058309169*_D846+
0.0218113013*_D847+
0.0088975842*_D848+
0.0845766383*_D849+
0.0312699855*_D850+
-0.00933726*_D851+
0.0073254949*_D852+
0.0076326575*_D853+
0.0079521031*_D854+
0.0133099301*_D855+
0.0068776002*_D856+
0.0084427053*_D857+
0.0005855075*_D858+
0.0107024557*_D859+
0.0053187485*_D860+
0.004844985*_D861+
0.0131696153*_D862+
0.0081683712*_D863+
0.0022339614*_D864+
0.0027290101*_D865+
0.0138699285*_D866+
0.008038039*_D867+
0.001429628*_D868+
-0.006693507*_D869+
0.0152433237*_D870+
0.0000629085*_D871+
-0.002857491*_D872+
0.002080933*_D873+
0.0136796058*_D874+
0.0049385369*_D875+
0.0096522567*_D876+
0.0030669393*_D877+
0.0018997904*_D878+
0.0052385941*_D879+
0.01574901*_D880+
-0.010753305*_D881+
0.0241417849*_D882+
-0.003036568*_D883+
0.0036550692*_D884+
0.0195204957*_D885+
0.0111061957*_D886+
0.0102092219*_D887+
0.0096214598*_D888+
-0.005155511*_D889+
-0.002887364*_D890+
0.0101411591*_D891+
0.005064691*_D892+
0.0038427791*_D893+
0.0031530194*_D894+
0.0033543612*_D895+
0.0001623224*_D896+
-0.003127061*_D897+
-0.002853277*_D898+
0.0184960424*_D899+
0.0033471332*_D900+
0.0066928196*_D901+
0.0023525449*_D902+
0.0055762392*_D903+
0.0074453401*_D904+
0.0018403533*_D905+
0.0030376952*_D906+
-0.002562896*_D907+
0.0038662539*_D908+
-0.004908694*_D909+
0.0669060875*_D910+
0.0078964387*_D911+
-0.008198173*_D912+
-0.000602845*_D913+
0.0067097246*_D914+
0.019253199*_D915+
0.0059550847*_D916+
-0.000598298*_D917+
0.0045036117*_D918+
0.0099479954*_D919+
-0.001208978*_D920+
0.0039333461*_D921+
0.0064073266*_D922+
0.0150738195*_D923+
0.0236027574*_D924+
-0.033524757*_D925+
0.0022067729*_D926+
0.0041338263*_D927+
0.0093503066*_D928+
0.0046568675*_D929+
-0.00805421*_D930+
-0.001106384*_D931+
0.0090868968*_D932+
0.0051613166*_D933+
0.0037831985*_D934+
-0.000495743*_D935+
0.0082441855*_D936+
0.003852015*_D937+
-0.002389707*_D938+
0.0001311326*_D939+
0.0163020439*_D940+
0.0128849229*_D941+
0.0056738187*_D942+
0.0073396733*_D943+
0.0042802204*_D944+
0.0062167937*_D945+
-0.001394876*_D946+
0.0103444803*_D947+
0.0315059709*_D948+
0.0061603188*_D949+
0.0018174489*_D950+
0.0069903169*_D951+
-0.031750568*_D952+
0.0113072551*_D953+
-0.001282237*_D954+
0.0074392346*_D955+
0.0144977474*_D956+
-0.05845788*_D957+
-0.004045714*_D958+
0.0037378706*_D959+
0.0207970348*_D960+
0.0123396383*_D961+
0.0080206066*_D962+
0.0165470257*_D963+
0.0070596326*_D964+
0.0020907729*_D965+
0.0027082565*_D966+
0.004233594*_D967+
0.0130973053*_D968+
0.0050933224*_D969+
0.0178575371*_D970+
0.0013534576*_D971+
0.0018758995*_D972+
0.0097735757*_D973+
0.0047303197*_D974+
0.0065853767*_D975+
0.0046794165*_D976+
0.0050319032*_D977+
0.0116051788*_D978+
-0.007519898*_D979+
-0.06098947*_D980+
0.0014889151*_D981+
0.0001309784*_D982+
-0.001956761*_D983+
0.0081973391*_D984+
0.0028803314*_D985+
0.0100263601*_D986+
0.000753362*_D987+
-0.003755452*_D988+
0.0232383184*_D989+
0.0074871214*_D990+
0.0008741604*_D991+
0.0112665518*_D992+
0.005634232*_D993+
0.0040354091*_D994+
0.0140365418*_D995+
-0.000695836*_D996+
-0.00489335*_D997+
0.0102160191*_D998+
0.005178074*_D999+
0.0018708603*_D1000+
-0.003643595*_D1001+
0.0097187734*_D1002+
0.0039924556*_D1003+
0.0042629101*_D1004+
-0.000999785*_D1005+
0.0050129683*_D1006+
0.0046337606*_D1007+
0.0140398279*_D1008+
0.0048221146*_D1009+
0.0348814629*_D1010+
0.0135626561*_D1011+
-0.0015427*_D1012+
-0.003787772*_D1013+
0.0206396391*_D1014+
0.003246695*_D1015+
0.0157138943*_D1016+
0.0080815305*_D1017+
0.0007988284*_D1018+
0.0100911549*_D1019+
0.0051277369*_D1020+
0.0164226513*_D1021+
-0.001488778*_D1022+
0.0066073655*_D1023+
0.0129188675*_D1024+
0.0079559826*_D1025+
0.0030674052*_D1026+
0.0108741264*_D1027+
0.0001069788*_D1028+
-0.628591623*_D1029+
0.4761279169*_D1030+
0.0137007241*_D1031+
0.0067396322*_D1032+
0.0016211903*_D1033+
0.0019393868*_D1034+
0.0094600608*_D1035+
-0.004478415*_D1036+
0.004185394*_D1037+
0.0103658349*_D1038+
-0.001117022*_D1039+
0.0023467346*_D1040+
-0.001055088*_D1041+
0.0044138883*_D1042+
-0.062079049*_D1043+
0.0011541429*_D1044+
0.0162630368*_D1045+
-0.001728565*_D1046+
0.002229696*_D1047+
0.0003093025*_D1048+
0.0117602875*_D1049+
0.0167727186*_D1050+
0.0019707917*_D1051+
0.002569221*_D1052+
0.0156928421*_D1053+
0.0039193131*_D1054+
0.0066997908*_D1055+
0.0063870945*_D1056+
-0.003873778*_D1057+
0.0001453486*_D1058+
0.0107462007*_D1059+
-0.000239802*_D1060+
0.0062839543*_D1061+
0.0045383129*_D1062+
0.0002010998*_D1063+
0.0055161542*_D1064+
-0.001339177*_D1065+
-0.010414364*_D1066+
0.01542433*_D1067+
0.0319277788*_D1068+
0.0148826718*_D1069+
-0.000247268*_D1070+
-0.000134625*_D1071+
-0.003416025*_D1072+
0.0062199684*_D1073+
0.0271152322*_D1074+
0.005476477*_D1075+
-0.001629528*_D1076+
0.0017519094*_D1077+
0.0032070074*_D1078+
0.0083259787*_D1079+
-0.001176301*_D1080+
0.0062663263*_D1081+
0.0000895541*_D1082+
0.0050497242*_D1083+
0.0206128111*_D1084+
0.0201887999*_D1085+
0.0189863736*_D1086+
0.0035965735*_D1087+
-0.006977898*_D1088+
0.0117900127*_D1089+
0.0094511514*_D1090+
0.0016516978*_D1091+
0.0099796024*_D1092+
-0.002194727*_D1093+
-0.006579402*_D1094+
0.0040616464*_D1095+
0.0069991344*_D1096+
0.0052943623*_D1097+
0.0088862488*_D1098+
0.0069077433*_D1099+
0.0026621401*_D1100+
0.0018855514*_D1101+
0.0048893625*_D1102+
0.0029246128*_D1103+
0.0012261292*_D1104+
-0.000639294*_D1105+
-0.002489197*_D1106+
0.0088373511*_D1107+
0.0020880549*_D1108+
0.0145079505*_D1109+
0.0125651429*_D1110+
0.0077968062*_D1111+
0.0238622597*_D1112+
0.0165019994*_D1113+
0.014013945*_D1114+
0.038201895*_D1115+
0.0065134678*_D1116+
-0.000196513*_D1117+
0.0045656904*_D1118+
-0.002219544*_D1119+
0.0134342538*_D1120+
0.011535301*_D1121+
-0.054283432*_D1122+
0.0479241541*_D1123+
-0.001550011*_D1124+
0.010837545*_D1125+
-0.004839159*_D1126+
0.0174975834*_D1127+
0.0120144865*_D1128+
0.0194210599*_D1129+
-0.012547238*_D1130+
0.0456507227*_D1131+
0.015990228*_D1132+
0.0000664321*_D1133+
0.0102019178*_D1134+
-0.000575151*_D1135+
0.0045583491*_D1136+
-0.008030103*_D1137+
0.0058747391*_D1138+
0.0079207083*_D1139+
0.0173820842*_D1140+
0.0522455345*_D1141+
-0.002135931*_D1142+
-0.010294011*_D1143+
0.0050972756*_D1144+
0.0079659537*_D1145+
0.0177525182*_D1146+
0.0052492113*_D1147+
0.003341111*_D1148+
0.0041583658*_D1149+
0.0048873291*_D1150+
0.0107141167*_D1151+
0.0010325043*_D1152+
0.0101578451*_D1153+
0.0037847748*_D1154+
0.0091470071*_D1155+
0.0092178819*_D1156+
0.0174454469*_D1157+
0.0081253972*_D1158+
0.0081912688*_D1159+
0.0151591919*_D1160+
0.0031884871*_D1161+
-0.015090038*_D1162+
0.0074898282*_D1163+
0.0175624563*_D1164+
0.0041235841*_D1165+
0.0085216842*_D1166+
0.0036640745*_D1167+
-0.048350945*_D1168+
-0.005152953*_D1169+
0.0041309874*_D1170+
-0.00042084*_D1171+
-0.163944858*_D1172+
0.0253270599*_D1173+
0.0039219459*_D1174+
-0.006539161*_D1175+
0.0066379043*_D1176+
0.0076308721*_D1177+
0.0088868106*_D1178+
0.0139388446*_D1179+
0.0023880495*_D1180+
0.0104727971*_D1181+
0.0051395326*_D1182+
0.0014555073*_D1183+
-0.000329975*_D1184+
0.0121735848*_D1185+
0.0069300107*_D1186+
-0.017367642*_D1187+
-0.003151734*_D1188+
-0.00777603*_D1189+
-0.029214085*_D1190+
-0.003401052*_D1191+
-0.006219727*_D1192+
-0.006304286*_D1193+
0.0139150338*_D1194+
0.004216284*_D1195+
0.0254612997*_D1196+
0.0063340846*_D1197+
0.007101399*_D1198+
0.01460094*_D1199+
0.0143640769*_D1200+
0.003460055*_D1201+
0.0281343726*_D1202+
0.0112619966*_D1203+
0.0107401602*_D1204;
/****************************************/
* Componente principal 6;
/****************************************/
;
length PC_6 8;
label PC_6 = "Componente principal 6";
PC_6 =
0.0089509341*_D1+
-0.011705037*_D2+
-0.001800364*_D3+
-0.010264471*_D4+
0.0079707532*_D5+
0.0096908638*_D6+
0.0086761782*_D7+
0.0107495189*_D8+
0.0009047445*_D9+
0.0684311412*_D10+
0.0059611822*_D11+
0.0041321078*_D12+
-0.000094336*_D13+
-0.005370399*_D14+
0.0050932014*_D15+
-0.033871314*_D16+
-0.025503358*_D17+
0.0066799229*_D18+
0.0025408304*_D19+
0.0140918562*_D20+
0.0040026203*_D21+
0.025417605*_D22+
0.0044799269*_D23+
0.0046747114*_D24+
-0.014658276*_D25+
0.0090891036*_D26+
0.0045059155*_D27+
0.0143104187*_D28+
0.0286772009*_D29+
0.0032851029*_D30+
0.0063241331*_D31+
0.0076076442*_D32+
0.0230186079*_D33+
0.0056785102*_D34+
0.0672403084*_D35+
-0.009566352*_D36+
0.0026764935*_D37+
-0.00812932*_D38+
0.0018368108*_D39+
0.0052986927*_D40+
0.0218745858*_D41+
0.0313079899*_D42+
0.0047033627*_D43+
-0.024347455*_D44+
0.0052007039*_D45+
-0.004771672*_D46+
0.0013722278*_D47+
0.0031219773*_D48+
-0.079148376*_D49+
-0.014738291*_D50+
-0.001956602*_D51+
0.0065282387*_D52+
0.1107711535*_D53+
-0.000354081*_D54+
0.0111280658*_D55+
0.0108076331*_D56+
0.0152058113*_D57+
-0.003222525*_D58+
0.0100085052*_D59+
0.0310043042*_D60+
0.058495196*_D61+
0.0116066139*_D62+
0.0033201326*_D63+
0.0120242592*_D64+
0.0088205159*_D65+
0.003628044*_D66+
0.0114314343*_D67+
-0.009412101*_D68+
0.0043142819*_D69+
0.0019794723*_D70+
0.0158064046*_D71+
-0.027505999*_D72+
-0.001935414*_D73+
0.0417123648*_D74+
0.015521097*_D75+
-0.013116968*_D76+
0.0137551919*_D77+
-0.005691248*_D78+
0.0035053753*_D79+
0.0113838193*_D80+
-0.002666141*_D81+
0.011380434*_D82+
-0.012200686*_D83+
0.0106511524*_D84+
-0.055917094*_D85+
0.0037108231*_D86+
0.0048485607*_D87+
0.0012993628*_D88+
0.0254494274*_D89+
-0.022418892*_D90+
0.0003756569*_D91+
-0.01559948*_D92+
0.0171525013*_D93+
0.05127374*_D94+
0.0038516011*_D95+
0.0534488111*_D96+
-0.018486469*_D97+
-0.03361733*_D98+
0.0003403747*_D99+
0.0050522338*_D100+
-0.002648419*_D101+
0.0022789299*_D102+
0.0104118803*_D103+
0.0161527818*_D104+
0.0094850669*_D105+
0.0118855989*_D106+
0.007779589*_D107+
0.0021451381*_D108+
-0.001614653*_D109+
-0.008633496*_D110+
0.0262244264*_D111+
-0.005317195*_D112+
0.0191990494*_D113+
0.0054130028*_D114+
-0.019029216*_D115+
0.004658267*_D116+
0.0128439482*_D117+
0.0191542749*_D118+
-0.000131804*_D119+
-0.004379775*_D120+
-0.003900564*_D121+
0.0003684732*_D122+
0.0052276662*_D123+
0.0034403203*_D124+
0.0242107515*_D125+
0.0055203436*_D126+
-0.039017184*_D127+
0.0052506091*_D128+
0.0212242729*_D129+
-0.009607717*_D130+
0.0036029023*_D131+
-0.000732879*_D132+
0.0279523762*_D133+
0.0099591636*_D134+
0.0065055088*_D135+
0.0010465147*_D136+
0.0041454134*_D137+
-0.000279666*_D138+
0.0262992139*_D139+
0.0126196142*_D140+
0.0068438991*_D141+
-0.004884463*_D142+
0.0067722947*_D143+
0.0245306795*_D144+
0.0164028903*_D145+
0.0018976177*_D146+
0.0037435427*_D147+
-0.005582128*_D148+
0.022895933*_D149+
0.0035257616*_D150+
0.003452146*_D151+
-0.017880507*_D152+
0.0092901529*_D153+
-0.011722694*_D154+
0.0069975346*_D155+
-0.026779299*_D156+
0.0063856962*_D157+
-0.007468183*_D158+
0.0024248146*_D159+
0.0044360706*_D160+
-0.002822166*_D161+
-0.001871194*_D162+
0.0122748794*_D163+
0.0060932484*_D164+
0.0136619517*_D165+
-0.001028811*_D166+
0.0113194911*_D167+
0.0116089457*_D168+
0.0000795352*_D169+
0.0238968159*_D170+
0.0030070966*_D171+
0.0116665514*_D172+
0.0264094401*_D173+
0.0362546043*_D174+
0.0315174513*_D175+
-0.009191358*_D176+
0.0105803126*_D177+
0.0131456603*_D178+
-0.055990222*_D179+
0.0014274365*_D180+
0.0110820283*_D181+
0.0327488597*_D182+
0.0086598605*_D183+
0.0085312348*_D184+
-0.003541742*_D185+
-0.036420099*_D186+
0.0051017648*_D187+
0.0070337325*_D188+
-0.002082735*_D189+
-0.084445746*_D190+
-0.001132347*_D191+
-0.051050994*_D192+
0.0119644538*_D193+
0.0002607545*_D194+
-0.013539142*_D195+
0.0057454207*_D196+
-0.004377781*_D197+
0.0160774299*_D198+
0.0056876475*_D199+
-0.003599991*_D200+
-0.094162046*_D201+
0.0096655695*_D202+
0.0112156498*_D203+
-0.00375783*_D204+
-0.036879114*_D205+
0.0022852334*_D206+
0.0028583688*_D207+
-0.017459644*_D208+
0.0042288375*_D209+
0.0093547944*_D210+
0.0053769171*_D211+
0.0002932077*_D212+
-0.01797306*_D213+
0.0083982497*_D214+
0.0086059022*_D215+
-0.009341113*_D216+
-0.000030003*_D217+
0.0076393175*_D218+
0.0028038097*_D219+
0.0021035943*_D220+
0.0011485912*_D221+
0.0011785161*_D222+
-0.017262416*_D223+
0.0065539076*_D224+
0.0082726036*_D225+
0.0053126242*_D226+
-0.014505125*_D227+
0.0111900479*_D228+
-0.007117475*_D229+
0.0003423913*_D230+
0.0033852823*_D231+
-0.001485639*_D232+
-0.003337638*_D233+
0.0054849327*_D234+
0.0024036674*_D235+
0.0070317369*_D236+
0.0361322659*_D237+
0.0040023785*_D238+
0.0081080441*_D239+
0.0178368626*_D240+
0.016657825*_D241+
-0.039540551*_D242+
0.0019023757*_D243+
0.0005287447*_D244+
0.0020019421*_D245+
0.0033404172*_D246+
-0.038835289*_D247+
-0.004324749*_D248+
-0.00880424*_D249+
0.003521656*_D250+
0.012061099*_D251+
0.0065861627*_D252+
-0.002662089*_D253+
-0.000168595*_D254+
0.0095963087*_D255+
-0.002654004*_D256+
0.0221184374*_D257+
-0.012122305*_D258+
0.003900873*_D259+
0.0145342244*_D260+
0.0135554775*_D261+
0.0047677882*_D262+
0.0071847181*_D263+
0.0073329326*_D264+
-0.003517806*_D265+
0.0163458844*_D266+
0.0036679483*_D267+
0.0039579343*_D268+
-0.042051777*_D269+
-0.015669076*_D270+
-0.001792577*_D271+
0.0037954749*_D272+
0.0161240286*_D273+
-0.002122087*_D274+
0.0310874908*_D275+
-0.000589926*_D276+
-0.00537394*_D277+
-0.020569077*_D278+
0.0017580522*_D279+
0.0084744567*_D280+
0.0051225878*_D281+
0.0475743169*_D282+
0.2879273446*_D283+
0.000938099*_D284+
-0.0094196*_D285+
0.0116590063*_D286+
0.0023823495*_D287+
-0.000241023*_D288+
-0.019851022*_D289+
-0.004587045*_D290+
0.0117264249*_D291+
0.0009359691*_D292+
-0.000322827*_D293+
0.0022479426*_D294+
0.0050702798*_D295+
-0.009333037*_D296+
0.0020859107*_D297+
0.0004355631*_D298+
-0.013050515*_D299+
0.006293366*_D300+
-0.001846555*_D301+
0.0108163401*_D302+
0.0040976635*_D303+
-0.004185742*_D304+
-0.073414762*_D305+
0.0101085532*_D306+
-0.010849133*_D307+
0.0003471391*_D308+
0.0144774685*_D309+
-0.008490433*_D310+
-0.008095609*_D311+
-0.009397442*_D312+
-0.00054608*_D313+
0.0269389102*_D314+
0.000371563*_D315+
-0.017622172*_D316+
0.0098307399*_D317+
-0.007517257*_D318+
-0.039866769*_D319+
0.0095959284*_D320+
0.0034123618*_D321+
0.0013861737*_D322+
0.0140483391*_D323+
-0.008989829*_D324+
0.0118029603*_D325+
-0.003637984*_D326+
0.0004794341*_D327+
0.0123903333*_D328+
0.0040214652*_D329+
-0.008482982*_D330+
-0.008729465*_D331+
-0.034377485*_D332+
0.0139565918*_D333+
0.0314885232*_D334+
0.0088912167*_D335+
0.0112050037*_D336+
0.0708161889*_D337+
-0.019583278*_D338+
0.0232947295*_D339+
-0.029577629*_D340+
0.0037803584*_D341+
0.0076141657*_D342+
-0.003067837*_D343+
0.005772457*_D344+
-0.010112568*_D345+
-0.013435887*_D346+
0.0030234807*_D347+
0.0061418002*_D348+
0.0036279374*_D349+
0.0008102866*_D350+
-0.033032984*_D351+
0.0010497772*_D352+
0.0032977527*_D353+
-0.00319279*_D354+
0.0062423387*_D355+
-0.029781758*_D356+
0.0143038186*_D357+
-0.000853441*_D358+
-0.005089836*_D359+
0.0024658546*_D360+
0.0077142353*_D361+
0.0362153027*_D362+
0.000750023*_D363+
0.0022734116*_D364+
0.001734188*_D365+
-0.000669451*_D366+
0.0112313799*_D367+
0.0053981705*_D368+
-0.022270627*_D369+
0.0053103845*_D370+
-0.008452937*_D371+
0.0113599941*_D372+
0.0031325209*_D373+
0.0102397667*_D374+
0.022163701*_D375+
0.013899474*_D376+
0.0085334776*_D377+
0.0081111667*_D378+
-0.004458788*_D379+
0.01004679*_D380+
0.0150870688*_D381+
-0.006137821*_D382+
-0.01624578*_D383+
0.00839845*_D384+
0.0058170442*_D385+
0.0122842593*_D386+
0.0018359089*_D387+
0.0164426383*_D388+
-0.005430396*_D389+
-0.065554362*_D390+
0.0028464105*_D391+
0.0022041603*_D392+
0.0179228842*_D393+
-0.007706241*_D394+
-0.002619157*_D395+
0.0124039971*_D396+
-0.011544865*_D397+
0.0040504631*_D398+
-0.00058289*_D399+
0.0047247314*_D400+
0.0041172702*_D401+
-0.022096448*_D402+
-0.009413319*_D403+
0.0030747028*_D404+
-0.046133398*_D405+
0.0189004511*_D406+
0.0090329359*_D407+
0.0087308753*_D408+
0.0090048365*_D409+
-0.01543423*_D410+
-0.010716223*_D411+
-0.015542823*_D412+
-0.002636438*_D413+
-0.01248521*_D414+
0.0023007099*_D415+
0.0333314089*_D416+
0.0190629428*_D417+
0.0141724956*_D418+
0.0018808103*_D419+
-0.002420144*_D420+
0.0094206217*_D421+
0.0071377917*_D422+
-0.027685238*_D423+
0.0001353794*_D424+
0.0050271887*_D425+
-0.001546164*_D426+
0.019456949*_D427+
-0.000254303*_D428+
-0.008283482*_D429+
0.0338738247*_D430+
-0.052035062*_D431+
0.0080802111*_D432+
0.0203890374*_D433+
0.0213363208*_D434+
0.025535872*_D435+
-0.001021249*_D436+
-0.006533862*_D437+
0.0023365639*_D438+
0.002451442*_D439+
0.0121399832*_D440+
-0.071909151*_D441+
0.0355289025*_D442+
0.0051590394*_D443+
-0.046388857*_D444+
0.0029595933*_D445+
-0.005762035*_D446+
0.0231658991*_D447+
-0.00928351*_D448+
-0.010909343*_D449+
0.0257251216*_D450+
0.0050826554*_D451+
0.0115091287*_D452+
-0.000559897*_D453+
0.001765446*_D454+
0.0236258783*_D455+
0.0485939351*_D456+
0.0042307657*_D457+
-0.017463273*_D458+
-0.010851365*_D459+
0.0166177748*_D460+
0.0525921075*_D461+
0.0036351653*_D462+
-0.005800364*_D463+
0.0164134538*_D464+
0.0154495978*_D465+
0.0172470809*_D466+
0.0011012911*_D467+
0.0094434495*_D468+
-0.000081561*_D469+
0.0024868209*_D470+
0.0161281215*_D471+
0.0106365874*_D472+
0.0095874139*_D473+
0.0069052878*_D474+
0.0056294751*_D475+
-0.005429047*_D476+
-0.000209726*_D477+
0.0062426299*_D478+
0.0048525016*_D479+
0.0025224431*_D480+
0.0198151832*_D481+
0.0009740677*_D482+
0.0255467671*_D483+
0.0107827236*_D484+
0.0008026094*_D485+
-0.015680679*_D486+
0.0104275623*_D487+
0.0137933218*_D488+
0.0022682517*_D489+
0.0341065413*_D490+
0.0157425654*_D491+
0.011456577*_D492+
0.012840581*_D493+
0.0062079437*_D494+
-0.010913661*_D495+
0.0045324412*_D496+
0.0154969619*_D497+
-0.005777417*_D498+
0.0229247285*_D499+
0.0059305732*_D500+
-0.070914702*_D501+
-0.001786053*_D502+
0.014623601*_D503+
0.0297051379*_D504+
0.0260091738*_D505+
-0.02347227*_D506+
0.0103577717*_D507+
-0.020986383*_D508+
-0.023502558*_D509+
0.0038631906*_D510+
0.0017102012*_D511+
-0.000747202*_D512+
-0.001087092*_D513+
0.0044505406*_D514+
0.0032363085*_D515+
0.0032106418*_D516+
0.0074402109*_D517+
-0.00592284*_D518+
0.0023091016*_D519+
0.0053150688*_D520+
-0.008486683*_D521+
-0.007324244*_D522+
-0.004020048*_D523+
-0.001811825*_D524+
0.0014220464*_D525+
-0.026821381*_D526+
0.0206642539*_D527+
0.0027390445*_D528+
0.0117921212*_D529+
-0.007030986*_D530+
0.0122616876*_D531+
0.0052544651*_D532+
0.0237967006*_D533+
-0.004769908*_D534+
-0.002039639*_D535+
0.0093237012*_D536+
0.0097705733*_D537+
0.032956635*_D538+
0.0252827496*_D539+
0.0042376328*_D540+
0.0059196535*_D541+
0.1632459953*_D542+
0.2007796471*_D543+
0.0100632251*_D544+
-0.009701794*_D545+
0.0112406836*_D546+
0.0528477459*_D547+
0.0070981668*_D548+
-0.003882242*_D549+
0.0170630833*_D550+
0.029288921*_D551+
0.007662057*_D552+
0.1122956267*_D553+
0.0439942096*_D554+
0.0031919569*_D555+
0.0239739997*_D556+
-0.004930573*_D557+
0.0079902561*_D558+
-0.002269871*_D559+
-0.000253539*_D560+
0.0133815918*_D561+
-0.022846243*_D562+
-0.002381306*_D563+
-0.009746725*_D564+
0.0010800535*_D565+
-0.047521367*_D566+
-0.021507158*_D567+
0.003025364*_D568+
0.0797643124*_D569+
0.0134655948*_D570+
0.0021757254*_D571+
-0.011487486*_D572+
-0.007417063*_D573+
0.0049448433*_D574+
0.003860718*_D575+
0.0051409222*_D576+
-0.005481747*_D577+
-0.008372928*_D578+
0.0047205244*_D579+
0.0372415647*_D580+
0.0055667048*_D581+
0.0005237034*_D582+
-0.00503686*_D583+
0.0002193851*_D584+
0.0169754478*_D585+
0.011335985*_D586+
0.0145172947*_D587+
0.0140637912*_D588+
0.0168657751*_D589+
0.0396609326*_D590+
0.0386813924*_D591+
0.007982147*_D592+
0.0134767134*_D593+
0.0104033139*_D594+
0.0048685454*_D595+
-0.000124907*_D596+
-0.022236424*_D597+
0.000548973*_D598+
0.0102735683*_D599+
0.0117675424*_D600+
-0.00519628*_D601+
-0.005659251*_D602+
-0.013182206*_D603+
-0.027410004*_D604+
0.0051189348*_D605+
0.0022584575*_D606+
0.0315414366*_D607+
0.0511221538*_D608+
-0.007928293*_D609+
0.0078405387*_D610+
-0.012106569*_D611+
0.0067950311*_D612+
-0.013451787*_D613+
-0.000141061*_D614+
0.0073570088*_D615+
0.003769347*_D616+
-0.00460641*_D617+
-0.001326444*_D618+
0.0069572811*_D619+
-0.000381345*_D620+
-0.00212456*_D621+
0.0043242721*_D622+
-0.006777781*_D623+
-0.004954075*_D624+
-0.026764629*_D625+
0.0328994726*_D626+
-0.009037688*_D627+
-0.001505957*_D628+
0.0072250276*_D629+
0.0084069862*_D630+
0.0020131563*_D631+
-0.071400129*_D632+
-0.002444062*_D633+
-0.022453638*_D634+
0.0041206942*_D635+
0.0184325501*_D636+
0.0049443966*_D637+
0.0018394774*_D638+
-0.015624169*_D639+
0.0065859155*_D640+
0.01483955*_D641+
0.0030411743*_D642+
0.0014960549*_D643+
0.0086496869*_D644+
0.0286626747*_D645+
0.0046718731*_D646+
0.0095482782*_D647+
0.0022591427*_D648+
0.0110951522*_D649+
0.0170737204*_D650+
0.0073803424*_D651+
0.006605597*_D652+
-0.004896513*_D653+
0.0158480095*_D654+
-0.017278573*_D655+
0.005995155*_D656+
-0.024056885*_D657+
-0.005056334*_D658+
0.0038997374*_D659+
0.0070374118*_D660+
0.0026200839*_D661+
0.0175122732*_D662+
0.0061199693*_D663+
-0.010371325*_D664+
0.0535358273*_D665+
0.0053935599*_D666+
0.0118542683*_D667+
0.0120557232*_D668+
0.0134284182*_D669+
0.0021277612*_D670+
0.0008967886*_D671+
-0.000544291*_D672+
0.0073691965*_D673+
-0.010680247*_D674+
-0.00030315*_D675+
-0.0115461*_D676+
0.0081716177*_D677+
0.029433404*_D678+
0.0043220946*_D679+
-0.00036763*_D680+
0.0127289308*_D681+
0.0106600102*_D682+
-0.146944271*_D683+
0.0051588895*_D684+
0.0072882906*_D685+
-0.040454663*_D686+
-0.008405417*_D687+
0.0098259426*_D688+
0.0056212049*_D689+
-0.019526503*_D690+
-0.021567873*_D691+
0.0212808376*_D692+
0.0034451443*_D693+
0.0281113854*_D694+
0.015806469*_D695+
0.0025152673*_D696+
-0.005219192*_D697+
0.0145133338*_D698+
0.0054050709*_D699+
0.0291888515*_D700+
0.003136427*_D701+
-0.002270543*_D702+
0.0070533989*_D703+
0.018500097*_D704+
0.0209464764*_D705+
0.0136659278*_D706+
0.0008041371*_D707+
-0.002932619*_D708+
0.013422018*_D709+
0.0249088324*_D710+
0.0104672761*_D711+
-0.004550239*_D712+
-0.020366715*_D713+
0.0094718377*_D714+
0.0042181499*_D715+
0.0129412228*_D716+
0.0354622299*_D717+
0.0012528269*_D718+
-0.000943252*_D719+
0.0018721324*_D720+
0.0030010247*_D721+
0.0111246404*_D722+
-0.012028746*_D723+
0.0240888903*_D724+
0.0021949254*_D725+
0.0068672298*_D726+
-0.003128909*_D727+
0.0186040056*_D728+
0.0220252991*_D729+
0.0003407652*_D730+
0.0049641567*_D731+
0.000805094*_D732+
0.0090996996*_D733+
0.0066079335*_D734+
0.0129658341*_D735+
-0.027850309*_D736+
0.0221750748*_D737+
-0.014195638*_D738+
-0.021040507*_D739+
-0.034665893*_D740+
0.0283684241*_D741+
0.0451336697*_D742+
-0.013677642*_D743+
0.0063684769*_D744+
0.0026831971*_D745+
0.0088449718*_D746+
0.0105038162*_D747+
0.0629046243*_D748+
0.0183128957*_D749+
-0.002966031*_D750+
0.02387527*_D751+
-0.015916745*_D752+
-0.000210891*_D753+
0.0122656516*_D754+
-0.004617692*_D755+
0.0062751743*_D756+
0.0042346118*_D757+
0.0257101309*_D758+
0.0599501266*_D759+
0.0040226858*_D760+
-0.014731725*_D761+
0.0244010467*_D762+
0.0154465095*_D763+
0.0020631478*_D764+
-0.026295248*_D765+
0.0029713894*_D766+
-0.008387145*_D767+
0.0007882269*_D768+
0.0421777704*_D769+
-0.011027762*_D770+
0.00174644*_D771+
0.0126098057*_D772+
0.0060774879*_D773+
0.0181735654*_D774+
0.0046065011*_D775+
0.0057536329*_D776+
0.0017101599*_D777+
0.0014035967*_D778+
0.0355013076*_D779+
0.0117696171*_D780+
0.0133024332*_D781+
0.0017256046*_D782+
0.0068315033*_D783+
-0.053695027*_D784+
-0.026878354*_D785+
-0.02093006*_D786+
-0.04922858*_D787+
0.0006778997*_D788+
0.0041315553*_D789+
-0.000778968*_D790+
0.0077712156*_D791+
0.0025923961*_D792+
0.003128504*_D793+
0.008410348*_D794+
0.0131986968*_D795+
-0.035366585*_D796+
0.0251215958*_D797+
0.037987973*_D798+
0.0262318414*_D799+
0.0139570749*_D800+
0.0009478129*_D801+
-0.021011443*_D802+
-0.016624297*_D803+
-0.013537471*_D804+
0.0024724822*_D805+
0.0197478757*_D806+
0.0164485079*_D807+
-0.03144967*_D808+
0.0242106307*_D809+
0.0077086618*_D810+
-0.003810332*_D811+
0.0004840105*_D812+
0.0286492411*_D813+
0.0020913404*_D814+
-0.000550462*_D815+
0.0046965811*_D816+
0.0089267595*_D817+
0.0079476079*_D818+
0.0006610987*_D819+
-0.000194607*_D820+
0.0050391885*_D821+
-0.039339126*_D822+
-0.009914598*_D823+
0.0016860485*_D824+
0.0006502623*_D825+
-0.052336134*_D826+
-0.002896192*_D827+
-0.002576673*_D828+
-0.017295862*_D829+
0.0253262405*_D830+
0.0005785547*_D831+
0.0120674511*_D832+
0.005626875*_D833+
-0.011550749*_D834+
0.0080714072*_D835+
0.0036864159*_D836+
0.0063868721*_D837+
0.0058441776*_D838+
0.0048444681*_D839+
0.012284108*_D840+
0.0191904089*_D841+
0.0050117522*_D842+
0.0056793407*_D843+
0.009871317*_D844+
-0.001429956*_D845+
0.0116576112*_D846+
0.0375277056*_D847+
0.0140700359*_D848+
0.1877807323*_D849+
0.0512596655*_D850+
-0.025750157*_D851+
0.0075222528*_D852+
0.0047314323*_D853+
0.0123665051*_D854+
0.0131685631*_D855+
0.0110037373*_D856+
0.0071523666*_D857+
0.0118499052*_D858+
0.0097059912*_D859+
0.0064971695*_D860+
0.0054506778*_D861+
0.0216553541*_D862+
0.0129994284*_D863+
0.0026603*_D864+
0.0038914481*_D865+
0.0228378807*_D866+
0.0106912278*_D867+
-0.002473203*_D868+
-0.021098285*_D869+
0.0126498243*_D870+
0.0017575142*_D871+
-0.014432506*_D872+
0.001443785*_D873+
0.0230371795*_D874+
0.005232488*_D875+
0.0083962569*_D876+
-0.003832114*_D877+
0.0010135119*_D878+
0.0051572531*_D879+
0.0197683043*_D880+
-0.013573508*_D881+
0.0374573037*_D882+
-0.015368401*_D883+
-0.004725358*_D884+
0.0228925084*_D885+
0.0160631815*_D886+
0.0136306838*_D887+
0.0033154606*_D888+
-0.020115772*_D889+
-0.005689973*_D890+
0.009238915*_D891+
0.0053118607*_D892+
0.0004127711*_D893+
-0.004748352*_D894+
0.0028807896*_D895+
-0.00044102*_D896+
-0.010766165*_D897+
-0.010305435*_D898+
0.026094014*_D899+
0.0065336206*_D900+
0.0051474814*_D901+
0.0055212819*_D902+
0.012554606*_D903+
0.0088655516*_D904+
-0.009129658*_D905+
0.0015592746*_D906+
-0.003726208*_D907+
0.002687876*_D908+
-0.015456656*_D909+
0.0355013076*_D910+
0.0130232222*_D911+
-0.047341171*_D912+
0.0009453923*_D913+
0.0085092645*_D914+
0.0330476595*_D915+
0.0045129616*_D916+
-0.006390881*_D917+
-0.001684982*_D918+
0.0103935352*_D919+
-0.006137364*_D920+
0.0015982431*_D921+
0.0072764119*_D922+
0.0270123711*_D923+
0.0381252897*_D924+
-0.024725008*_D925+
0.0024657725*_D926+
0.0070877271*_D927+
0.0059544844*_D928+
-0.006695673*_D929+
-0.041419424*_D930+
-0.00375504*_D931+
0.0142159433*_D932+
0.0045162568*_D933+
0.0015541459*_D934+
-0.003684084*_D935+
0.0111511832*_D936+
0.0056926094*_D937+
0.0047147536*_D938+
-0.009114435*_D939+
0.0162340682*_D940+
0.0211787354*_D941+
-0.005883636*_D942+
0.0086555785*_D943+
0.0066226008*_D944+
0.0054502633*_D945+
-0.013633054*_D946+
0.0119296432*_D947+
0.0068555123*_D948+
0.002842519*_D949+
-0.003505359*_D950+
0.0085120097*_D951+
-0.113543758*_D952+
0.0096787846*_D953+
-0.013031783*_D954+
0.0122683621*_D955+
0.0167354925*_D956+
-0.022070943*_D957+
-0.011702981*_D958+
-0.00841353*_D959+
0.0363301735*_D960+
0.0152261065*_D961+
0.005893407*_D962+
0.0273964375*_D963+
0.0100664329*_D964+
0.0026458447*_D965+
-0.0024895*_D966+
0.0070998242*_D967+
0.0168603803*_D968+
0.006189633*_D969+
0.0147246662*_D970+
0.0017629155*_D971+
-0.005920967*_D972+
0.0084748505*_D973+
-0.006100735*_D974+
0.0061592716*_D975+
0.0010249233*_D976+
0.0015426197*_D977+
0.0154420436*_D978+
-0.028310885*_D979+
-0.025022565*_D980+
0.0031238653*_D981+
-0.000251043*_D982+
-0.006942228*_D983+
0.0071882397*_D984+
0.0033453748*_D985+
0.0145112256*_D986+
-0.022612556*_D987+
-0.012893285*_D988+
0.0388784252*_D989+
0.0066068217*_D990+
0.0001578878*_D991+
0.0117696939*_D992+
-0.007103705*_D993+
0.0030802152*_D994+
0.0180117122*_D995+
-0.009298286*_D996+
-0.018521662*_D997+
0.0183687148*_D998+
0.0034664382*_D999+
-0.002802759*_D1000+
-0.013364618*_D1001+
0.0103504385*_D1002+
0.0041215759*_D1003+
0.0054243396*_D1004+
0.0025051399*_D1005+
0.0053276512*_D1006+
0.0047748767*_D1007+
0.0086919688*_D1008+
-0.001758586*_D1009+
0.0514114766*_D1010+
0.0210207962*_D1011+
-0.011090164*_D1012+
-0.005942398*_D1013+
0.0365068609*_D1014+
0.0022536569*_D1015+
0.0282106463*_D1016+
0.0126161514*_D1017+
0.0048428569*_D1018+
0.0139942507*_D1019+
0.0010412166*_D1020+
0.0316673749*_D1021+
-0.012786446*_D1022+
0.007412951*_D1023+
0.0202641138*_D1024+
0.0123206963*_D1025+
-0.004872858*_D1026+
0.0096754334*_D1027+
-0.007462901*_D1028+
0.4713693281*_D1029+
-0.219068971*_D1030+
0.0242062381*_D1031+
-0.00251346*_D1032+
-0.001440986*_D1033+
-0.007595683*_D1034+
0.0038982017*_D1035+
-0.020871323*_D1036+
0.0054487856*_D1037+
0.0043776607*_D1038+
-0.022389198*_D1039+
-0.000498824*_D1040+
0.0013264268*_D1041+
0.0074705014*_D1042+
-0.025247483*_D1043+
0.0020341891*_D1044+
0.0066160559*_D1045+
-0.01254847*_D1046+
0.003927592*_D1047+
0.0038484408*_D1048+
0.0202683174*_D1049+
-0.015657821*_D1050+
-0.0059694*_D1051+
0.0015006161*_D1052+
0.0237372985*_D1053+
-0.001983877*_D1054+
0.0094394496*_D1055+
0.0074115865*_D1056+
-0.01214025*_D1057+
-0.00429857*_D1058+
-0.001995068*_D1059+
-0.007659066*_D1060+
0.0026241985*_D1061+
0.0044406801*_D1062+
-0.004140767*_D1063+
0.0054363555*_D1064+
-0.005831508*_D1065+
-0.042244265*_D1066+
0.0255461993*_D1067+
0.0542514051*_D1068+
0.0249290142*_D1069+
-0.003288346*_D1070+
-0.008047046*_D1071+
-0.019187752*_D1072+
0.005298755*_D1073+
0.0494450115*_D1074+
0.0054874825*_D1075+
0.0027185698*_D1076+
-0.004408955*_D1077+
0.0048758662*_D1078+
0.0090250598*_D1079+
-0.007930785*_D1080+
0.0080090667*_D1081+
-0.006219837*_D1082+
0.0079954443*_D1083+
0.0180728732*_D1084+
0.0309078581*_D1085+
0.0141206071*_D1086+
0.0002097458*_D1087+
-0.022092931*_D1088+
0.0152231387*_D1089+
0.0130242052*_D1090+
-0.003104671*_D1091+
0.0165862171*_D1092+
-0.012875457*_D1093+
-0.023883293*_D1094+
0.0042001516*_D1095+
0.0075634326*_D1096+
0.0084478732*_D1097+
0.0100876809*_D1098+
0.0046608089*_D1099+
-0.000412596*_D1100+
0.0044007799*_D1101+
0.000322858*_D1102+
-0.007546204*_D1103+
0.001206513*_D1104+
0.0095157636*_D1105+
0.0066593907*_D1106+
0.01320882*_D1107+
-0.000300916*_D1108+
0.0201108202*_D1109+
0.0197518426*_D1110+
0.0044927163*_D1111+
0.0222156247*_D1112+
0.0207292167*_D1113+
0.0190196944*_D1114+
0.0484879074*_D1115+
0.0048532946*_D1116+
-0.00929839*_D1117+
0.004855336*_D1118+
-0.011467853*_D1119+
0.0219304539*_D1120+
0.0143135859*_D1121+
-0.026874474*_D1122+
0.0566474162*_D1123+
-0.022564474*_D1124+
0.0076220739*_D1125+
-0.013313404*_D1126+
0.0266047423*_D1127+
0.0177349824*_D1128+
0.0126975691*_D1129+
-0.040507678*_D1130+
-0.040605716*_D1131+
0.0022954304*_D1132+
-0.012923685*_D1133+
0.0085299849*_D1134+
-0.008323951*_D1135+
0.0043326735*_D1136+
-0.041808514*_D1137+
-0.003694431*_D1138+
0.0040263015*_D1139+
0.0271815174*_D1140+
0.0919828064*_D1141+
-0.005969945*_D1142+
-0.040385205*_D1143+
0.0019394288*_D1144+
0.0060022898*_D1145+
0.0137043846*_D1146+
0.0034065581*_D1147+
0.0018090501*_D1148+
0.0041883479*_D1149+
0.0053344948*_D1150+
0.0171350936*_D1151+
-0.006887128*_D1152+
0.0146515266*_D1153+
0.0057157139*_D1154+
0.0143462096*_D1155+
0.0108961064*_D1156+
0.0283254545*_D1157+
0.0076076384*_D1158+
0.008451775*_D1159+
0.0108261016*_D1160+
0.0077766014*_D1161+
-0.007093955*_D1162+
0.0136359116*_D1163+
0.0225334747*_D1164+
0.0043573421*_D1165+
0.007497891*_D1166+
0.0015518558*_D1167+
-0.157301979*_D1168+
-0.016728069*_D1169+
0.0079431949*_D1170+
-0.0106154*_D1171+
-0.252511701*_D1172+
0.0223522008*_D1173+
0.0075159168*_D1174+
0.0014457131*_D1175+
0.0062221758*_D1176+
0.0027072313*_D1177+
-0.009721388*_D1178+
0.0048253123*_D1179+
0.0011251029*_D1180+
0.0168045248*_D1181+
0.0032180459*_D1182+
-0.00328694*_D1183+
-0.010346994*_D1184+
0.0123683993*_D1185+
0.0038113486*_D1186+
-0.051606647*_D1187+
-0.012993887*_D1188+
-0.021288697*_D1189+
-0.090781228*_D1190+
-0.015483765*_D1191+
-0.022670688*_D1192+
-0.01772635*_D1193+
0.0239644495*_D1194+
0.0048869921*_D1195+
0.0421981555*_D1196+
0.0128974724*_D1197+
0.0095997454*_D1198+
0.0210457531*_D1199+
0.0012796604*_D1200+
0.0011470537*_D1201+
0.0489638623*_D1202+
0.0187914408*_D1203+
0.0123866281*_D1204;
/****************************************/
* Componente principal 7;
/****************************************/
;
length PC_7 8;
label PC_7 = "Componente principal 7";
PC_7 =
0.010982498*_D1+
-0.000459331*_D2+
0.0121890655*_D3+
-0.008972556*_D4+
0.0086713546*_D5+
0.0033987866*_D6+
-0.002844435*_D7+
0.0168229796*_D8+
0.0032415333*_D9+
0.0719314863*_D10+
-0.003153428*_D11+
-0.003407465*_D12+
-0.002239125*_D13+
-0.001522577*_D14+
0.0012764185*_D15+
-0.009152616*_D16+
-0.00896951*_D17+
-0.004386202*_D18+
-0.000550608*_D19+
0.0162488581*_D20+
0.0027642752*_D21+
0.0258472217*_D22+
0.000241178*_D23+
0.0001921335*_D24+
-0.001232474*_D25+
0.0071107369*_D26+
0.0047643496*_D27+
-0.022240479*_D28+
0.0306235176*_D29+
-0.001119544*_D30+
-0.007594719*_D31+
-0.010614581*_D32+
0.0242697948*_D33+
-0.003862432*_D34+
0.0578658133*_D35+
-0.011002215*_D36+
0.0025287668*_D37+
0.0008997474*_D38+
0.0051629277*_D39+
0.0077730073*_D40+
-0.03758838*_D41+
0.0325327868*_D42+
0.0003963748*_D43+
-0.00139045*_D44+
0.0039722149*_D45+
0.0013447922*_D46+
-0.006075263*_D47+
0.0050413164*_D48+
-0.011734924*_D49+
-0.003812772*_D50+
0.0011383907*_D51+
0.0061125796*_D52+
0.1179218186*_D53+
-0.004560438*_D54+
0.0086907099*_D55+
0.0127610284*_D56+
0.0213276115*_D57+
0.0034160685*_D58+
0.0106830191*_D59+
0.0379151499*_D60+
0.0650871128*_D61+
0.0117965278*_D62+
0.0044727209*_D63+
-0.011741588*_D64+
0.0048758768*_D65+
-0.0031827*_D66+
0.0048704128*_D67+
-0.016238175*_D68+
0.0029232739*_D69+
-0.003721294*_D70+
-0.026642137*_D71+
-0.002635801*_D72+
-0.002127505*_D73+
0.0439330753*_D74+
0.016617365*_D75+
0.0016435025*_D76+
-0.018277213*_D77+
-0.000729516*_D78+
-0.009976786*_D79+
0.013158668*_D80+
-0.000435404*_D81+
0.0130186016*_D82+
-0.001733989*_D83+
-0.024008782*_D84+
-0.017802285*_D85+
0.0006610389*_D86+
0.0133575036*_D87+
0.0038683453*_D88+
-0.016170845*_D89+
-0.000795859*_D90+
-0.002904554*_D91+
-0.000894264*_D92+
0.0194925623*_D93+
0.0481037763*_D94+
0.0013930071*_D95+
0.0583994477*_D96+
-0.005313274*_D97+
-0.003465773*_D98+
0.0030961116*_D99+
0.0072590503*_D100+
-0.005183006*_D101+
-0.007663297*_D102+
0.0104811456*_D103+
0.0163979099*_D104+
-0.00014885*_D105+
0.024952369*_D106+
0.0040974595*_D107+
-0.003662502*_D108+
0.001943973*_D109+
-0.007125629*_D110+
0.0285245267*_D111+
0.0082716029*_D112+
-0.036595407*_D113+
-0.008597878*_D114+
-0.012291405*_D115+
0.0046306784*_D116+
0.0006447637*_D117+
0.021356933*_D118+
0.0006777837*_D119+
0.0028722592*_D120+
-0.007412339*_D121+
-0.004414029*_D122+
-0.007264546*_D123+
-0.002960242*_D124+
0.0257926657*_D125+
0.0026527954*_D126+
-0.004561885*_D127+
-0.007638908*_D128+
0.0197968667*_D129+
0.0092618214*_D130+
0.0101773022*_D131+
0.0056075848*_D132+
-0.046523474*_D133+
0.0038657198*_D134+
0.0051572546*_D135+
-0.006552713*_D136+
-0.005338404*_D137+
0.006124156*_D138+
-0.046724698*_D139+
-0.021514664*_D140+
0.0070767659*_D141+
-0.002880862*_D142+
0.0039939308*_D143+
0.023590409*_D144+
0.019563061*_D145+
-0.008989081*_D146+
0.0024769843*_D147+
-0.00205706*_D148+
0.0264417383*_D149+
0.0097209869*_D150+
0.0008087916*_D151+
0.0014004526*_D152+
-0.006052666*_D153+
-0.001349233*_D154+
-0.00307514*_D155+
-0.011477755*_D156+
-0.008688134*_D157+
-0.001328345*_D158+
0.0050700547*_D159+
0.0010133035*_D160+
0.0021822419*_D161+
0.0108545467*_D162+
0.0130377633*_D163+
0.0017035636*_D164+
-0.023695989*_D165+
0.0028603629*_D166+
-0.008330181*_D167+
0.0127478752*_D168+
0.0000783916*_D169+
-0.032503388*_D170+
0.0069769127*_D171+
0.0132094435*_D172+
0.021984269*_D173+
0.0389850167*_D174+
0.0056499322*_D175+
-0.000989663*_D176+
0.0084764567*_D177+
0.0193763035*_D178+
-0.004323551*_D179+
0.000971008*_D180+
0.0120990046*_D181+
0.0313672986*_D182+
0.0107596755*_D183+
-0.01083963*_D184+
-0.001178055*_D185+
-0.004780765*_D186+
-0.000225378*_D187+
0.0019811287*_D188+
-0.004255233*_D189+
-0.009544241*_D190+
0.0011259385*_D191+
-0.003039331*_D192+
0.0037993334*_D193+
0.0002761836*_D194+
0.0009816062*_D195+
0.0064893381*_D196+
-0.001629911*_D197+
0.0172908285*_D198+
-0.006465724*_D199+
-0.006052777*_D200+
-0.009209149*_D201+
-0.01620426*_D202+
0.01166713*_D203+
-0.001260414*_D204+
-0.006041748*_D205+
0.0044272693*_D206+
-0.005394674*_D207+
-0.008657618*_D208+
0.0054070269*_D209+
-0.004188412*_D210+
0.0017002373*_D211+
0.001771345*_D212+
-0.002113107*_D213+
0.0116171145*_D214+
0.0091604896*_D215+
-0.008405797*_D216+
0.0048167571*_D217+
0.00780516*_D218+
-0.002889946*_D219+
0.0029363219*_D220+
-0.00328646*_D221+
-0.000114089*_D222+
0.0023328499*_D223+
0.0089534216*_D224+
0.0017003675*_D225+
0.0025779744*_D226+
-0.003986512*_D227+
-0.003667506*_D228+
-0.000698046*_D229+
-0.00507798*_D230+
0.0040892413*_D231+
0.0014126633*_D232+
0.0032716473*_D233+
-0.005334595*_D234+
0.0016026591*_D235+
0.0033267142*_D236+
0.0366119199*_D237+
0.0001984963*_D238+
0.0024186215*_D239+
-0.031554972*_D240+
0.0175354543*_D241+
-0.000014543*_D242+
0.0002996193*_D243+
0.0003627546*_D244+
0.0014585952*_D245+
-0.010309491*_D246+
-0.003690253*_D247+
-0.003000571*_D248+
-0.007873*_D249+
-0.010151729*_D250+
0.0071022098*_D251+
0.0104590552*_D252+
-0.004176996*_D253+
0.0002567456*_D254+
0.0085481154*_D255+
-0.000127659*_D256+
0.0228770717*_D257+
-0.01146044*_D258+
-0.005294647*_D259+
0.0025054276*_D260+
0.0143546594*_D261+
-0.003860526*_D262+
0.0047985714*_D263+
0.0048030288*_D264+
0.0049609077*_D265+
0.0154615496*_D266+
0.0048142392*_D267+
-0.007808299*_D268+
-0.003485695*_D269+
0.001282344*_D270+
0.0017941395*_D271+
0.0022033801*_D272+
0.0176866285*_D273+
0.0034873631*_D274+
0.0321735043*_D275+
-0.001540175*_D276+
0.0038029931*_D277+
-0.000641863*_D278+
-0.014738182*_D279+
0.0112158352*_D280+
0.0019762945*_D281+
-0.116325269*_D282+
-0.65476378*_D283+
0.0011636052*_D284+
-0.000794769*_D285+
-0.030277758*_D286+
0.002002188*_D287+
-0.00501911*_D288+
-0.000278495*_D289+
-0.000020911*_D290+
0.0096024038*_D291+
-0.001913758*_D292+
-0.000478075*_D293+
0.0010086836*_D294+
-0.006240713*_D295+
-0.008288374*_D296+
-0.006609166*_D297+
-0.004233512*_D298+
-0.001302172*_D299+
-0.002368583*_D300+
0.0002591915*_D301+
0.0115683808*_D302+
0.0021074185*_D303+
-0.003353782*_D304+
-0.009563136*_D305+
-0.016130136*_D306+
-0.010725323*_D307+
-0.002047456*_D308+
0.0056678872*_D309+
0.0048472962*_D310+
0.0011469647*_D311+
-0.002615531*_D312+
0.0025292603*_D313+
0.0009877601*_D314+
0.0011304187*_D315+
0.000745674*_D316+
0.0113616905*_D317+
-0.001673972*_D318+
-0.003973232*_D319+
-0.004924875*_D320+
-0.013434269*_D321+
-0.001450285*_D322+
0.0125756681*_D323+
0.001078072*_D324+
0.0095862512*_D325+
-0.000144294*_D326+
-0.003635502*_D327+
0.0123959598*_D328+
0.000849639*_D329+
-0.001794681*_D330+
-0.000350958*_D331+
-0.020164555*_D332+
-0.004509597*_D333+
0.0368280276*_D334+
0.0007492701*_D335+
-0.00740689*_D336+
-0.105147508*_D337+
-0.004665338*_D338+
0.0277530109*_D339+
-0.003373568*_D340+
0.0002148053*_D341+
-0.006967438*_D342+
-0.005788758*_D343+
0.0059339877*_D344+
-0.000973636*_D345+
-0.002357936*_D346+
-0.004923891*_D347+
0.0027195652*_D348+
-0.004792427*_D349+
-0.001156926*_D350+
-0.001950387*_D351+
0.0083504465*_D352+
-0.003411553*_D353+
0.0045483813*_D354+
0.0044464055*_D355+
0.0180271407*_D356+
0.0136428844*_D357+
0.0005953778*_D358+
0.0023474593*_D359+
0.0024989071*_D360+
0.012984713*_D361+
0.037995503*_D362+
0.0041226227*_D363+
-0.00345796*_D364+
0.0001946873*_D365+
0.000385782*_D366+
0.0100745784*_D367+
-0.001213425*_D368+
-0.000766217*_D369+
0.0024324412*_D370+
-0.00133197*_D371+
0.0132178704*_D372+
-0.001431926*_D373+
0.0077557486*_D374+
0.0205223538*_D375+
0.0222812444*_D376+
0.0030314868*_D377+
0.0088596137*_D378+
-0.001938236*_D379+
0.006995829*_D380+
0.0156322943*_D381+
0.0045703811*_D382+
-0.00211572*_D383+
-0.010802215*_D384+
-0.005839257*_D385+
0.016582287*_D386+
0.0042849762*_D387+
0.0132708776*_D388+
-0.005816099*_D389+
-0.005066109*_D390+
0.0022343673*_D391+
-0.007202869*_D392+
0.0190187306*_D393+
-0.003705367*_D394+
-0.024663367*_D395+
0.0077660705*_D396+
-0.003941089*_D397+
-0.001162786*_D398+
-0.000430947*_D399+
-0.007730548*_D400+
-0.00316697*_D401+
0.0028994548*_D402+
-0.000992464*_D403+
0.0002214579*_D404+
-0.003974464*_D405+
0.0025605256*_D406+
0.0176501423*_D407+
0.0095710882*_D408+
0.0100112941*_D409+
-0.001937885*_D410+
-0.010023891*_D411+
-0.002333578*_D412+
0.0030175631*_D413+
-0.001313964*_D414+
0.0035075146*_D415+
0.0314456607*_D416+
0.0212639776*_D417+
-0.024041765*_D418+
-0.000224316*_D419+
-0.004198922*_D420+
-0.00244757*_D421+
0.0080310262*_D422+
-0.00947734*_D423+
0.0034406464*_D424+
-0.002269555*_D425+
-0.003962623*_D426+
0.019383384*_D427+
0.0004356515*_D428+
0.0014267954*_D429+
0.0363992276*_D430+
-0.022239577*_D431+
-0.004643521*_D432+
0.0230957333*_D433+
0.0230536189*_D434+
-0.045813375*_D435+
0.0070885282*_D436+
0.0132057651*_D437+
-0.001631375*_D438+
0.0118537692*_D439+
-0.003982621*_D440+
-0.031663836*_D441+
0.0378026514*_D442+
0.0076574176*_D443+
-0.006727749*_D444+
0.002203679*_D445+
-0.001908186*_D446+
0.0232144288*_D447+
-0.00203337*_D448+
-0.009175866*_D449+
-0.021609838*_D450+
0.0096568476*_D451+
-0.003454557*_D452+
-0.004203933*_D453+
0.0085464287*_D454+
0.0247169821*_D455+
0.0519376616*_D456+
0.0022504219*_D457+
-0.001252865*_D458+
-0.000733337*_D459+
0.0173861963*_D460+
0.0594811958*_D461+
0.0031436468*_D462+
-0.005012417*_D463+
0.0179906116*_D464+
0.0153741513*_D465+
0.0168572579*_D466+
0.0006720705*_D467+
0.0095167975*_D468+
0.0002235601*_D469+
0.001631694*_D470+
0.0085241954*_D471+
-0.006482799*_D472+
0.0073390013*_D473+
-0.001044799*_D474+
0.002104223*_D475+
0.0071014769*_D476+
0.0003008552*_D477+
-0.012327104*_D478+
0.0097576482*_D479+
-0.000137517*_D480+
0.0216964722*_D481+
-0.001569348*_D482+
0.0242684943*_D483+
-0.002278107*_D484+
-0.00363164*_D485+
-0.002279274*_D486+
0.011402424*_D487+
0.0136832584*_D488+
0.0026762959*_D489+
0.0342601623*_D490+
0.0153556355*_D491+
-0.017185387*_D492+
0.0094331122*_D493+
0.0042417494*_D494+
-0.002700025*_D495+
0.0011378171*_D496+
0.0085654711*_D497+
-0.001879754*_D498+
0.0229888554*_D499+
-0.00404921*_D500+
-0.006098697*_D501+
0.000260947*_D502+
0.0135666422*_D503+
-0.061685565*_D504+
0.0214490466*_D505+
0.0020173126*_D506+
0.0020455441*_D507+
-0.001559052*_D508+
-0.005963231*_D509+
0.0051122512*_D510+
0.0024265211*_D511+
0.0003744512*_D512+
0.0030948877*_D513+
0.0001360856*_D514+
0.0039190781*_D515+
0.0010402158*_D516+
0.0046624149*_D517+
-0.013257777*_D518+
0.0016028425*_D519+
0.0020555278*_D520+
-0.013555012*_D521+
-0.019051512*_D522+
0.0013829444*_D523+
-0.00188441*_D524+
-0.003928994*_D525+
-0.011060849*_D526+
0.0029296911*_D527+
-0.002070484*_D528+
0.0042396487*_D529+
-0.003398848*_D530+
0.002410164*_D531+
0.0069942879*_D532+
-0.000100143*_D533+
0.0037954112*_D534+
0.0002419291*_D535+
0.0093855538*_D536+
0.0092177951*_D537+
0.0350039629*_D538+
0.0271507762*_D539+
0.0058038585*_D540+
0.0056237835*_D541+
0.1704895778*_D542+
0.2142234211*_D543+
0.0051339743*_D544+
0.0000504884*_D545+
0.0020552788*_D546+
0.057165134*_D547+
-0.006528319*_D548+
-0.003716205*_D549+
0.01395949*_D550+
0.0312477803*_D551+
0.0067976419*_D552+
0.1180601577*_D553+
0.0463313872*_D554+
0.0046857058*_D555+
0.0253833605*_D556+
-0.003526705*_D557+
-0.007464018*_D558+
-0.001865908*_D559+
-0.004868008*_D560+
0.0141811421*_D561+
-0.007765469*_D562+
-0.002966629*_D563+
0.0001210954*_D564+
-0.002297734*_D565+
-0.006950203*_D566+
-0.009808842*_D567+
0.0016419257*_D568+
0.0843723536*_D569+
-0.001635431*_D570+
0.0009435542*_D571+
0.0006744131*_D572+
0.0018712699*_D573+
-0.000073889*_D574+
0.0005467855*_D575+
0.0088035681*_D576+
-0.000566252*_D577+
-0.003806101*_D578+
0.005883782*_D579+
0.0318990247*_D580+
0.0076646581*_D581+
0.003283111*_D582+
0.0011607402*_D583+
-0.001579746*_D584+
-0.01314405*_D585+
-0.00050057*_D586+
0.0160556273*_D587+
0.010936827*_D588+
0.0175930805*_D589+
0.043317065*_D590+
0.0421090167*_D591+
0.0040698551*_D592+
-0.011738146*_D593+
0.0123229138*_D594+
0.0062782154*_D595+
-0.00346624*_D596+
-0.005685785*_D597+
0.0014792519*_D598+
0.0029136334*_D599+
-0.014081652*_D600+
-0.00074545*_D601+
-0.002390377*_D602+
-0.002076202*_D603+
-0.001376067*_D604+
0.0049730082*_D605+
0.0014700649*_D606+
0.0265090545*_D607+
0.0553193815*_D608+
-0.001212553*_D609+
-0.023563317*_D610+
-0.001423559*_D611+
-0.000084536*_D612+
-0.004343605*_D613+
-0.001721448*_D614+
0.0010643914*_D615+
-0.015729029*_D616+
-0.004269904*_D617+
0.0005516943*_D618+
-0.003542208*_D619+
0.0057241971*_D620+
-0.002049752*_D621+
-0.001255427*_D622+
-0.002377911*_D623+
0.0135974009*_D624+
-0.002905607*_D625+
0.0019288148*_D626+
-0.001187687*_D627+
0.0036943599*_D628+
0.0080964501*_D629+
-0.005853299*_D630+
0.000235135*_D631+
-0.004260109*_D632+
-0.019802607*_D633+
-0.001250783*_D634+
0.0148415091*_D635+
0.0038617366*_D636+
-0.000900929*_D637+
-0.008921001*_D638+
-0.000392842*_D639+
0.0049986817*_D640+
0.0157973012*_D641+
0.0012471789*_D642+
-0.003653404*_D643+
0.0073635586*_D644+
0.0346567237*_D645+
-0.000409258*_D646+
-0.011973397*_D647+
0.0000613847*_D648+
0.0001248072*_D649+
0.0185807414*_D650+
0.0060378246*_D651+
-0.002186226*_D652+
-0.002887683*_D653+
0.017363928*_D654+
0.0031420159*_D655+
0.0068033889*_D656+
-0.001911946*_D657+
0.0016666425*_D658+
-0.003311832*_D659+
-0.004350889*_D660+
0.0019144281*_D661+
-0.035337137*_D662+
0.0083005989*_D663+
-0.003885788*_D664+
-0.007504336*_D665+
0.0006836924*_D666+
0.0122725539*_D667+
0.0135363853*_D668+
0.0022408022*_D669+
0.0007030286*_D670+
0.0019982973*_D671+
0.0018235761*_D672+
0.007415352*_D673+
-0.010744592*_D674+
-0.007906626*_D675+
-0.001263705*_D676+
-0.011012254*_D677+
0.0261447546*_D678+
0.0032567852*_D679+
-0.008907621*_D680+
-0.000671876*_D681+
0.0105996302*_D682+
-0.010706217*_D683+
-0.012900805*_D684+
0.0080386515*_D685+
-0.00215444*_D686+
0.0033809247*_D687+
0.0092381675*_D688+
0.0007674366*_D689+
-0.002334082*_D690+
-0.002307167*_D691+
0.0216460041*_D692+
0.0010343993*_D693+
0.0309811435*_D694+
0.0135060388*_D695+
0.0047567586*_D696+
-0.003262107*_D697+
0.0166799251*_D698+
0.000617462*_D699+
0.0319498441*_D700+
0.005172412*_D701+
-0.003127454*_D702+
0.0019844583*_D703+
0.0200183284*_D704+
0.018910939*_D705+
0.0145848976*_D706+
-0.010140535*_D707+
-0.001567871*_D708+
0.0054284194*_D709+
0.0163436575*_D710+
0.0026167156*_D711+
0.0006685179*_D712+
-0.007701883*_D713+
0.0057317172*_D714+
0.0001511943*_D715+
0.0133017258*_D716+
0.0132847113*_D717+
-0.005387568*_D718+
0.0007109839*_D719+
-0.000160877*_D720+
-0.001148664*_D721+
0.0029799142*_D722+
-0.001114628*_D723+
0.0015432751*_D724+
0.0115283513*_D725+
0.00453934*_D726+
0.0000245376*_D727+
0.0203686025*_D728+
0.0235802191*_D729+
0.0049566538*_D730+
-0.004728878*_D731+
0.0012273887*_D732+
-0.007124312*_D733+
0.0083511704*_D734+
0.0100195641*_D735+
-0.003158124*_D736+
0.0235241309*_D737+
0.0009335163*_D738+
-0.00239329*_D739+
-0.003110423*_D740+
-0.05510069*_D741+
0.0452949155*_D742+
0.0009560398*_D743+
0.0020190941*_D744+
0.0082764532*_D745+
0.0091604461*_D746+
-0.005154468*_D747+
-0.143735639*_D748+
-0.008677029*_D749+
-0.014286268*_D750+
0.0234550603*_D751+
-0.004305883*_D752+
-0.001592897*_D753+
-0.01038325*_D754+
0.0013589334*_D755+
0.0020787873*_D756+
0.0024233047*_D757+
0.0277802503*_D758+
0.0612543989*_D759+
0.004368711*_D760+
9.1887389E-6*_D761+
0.0048166517*_D762+
0.0141671091*_D763+
0.0023869922*_D764+
-0.003896207*_D765+
0.0019584578*_D766+
-0.013110655*_D767+
0.0026799403*_D768+
0.0447020124*_D769+
-0.002253983*_D770+
0.0019594446*_D771+
0.0068844904*_D772+
0.0101778319*_D773+
0.0140482015*_D774+
-0.039112546*_D775+
0.0013778039*_D776+
0.0043239211*_D777+
0.0024067285*_D778+
0.0041795672*_D779+
-0.01761187*_D780+
0.0026919981*_D781+
0.0013187123*_D782+
-0.003765947*_D783+
-0.023686884*_D784+
-0.012997062*_D785+
-0.001429201*_D786+
-0.003607916*_D787+
0.0036679692*_D788+
0.0027022781*_D789+
-0.000580082*_D790+
0.0048666575*_D791+
0.020993216*_D792+
-0.003290374*_D793+
-0.011416909*_D794+
0.0125997765*_D795+
-0.005476263*_D796+
-0.031586397*_D797+
0.0407684548*_D798+
0.0282342572*_D799+
0.0158790087*_D800+
0.0002465531*_D801+
-0.00156149*_D802+
-0.007109772*_D803+
-0.001233483*_D804+
0.0011408741*_D805+
0.0206457594*_D806+
0.0142662328*_D807+
-0.003352233*_D808+
-0.012471683*_D809+
0.0051730115*_D810+
-0.008415944*_D811+
0.0037638252*_D812+
0.0227100697*_D813+
0.016771602*_D814+
-0.003837501*_D815+
0.0070895816*_D816+
0.0105248526*_D817+
0.0006431087*_D818+
0.0043123321*_D819+
-0.002765291*_D820+
0.0037139398*_D821+
-0.00353717*_D822+
0.002269435*_D823+
-4.431659E-6*_D824+
-0.003285478*_D825+
-0.023100456*_D826+
-0.004183544*_D827+
-0.013187571*_D828+
-0.002060265*_D829+
0.0271009258*_D830+
-0.001606316*_D831+
0.0138431213*_D832+
0.0018171308*_D833+
-0.000373915*_D834+
0.0079672461*_D835+
0.005298668*_D836+
-0.00051345*_D837+
0.005321273*_D838+
-0.006487212*_D839+
0.0108611693*_D840+
-0.043071338*_D841+
0.0062436027*_D842+
0.0030314003*_D843+
0.007250689*_D844+
-0.010261373*_D845+
0.0127100505*_D846+
0.0405775671*_D847+
0.0146574672*_D848+
-0.422258806*_D849+
-0.080588465*_D850+
-0.001988994*_D851+
-0.005139819*_D852+
-0.002527585*_D853+
-0.002404562*_D854+
0.0138222693*_D855+
0.0077399812*_D856+
0.0072797453*_D857+
0.0110163099*_D858+
0.0110277788*_D859+
-0.010430419*_D860+
0.0012887128*_D861+
-0.035582528*_D862+
0.0144537854*_D863+
-0.001111961*_D864+
0.0000307961*_D865+
0.0247522768*_D866+
0.0127229024*_D867+
-0.000675287*_D868+
-0.003499619*_D869+
-0.015657691*_D870+
0.0025939013*_D871+
0.0004966016*_D872+
0.003663808*_D873+
0.0244324199*_D874+
0.0072413414*_D875+
0.0080955705*_D876+
-0.010461291*_D877+
0.0015326082*_D878+
0.0030668918*_D879+
0.0178526525*_D880+
-0.004069467*_D881+
0.036622987*_D882+
0.000024818*_D883+
-0.007197028*_D884+
0.0134588432*_D885+
0.0174882471*_D886+
0.0077337559*_D887+
-0.009846757*_D888+
-0.000327019*_D889+
0.0006527972*_D890+
0.0065014893*_D891+
-0.0001496*_D892+
0.0004027469*_D893+
0.0055885835*_D894+
-0.004101311*_D895+
0.001164055*_D896+
-0.001752344*_D897+
0.0002640457*_D898+
0.028249116*_D899+
0.0054631182*_D900+
-0.005484709*_D901+
0.0030673627*_D902+
0.0138072033*_D903+
0.0078340116*_D904+
-0.0068708*_D905+
0.0039909465*_D906+
0.0002652971*_D907+
0.0002423435*_D908+
-0.000281413*_D909+
0.0041795672*_D910+
0.0086901356*_D911+
-0.006550287*_D912+
0.000567588*_D913+
0.0089831628*_D914+
0.0347978663*_D915+
-0.00151558*_D916+
-0.006043784*_D917+
-0.005264921*_D918+
0.011782079*_D919+
0.0017773013*_D920+
-0.003872586*_D921+
0.0082785509*_D922+
0.0207688597*_D923+
-0.049779904*_D924+
-0.000629434*_D925+
0.0021764345*_D926+
-0.009834634*_D927+
-0.009676914*_D928+
-0.015547065*_D929+
-0.007130129*_D930+
-0.007004565*_D931+
-0.002017485*_D932+
-0.00026045*_D933+
-0.006912908*_D934+
0.0002666579*_D935+
0.0122795975*_D936+
0.0031970623*_D937+
-0.00132785*_D938+
0.0018024374*_D939+
-0.020410214*_D940+
0.0224611946*_D941+
-0.006199823*_D942+
0.0044218594*_D943+
-0.006745729*_D944+
0.0023574285*_D945+
-0.00141581*_D946+
0.0140106665*_D947+
0.0170031808*_D948+
-0.005674964*_D949+
-0.004267422*_D950+
0.0093069971*_D951+
-0.009773085*_D952+
-0.012954447*_D953+
-0.007231695*_D954+
0.0120994333*_D955+
-0.025491469*_D956+
-0.007202214*_D957+
-0.000357058*_D958+
0.017405532*_D959+
0.039236387*_D960+
0.0195712415*_D961+
-0.003120247*_D962+
0.0293182276*_D963+
0.0077416077*_D964+
0.0022541849*_D965+
0.0084238336*_D966+
0.0060758948*_D967+
0.0180331457*_D968+
0.0043514686*_D969+
-0.033543351*_D970+
0.0033795451*_D971+
0.0015303322*_D972+
-0.012352932*_D973+
-0.001588765*_D974+
0.007592044*_D975+
0.0032694133*_D976+
-0.001821064*_D977+
0.013156027*_D978+
-0.003427658*_D979+
-0.010581825*_D980+
0.001711483*_D981+
0.0005173241*_D982+
-0.002292955*_D983+
0.0030716187*_D984+
-0.001058406*_D985+
0.0149939425*_D986+
-0.008836302*_D987+
-0.001836116*_D988+
0.0407728866*_D989+
0.0151400135*_D990+
0.0025178598*_D991+
-0.00463705*_D992+
-0.004370327*_D993+
0.0032820996*_D994+
0.0197494737*_D995+
-0.000925844*_D996+
-0.002214798*_D997+
0.0222320916*_D998+
-0.006456908*_D999+
-0.000937892*_D1000+
0.0004342141*_D1001+
-0.023476565*_D1002+
0.0009824347*_D1003+
-0.006479379*_D1004+
-0.002858074*_D1005+
0.0047193851*_D1006+
0.0020973288*_D1007+
0.014347432*_D1008+
0.0134110006*_D1009+
0.0084009363*_D1010+
0.0210719486*_D1011+
-0.001847347*_D1012+
0.0069368027*_D1013+
0.0387417275*_D1014+
-0.00987227*_D1015+
0.0313818957*_D1016+
-0.009133557*_D1017+
0.0036411567*_D1018+
0.0041966895*_D1019+
-0.008441211*_D1020+
-0.028837689*_D1021+
-0.0026268*_D1022+
0.0085481117*_D1023+
0.0067948156*_D1024+
0.0102859991*_D1025+
-0.001679308*_D1026+
0.0125706166*_D1027+
-0.002976196*_D1028+
0.0378277396*_D1029+
-0.016598331*_D1030+
0.0242779511*_D1031+
-0.000424889*_D1032+
0.0007392647*_D1033+
-0.003329645*_D1034+
-0.002165767*_D1035+
-0.001727458*_D1036+
0.001629142*_D1037+
-0.009213363*_D1038+
0.0112631845*_D1039+
-0.003937907*_D1040+
0.0003348635*_D1041+
0.0042819464*_D1042+
-0.009878707*_D1043+
0.002286032*_D1044+
-0.017185381*_D1045+
-0.000344498*_D1046+
0.0014495093*_D1047+
0.0023623045*_D1048+
0.021966785*_D1049+
-0.012788385*_D1050+
0.0042309856*_D1051+
-0.000673462*_D1052+
0.0234338615*_D1053+
-0.00458469*_D1054+
0.0078804073*_D1055+
0.0026062955*_D1056+
-0.002743367*_D1057+
-0.001452736*_D1058+
-0.005651013*_D1059+
-0.007728032*_D1060+
0.0153376328*_D1061+
-0.011241998*_D1062+
0.0001551867*_D1063+
-0.002167647*_D1064+
0.0023726284*_D1065+
-0.006396005*_D1066+
0.0275458565*_D1067+
0.0540210022*_D1068+
0.0268709866*_D1069+
-0.007276771*_D1070+
-0.001971232*_D1071+
-0.003836287*_D1072+
0.0029644393*_D1073+
0.037205529*_D1074+
0.0007387668*_D1075+
0.001770356*_D1076+
-0.004565946*_D1077+
-0.004879579*_D1078+
0.0144213566*_D1079+
0.0026484083*_D1080+
0.0087883723*_D1081+
-0.000418338*_D1082+
0.0017002269*_D1083+
0.0030100745*_D1084+
0.034656404*_D1085+
0.0083367666*_D1086+
-0.004172097*_D1087+
0.0009281939*_D1088+
0.0159444953*_D1089+
0.0095671891*_D1090+
-0.00498772*_D1091+
0.0174416597*_D1092+
-0.001210306*_D1093+
-0.001366681*_D1094+
0.0038421867*_D1095+
-0.004694298*_D1096+
0.0070694087*_D1097+
-0.012693623*_D1098+
-0.003721008*_D1099+
-0.006377863*_D1100+
0.0048729042*_D1101+
-0.00566799*_D1102+
0.0057778667*_D1103+
-0.002161323*_D1104+
0.0099134609*_D1105+
0.0056405493*_D1106+
0.0141376242*_D1107+
0.0002141454*_D1108+
0.0192455196*_D1109+
0.0202320808*_D1110+
-0.004195297*_D1111+
0.0077010159*_D1112+
0.0230810292*_D1113+
0.0209856247*_D1114+
0.055506746*_D1115+
0.0007792828*_D1116+
-0.012109489*_D1117+
0.0060602362*_D1118+
-0.000843862*_D1119+
0.0066487137*_D1120+
0.0023988498*_D1121+
-0.009842711*_D1122+
0.0174421585*_D1123+
-0.005006077*_D1124+
-0.02358464*_D1125+
-0.00159962*_D1126+
0.0225233976*_D1127+
0.0193027638*_D1128+
-0.006669384*_D1129+
-0.004599986*_D1130+
-0.015227561*_D1131+
0.0172940318*_D1132+
-0.003003758*_D1133+
-0.007283625*_D1134+
-0.003386513*_D1135+
-0.003882748*_D1136+
-0.011240244*_D1137+
-0.008345643*_D1138+
0.0112796493*_D1139+
0.030115354*_D1140+
0.0259242279*_D1141+
0.0002129796*_D1142+
-0.007959922*_D1143+
0.0011989037*_D1144+
-0.007321517*_D1145+
-0.021858461*_D1146+
0.0025254771*_D1147+
0.0042102423*_D1148+
-0.001238635*_D1149+
0.0005632327*_D1150+
0.0179054502*_D1151+
0.0021251051*_D1152+
-0.014439811*_D1153+
0.0029750341*_D1154+
0.0151136737*_D1155+
-0.008477574*_D1156+
0.0217949748*_D1157+
-0.009096957*_D1158+
-0.010177616*_D1159+
-0.000206372*_D1160+
0.005366624*_D1161+
-0.002402462*_D1162+
0.0147806094*_D1163+
0.023773658*_D1164+
0.000275069*_D1165+
0.0057725658*_D1166+
-0.002031171*_D1167+
-0.010543122*_D1168+
-0.00082483*_D1169+
0.0053339636*_D1170+
0.0027831109*_D1171+
-0.021305725*_D1172+
-0.022347953*_D1173+
0.0082383785*_D1174+
-0.001742373*_D1175+
-0.00078147*_D1176+
0.0066009268*_D1177+
-0.016386171*_D1178+
0.0150128597*_D1179+
-0.00365934*_D1180+
0.0143703293*_D1181+
-0.010025748*_D1182+
-0.004929462*_D1183+
0.002313939*_D1184+
0.0127951081*_D1185+
0.0009411852*_D1186+
-0.004874893*_D1187+
-0.000490463*_D1188+
-0.001750605*_D1189+
-0.012294183*_D1190+
-0.00032817*_D1191+
-0.002214823*_D1192+
-0.001855902*_D1193+
0.0261792305*_D1194+
0.0030518343*_D1195+
0.0307771778*_D1196+
0.0093952506*_D1197+
0.0094226366*_D1198+
0.0236336531*_D1199+
-0.001189294*_D1200+
0.0048312919*_D1201+
0.0528008361*_D1202+
0.0200982655*_D1203+
0.0145322114*_D1204;
/****************************************/
* Componente principal 8;
/****************************************/
;
length PC_8 8;
label PC_8 = "Componente principal 8";
PC_8 =
-0.007044783*_D1+
-0.005402179*_D2+
-0.01681245*_D3+
0.0153565471*_D4+
-0.00209447*_D5+
-0.008586802*_D6+
0.0371455258*_D7+
-0.021492536*_D8+
0.0045059364*_D9+
-0.059649899*_D10+
0.0308594393*_D11+
0.0055433392*_D12+
0.0322148382*_D13+
0.0066890464*_D14+
0.002148425*_D15+
-0.01792823*_D16+
0.0257904106*_D17+
0.0325064876*_D18+
0.0090478471*_D19+
-0.010570317*_D20+
0.0052993108*_D21+
-0.017719076*_D22+
0.0134383992*_D23+
0.0112551637*_D24+
-0.007233882*_D25+
-0.009550539*_D26+
0.0043586541*_D27+
0.0283258932*_D28+
-0.017553304*_D29+
0.0139886257*_D30+
0.0407924223*_D31+
0.0341549463*_D32+
-0.021088377*_D33+
0.0322202725*_D34+
-0.058806583*_D35+
0.0041099127*_D36+
0.0066366304*_D37+
-0.002029838*_D38+
-0.002351147*_D39+
0.0004981687*_D40+
0.0131173409*_D41+
-0.023233254*_D42+
0.0150320162*_D43+
-0.01626029*_D44+
0.0074824689*_D45+
-0.002622707*_D46+
0.0277266296*_D47+
0.002199206*_D48+
-0.03831511*_D49+
0.0237094942*_D50+
0.0017435674*_D51+
0.0006240254*_D52+
-0.101268891*_D53+
0.0250206033*_D54+
0.0154173583*_D55+
-0.008606275*_D56+
-0.011043043*_D57+
-0.013132897*_D58+
-0.00573484*_D59+
-0.01737224*_D60+
-0.029299926*_D61+
-0.006338664*_D62+
-0.001076981*_D63+
0.028092418*_D64+
0.0107353874*_D65+
0.0269428824*_D66+
0.0018473025*_D67+
0.0069763354*_D68+
-0.007882261*_D69+
0.0239522809*_D70+
0.0426849168*_D71+
-0.023731555*_D72+
0.0070135349*_D73+
-0.038260578*_D74+
-0.015657352*_D75+
-0.012035435*_D76+
0.1093194295*_D77+
0.0057168513*_D78+
0.0169032605*_D79+
-0.013030919*_D80+
-0.000657283*_D81+
-0.005946887*_D82+
-0.005971996*_D83+
0.0130577952*_D84+
-0.078300145*_D85+
0.0131876862*_D86+
-0.009377802*_D87+
0.0032965779*_D88+
0.1117446456*_D89+
-0.013408618*_D90+
0.0164578792*_D91+
-0.03036753*_D92+
-0.014786879*_D93+
-0.048025924*_D94+
0.020710822*_D95+
-0.049934274*_D96+
-0.002103322*_D97+
-0.024458249*_D98+
0.0028613697*_D99+
-0.002681726*_D100+
0.0177910515*_D101+
0.041930346*_D102+
-0.000788793*_D103+
-0.012491278*_D104+
0.0288726946*_D105+
-0.030002323*_D106+
0.0133812465*_D107+
0.0194020199*_D108+
-0.001531507*_D109+
0.022952123*_D110+
-0.03005852*_D111+
-0.013756541*_D112+
-0.008354028*_D113+
0.0053289415*_D114+
-0.002194317*_D115+
0.0027593291*_D116+
-0.00302915*_D117+
-0.0141492*_D118+
0.0037716617*_D119+
-0.00391489*_D120+
0.0344779515*_D121+
0.029377189*_D122+
0.0241091522*_D123+
0.0247927887*_D124+
-0.021152984*_D125+
0.0027771577*_D126+
-0.017683074*_D127+
0.0279235377*_D128+
0.000522728*_D129+
-0.001271951*_D130+
-0.001218178*_D131+
0.008231653*_D132+
0.0009898818*_D133+
0.0276084849*_D134+
0.0136267754*_D135+
0.0010188659*_D136+
0.0280185337*_D137+
-0.008172373*_D138+
-0.001853812*_D139+
0.0290695227*_D140+
-0.001081857*_D141+
0.0051961073*_D142+
0.0084041062*_D143+
-0.012647842*_D144+
-0.003772254*_D145+
0.0216804126*_D146+
0.0105452592*_D147+
0.0115691602*_D148+
-0.013983768*_D149+
-0.010345909*_D150+
0.0095954579*_D151+
-0.00557991*_D152+
0.033329029*_D153+
-0.004340607*_D154+
0.0195508279*_D155+
-0.028457614*_D156+
0.0238332966*_D157+
0.0073900401*_D158+
-0.001258893*_D159+
0.0126317144*_D160+
-0.001172659*_D161+
-0.018751078*_D162+
-0.009214218*_D163+
0.0140919794*_D164+
0.1130453255*_D165+
-0.005973815*_D166+
0.019856568*_D167+
-0.007426708*_D168+
0.0114093107*_D169+
0.1244955746*_D170+
0.0019578544*_D171+
-0.012540585*_D172+
-0.025048506*_D173+
-0.033147791*_D174+
-0.022738569*_D175+
0.0018347464*_D176+
0.0028978444*_D177+
-0.021216815*_D178+
-0.034663708*_D179+
0.0104289426*_D180+
-0.008406484*_D181+
-0.020858489*_D182+
0.0019304766*_D183+
0.0130326362*_D184+
0.0022759612*_D185+
-0.007003328*_D186+
0.0146979252*_D187+
0.0211550138*_D188+
0.013201498*_D189+
-0.046903386*_D190+
0.0041448492*_D191+
-0.034525072*_D192+
-0.004819446*_D193+
0.0084251939*_D194+
-0.010140514*_D195+
-0.003626964*_D196+
0.0053768188*_D197+
-0.014836677*_D198+
0.0203688504*_D199+
0.0029090444*_D200+
-0.083414011*_D201+
0.0491236205*_D202+
-0.003773037*_D203+
0.0058698291*_D204+
-0.005363943*_D205+
0.0035623352*_D206+
0.0306430333*_D207+
0.0245770155*_D208+
0.0020993829*_D209+
0.0392242633*_D210+
0.0187707001*_D211+
0.0017609154*_D212+
-0.009607315*_D213+
-0.007732623*_D214+
-0.005099578*_D215+
0.0452799822*_D216+
-0.004468723*_D217+
-0.001552592*_D218+
0.0125110475*_D219+
0.0052806691*_D220+
0.0225842197*_D221+
-0.004053461*_D222+
-0.016768188*_D223+
-0.003197976*_D224+
0.0298682693*_D225+
0.0061169698*_D226+
0.012299258*_D227+
0.0439620131*_D228+
0.024436843*_D229+
0.0112869948*_D230+
0.0043777466*_D231+
0.0107069966*_D232+
0.0080098515*_D233+
0.0290887973*_D234+
0.0087432974*_D235+
0.0031072677*_D236+
-0.024866506*_D237+
0.0118419241*_D238+
-0.00052324*_D239+
0.0499522177*_D240+
-0.013158009*_D241+
-0.031870616*_D242+
0.0099275208*_D243+
0.0064972102*_D244+
0.0051027342*_D245+
0.0477708688*_D246+
-0.025037919*_D247+
0.0065778466*_D248+
0.0264105605*_D249+
0.0162055759*_D250+
0.0146945093*_D251+
-0.007898542*_D252+
0.0144643287*_D253+
0.0009971205*_D254+
0.0025302391*_D255+
0.0089310506*_D256+
-0.019586496*_D257+
0.0449329887*_D258+
0.0299289884*_D259+
0.0474690993*_D260+
-0.003291863*_D261+
0.0233772129*_D262+
0.010242411*_D263+
0.005858957*_D264+
-0.011084019*_D265+
-0.01025354*_D266+
0.0029911665*_D267+
0.0291075688*_D268+
-0.02908085*_D269+
-0.011608594*_D270+
-0.000752062*_D271+
0.006674604*_D272+
-0.01511989*_D273+
-0.006302522*_D274+
-0.024882087*_D275+
0.0061176743*_D276+
0.004347571*_D277+
-0.01369901*_D278+
0.0486116041*_D279+
-0.008504906*_D280+
0.0069082375*_D281+
-0.03632092*_D282+
-0.308728997*_D283+
-0.001919832*_D284+
0.0072294201*_D285+
0.0437437019*_D286+
0.0085021031*_D287+
0.0165884953*_D288+
-0.015677865*_D289+
0.0007751141*_D290+
-0.002841158*_D291+
0.0116809373*_D292+
0.0107210583*_D293+
0.0040946029*_D294+
0.0390770361*_D295+
0.0275326553*_D296+
0.0236664501*_D297+
0.0065759066*_D298+
-0.005206959*_D299+
0.025776021*_D300+
0.0051425524*_D301+
0.0021916499*_D302+
0.0202133663*_D303+
0.0198971805*_D304+
-0.030511966*_D305+
0.0245493211*_D306+
0.0323126559*_D307+
0.0133991932*_D308+
0.032345187*_D309+
-0.008722203*_D310+
0.0093406881*_D311+
0.0047824469*_D312+
-0.002363349*_D313+
0.0151671682*_D314+
0.0006737341*_D315+
-0.012671406*_D316+
-0.009787953*_D317+
0.014667728*_D318+
-0.021172103*_D319+
0.037046117*_D320+
0.0016167977*_D321+
0.0083198081*_D322+
0.0056727707*_D323+
-0.00517589*_D324+
0.0237339706*_D325+
0.0064105918*_D326+
0.008492237*_D327+
-0.004286418*_D328+
0.0110848927*_D329+
0.0019465534*_D330+
-0.00097166*_D331+
0.011249151*_D332+
-0.00055006*_D333+
-0.031257756*_D334+
0.0295278231*_D335+
0.0586597866*_D336+
0.2513972782*_D337+
0.0182720447*_D338+
-0.023753084*_D339+
-0.01848214*_D340+
0.0111713402*_D341+
0.0336729573*_D342+
-0.000481054*_D343+
-0.001185537*_D344+
-0.003712904*_D345+
-0.009425912*_D346+
0.0277769293*_D347+
0.0108130813*_D348+
0.0267807126*_D349+
0.0094104323*_D350+
-0.014382605*_D351+
-0.008177135*_D352+
0.0049543182*_D353+
-0.006745347*_D354+
0.0035701636*_D355+
-0.05314253*_D356+
0.0016591598*_D357+
0.0056792153*_D358+
-0.005604746*_D359+
0.0026786387*_D360+
-0.011368801*_D361+
-0.031633012*_D362+
-0.000965509*_D363+
0.0095879112*_D364+
0.0243468962*_D365+
0.0038944164*_D366+
0.0024353943*_D367+
0.0151278263*_D368+
-0.026407031*_D369+
0.0116801082*_D370+
-0.000267475*_D371+
-0.007614679*_D372+
0.0143842677*_D373+
-0.000415542*_D374+
-0.005152421*_D375+
-0.016311815*_D376+
-0.014287122*_D377+
-0.000098597*_D378+
0.0056729195*_D379+
-0.00297398*_D380+
-0.010300349*_D381+
0.0006665243*_D382+
-0.006436881*_D383+
-0.006977342*_D384+
0.0156720081*_D385+
-0.008146302*_D386+
0.0038278182*_D387+
-0.012784895*_D388+
-0.004344597*_D389+
-0.030813193*_D390+
0.0036515533*_D391+
0.0291409772*_D392+
-0.009230684*_D393+
0.0294732667*_D394+
-0.005997267*_D395+
0.0039457876*_D396+
-0.002593116*_D397+
0.0086693746*_D398+
0.0080272438*_D399+
0.0166261069*_D400+
0.0213235*_D401+
-0.024564601*_D402+
0.0016830082*_D403+
0.0073149598*_D404+
-0.025212202*_D405+
0.0498171331*_D406+
-0.017346642*_D407+
-0.004050061*_D408+
-0.000977897*_D409+
-0.002006853*_D410+
0.0302727311*_D411+
-0.004431992*_D412+
-0.004165903*_D413+
-0.018751046*_D414+
0.0082545609*_D415+
-0.022418462*_D416+
-0.01977501*_D417+
0.0300459286*_D418+
0.0076648978*_D419+
0.0309557297*_D420+
0.0315176436*_D421+
-0.000647906*_D422+
-0.005580988*_D423+
-0.002516338*_D424+
0.018794745*_D425+
0.0241195014*_D426+
-0.014851497*_D427+
0.0108221621*_D428+
-0.016479867*_D429+
-0.030991974*_D430+
-0.054802683*_D431+
0.0091923044*_D432+
-0.012769458*_D433+
-0.013979956*_D434+
0.084188502*_D435+
-0.007857779*_D436+
-0.021265521*_D437+
0.0098904269*_D438+
-0.004636542*_D439+
0.0645411422*_D440+
-0.070375518*_D441+
-0.025077711*_D442+
-0.003438591*_D443+
-0.030615791*_D444+
0.0050913451*_D445+
0.019663633*_D446+
-0.004309955*_D447+
0.0033939271*_D448+
-0.007542638*_D449+
0.1544552163*_D450+
0.003764967*_D451+
0.0026479356*_D452+
0.0095410662*_D453+
-0.009504542*_D454+
-0.024096314*_D455+
-0.044561209*_D456+
0.0092645335*_D457+
-0.008316664*_D458+
-0.004596717*_D459+
-0.004401977*_D460+
-0.049573212*_D461+
0.0075601421*_D462+
0.0120563116*_D463+
-0.011241047*_D464+
-0.005899596*_D465+
-0.011770135*_D466+
0.0069800398*_D467+
-0.002457313*_D468+
0.0034931758*_D469+
0.0128465683*_D470+
0.0104715201*_D471+
0.0012797165*_D472+
0.0028399792*_D473+
0.0245847847*_D474+
0.0066270038*_D475+
-0.017308728*_D476+
0.0083911821*_D477+
0.0146663683*_D478+
-0.000356494*_D479+
0.0111420388*_D480+
-0.019287339*_D481+
0.0116997185*_D482+
-0.023728915*_D483+
0.039205879*_D484+
0.0116862578*_D485+
-0.004165324*_D486+
-0.006473176*_D487+
-0.004201512*_D488+
0.0072055085*_D489+
-0.029575932*_D490+
0.0012092938*_D491+
0.0578512803*_D492+
0.0029735038*_D493+
0.008544116*_D494+
0.0066137254*_D495+
0.013122153*_D496+
0.0090292383*_D497+
0.0032538527*_D498+
-0.013561965*_D499+
0.0177585773*_D500+
-0.066866822*_D501+
0.0192639161*_D502+
-0.015160735*_D503+
-0.026837466*_D504+
-0.00042113*_D505+
-0.007400903*_D506+
-0.005172787*_D507+
-0.006527736*_D508+
-0.009548786*_D509+
0.0050801356*_D510+
0.003648175*_D511+
0.0050432633*_D512+
-0.009433364*_D513+
0.0076607296*_D514+
-0.000902471*_D515+
0.0108993025*_D516+
0.0193680974*_D517+
0.0588516162*_D518+
0.0310312279*_D519+
0.0085841908*_D520+
0.04536985*_D521+
-0.001097432*_D522+
0.0220058221*_D523+
0.0080452368*_D524+
0.0237041159*_D525+
-0.029029261*_D526+
0.0075008612*_D527+
0.004720595*_D528+
0.0278570243*_D529+
0.0112676927*_D530+
0.0127768045*_D531+
0.0022163639*_D532+
-0.017343055*_D533+
-0.007136516*_D534+
0.0034026503*_D535+
0.0040570026*_D536+
-0.002936363*_D537+
-0.027237814*_D538+
-0.021991226*_D539+
-0.001479025*_D540+
0.0031911695*_D541+
-0.156319823*_D542+
-0.18037508*_D543+
0.0044876817*_D544+
-0.005495585*_D545+
0.0153881078*_D546+
-0.048045931*_D547+
0.0376058528*_D548+
0.018587679*_D549+
-0.012437382*_D550+
-0.024799741*_D551+
-0.018740377*_D552+
-0.102447021*_D553+
-0.037260267*_D554+
0.0012491776*_D555+
-0.021059062*_D556+
0.0107494359*_D557+
0.0313365345*_D558+
0.0145313288*_D559+
0.0265394342*_D560+
-0.009898695*_D561+
-0.010539432*_D562+
0.0073001687*_D563+
-0.005375978*_D564+
0.0127436916*_D565+
-0.020899298*_D566+
0.0187715842*_D567+
0.0070719458*_D568+
-0.072056245*_D569+
0.011699712*_D570+
0.0099781909*_D571+
-0.008258955*_D572+
-0.010088826*_D573+
0.0001924761*_D574+
0.016595051*_D575+
-0.005206881*_D576+
-0.00006648*_D577+
0.0105908653*_D578+
0.0018501311*_D579+
-0.026711883*_D580+
-0.005322784*_D581+
0.0034566665*_D582+
-0.000419664*_D583+
0.0152317082*_D584+
-0.014208991*_D585+
0.0352352402*_D586+
-0.012206581*_D587+
0.0031219623*_D588+
-0.010306278*_D589+
-0.038089231*_D590+
-0.036864676*_D591+
-0.004823795*_D592+
-0.00104038*_D593+
-0.004440764*_D594+
-0.001516358*_D595+
0.030431633*_D596+
-0.006453114*_D597+
0.0052691778*_D598+
0.0045343317*_D599+
0.0245863655*_D600+
0.0027956761*_D601+
0.0094370696*_D602+
-0.003733566*_D603+
-0.017770764*_D604+
0.0011953584*_D605+
0.0034670021*_D606+
-0.017256664*_D607+
-0.046888474*_D608+
0.0076789849*_D609+
0.0004816955*_D610+
-0.002569155*_D611+
0.0260782338*_D612+
-0.004422239*_D613+
0.00917775*_D614+
-0.000260811*_D615+
0.0024055647*_D616+
0.0143421056*_D617+
0.0044629573*_D618+
0.0300811535*_D619+
-0.006090021*_D620+
0.0093963712*_D621+
0.0204197261*_D622+
-0.003508929*_D623+
-0.010335343*_D624+
-0.022281064*_D625+
0.0269401315*_D626+
0.0092026615*_D627+
-0.007348159*_D628+
-0.000161499*_D629+
0.0020061471*_D630+
0.0051604087*_D631+
-0.054839532*_D632+
0.0027234673*_D633+
-0.017917467*_D634+
-0.020083596*_D635+
0.0308212585*_D636+
0.01294191*_D637+
0.0372039642*_D638+
-0.011525285*_D639+
0.0045954524*_D640+
-0.009854498*_D641+
0.0092260323*_D642+
0.0127419075*_D643+
-0.007031417*_D644+
-0.029781582*_D645+
0.0118740598*_D646+
0.0328148129*_D647+
0.0093726399*_D648+
0.0513031927*_D649+
-0.014581535*_D650+
0.0174993799*_D651+
0.0185094576*_D652+
0.005252221*_D653+
-0.01009276*_D654+
-0.0075374*_D655+
0.0042011705*_D656+
-0.014005602*_D657+
-0.001475535*_D658+
0.0224603014*_D659+
-0.001663253*_D660+
0.0061386873*_D661+
0.0690854253*_D662+
-0.002567908*_D663+
-0.009638514*_D664+
0.023946599*_D665+
0.010319767*_D666+
-0.007247299*_D667+
-0.006882147*_D668+
0.0045616695*_D669+
0.007106162*_D670+
0.0018224653*_D671+
0.0040984319*_D672+
0.0007915029*_D673+
0.0150812514*_D674+
0.035025196*_D675+
-0.000945331*_D676+
0.0282653802*_D677+
0.0035637923*_D678+
0.0016067667*_D679+
0.009939342*_D680+
0.0139274721*_D681+
-0.008188703*_D682+
-0.121972939*_D683+
0.0500868072*_D684+
-0.002216937*_D685+
-0.030414498*_D686+
-0.013927742*_D687+
-0.003812311*_D688+
0.0153127048*_D689+
-0.010444307*_D690+
-0.013182099*_D691+
-0.016412993*_D692+
0.0077083343*_D693+
-0.021490602*_D694+
-0.007702077*_D695+
0.0035495507*_D696+
0.0155644042*_D697+
-0.006394179*_D698+
0.0173824699*_D699+
-0.025716209*_D700+
-0.000716467*_D701+
0.0177518208*_D702+
0.0155544731*_D703+
-0.017400428*_D704+
0.0032517761*_D705+
-0.008520944*_D706+
0.0147130098*_D707+
0.0083140927*_D708+
0.0093749697*_D709+
0.0235235568*_D710+
0.017271765*_D711+
0.0065761439*_D712+
0.0198210991*_D713+
0.0076299157*_D714+
0.0151227344*_D715+
-0.009172463*_D716+
0.0412295808*_D717+
0.0033377482*_D718+
0.0018758983*_D719+
-0.001012602*_D720+
0.0199064094*_D721+
0.0227692184*_D722+
-0.006585649*_D723+
0.047951395*_D724+
-0.008396815*_D725+
-0.00320517*_D726+
0.0057357777*_D727+
-0.017017164*_D728+
-0.018353777*_D729+
0.0015532235*_D730+
0.0235000241*_D731+
0.0082721751*_D732+
-0.001520018*_D733+
-0.004975017*_D734+
0.0021801417*_D735+
-0.01995278*_D736+
-0.020492464*_D737+
-0.005689652*_D738+
-0.013772513*_D739+
-0.021593083*_D740+
-0.011919119*_D741+
-0.024069835*_D742+
-0.006476552*_D743+
0.0065986221*_D744+
-0.006158405*_D745+
-0.001671626*_D746+
0.0111214185*_D747+
-0.057354457*_D748+
0.0998296973*_D749+
0.0497874424*_D750+
-0.009095269*_D751+
0.0089232962*_D752+
0.010824222*_D753+
0.027917641*_D754+
-0.000605902*_D755+
-0.001474591*_D756+
0.0166322543*_D757+
-0.024248586*_D758+
-0.053653698*_D759+
0.0038704628*_D760+
-0.016391515*_D761+
0.035798082*_D762+
-0.007619104*_D763+
-0.004076785*_D764+
-0.010425993*_D765+
0.0142705217*_D766+
-0.014053215*_D767+
0.0107655774*_D768+
-0.036312416*_D769+
-0.00088981*_D770+
0.0009562947*_D771+
0.0061954257*_D772+
-0.001556101*_D773+
0.0018023186*_D774+
0.0947929756*_D775+
0.0238319259*_D776+
0.0026132429*_D777+
0.0051915047*_D778+
0.0336316449*_D779+
0.0024009017*_D780+
0.0104199832*_D781+
0.0058738459*_D782+
0.0339292781*_D783+
-0.051194689*_D784+
-0.016718359*_D785+
-0.01535702*_D786+
-0.035007917*_D787+
0.0124182707*_D788+
0.0057379636*_D789+
-0.004475263*_D790+
0.007952615*_D791+
-0.013466752*_D792+
0.0155070823*_D793+
0.0211665515*_D794+
-0.000414061*_D795+
-0.008735028*_D796+
-0.016744301*_D797+
-0.029613704*_D798+
-0.020494631*_D799+
-0.009253252*_D800+
0.0062533394*_D801+
-0.015576531*_D802+
0.0144776783*_D803+
-0.014678359*_D804+
0.0043211412*_D805+
0.0164138382*_D806+
-0.004344345*_D807+
-0.01076032*_D808+
0.0725077038*_D809+
0.0070518201*_D810+
0.0100161994*_D811+
0.0024712843*_D812+
-0.023514468*_D813+
-0.025862979*_D814+
0.0220292147*_D815+
0.0017564697*_D816+
-0.005633731*_D817+
0.0234842445*_D818+
0.0005396154*_D819+
0.015012417*_D820+
0.0037902296*_D821+
0.0022517879*_D822+
-0.003156957*_D823+
0.0104992927*_D824+
0.0301766592*_D825+
0.0114490761*_D826+
0.0151585891*_D827+
0.0546703946*_D828+
-0.030140621*_D829+
-0.023573653*_D830+
0.0045812023*_D831+
-0.009389942*_D832+
0.0251001066*_D833+
-0.007394424*_D834+
-0.003616802*_D835+
0.0045307251*_D836+
0.0110369625*_D837+
0.0024864281*_D838+
0.0040360133*_D839+
-0.001432931*_D840+
-0.009941254*_D841+
0.0067077562*_D842+
0.0150049406*_D843+
0.0244407259*_D844+
0.0173070758*_D845+
-0.008724661*_D846+
-0.027723565*_D847+
-0.011211988*_D848+
-0.203622118*_D849+
0.0853122926*_D850+
-0.013503635*_D851+
0.0138146355*_D852+
0.0247750943*_D853+
0.0091985854*_D854+
0.0108775602*_D855+
-0.00290356*_D856+
0.0064683567*_D857+
-0.006900362*_D858+
0.0022284689*_D859+
0.0151258726*_D860+
0.0138291852*_D861+
0.0057857197*_D862+
-0.009672323*_D863+
0.0124214165*_D864+
0.0130107426*_D865+
-0.020956265*_D866+
-0.005122238*_D867+
0.0063742264*_D868+
-0.014834857*_D869+
0.0886227422*_D870+
0.0076170985*_D871+
-0.009989312*_D872+
-0.000671131*_D873+
-0.019513865*_D874+
-0.002970034*_D875+
0.0117801333*_D876+
0.0090997584*_D877+
0.0071467979*_D878+
0.0079102625*_D879+
-0.000433274*_D880+
-0.002482557*_D881+
-0.019089845*_D882+
-0.004650461*_D883+
0.0201414015*_D884+
0.0121155337*_D885+
-0.013093833*_D886+
0.0162438278*_D887+
0.0441987092*_D888+
-0.014246434*_D889+
-0.00429448*_D890+
0.0106883298*_D891+
0.0009254116*_D892+
0.0104272305*_D893+
-0.010363906*_D894+
-0.002717034*_D895+
0.003781457*_D896+
0.0044061813*_D897+
-0.006102714*_D898+
-0.021990698*_D899+
0.0067231015*_D900+
0.033985244*_D901+
0.011639349*_D902+
-0.010595377*_D903+
-0.003733745*_D904+
0.0224923046*_D905+
0.001788705*_D906+
0.0004909734*_D907+
0.0107948726*_D908+
-0.011417437*_D909+
0.0336316449*_D910+
-0.009185677*_D911+
-0.010523457*_D912+
0.0050403184*_D913+
-0.003265051*_D914+
-0.0323201*_D915+
0.0160019555*_D916+
0.0091782182*_D917+
0.0137533269*_D918+
0.0046235184*_D919+
-0.004260522*_D920+
0.0194553688*_D921+
0.0053569544*_D922+
-0.025528605*_D923+
0.1400802221*_D924+
-0.010472001*_D925+
0.0066930966*_D926+
0.020010778*_D927+
0.0423241669*_D928+
0.0085296813*_D929+
-0.011355357*_D930+
0.0223952688*_D931+
-0.001997682*_D932+
-0.002897087*_D933+
0.0143932719*_D934+
0.0008471547*_D935+
-0.011696788*_D936+
0.0057909708*_D937+
0.0225265222*_D938+
-0.00247816*_D939+
0.0508441413*_D940+
-0.019399671*_D941+
0.0092422645*_D942+
0.0109163937*_D943+
0.0143488784*_D944+
0.0072841861*_D945+
-0.002873432*_D946+
-0.007667431*_D947+
-0.011042214*_D948+
0.0260663739*_D949+
0.0148057773*_D950+
-0.001677528*_D951+
-0.067979997*_D952+
0.0381607767*_D953+
0.0024141855*_D954+
-0.007323126*_D955+
0.0556957689*_D956+
-0.03031784*_D957+
-0.007735763*_D958+
-0.036619864*_D959+
-0.032642661*_D960+
-0.00792056*_D961+
0.0262083999*_D962+
-0.024135791*_D963+
0.0041792178*_D964+
0.006302136*_D965+
-0.005699996*_D966+
0.0005134637*_D967+
-0.002767144*_D968+
0.0013535703*_D969+
0.0582333666*_D970+
0.0001817125*_D971+
-0.001139215*_D972+
0.0712084865*_D973+
0.0114353811*_D974+
-0.004310341*_D975+
0.0026316216*_D976+
0.0234122028*_D977+
-0.002708792*_D978+
-0.013079277*_D979+
-0.025404176*_D980+
0.0071344346*_D981+
0.0095212951*_D982+
0.0015973549*_D983+
0.014796168*_D984+
0.0129976292*_D985+
-0.008048544*_D986+
0.0176503441*_D987+
-0.005689367*_D988+
-0.033157949*_D989+
-0.014905917*_D990+
0.004718003*_D991+
0.0280405202*_D992+
0.0017399441*_D993+
0.0036662428*_D994+
-0.009881185*_D995+
0.0027588864*_D996+
-0.008793861*_D997+
-0.019532334*_D998+
0.0270595177*_D999+
0.0073334009*_D1000+
-0.005496336*_D1001+
0.0161682833*_D1002+
0.0063341105*_D1003+
0.0282453012*_D1004+
0.0043476481*_D1005+
-0.002206765*_D1006+
0.0041760426*_D1007+
0.0022964644*_D1008+
-0.009347303*_D1009+
-0.015907302*_D1010+
-0.015534209*_D1011+
-0.003757612*_D1012+
-0.016421978*_D1013+
-0.034598851*_D1014+
0.00661262*_D1015+
-0.001227495*_D1016+
-0.003527323*_D1017+
0.006224543*_D1018+
-0.012533987*_D1019+
0.0179356087*_D1020+
-0.025439188*_D1021+
-0.003126301*_D1022+
-0.00277444*_D1023+
-0.001725278*_D1024+
0.0118309823*_D1025+
0.0105365995*_D1026+
-0.009360572*_D1027+
0.0118845625*_D1028+
0.0908347784*_D1029+
-0.003042584*_D1030+
-0.017305154*_D1031+
0.0217269993*_D1032+
0.0013627507*_D1033+
0.0102587228*_D1034+
-0.00758269*_D1035+
-0.009925717*_D1036+
0.0122476168*_D1037+
0.0536602248*_D1038+
-0.027851561*_D1039+
0.0223027402*_D1040+
0.0083121032*_D1041+
0.0034888304*_D1042+
-0.029309625*_D1043+
0.0065699951*_D1044+
0.0941653678*_D1045+
-0.00271825*_D1046+
0.012119392*_D1047+
0.0118051967*_D1048+
-0.018581193*_D1049+
0.041959205*_D1050+
-0.007638741*_D1051+
0.0114590548*_D1052+
-0.004384737*_D1053+
0.0195525663*_D1054+
-0.006544232*_D1055+
0.0149072173*_D1056+
-0.005413449*_D1057+
0.0070343067*_D1058+
0.0474537663*_D1059+
0.0151709755*_D1060+
-0.017516186*_D1061+
0.0213924688*_D1062+
0.0022681941*_D1063+
0.0220465006*_D1064+
0.0017448561*_D1065+
-0.014253596*_D1066+
-0.022069602*_D1067+
-0.053926282*_D1068+
-0.023665058*_D1069+
0.0199155478*_D1070+
0.0072835351*_D1071+
-0.013326953*_D1072+
0.0105294583*_D1073+
-0.054965821*_D1074+
0.0161276959*_D1075+
0.0086202466*_D1076+
0.0127286184*_D1077+
0.0109100198*_D1078+
-0.006981719*_D1079+
-0.008248813*_D1080+
0.0050626638*_D1081+
0.0022758747*_D1082+
0.0019276509*_D1083+
0.0295163773*_D1084+
-0.025182311*_D1085+
0.0134177968*_D1086+
0.0208644757*_D1087+
-0.018183388*_D1088+
-0.006540365*_D1089+
0.0114698114*_D1090+
0.0140151693*_D1091+
-0.013393537*_D1092+
-0.001287736*_D1093+
-0.017968704*_D1094+
0.0053137283*_D1095+
0.0132531455*_D1096+
0.0021835646*_D1097+
0.0243320249*_D1098+
0.023090738*_D1099+
0.0050715727*_D1100+
-0.001691599*_D1101+
0.0246257539*_D1102+
-0.010758674*_D1103+
0.0108975033*_D1104+
0.0027770765*_D1105+
0.0103497444*_D1106+
-0.008811009*_D1107+
0.0057950097*_D1108+
-0.007805883*_D1109+
-0.014370187*_D1110+
0.0305652541*_D1111+
0.0207376883*_D1112+
-0.010123944*_D1113+
-0.008125242*_D1114+
-0.023584854*_D1115+
0.0189998172*_D1116+
0.0234826932*_D1117+
-0.000538426*_D1118+
-0.001455395*_D1119+
-0.008376238*_D1120+
0.0066179199*_D1121+
-0.015718689*_D1122+
0.024283731*_D1123+
0.0088361553*_D1124+
0.0782757955*_D1125+
-0.005911548*_D1126+
-0.003747559*_D1127+
-0.01373993*_D1128+
0.0349358023*_D1129+
-0.020200434*_D1130+
-0.017693302*_D1131+
-0.024527202*_D1132+
0.0028414672*_D1133+
0.0453034208*_D1134+
0.0015138934*_D1135+
0.0111591025*_D1136+
0.0027629572*_D1137+
0.032047843*_D1138+
-0.005085242*_D1139+
-0.024772048*_D1140+
-0.089928399*_D1141+
-0.000294103*_D1142+
-0.023695766*_D1143+
0.0101311973*_D1144+
0.0374429793*_D1145+
0.0692869726*_D1146+
-0.003857331*_D1147+
-0.004655356*_D1148+
0.0118529387*_D1149+
0.0217294457*_D1150+
-0.012261399*_D1151+
-0.006078128*_D1152+
0.0045019529*_D1153+
-0.000156765*_D1154+
-0.009205066*_D1155+
-0.003156202*_D1156+
0.0051201436*_D1157+
0.0278453913*_D1158+
0.0191939699*_D1159+
0.0130532587*_D1160+
0.0122595775*_D1161+
0.0024706389*_D1162+
-0.01270805*_D1163+
-0.013832525*_D1164+
0.0115921703*_D1165+
0.0126683832*_D1166+
0.0103722355*_D1167+
-0.151290139*_D1168+
-0.011804628*_D1169+
0.0069726649*_D1170+
-0.014333956*_D1171+
-0.209016738*_D1172+
0.1539769961*_D1173+
-0.002703861*_D1174+
0.0087678228*_D1175+
0.0315268809*_D1176+
-0.001933589*_D1177+
0.0226734098*_D1178+
0.0049840082*_D1179+
0.0071674865*_D1180+
-0.001958167*_D1181+
0.0408427562*_D1182+
-0.008404255*_D1183+
-0.007376337*_D1184+
-0.006557575*_D1185+
0.010807242*_D1186+
-0.034569914*_D1187+
-0.006638593*_D1188+
-0.014256353*_D1189+
-0.048095874*_D1190+
-0.00936806*_D1191+
-0.013974635*_D1192+
-0.013196707*_D1193+
-0.022478849*_D1194+
0.0066972636*_D1195+
-0.001973135*_D1196+
0.0262363576*_D1197+
-0.004669615*_D1198+
-0.012984828*_D1199+
0.0260321999*_D1200+
-0.001968274*_D1201+
-0.037113138*_D1202+
-0.017024698*_D1203+
-0.007895299*_D1204;
/****************************************/
* Componente principal 9;
/****************************************/
;
length PC_9 8;
label PC_9 = "Componente principal 9";
PC_9 =
-0.000016286*_D1+
-0.000231721*_D2+
0.0014410656*_D3+
-0.000010524*_D4+
0.0031787447*_D5+
-0.005824634*_D6+
-0.001471653*_D7+
0.001277587*_D8+
0.0039138127*_D9+
-0.042370662*_D10+
-0.005217286*_D11+
0.0018669741*_D12+
-0.001970358*_D13+
-0.003921471*_D14+
0.000508796*_D15+
0.0107689584*_D16+
-0.010530157*_D17+
-0.008459184*_D18+
-0.00058515*_D19+
-0.001111991*_D20+
0.0126204398*_D21+
-0.026483087*_D22+
0.0025779548*_D23+
0.0036733812*_D24+
0.0031373205*_D25+
-0.002008871*_D26+
-0.00504452*_D27+
-0.00359392*_D28+
0.0016097676*_D29+
-0.000401287*_D30+
-0.008923635*_D31+
-0.00696598*_D32+
-0.011336231*_D33+
0.0027150036*_D34+
-0.066219497*_D35+
0.0041278793*_D36+
-0.002841567*_D37+
0.0024166673*_D38+
0.0250333627*_D39+
-0.00332065*_D40+
-0.007794484*_D41+
-0.001815229*_D42+
0.000535447*_D43+
0.0064058208*_D44+
0.0017333956*_D45+
-0.002450655*_D46+
-0.00600265*_D47+
0.012306627*_D48+
-0.008790659*_D49+
-0.019368105*_D50+
0.0026566508*_D51+
0.0216681393*_D52+
-0.043101227*_D53+
-0.0069571*_D54+
0.0057098246*_D55+
-0.002792803*_D56+
0.164726492*_D57+
-0.002159787*_D58+
0.0211658924*_D59+
0.3177571361*_D60+
0.4147452586*_D61+
0.0258177918*_D62+
0.0027489323*_D63+
-0.007739768*_D64+
0.0024590902*_D65+
-0.004770119*_D66+
-0.002301958*_D67+
0.0053623146*_D68+
-0.002274634*_D69+
-0.004362966*_D70+
-0.00113926*_D71+
-0.005525473*_D72+
0.0003261671*_D73+
0.0157460756*_D74+
0.0081665186*_D75+
0.0054064711*_D76+
-0.026140213*_D77+
-0.001180815*_D78+
-0.004460165*_D79+
-0.005150937*_D80+
0.0044253523*_D81+
0.086492187*_D82+
0.0032132413*_D83+
-0.003357161*_D84+
-0.012198931*_D85+
0.0027206096*_D86+
-0.001121826*_D87+
-0.001513543*_D88+
-0.00906998*_D89+
0.0064532181*_D90+
-0.002018308*_D91+
-0.073814186*_D92+
-0.012014003*_D93+
-0.041041074*_D94+
-0.008208908*_D95+
-0.068049011*_D96+
0.0051697993*_D97+
-0.000859391*_D98+
0.0002460389*_D99+
0.0145244373*_D100+
-0.00153884*_D101+
-0.006668903*_D102+
0.0127619009*_D103+
0.0039301839*_D104+
0.0084818805*_D105+
0.0158949033*_D106+
0.0037091315*_D107+
-0.00241649*_D108+
-0.003870207*_D109+
-0.006888104*_D110+
-0.024253324*_D111+
-0.007333525*_D112+
-0.003033825*_D113+
0.0006008549*_D114+
-0.00397851*_D115+
0.0011604968*_D116+
0.0095175023*_D117+
-0.013157202*_D118+
0.0001091458*_D119+
-0.001550242*_D120+
-0.006506437*_D121+
-0.007573812*_D122+
-0.001661081*_D123+
-0.005493364*_D124+
-0.01858955*_D125+
0.0042598973*_D126+
-0.004587879*_D127+
-0.003792254*_D128+
-0.011013955*_D129+
0.0005017099*_D130+
0.0240486341*_D131+
0.0159279809*_D132+
-0.000871859*_D133+
0.0027457759*_D134+
0.005445431*_D135+
-0.00019562*_D136+
-0.004829391*_D137+
0.0050816221*_D138+
0.0019547818*_D139+
-0.012486426*_D140+
-0.000694238*_D141+
-0.000915627*_D142+
0.0121641275*_D143+
-0.019709378*_D144+
0.000072243*_D145+
-0.005799584*_D146+
0.0027844604*_D147+
0.0006154456*_D148+
0.0210660764*_D149+
-0.01129686*_D150+
0.0041304566*_D151+
0.001864939*_D152+
-0.006430953*_D153+
0.0014983788*_D154+
-0.000020702*_D155+
-0.002762578*_D156+
-0.004356579*_D157+
0.0022481012*_D158+
-0.004782275*_D159+
0.0007636374*_D160+
-0.001676911*_D161+
0.0059657067*_D162+
0.0214409927*_D163+
0.0047865585*_D164+
-0.017676465*_D165+
-0.001995312*_D166+
-0.001712771*_D167+
-0.000168575*_D168+
-0.002176909*_D169+
-0.026940487*_D170+
0.0128393494*_D171+
-0.00184595*_D172+
-0.020046719*_D173+
0.0043946639*_D174+
0.0127371983*_D175+
0.0027674587*_D176+
-0.001950665*_D177+
-0.009025526*_D178+
0.0043105576*_D179+
0.0018392955*_D180+
-0.001115569*_D181+
-0.018523064*_D182+
0.0401449013*_D183+
0.0070104651*_D184+
0.0003643406*_D185+
-0.005858067*_D186+
0.0123808246*_D187+
0.0116494485*_D188+
-0.00541737*_D189+
0.0082814305*_D190+
-0.004441898*_D191+
0.0130879778*_D192+
-0.009755949*_D193+
0.0004861993*_D194+
0.0102145889*_D195+
-0.002397079*_D196+
-0.002101009*_D197+
0.0063505108*_D198+
-0.002185089*_D199+
0.0085457188*_D200+
-0.005093696*_D201+
-0.002100971*_D202+
-0.0028949*_D203+
-0.000927344*_D204+
-0.003869537*_D205+
0.0025033022*_D206+
-0.005851167*_D207+
0.0203408069*_D208+
0.0075647722*_D209+
-0.003866254*_D210+
0.0003662001*_D211+
0.0010712475*_D212+
-0.000312466*_D213+
0.020036193*_D214+
0.0004693108*_D215+
-0.005772771*_D216+
0.0047382711*_D217+
-0.001209841*_D218+
-0.001479898*_D219+
0.0000753276*_D220+
-0.003270656*_D221+
0.0102569645*_D222+
-0.003490319*_D223+
0.0133858415*_D224+
-0.010858825*_D225+
-0.001177492*_D226+
-0.008776236*_D227+
-0.01090146*_D228+
-0.011286487*_D229+
0.0010230361*_D230+
-0.002643606*_D231+
-0.005808098*_D232+
0.000095207*_D233+
-0.003645488*_D234+
0.001368217*_D235+
0.0017897145*_D236+
0.0148622353*_D237+
-0.004655125*_D238+
0.0076173689*_D239+
-0.004394694*_D240+
-0.007567685*_D241+
0.0017175673*_D242+
0.0012994763*_D243+
0.002305883*_D244+
0.0019669353*_D245+
-0.007642593*_D246+
0.0018416714*_D247+
-0.001646391*_D248+
0.0857397738*_D249+
-0.00278299*_D250+
0.0051056821*_D251+
-0.005049067*_D252+
-0.004219829*_D253+
-0.002822227*_D254+
-0.000705359*_D255+
-0.002928937*_D256+
-0.011717648*_D257+
-0.005581499*_D258+
-0.004272108*_D259+
0.0701925474*_D260+
0.0927113924*_D261+
-0.00675859*_D262+
0.0174769386*_D263+
0.0005423511*_D264+
-0.004199535*_D265+
0.0017064393*_D266+
0.0008261788*_D267+
-0.008447732*_D268+
0.0059738012*_D269+
-0.001890336*_D270+
0.001447687*_D271+
-0.001365204*_D272+
0.0004347178*_D273+
-0.003645503*_D274+
-0.031331795*_D275+
0.0001983749*_D276+
-0.006636382*_D277+
0.0150825262*_D278+
-0.010338327*_D279+
0.0218375717*_D280+
-0.004546144*_D281+
0.0015627335*_D282+
0.0227953264*_D283+
0.0026453538*_D284+
0.0001460276*_D285+
-0.006746813*_D286+
0.0057573205*_D287+
-0.003653548*_D288+
-0.002114121*_D289+
-0.000553598*_D290+
0.0027477429*_D291+
0.0015079093*_D292+
0.003466087*_D293+
-0.000279207*_D294+
-0.006599214*_D295+
0.082916025*_D296+
-0.010934726*_D297+
-0.001450831*_D298+
-0.000022494*_D299+
-0.001857131*_D300+
0.0009866731*_D301+
0.0093664617*_D302+
0.0071960221*_D303+
-0.005548816*_D304+
0.0040996494*_D305+
-0.001960509*_D306+
0.0132926285*_D307+
-0.002594884*_D308+
0.0035001085*_D309+
0.005361616*_D310+
0.0017948342*_D311+
-0.000399508*_D312+
0.0048722165*_D313+
0.0031802985*_D314+
0.0008975282*_D315+
-0.001049722*_D316+
-0.002901833*_D317+
-0.003570016*_D318+
-0.001285365*_D319+
-0.01076169*_D320+
-0.001178343*_D321+
0.0023362934*_D322+
-0.005217326*_D323+
-0.002002723*_D324+
0.0055183751*_D325+
0.0049583031*_D326+
0.0012511472*_D327+
0.0022274473*_D328+
0.0015319676*_D329+
0.0020794656*_D330+
0.0008046807*_D331+
-0.010836312*_D332+
0.005172655*_D333+
-0.035350261*_D334+
0.0053389098*_D335+
-0.00860018*_D336+
-0.057111109*_D337+
-0.003555421*_D338+
-0.020642146*_D339+
0.0007338412*_D340+
0.0001095344*_D341+
0.0022211405*_D342+
-0.000642632*_D343+
0.0054787023*_D344+
0.0010627889*_D345+
-0.004083553*_D346+
-0.002882057*_D347+
-0.000343561*_D348+
-0.001831133*_D349+
-0.000038624*_D350+
0.0036980352*_D351+
0.049228183*_D352+
-0.001194079*_D353+
0.0060482652*_D354+
0.003787884*_D355+
0.0014385893*_D356+
0.0050306636*_D357+
0.0056253058*_D358+
0.0023153885*_D359+
0.0006641921*_D360+
0.0353866978*_D361+
-0.025216934*_D362+
0.0032201002*_D363+
-0.000431302*_D364+
-0.002303594*_D365+
0.0025651946*_D366+
0.0289631366*_D367+
0.0010489649*_D368+
0.0026569452*_D369+
-0.00287774*_D370+
-0.001051698*_D371+
0.0800943026*_D372+
-0.002273596*_D373+
0.0055503321*_D374+
0.0128418561*_D375+
-0.011931086*_D376+
-0.002687012*_D377+
0.0082922724*_D378+
0.0005575359*_D379+
0.0032995493*_D380+
-0.004213605*_D381+
-0.00995411*_D382+
-0.002238297*_D383+
0.0004674687*_D384+
-0.000385397*_D385+
-0.001723916*_D386+
0.0027251163*_D387+
0.008662304*_D388+
0.0025276102*_D389+
-0.002916879*_D390+
0.0019763414*_D391+
-0.005396117*_D392+
-0.004754743*_D393+
0.0001004399*_D394+
0.0023037244*_D395+
0.0059891953*_D396+
-0.003170161*_D397+
-0.001137736*_D398+
-0.001033919*_D399+
0.0002338028*_D400+
-0.006613587*_D401+
-0.003482921*_D402+
-0.003341193*_D403+
0.0347769133*_D404+
-0.003182902*_D405+
0.0148813747*_D406+
0.0152892313*_D407+
0.0026204919*_D408+
0.0022414125*_D409+
-0.001815145*_D410+
0.0981893382*_D411+
0.0009970169*_D412+
0.0029947995*_D413+
-0.06907208*_D414+
-0.000256126*_D415+
-0.007191261*_D416+
-0.040291667*_D417+
-0.004924909*_D418+
-0.000283127*_D419+
-0.005045148*_D420+
0.0056232342*_D421+
0.0054064925*_D422+
-0.003077158*_D423+
0.0053282797*_D424+
-0.002925668*_D425+
-0.006691371*_D426+
-0.023958186*_D427+
-0.001246054*_D428+
-0.052802149*_D429+
-0.016489159*_D430+
-0.004610735*_D431+
0.0062233045*_D432+
0.14165583*_D433+
-0.017683446*_D434+
0.0062865829*_D435+
0.0245016512*_D436+
0.0060994537*_D437+
-0.001006196*_D438+
0.0003570132*_D439+
-0.003075159*_D440+
-0.007430486*_D441+
0.0658890289*_D442+
0.0064662665*_D443+
-0.001057886*_D444+
0.0031578307*_D445+
-0.012977584*_D446+
0.1229541114*_D447+
-0.000864811*_D448+
-0.00011724*_D449+
-0.015280614*_D450+
-0.005959176*_D451+
-0.000937911*_D452+
-0.000597309*_D453+
-0.000479068*_D454+
-0.012697972*_D455+
-0.05159458*_D456+
0.0094019942*_D457+
-0.001611252*_D458+
0.0011029502*_D459+
0.0135177862*_D460+
-0.061269305*_D461+
0.0028698818*_D462+
-0.003402148*_D463+
-0.009272474*_D464+
-0.00481215*_D465+
-0.007592254*_D466+
0.0007625577*_D467+
0.0135918026*_D468+
0.000866223*_D469+
0.0047291863*_D470+
-0.004970147*_D471+
0.0074091414*_D472+
0.0077766415*_D473+
-0.000385796*_D474+
0.0041492858*_D475+
-0.00199637*_D476+
0.0014654529*_D477+
-0.001941477*_D478+
0.0896067669*_D479+
0.0004118571*_D480+
-0.010954114*_D481+
-0.002542953*_D482+
-0.016155221*_D483+
-0.007062655*_D484+
0.0003149287*_D485+
-0.002815334*_D486+
0.0374901106*_D487+
0.0283152237*_D488+
-0.000097794*_D489+
-0.003326741*_D490+
0.0007099868*_D491+
-0.006702774*_D492+
0.0083591808*_D493+
0.0046280321*_D494+
0.0031587931*_D495+
0.0051135974*_D496+
0.0019836005*_D497+
0.0031580145*_D498+
0.0091965803*_D499+
-0.003854416*_D500+
-0.013400823*_D501+
-0.004954521*_D502+
0.0113423257*_D503+
0.0034947809*_D504+
-0.024494814*_D505+
0.0003275731*_D506+
-0.002416581*_D507+
0.002216993*_D508+
-0.002936914*_D509+
0.0016201375*_D510+
0.0006303953*_D511+
0.0005742103*_D512+
0.0053269837*_D513+
0.0007583083*_D514+
0.0018717023*_D515+
-0.002391436*_D516+
0.0041278057*_D517+
-0.012066057*_D518+
-0.015241134*_D519+
-0.000779066*_D520+
-0.011626931*_D521+
-0.00207871*_D522+
-0.004061305*_D523+
-0.00262405*_D524+
-0.005784116*_D525+
-0.0028202*_D526+
-0.01335247*_D527+
-0.000484589*_D528+
-0.007120534*_D529+
-0.005047995*_D530+
-0.00724758*_D531+
0.0129577998*_D532+
-0.039060358*_D533+
-0.001451048*_D534+
-0.000920809*_D535+
0.0115746871*_D536+
0.005316511*_D537+
-0.020199976*_D538+
-0.007859902*_D539+
0.0373187417*_D540+
0.0006377761*_D541+
-0.091617618*_D542+
-0.1336401*_D543+
0.0099119902*_D544+
0.000135711*_D545+
-0.003440673*_D546+
-0.041035105*_D547+
-0.007762481*_D548+
-0.001865349*_D549+
-0.016093334*_D550+
-0.008794904*_D551+
-0.017666074*_D552+
-0.033739038*_D553+
-0.006030776*_D554+
-0.001409823*_D555+
-0.019012466*_D556+
0.0029593586*_D557+
-0.007960996*_D558+
0.0003450246*_D559+
-0.007314793*_D560+
-0.002090592*_D561+
-0.000408476*_D562+
-0.000793886*_D563+
0.016227442*_D564+
-0.001273766*_D565+
-0.001751782*_D566+
0.0062402188*_D567+
-0.000657981*_D568+
0.0030432341*_D569+
-0.004709989*_D570+
0.0026061361*_D571+
-0.000950254*_D572+
0.0033159409*_D573+
0.001135161*_D574+
0.0014286136*_D575+
-0.008088842*_D576+
-0.003318814*_D577+
0.0007225474*_D578+
0.0036659849*_D579+
0.0105553691*_D580+
-0.017766185*_D581+
0.0021938968*_D582+
-0.002562403*_D583+
-0.000178394*_D584+
0.002014657*_D585+
-0.003024196*_D586+
0.0058216626*_D587+
0.010349634*_D588+
-0.001110781*_D589+
-0.019577622*_D590+
-0.021482511*_D591+
0.0076729621*_D592+
-0.00052224*_D593+
0.0096091195*_D594+
0.012362452*_D595+
-0.005847175*_D596+
0.0010947035*_D597+
0.0013702673*_D598+
0.0102743192*_D599+
-0.000430128*_D600+
-0.003329933*_D601+
-0.002838125*_D602+
-0.002681509*_D603+
-0.011100247*_D604+
-0.002627542*_D605+
-0.00128048*_D606+
0.0153377029*_D607+
-0.039987528*_D608+
-0.000725997*_D609+
0.0057512424*_D610+
7.8243656E-6*_D611+
-0.005541923*_D612+
0.002213871*_D613+
0.0072019564*_D614+
0.0464491831*_D615+
0.0029382995*_D616+
-0.002650846*_D617+
0.0059635188*_D618+
-0.005839572*_D619+
0.0005908072*_D620+
0.0008328399*_D621+
0.0006701891*_D622+
0.0006344965*_D623+
-0.013413948*_D624+
0.0024301462*_D625+
-0.050881013*_D626+
-0.003096986*_D627+
-0.002271541*_D628+
0.0037299181*_D629+
-0.000557356*_D630+
0.0010232593*_D631+
-0.003207934*_D632+
-0.004057114*_D633+
0.0020384936*_D634+
-0.019283213*_D635+
-0.003779683*_D636+
-0.004903091*_D637+
-0.015467663*_D638+
0.0054851435*_D639+
0.0066191824*_D640+
0.0421144268*_D641+
0.0039621913*_D642+
0.0041010328*_D643+
-0.001896652*_D644+
-0.035544749*_D645+
0.0471639768*_D646+
-0.004672339*_D647+
-0.000478439*_D648+
0.0024330253*_D649+
-0.008162742*_D650+
0.0035671834*_D651+
0.0009749236*_D652+
-0.000941457*_D653+
0.0058867274*_D654+
0.0019180203*_D655+
0.0001190996*_D656+
-0.001811391*_D657+
0.003530245*_D658+
-0.003076274*_D659+
0.0120224497*_D660+
0.0007218736*_D661+
-0.013068563*_D662+
-0.00018039*_D663+
-0.000605889*_D664+
-0.001580469*_D665+
0.0071654303*_D666+
0.0135304491*_D667+
0.065814903*_D668+
-0.002912289*_D669+
0.001352551*_D670+
-0.000299078*_D671+
-0.000204634*_D672+
0.010549879*_D673+
-0.005377891*_D674+
-0.010168283*_D675+
0.0018532057*_D676+
-0.010233007*_D677+
-0.019822328*_D678+
0.001788918*_D679+
-0.000743019*_D680+
0.007212372*_D681+
-0.002382792*_D682+
-0.026483833*_D683+
-0.008331939*_D684+
0.0507348186*_D685+
0.0008803339*_D686+
0.0050206587*_D687+
0.0022376955*_D688+
0.0034362354*_D689+
-0.00051499*_D690+
-8.945411E-6*_D691+
0.0108395809*_D692+
0.0013897924*_D693+
0.0797277352*_D694+
-0.007784455*_D695+
0.0007103389*_D696+
-0.003695638*_D697+
0.0158984563*_D698+
0.0022454003*_D699+
0.027534422*_D700+
-0.003934343*_D701+
-0.005293943*_D702+
0.0001249707*_D703+
-0.006781978*_D704+
-0.018755904*_D705+
-0.00686451*_D706+
-0.00197518*_D707+
-0.000129294*_D708+
-0.01792624*_D709+
-0.013790751*_D710+
-0.034435503*_D711+
-0.00491016*_D712+
-0.007997312*_D713+
-0.009503296*_D714+
0.0052002139*_D715+
-0.010351949*_D716+
-0.030422021*_D717+
0.0004140174*_D718+
0.004564941*_D719+
-0.001723972*_D720+
-0.002185343*_D721+
-0.004063852*_D722+
-0.000699224*_D723+
0.0005457475*_D724+
0.0000789121*_D725+
0.0023025558*_D726+
0.0005907997*_D727+
0.0003856924*_D728+
-0.001363999*_D729+
0.0053992153*_D730+
-0.001902555*_D731+
0.0044289861*_D732+
0.021775561*_D733+
0.0209332389*_D734+
-0.007976019*_D735+
-0.000938009*_D736+
-0.011483864*_D737+
0.0047045657*_D738+
-0.002552512*_D739+
-0.00096971*_D740+
0.0053402646*_D741+
-0.025580501*_D742+
-0.002026284*_D743+
0.0061215215*_D744+
0.001319045*_D745+
0.0114738059*_D746+
-0.007156965*_D747+
0.0038501073*_D748+
-0.018966887*_D749+
-0.012484725*_D750+
-0.024173014*_D751+
-0.004535582*_D752+
-0.002483387*_D753+
-0.011052901*_D754+
0.0183941005*_D755+
0.0020064882*_D756+
0.0030149131*_D757+
-0.010913883*_D758+
-0.027209728*_D759+
-0.002616196*_D760+
0.0056193379*_D761+
-0.0127613*_D762+
-0.00175817*_D763+
0.0362793492*_D764+
-0.00349424*_D765+
0.0046864897*_D766+
0.0023388184*_D767+
-0.00508197*_D768+
-0.011906155*_D769+
0.0041924736*_D770+
0.005744644*_D771+
0.038381783*_D772+
0.0133596484*_D773+
-0.020351665*_D774+
0.0434988325*_D775+
0.0035037644*_D776+
-0.004855716*_D777+
0.0031902004*_D778+
0.0084847205*_D779+
0.0011555866*_D780+
0.0020519274*_D781+
-0.00027042*_D782+
-0.002082528*_D783+
-0.003825405*_D784+
-0.003762122*_D785+
0.0072330352*_D786+
0.0098740406*_D787+
0.0074960842*_D788+
-0.000475673*_D789+
0.0099529329*_D790+
0.003159152*_D791+
0.2577233401*_D792+
-0.002094488*_D793+
-0.002535855*_D794+
0.0006178391*_D795+
-0.008394746*_D796+
0.002389111*_D797+
0.0011354532*_D798+
0.0180770036*_D799+
0.0374732828*_D800+
-0.00064121*_D801+
-0.000745524*_D802+
-0.0071702*_D803+
0.0113053255*_D804+
-0.001655691*_D805+
0.0073285835*_D806+
-0.008948614*_D807+
0.0134683021*_D808+
-0.008838509*_D809+
-0.002626222*_D810+
-0.003057086*_D811+
-0.001196366*_D812+
0.0044867077*_D813+
0.0016855162*_D814+
-0.003800943*_D815+
0.0029497859*_D816+
-0.003355714*_D817+
-0.000822454*_D818+
-0.00502801*_D819+
-0.002852852*_D820+
-0.001700962*_D821+
0.0086096121*_D822+
-0.003181035*_D823+
-0.001658455*_D824+
-0.004765097*_D825+
-0.005418996*_D826+
-0.002303908*_D827+
-0.013128671*_D828+
-0.071761865*_D829+
-0.014119999*_D830+
-0.000222657*_D831+
-0.003483928*_D832+
-0.003544993*_D833+
-0.000432637*_D834+
0.0005545838*_D835+
-0.001676483*_D836+
0.0198973255*_D837+
0.0182769456*_D838+
0.00001452*_D839+
0.0019126302*_D840+
-0.00010448*_D841+
0.0065933467*_D842+
-0.001910697*_D843+
-0.013807466*_D844+
0.0711478998*_D845+
0.0060351962*_D846+
-0.041900407*_D847+
-0.003324392*_D848+
0.0153452235*_D849+
-0.020010247*_D850+
-0.003437641*_D851+
-0.001138429*_D852+
-0.004291833*_D853+
0.0021775391*_D854+
0.0009376542*_D855+
-0.000707201*_D856+
0.0012442093*_D857+
-0.001790166*_D858+
0.0011671818*_D859+
-0.0017505*_D860+
0.0028893448*_D861+
-0.003172169*_D862+
0.0173681132*_D863+
-0.001682271*_D864+
0.0015111309*_D865+
-0.018392244*_D866+
0.0536310823*_D867+
-0.000283372*_D868+
0.0066719247*_D869+
-0.025521386*_D870+
0.0088526328*_D871+
-0.000442745*_D872+
-0.002067921*_D873+
-0.004417649*_D874+
0.00507983*_D875+
0.0219732751*_D876+
-0.003953673*_D877+
0.0027224055*_D878+
0.0107099907*_D879+
-0.01605989*_D880+
0.0036441691*_D881+
-0.006365359*_D882+
-0.000897491*_D883+
-0.000335147*_D884+
-0.018332457*_D885+
-0.007131314*_D886+
-0.006154942*_D887+
-0.006904777*_D888+
0.0039674129*_D889+
0.0009059885*_D890+
0.0084255208*_D891+
0.0062266387*_D892+
0.0049575488*_D893+
0.0141700226*_D894+
0.0071207317*_D895+
0.0013213445*_D896+
0.0012576023*_D897+
-0.000635834*_D898+
0.0102835105*_D899+
0.0044082964*_D900+
-0.001041719*_D901+
0.001890722*_D902+
-0.008521577*_D903+
0.0439179551*_D904+
0.00187064*_D905+
0.0220574771*_D906+
-0.002127104*_D907+
0.0006994737*_D908+
0.0030375533*_D909+
0.0084847205*_D910+
0.0026984739*_D911+
-0.001545679*_D912+
0.0021325711*_D913+
0.0417837545*_D914+
-0.015102397*_D915+
-0.003370981*_D916+
-0.002746318*_D917+
-0.003541147*_D918+
0.0493758484*_D919+
0.0030101304*_D920+
-0.005603917*_D921+
-0.005415583*_D922+
-0.018656488*_D923+
-0.023654014*_D924+
0.0041313533*_D925+
0.0022784589*_D926+
-0.00017534*_D927+
-0.008385454*_D928+
-0.005875768*_D929+
0.0031316947*_D930+
-0.005073227*_D931+
0.0003045103*_D932+
0.0368558089*_D933+
-0.002135816*_D934+
0.0089468493*_D935+
-0.000555306*_D936+
-0.001043437*_D937+
0.0023334039*_D938+
-0.000405764*_D939+
-0.013331348*_D940+
-0.00712293*_D941+
-0.001083712*_D942+
0.0035641139*_D943+
0.003419264*_D944+
-0.002738894*_D945+
0.0021340877*_D946+
0.0951622442*_D947+
0.1714471983*_D948+
-0.002911601*_D949+
-0.005075568*_D950+
0.0448098928*_D951+
0.0136495555*_D952+
0.0214770656*_D953+
-0.001425758*_D954+
-0.005907101*_D955+
-0.012553354*_D956+
-0.003653839*_D957+
-0.000508818*_D958+
0.0020378297*_D959+
-0.037721293*_D960+
0.1789369886*_D961+
0.0006988876*_D962+
-0.015144186*_D963+
0.0222388992*_D964+
0.0031606746*_D965+
0.003691413*_D966+
-0.00389935*_D967+
0.0071174372*_D968+
0.0027063919*_D969+
-0.01165757*_D970+
0.0020976405*_D971+
0.0043721916*_D972+
-0.018902556*_D973+
-0.001548533*_D974+
0.0309230022*_D975+
0.0374418963*_D976+
-0.007885309*_D977+
0.0021895113*_D978+
0.002419308*_D979+
-0.002406849*_D980+
0.0018551038*_D981+
0.000999232*_D982+
0.0007196762*_D983+
0.0048193753*_D984+
0.0034405368*_D985+
0.0043605559*_D986+
-0.011100883*_D987+
-0.000944656*_D988+
0.0057129451*_D989+
-0.002512813*_D990+
-0.002976386*_D991+
-0.005157661*_D992+
0.0167296962*_D993+
-0.003168093*_D994+
0.1212492425*_D995+
0.0046079009*_D996+
0.0010741071*_D997+
-0.008428027*_D998+
-0.007903846*_D999+
0.0024434487*_D1000+
-0.001138452*_D1001+
-0.002668725*_D1002+
0.0063538854*_D1003+
-0.010865544*_D1004+
0.0014414773*_D1005+
0.0077329821*_D1006+
0.0014952107*_D1007+
-0.016483056*_D1008+
0.0066773087*_D1009+
0.0018906617*_D1010+
-0.008062395*_D1011+
0.0011383795*_D1012+
-0.001472291*_D1013+
-0.02922511*_D1014+
-0.001446681*_D1015+
-0.018515804*_D1016+
-0.002531705*_D1017+
0.0024587494*_D1018+
-0.000407174*_D1019+
-0.000846322*_D1020+
0.0124081689*_D1021+
0.0005671363*_D1022+
-0.003825166*_D1023+
-0.01013169*_D1024+
0.0406434762*_D1025+
0.0022045506*_D1026+
-0.005698896*_D1027+
-0.006320432*_D1028+
0.032801039*_D1029+
-0.002529207*_D1030+
-0.00737586*_D1031+
-0.007739349*_D1032+
-0.002587537*_D1033+
0.0069291092*_D1034+
-0.003945204*_D1035+
0.000438122*_D1036+
0.0029799151*_D1037+
-0.009556928*_D1038+
0.0069715523*_D1039+
0.0011085596*_D1040+
0.0013477266*_D1041+
-0.001332922*_D1042+
-0.002680025*_D1043+
0.0008390835*_D1044+
-0.026133132*_D1045+
-0.001722193*_D1046+
0.0024439232*_D1047+
0.0047250212*_D1048+
-0.011585549*_D1049+
0.0290810883*_D1050+
-0.000270382*_D1051+
-0.001537053*_D1052+
0.0078022371*_D1053+
-0.004507228*_D1054+
-0.002585378*_D1055+
-0.000085343*_D1056+
-0.001399361*_D1057+
-0.002742578*_D1058+
-0.012455239*_D1059+
-0.003159636*_D1060+
-0.01112019*_D1061+
-0.001998365*_D1062+
0.0014750025*_D1063+
-2.693576E-6*_D1064+
0.0029292031*_D1065+
0.0055441555*_D1066+
0.0073837267*_D1067+
-0.016740004*_D1068+
-0.000887812*_D1069+
0.0007984333*_D1070+
-0.000384594*_D1071+
0.0036441944*_D1072+
0.0028486362*_D1073+
-0.059628047*_D1074+
0.0010893435*_D1075+
0.002092288*_D1076+
-0.001067373*_D1077+
0.0002913362*_D1078+
-0.003280228*_D1079+
-0.006347591*_D1080+
-0.000891008*_D1081+
-0.000782848*_D1082+
-0.00157454*_D1083+
-0.016455389*_D1084+
-0.019533122*_D1085+
0.0109916384*_D1086+
-0.004697079*_D1087+
0.0035423543*_D1088+
0.0550521827*_D1089+
0.005324717*_D1090+
-0.001906069*_D1091+
-0.010284926*_D1092+
0.0009023942*_D1093+
-0.004431717*_D1094+
-0.00238034*_D1095+
-0.00604709*_D1096+
-0.000806062*_D1097+
-0.00461412*_D1098+
-0.001677441*_D1099+
-0.002679223*_D1100+
0.0053050431*_D1101+
-0.004597142*_D1102+
0.0384726291*_D1103+
-0.002389726*_D1104+
0.0048281461*_D1105+
0.0049847782*_D1106+
0.0296499679*_D1107+
-0.000788859*_D1108+
-0.008329753*_D1109+
-0.008728263*_D1110+
-0.003289078*_D1111+
-0.015627502*_D1112+
0.139162176*_D1113+
0.1140891103*_D1114+
0.3952549043*_D1115+
0.0011756475*_D1116+
-0.005720663*_D1117+
-0.000230186*_D1118+
-0.001285778*_D1119+
-0.005741263*_D1120+
0.0161035987*_D1121+
0.0078534508*_D1122+
-0.050317336*_D1123+
0.0001275256*_D1124+
-0.014409213*_D1125+
-0.000746899*_D1126+
-0.026509345*_D1127+
-0.004669858*_D1128+
0.0098146786*_D1129+
-0.00648621*_D1130+
-0.049232392*_D1131+
0.0335859576*_D1132+
-0.002873525*_D1133+
0.0007727096*_D1134+
-0.001656349*_D1135+
-0.00058642*_D1136+
-0.009000419*_D1137+
-0.007720396*_D1138+
-0.000890485*_D1139+
0.0349080038*_D1140+
-0.089962616*_D1141+
0.0001550646*_D1142+
0.0145235101*_D1143+
-0.005584138*_D1144+
-0.006868127*_D1145+
-0.016769577*_D1146+
0.0425956108*_D1147+
-0.000944979*_D1148+
0.0048283575*_D1149+
-0.005333383*_D1150+
0.0078167738*_D1151+
0.0007787628*_D1152+
0.0016526806*_D1153+
0.0007930443*_D1154+
-0.004357688*_D1155+
0.0058359562*_D1156+
-0.013964944*_D1157+
-0.004154494*_D1158+
-0.011237307*_D1159+
-0.017290428*_D1160+
0.0029816802*_D1161+
-0.000358918*_D1162+
-0.009716117*_D1163+
-0.007012812*_D1164+
-0.003996011*_D1165+
-0.004138927*_D1166+
-0.001373728*_D1167+
-0.019168228*_D1168+
0.0023942422*_D1169+
0.0044790215*_D1170+
0.0037348286*_D1171+
-0.000547807*_D1172+
-0.020150185*_D1173+
0.0229568454*_D1174+
0.0012278966*_D1175+
-0.014368405*_D1176+
0.0162785616*_D1177+
0.0153034776*_D1178+
0.0459142439*_D1179+
-0.000457475*_D1180+
-0.004058098*_D1181+
0.0003630147*_D1182+
0.0052459988*_D1183+
0.0017456043*_D1184+
-0.004573964*_D1185+
0.0043134741*_D1186+
0.0011723954*_D1187+
0.0032151828*_D1188+
-0.000779357*_D1189+
0.0040193537*_D1190+
0.0287612614*_D1191+
0.0008543883*_D1192+
-0.00113279*_D1193+
0.0009156841*_D1194+
0.0001634239*_D1195+
0.003631852*_D1196+
0.0082057263*_D1197+
-0.002438741*_D1198+
-0.002779132*_D1199+
0.0360874647*_D1200+
0.0018888674*_D1201+
-0.055776501*_D1202+
-0.007395412*_D1203+
0.0984656512*_D1204;
/****************************************/
* Componente principal 10;
/****************************************/
;
length PC_10 8;
label PC_10 = "Componente principal 10";
PC_10 =
-0.000088371*_D1+
0.0018505903*_D2+
-0.000394845*_D3+
0.0145250904*_D4+
0.0028108281*_D5+
0.0011593458*_D6+
0.0096014387*_D7+
-0.00149178*_D8+
0.0027210144*_D9+
-0.011853641*_D10+
0.0044766553*_D11+
0.0032689893*_D12+
0.0015624446*_D13+
0.005032557*_D14+
0.0072010185*_D15+
-0.02032807*_D16+
0.0045007262*_D17+
0.0072475627*_D18+
0.0023105885*_D19+
0.0012207917*_D20+
0.0082790186*_D21+
-0.003149784*_D22+
0.0038256039*_D23+
0.0019765245*_D24+
-0.002124096*_D25+
-0.001026485*_D26+
0.001493967*_D27+
-0.003653316*_D28+
0.0044840031*_D29+
0.0037918177*_D30+
0.0066307781*_D31+
0.0047926059*_D32+
-0.005037838*_D33+
0.0030413769*_D34+
-0.030139721*_D35+
0.0023537365*_D36+
0.0033966058*_D37+
0.0024486461*_D38+
0.0101578335*_D39+
0.0017755688*_D40+
0.0031111981*_D41+
-0.001887268*_D42+
0.0068966797*_D43+
0.0022458189*_D44+
0.0034513044*_D45+
0.0011220933*_D46+
0.0035629245*_D47+
0.0061302723*_D48+
-0.006143447*_D49+
0.0051807489*_D50+
-0.000040151*_D51+
0.0065026788*_D52+
-0.024129095*_D53+
0.0068275724*_D54+
0.0010426172*_D55+
0.0031501083*_D56+
-0.019747501*_D57+
-0.000984088*_D58+
0.0061833924*_D59+
0.0898986553*_D60+
0.10114767*_D61+
0.0058952919*_D62+
0.003290602*_D63+
0.0010098689*_D64+
0.0019317342*_D65+
0.0048133715*_D66+
0.0037191778*_D67+
-0.010707293*_D68+
0.0005645317*_D69+
0.0017914135*_D70+
-0.0134209*_D71+
-0.005918235*_D72+
0.0001678273*_D73+
0.0024261832*_D74+
-0.00021029*_D75+
-0.001647986*_D76+
0.0162611204*_D77+
-0.000975881*_D78+
-0.008219811*_D79+
0.0009706101*_D80+
0.0024293097*_D81+
0.0234566774*_D82+
-0.002007861*_D83+
0.0017073237*_D84+
0.0131511548*_D85+
0.0070718539*_D86+
0.0008003755*_D87+
0.003064215*_D88+
0.0161579069*_D89+
-0.006332451*_D90+
-0.000438791*_D91+
0.1936917699*_D92+
-0.003422369*_D93+
-0.020315999*_D94+
0.002985134*_D95+
-0.034598899*_D96+
0.0018445586*_D97+
-0.012192765*_D98+
-0.000909776*_D99+
0.0122960649*_D100+
-0.000558279*_D101+
0.0071205851*_D102+
0.0128617946*_D103+
0.0007561993*_D104+
0.0049122883*_D105+
-0.000588343*_D106+
0.0040157431*_D107+
0.0018695801*_D108+
-0.000611712*_D109+
-0.002794055*_D110+
-0.008768842*_D111+
0.0211645312*_D112+
0.0033442659*_D113+
0.0005861377*_D114+
0.010388019*_D115+
0.0012983136*_D116+
0.0036225486*_D117+
-0.008644176*_D118+
0.0014481802*_D119+
-0.001161646*_D120+
0.0103422376*_D121+
0.005137979*_D122+
0.0001733449*_D123+
0.0055052398*_D124+
-0.008282504*_D125+
0.0043259474*_D126+
-0.001944975*_D127+
0.0011717215*_D128+
0.0006684655*_D129+
-0.002909926*_D130+
0.0079316689*_D131+
0.0053352015*_D132+
0.0044020268*_D133+
0.0160291403*_D134+
0.0055405532*_D135+
0.0009628018*_D136+
0.0016613314*_D137+
0.0028453149*_D138+
0.000717399*_D139+
0.0045187391*_D140+
0.005415885*_D141+
-0.003341336*_D142+
0.0048944351*_D143+
-0.00687659*_D144+
-0.015937922*_D145+
-0.000512433*_D146+
0.0052927574*_D147+
0.0031199729*_D148+
0.0087364071*_D149+
-0.006861972*_D150+
0.0045802576*_D151+
-0.0010064*_D152+
0.0062338869*_D153+
0.0010642953*_D154+
0.0029772702*_D155+
0.0049434199*_D156+
0.005118155*_D157+
0.0012605475*_D158+
-0.001171541*_D159+
0.0038668556*_D160+
0.002120806*_D161+
-0.000339526*_D162+
0.0059599813*_D163+
0.0063003915*_D164+
0.0167430431*_D165+
-0.001599927*_D166+
0.0040654741*_D167+
-0.00055553*_D168+
-0.000382113*_D169+
0.0115520555*_D170+
0.0022204842*_D171+
-0.000836969*_D172+
-0.011122578*_D173+
-0.004838277*_D174+
0.0043732318*_D175+
0.0043282299*_D176+
-0.000532978*_D177+
-0.004634794*_D178+
-0.006719448*_D179+
0.0054258397*_D180+
-0.000284058*_D181+
-0.004214717*_D182+
0.0106313795*_D183+
0.0017361437*_D184+
-0.004590816*_D185+
0.0000936376*_D186+
0.0064098654*_D187+
0.012090199*_D188+
0.0032617263*_D189+
-0.014224576*_D190+
0.0022236848*_D191+
-0.009779519*_D192+
0.0151575949*_D193+
0.0026693524*_D194+
-0.000115227*_D195+
0.0010424989*_D196+
0.0026170004*_D197+
-0.000233323*_D198+
0.0062800153*_D199+
0.008475925*_D200+
-0.013585083*_D201+
-0.009706199*_D202+
0.0002138372*_D203+
0.0016888791*_D204+
0.0042944941*_D205+
0.0025847858*_D206+
0.0044875742*_D207+
-0.132461171*_D208+
0.0048183632*_D209+
0.0066833646*_D210+
0.0068301826*_D211+
0.0009387069*_D212+
-0.001553396*_D213+
0.0029854823*_D214+
0.0019120693*_D215+
0.0026534647*_D216+
0.0036367286*_D217+
0.0009324354*_D218+
0.001896349*_D219+
0.003205252*_D220+
0.0057437373*_D221+
0.0035342449*_D222+
-0.000081149*_D223+
0.0061128808*_D224+
0.0091994356*_D225+
0.0030735337*_D226+
-0.001284978*_D227+
0.009729004*_D228+
0.0011451888*_D229+
-0.001363987*_D230+
0.0026062974*_D231+
0.0036434803*_D232+
0.0007407815*_D233+
0.0044114986*_D234+
0.0043198362*_D235+
0.0031058136*_D236+
-0.002356368*_D237+
0.005602103*_D238+
0.0038015248*_D239+
-0.014084385*_D240+
0.0008513247*_D241+
-0.008547065*_D242+
0.0038594924*_D243+
0.0043484731*_D244+
0.0042109109*_D245+
-0.003139271*_D246+
-0.007378204*_D247+
0.0017337738*_D248+
-0.37398379*_D249+
0.0062177904*_D250+
0.0079460406*_D251+
0.0009282655*_D252+
0.0012762446*_D253+
0.0089013347*_D254+
0.0035315707*_D255+
0.0043690598*_D256+
-0.005104371*_D257+
0.0111794026*_D258+
0.0134454864*_D259+
0.0358904808*_D260+
0.0275556007*_D261+
0.00358136*_D262+
0.0078203932*_D263+
0.0030003815*_D264+
0.0012468283*_D265+
0.0051998236*_D266+
0.0013865183*_D267+
0.0080668025*_D268+
-0.010678391*_D269+
-0.000010096*_D270+
0.0005244666*_D271+
0.0005823719*_D272+
-0.003523076*_D273+
0.0015440041*_D274+
-0.013219085*_D275+
0.000164391*_D276+
-0.003324729*_D277+
-0.001339586*_D278+
0.0033420326*_D279+
0.0045180258*_D280+
0.0025259297*_D281+
0.0030327956*_D282+
0.0018652541*_D283+
-0.000847425*_D284+
0.0024014102*_D285+
-0.004319754*_D286+
0.007907708*_D287+
0.0023723255*_D288+
-0.003527002*_D289+
0.0013802318*_D290+
0.0027307115*_D291+
0.0015369077*_D292+
0.0090820774*_D293+
0.0041361798*_D294+
0.0067674332*_D295+
-0.361272532*_D296+
0.0049022876*_D297+
0.0049091686*_D298+
-0.002539255*_D299+
0.0053541332*_D300+
0.0030376863*_D301+
0.0063305617*_D302+
0.0165698088*_D303+
0.0042211199*_D304+
-0.000931189*_D305+
0.0033184832*_D306+
0.0137376946*_D307+
0.0028375618*_D308+
0.0172942231*_D309+
0.0024336486*_D310+
0.0084779658*_D311+
0.0014124294*_D312+
-0.000479317*_D313+
0.0030834818*_D314+
0.0019927415*_D315+
0.0076400745*_D316+
0.0000370773*_D317+
0.0109218519*_D318+
-0.015205303*_D319+
0.0076817794*_D320+
0.000955655*_D321+
0.0019085108*_D322+
0.0088671196*_D323+
0.0008573609*_D324+
0.008347785*_D325+
0.0009660178*_D326+
0.0032436666*_D327+
0.0016134603*_D328+
0.0057568017*_D329+
-0.000716136*_D330+
0.0006108203*_D331+
-0.091707666*_D332+
0.0027857731*_D333+
-0.01733099*_D334+
0.0204502162*_D335+
0.0009679334*_D336+
0.0244154286*_D337+
-0.002092825*_D338+
-0.006424514*_D339+
0.0018932245*_D340+
0.0032125091*_D341+
0.004985037*_D342+
0.0005939001*_D343+
0.0026052376*_D344+
0.0000574802*_D345+
-0.001810426*_D346+
-0.001539289*_D347+
0.0029524763*_D348+
0.0004500546*_D349+
0.0030725403*_D350+
0.0019447135*_D351+
0.010069711*_D352+
0.0035299615*_D353+
0.0028445444*_D354+
0.0030779521*_D355+
-0.009687302*_D356+
0.0037753541*_D357+
0.0010993885*_D358+
0.0017025611*_D359+
0.0043425087*_D360+
0.0067223439*_D361+
-0.005928835*_D362+
0.0000174653*_D363+
0.0038714007*_D364+
0.0101423364*_D365+
0.0026409848*_D366+
0.0102328667*_D367+
0.0064444342*_D368+
-0.005486036*_D369+
0.006330653*_D370+
-0.000290886*_D371+
0.0168955658*_D372+
0.0048032398*_D373+
-0.000861712*_D374+
0.0064618113*_D375+
-0.006136632*_D376+
-0.000960966*_D377+
0.0044119967*_D378+
0.0030145771*_D379+
-0.000406617*_D380+
-0.001280897*_D381+
-0.001235575*_D382+
-0.001714358*_D383+
-0.000785161*_D384+
0.0100247412*_D385+
0.003943264*_D386+
0.0023367507*_D387+
0.0014440424*_D388+
0.0001495003*_D389+
-0.006444386*_D390+
0.0009629612*_D391+
0.0025824164*_D392+
0.001525191*_D393+
-0.016442154*_D394+
0.0022335834*_D395+
0.0041807814*_D396+
0.0001512509*_D397+
0.0071172219*_D398+
0.0034050548*_D399+
0.003785683*_D400+
0.005747947*_D401+
-0.004530873*_D402+
0.000767282*_D403+
0.0124153022*_D404+
0.0003145669*_D405+
0.0216748693*_D406+
0.001688505*_D407+
0.0009952524*_D408+
0.001047636*_D409+
-0.00067656*_D410+
-0.42531112*_D411+
-0.001226261*_D412+
-0.002611543*_D413+
0.1737826765*_D414+
0.0048994558*_D415+
-0.003763542*_D416+
0.0616101596*_D417+
0.0043442864*_D418+
0.0020890853*_D419+
0.0101020368*_D420+
0.0103408956*_D421+
-0.000695926*_D422+
-0.001048011*_D423+
0.0028718133*_D424+
0.00644052*_D425+
0.0044643647*_D426+
0.0307219495*_D427+
-0.005664618*_D428+
0.1290323001*_D429+
-0.005882302*_D430+
0.0104939906*_D431+
0.0091610587*_D432+
0.0322625652*_D433+
-0.00658831*_D434+
-0.011868582*_D435+
0.0051428164*_D436+
-0.000556776*_D437+
0.0065870067*_D438+
0.0005907265*_D439+
0.0003665694*_D440+
0.0153124405*_D441+
0.0152464699*_D442+
0.0031745993*_D443+
-0.003014252*_D444+
0.004836*_D445+
0.0051127324*_D446+
0.0362049262*_D447+
-0.003070953*_D448+
-0.000425626*_D449+
-0.001185211*_D450+
0.007751697*_D451+
0.0024177779*_D452+
0.0031152106*_D453+
0.0002317026*_D454+
-0.008542169*_D455+
-0.027985076*_D456+
0.0038571335*_D457+
0.0000142061*_D458+
-0.000261437*_D459+
0.0043640447*_D460+
-0.029918218*_D461+
0.0040179034*_D462+
0.0020128645*_D463+
-0.008629513*_D464+
0.000193557*_D465+
0.0049781852*_D466+
0.0036764989*_D467+
0.0073552978*_D468+
0.0052665036*_D469+
0.0092338129*_D470+
0.0057796007*_D471+
0.0079368907*_D472+
0.0051530524*_D473+
0.0060151865*_D474+
0.003286793*_D475+
-0.003482933*_D476+
0.005448999*_D477+
-0.00176774*_D478+
0.0312604475*_D479+
0.0034584366*_D480+
-0.005142453*_D481+
0.0028462582*_D482+
-0.007043503*_D483+
0.008203096*_D484+
0.0028568975*_D485+
-0.00070766*_D486+
0.008419998*_D487+
0.0077812063*_D488+
0.002149645*_D489+
-0.003866057*_D490+
0.0029564243*_D491+
-0.019668011*_D492+
0.0067024592*_D493+
0.009385679*_D494+
0.0045240034*_D495+
0.0054917041*_D496+
-0.000668174*_D497+
0.0021473375*_D498+
0.0018655348*_D499+
0.0131260974*_D500+
-0.000160351*_D501+
0.0046955913*_D502+
0.003839252*_D503+
0.0017356593*_D504+
-0.004198474*_D505+
-0.001879967*_D506+
0.0005717234*_D507+
0.0049179398*_D508+
0.0003000186*_D509+
0.0036906157*_D510+
0.0015285779*_D511+
0.0034250935*_D512+
0.0046784365*_D513+
0.0030985478*_D514+
0.0009719125*_D515+
0.0047909833*_D516+
0.0122014303*_D517+
0.0126628965*_D518+
0.0130807116*_D519+
0.0053043242*_D520+
0.005182736*_D521+
-0.00062934*_D522+
-0.003660417*_D523+
0.0020158534*_D524+
0.004156278*_D525+
0.0047122221*_D526+
-0.003777466*_D527+
0.0016903128*_D528+
0.0118361597*_D529+
0.0009492417*_D530+
0.0107689068*_D531+
0.005343072*_D532+
0.0922887154*_D533+
0.0013718288*_D534+
0.0026445118*_D535+
0.0073415835*_D536+
0.0028115625*_D537+
-0.005911037*_D538+
-0.005082559*_D539+
0.0131239184*_D540+
0.0040965489*_D541+
-0.044476703*_D542+
-0.051714626*_D543+
0.0039351326*_D544+
-0.00157445*_D545+
-0.008957984*_D546+
-0.017800491*_D547+
0.009851122*_D548+
0.0041671179*_D549+
-0.00723324*_D550+
-0.003442739*_D551+
-0.002190282*_D552+
-0.019293251*_D553+
-0.0047513*_D554+
0.0036770011*_D555+
-0.008760704*_D556+
0.0111997882*_D557+
0.0089020616*_D558+
-0.017492007*_D559+
0.0074122383*_D560+
-0.000679263*_D561+
-0.001045234*_D562+
0.002388969*_D563+
0.0039461096*_D564+
0.0070217036*_D565+
-0.008016108*_D566+
0.010615886*_D567+
0.0070385624*_D568+
-0.009056327*_D569+
0.0045207794*_D570+
0.0042313928*_D571+
0.0062018663*_D572+
0.0008779501*_D573+
0.0024979723*_D574+
0.002661099*_D575+
0.0035869239*_D576+
-0.003029096*_D577+
0.004127737*_D578+
0.0030564789*_D579+
0.0027941456*_D580+
0.0229556882*_D581+
0.0027192214*_D582+
0.0026617084*_D583+
-0.000328134*_D584+
-0.000675234*_D585+
0.005240488*_D586+
-0.000411846*_D587+
0.0074797706*_D588+
-0.001969927*_D589+
-0.008131022*_D590+
-0.008139313*_D591+
0.0041073774*_D592+
0.000839652*_D593+
0.0012276949*_D594+
0.0038515473*_D595+
0.0106066798*_D596+
0.0052197175*_D597+
0.0027675175*_D598+
-0.022193177*_D599+
-0.002976556*_D600+
0.0001065214*_D601+
0.0011983916*_D602+
0.0021395676*_D603+
0.0191460768*_D604+
0.0005437005*_D605+
0.004175865*_D606+
0.0017721576*_D607+
-0.017593197*_D608+
0.0014325089*_D609+
0.0057757302*_D610+
-0.001358924*_D611+
0.0068219373*_D612+
-0.000983591*_D613+
0.0117524466*_D614+
0.0156233684*_D615+
0.0017094408*_D616+
-0.003476334*_D617+
0.0016595852*_D618+
0.0066881734*_D619+
0.0001421505*_D620+
-0.001262799*_D621+
0.0022093625*_D622+
0.0034606929*_D623+
-0.00157852*_D624+
0.0099909406*_D625+
0.0936365473*_D626+
0.0012808476*_D627+
0.0017639674*_D628+
0.0036344934*_D629+
0.0000894537*_D630+
0.0015010184*_D631+
-0.007413761*_D632+
0.0041177503*_D633+
-0.0031753*_D634+
0.0197944417*_D635+
0.0010040748*_D636+
0.0031750266*_D637+
0.0088470235*_D638+
-0.004437491*_D639+
0.0033109708*_D640+
0.007605413*_D641+
0.0026099692*_D642+
0.0081013103*_D643+
0.0064762389*_D644+
-0.004723905*_D645+
-0.208982593*_D646+
0.004528032*_D647+
0.0016406253*_D648+
0.0284640102*_D649+
-0.001617337*_D650+
0.0178964834*_D651+
0.0105115563*_D652+
-0.003324128*_D653+
0.0017459944*_D654+
-0.000256112*_D655+
0.0027494546*_D656+
0.0001269475*_D657+
0.0095971777*_D658+
0.0008140789*_D659+
0.0093793991*_D660+
0.0013074408*_D661+
-0.003516895*_D662+
0.0028753988*_D663+
0.0079345662*_D664+
-0.005632752*_D665+
0.0032142892*_D666+
0.002551221*_D667+
0.0132796191*_D668+
0.0045411219*_D669+
0.0028842013*_D670+
0.0032142258*_D671+
0.0025247226*_D672+
0.0048303888*_D673+
0.0050680928*_D674+
0.0090498778*_D675+
-0.0006338*_D676+
0.0041225126*_D677+
-0.002037456*_D678+
0.000898784*_D679+
-0.00110628*_D680+
0.0071206168*_D681+
-0.002894564*_D682+
0.0097340788*_D683+
0.0070573062*_D684+
0.0108518506*_D685+
-0.004768921*_D686+
0.0011336493*_D687+
0.0003096312*_D688+
0.0050665901*_D689+
-0.001358482*_D690+
-0.00427759*_D691+
0.0013274751*_D692+
0.0048912451*_D693+
0.0161664653*_D694+
-0.002923223*_D695+
0.0021689305*_D696+
0.0057620146*_D697+
0.0010822723*_D698+
0.0052733596*_D699+
0.0022387333*_D700+
6.800275E-6*_D701+
0.0028795655*_D702+
0.0073342073*_D703+
-0.00234689*_D704+
-0.000921418*_D705+
-0.003253738*_D706+
0.005732342*_D707+
0.0019492002*_D708+
0.014210935*_D709+
-0.007259833*_D710+
0.06716462*_D711+
-0.002061146*_D712+
0.0053520689*_D713+
0.0028132292*_D714+
0.0036440282*_D715+
-0.00114066*_D716+
0.0005712216*_D717+
0.0025481476*_D718+
0.0004189581*_D719+
0.0017566606*_D720+
0.0033833112*_D721+
0.0061703181*_D722+
-0.000766155*_D723+
-0.051603832*_D724+
0.0021444014*_D725+
0.0010099678*_D726+
0.000654683*_D727+
-0.001152176*_D728+
-0.001821392*_D729+
0.0041225993*_D730+
0.0004739794*_D731+
0.0035006962*_D732+
0.0100817565*_D733+
0.0048488523*_D734+
-0.003818723*_D735+
-0.004488331*_D736+
-0.00525985*_D737+
-0.000844327*_D738+
-0.000288021*_D739+
-0.003471608*_D740+
-0.006548967*_D741+
-0.001969317*_D742+
0.0000842361*_D743+
0.0042310998*_D744+
0.0006759312*_D745+
0.004261299*_D746+
0.004555529*_D747+
0.004192189*_D748+
-0.006383155*_D749+
0.0089419157*_D750+
-0.006303313*_D751+
0.0035212457*_D752+
0.0028142343*_D753+
0.0033850764*_D754+
0.007613031*_D755+
0.0019761245*_D756+
0.0129799672*_D757+
-0.006762534*_D758+
-0.011101411*_D759+
0.0023881299*_D760+
-0.00268532*_D761+
0.0083872526*_D762+
-0.000262361*_D763+
0.0081691186*_D764+
-0.000604608*_D765+
0.0129789379*_D766+
0.0045482045*_D767+
0.0001643412*_D768+
-0.003584235*_D769+
0.0013268415*_D770+
0.0024537883*_D771+
0.0148037284*_D772+
0.0113871925*_D773+
0.0273285883*_D774+
-0.271126012*_D775+
0.0041750254*_D776+
0.0028875942*_D777+
0.0081428914*_D778+
-0.010704537*_D779+
-0.006209577*_D780+
0.0048988765*_D781+
0.0045069528*_D782+
0.0053115884*_D783+
0.011918394*_D784+
0.0068122271*_D785+
-0.002018208*_D786+
-0.002998322*_D787+
-0.002549662*_D788+
0.0012987412*_D789+
0.0021014594*_D790+
0.0048249171*_D791+
0.0780509148*_D792+
0.003482054*_D793+
0.0035204257*_D794+
0.0038657042*_D795+
-0.004289227*_D796+
0.0005726549*_D797+
-0.000091886*_D798+
0.003085935*_D799+
0.0088146498*_D800+
0.0021918184*_D801+
-0.003372812*_D802+
0.0063875717*_D803+
0.0023792235*_D804+
0.0010974681*_D805+
0.0141756216*_D806+
-0.00124895*_D807+
0.0055556315*_D808+
0.0060688729*_D809+
0.0023248258*_D810+
0.0028296055*_D811+
0.0023459254*_D812+
-0.001468524*_D813+
-0.003686738*_D814+
0.0061031547*_D815+
0.0045865499*_D816+
-0.000377925*_D817+
0.0054701711*_D818+
0.0023184355*_D819+
0.0014197181*_D820+
0.0004261824*_D821+
0.0077489934*_D822+
0.0020809515*_D823+
0.0051170106*_D824+
0.0072550474*_D825+
-0.010192303*_D826+
0.0032100435*_D827+
0.0152402002*_D828+
0.187778158*_D829+
-0.002951575*_D830+
0.0006854765*_D831+
-0.000529863*_D832+
0.0025449855*_D833+
-0.002375934*_D834+
-0.000148302*_D835+
0.0030470942*_D836+
0.0169267814*_D837+
0.0042264787*_D838+
0.0037338267*_D839+
0.0022839021*_D840+
0.0017003327*_D841+
0.0101115236*_D842+
0.0040425812*_D843+
-0.020274518*_D844+
-0.268393728*_D845+
-0.001072646*_D846+
-0.000190299*_D847+
-0.002150384*_D848+
-0.000758958*_D849+
0.0115840144*_D850+
0.005665697*_D851+
0.0035944539*_D852+
0.0059807709*_D853+
0.0035356839*_D854+
0.0056105239*_D855+
0.0003173798*_D856+
0.0044025802*_D857+
-0.000184237*_D858+
0.0032493529*_D859+
0.0007587877*_D860+
0.0011986767*_D861+
0.0071355764*_D862+
0.0046498202*_D863+
0.0032765888*_D864+
0.0045591656*_D865+
-0.008014753*_D866+
0.0161758983*_D867+
0.0008013802*_D868+
-0.008697538*_D869+
0.0185242888*_D870+
0.0082397441*_D871+
0.0017192237*_D872+
-0.000219874*_D873+
-0.002877964*_D874+
0.0029646118*_D875+
0.0088497726*_D876+
0.0007701389*_D877+
0.005698067*_D878+
0.0037678202*_D879+
-0.003596025*_D880+
0.0132452492*_D881+
0.0004586217*_D882+
0.0006757376*_D883+
0.0015673288*_D884+
0.0004766037*_D885+
-0.002634615*_D886+
0.0008606793*_D887+
0.0017138992*_D888+
-0.003460229*_D889+
0.0017414209*_D890+
0.00139511*_D891+
-0.00296841*_D892+
0.005203394*_D893+
-0.00007912*_D894+
0.0015737203*_D895+
0.0016173477*_D896+
-0.002744335*_D897+
0.0020930555*_D898+
-0.028890842*_D899+
0.0071856759*_D900+
-0.011302554*_D901+
0.0062369578*_D902+
-0.002527131*_D903+
0.0095555417*_D904+
0.0067700939*_D905+
0.0078567977*_D906+
0.0059374094*_D907+
-0.002120464*_D908+
-0.001378222*_D909+
-0.010704537*_D910+
-0.001035074*_D911+
-0.000620745*_D912+
0.0028961118*_D913+
0.0092251879*_D914+
-0.009372873*_D915+
0.0026580853*_D916+
0.0017524897*_D917+
0.0042037339*_D918+
0.0170712874*_D919+
-0.000163587*_D920+
0.0036077408*_D921+
0.0172532593*_D922+
-0.006883016*_D923+
0.0273562872*_D924+
-0.002992765*_D925+
0.0033334671*_D926+
-0.003603995*_D927+
0.0122544091*_D928+
-0.00422874*_D929+
-0.003642522*_D930+
0.0015304148*_D931+
0.0016534645*_D932+
0.012260129*_D933+
0.0013172995*_D934+
0.001852168*_D935+
-0.000591136*_D936+
0.0036935664*_D937+
0.0086492512*_D938+
-0.000174389*_D939+
0.0119665716*_D940+
-0.005332725*_D941+
0.0099589951*_D942+
0.0042085427*_D943+
0.0072465202*_D944+
-0.000668427*_D945+
-0.000952183*_D946+
0.0184348878*_D947+
-0.076406281*_D948+
-0.001212628*_D949+
0.0031085407*_D950+
0.010382204*_D951+
0.0045924173*_D952+
0.0092909196*_D953+
-0.001421102*_D954+
-0.000435158*_D955+
0.0114606766*_D956+
0.0042136166*_D957+
0.0034858424*_D958+
-0.00146939*_D959+
-0.019618371*_D960+
0.0563420605*_D961+
0.0040624855*_D962+
-0.003834523*_D963+
0.0074263312*_D964+
0.0035339121*_D965+
0.0039463868*_D966+
0.0038214879*_D967+
0.0047781111*_D968+
0.0011157947*_D969+
0.0124942198*_D970+
0.0014013741*_D971+
0.0030952742*_D972+
0.013663618*_D973+
0.0041532417*_D974+
0.0093372581*_D975+
0.0094605099*_D976+
0.0070016117*_D977+
-0.007358629*_D978+
-0.006125482*_D979+
0.0053130081*_D980+
0.004051529*_D981+
0.0032723819*_D982+
0.0013052328*_D983+
0.005302139*_D984+
0.0054990911*_D985+
0.0010615614*_D986+
0.0078472901*_D987+
0.0014051385*_D988+
-0.00079113*_D989+
-0.0024611*_D990+
0.0025102173*_D991+
0.0035315225*_D992+
0.0114361133*_D993+
0.0006870204*_D994+
0.0281233383*_D995+
0.0037401737*_D996+
-0.001784389*_D997+
-0.005164139*_D998+
0.0044320905*_D999+
0.0029327059*_D1000+
0.0031112831*_D1001+
0.0063414219*_D1002+
0.0085970148*_D1003+
-0.003913313*_D1004+
0.0045619094*_D1005+
0.0034451348*_D1006+
0.0023124243*_D1007+
-0.009439132*_D1008+
0.0023279964*_D1009+
-0.000190704*_D1010+
-0.001714581*_D1011+
-0.000543163*_D1012+
0.0010252586*_D1013+
-0.007773949*_D1014+
0.0031922816*_D1015+
0.008000596*_D1016+
-0.007450892*_D1017+
0.0072710143*_D1018+
0.0046429658*_D1019+
0.0017879532*_D1020+
0.0045280401*_D1021+
-0.001700876*_D1022+
-0.00033447*_D1023+
0.0021653417*_D1024+
0.0193223119*_D1025+
0.0034384384*_D1026+
0.0261521495*_D1027+
0.0060050553*_D1028+
-0.044057078*_D1029+
0.0003381609*_D1030+
-0.003426086*_D1031+
0.0079254717*_D1032+
0.0048986986*_D1033+
0.0041982865*_D1034+
0.0034945053*_D1035+
-0.00057842*_D1036+
0.0046480575*_D1037+
0.008268901*_D1038+
0.0051147999*_D1039+
-0.004719779*_D1040+
0.0049039692*_D1041+
0.0017212373*_D1042+
0.0048111793*_D1043+
0.0043587329*_D1044+
0.0165047509*_D1045+
0.0044984904*_D1046+
0.0058973501*_D1047+
0.0060960406*_D1048+
-0.002274205*_D1049+
-0.11520919*_D1050+
-0.000804075*_D1051+
0.0022735566*_D1052+
0.0074962276*_D1053+
0.0006966348*_D1054+
0.0000527315*_D1055+
0.0070908722*_D1056+
0.0001308235*_D1057+
0.0034090979*_D1058+
0.0058932719*_D1059+
0.0100793076*_D1060+
-0.001812586*_D1061+
-0.004824794*_D1062+
-0.001898994*_D1063+
0.0058790105*_D1064+
0.0054848024*_D1065+
0.0067565304*_D1066+
0.0004258212*_D1067+
-0.014208257*_D1068+
-0.001027328*_D1069+
0.0128421903*_D1070+
-0.008481162*_D1071+
-0.000833614*_D1072+
0.005559321*_D1073+
-0.032747839*_D1074+
0.0055956453*_D1075+
0.0068432107*_D1076+
-0.000346004*_D1077+
0.006272107*_D1078+
-0.000749925*_D1079+
-0.002926167*_D1080+
0.0027075259*_D1081+
0.0001417972*_D1082+
0.0023376861*_D1083+
0.0118519125*_D1084+
-0.008242133*_D1085+
0.0180689598*_D1086+
0.0048676833*_D1087+
-0.000668353*_D1088+
0.0116691158*_D1089+
0.0079864758*_D1090+
0.0002506606*_D1091+
-0.003440695*_D1092+
0.0037179637*_D1093+
0.0005090633*_D1094+
0.002833212*_D1095+
-0.000266504*_D1096+
-0.006643412*_D1097+
0.0042281382*_D1098+
-0.009967618*_D1099+
0.0029098712*_D1100+
0.0027293288*_D1101+
0.0018504461*_D1102+
0.0095124824*_D1103+
0.0039342901*_D1104+
0.0082542217*_D1105+
0.0115773022*_D1106+
0.0076031709*_D1107+
0.0021511676*_D1108+
-0.00225922*_D1109+
-0.004469331*_D1110+
0.0089176599*_D1111+
0.0014972485*_D1112+
0.0330848088*_D1113+
0.0312090207*_D1114+
0.108886242*_D1115+
0.0047480211*_D1116+
0.0039530597*_D1117+
0.0000293449*_D1118+
0.0047287449*_D1119+
0.000271199*_D1120+
0.0047934613*_D1121+
0.0129437752*_D1122+
-0.006458451*_D1123+
0.0075791228*_D1124+
0.0210590446*_D1125+
0.0007167303*_D1126+
-0.006359565*_D1127+
-0.001270834*_D1128+
0.0112027412*_D1129+
0.0033389303*_D1130+
-0.029775609*_D1131+
0.1074434349*_D1132+
-0.004275295*_D1133+
0.0060422606*_D1134+
0.0017277013*_D1135+
0.0040293071*_D1136+
0.0043749967*_D1137+
-0.002063546*_D1138+
0.0014326107*_D1139+
0.0044329236*_D1140+
-0.039292622*_D1141+
-0.001603076*_D1142+
-0.01048226*_D1143+
0.0023135255*_D1144+
0.002582442*_D1145+
0.0087020553*_D1146+
0.0088889659*_D1147+
-0.000092738*_D1148+
-0.008389379*_D1149+
0.005969843*_D1150+
0.0018872745*_D1151+
0.0001897845*_D1152+
0.0055581694*_D1153+
-0.000292794*_D1154+
-0.007260531*_D1155+
0.0257509307*_D1156+
0.0057394084*_D1157+
0.0039484555*_D1158+
0.0034784415*_D1159+
0.0033744646*_D1160+
0.0072694481*_D1161+
0.0095342394*_D1162+
-0.000402257*_D1163+
-0.004116125*_D1164+
0.004720361*_D1165+
-0.000821436*_D1166+
0.0021949569*_D1167+
-0.024344278*_D1168+
-0.004246838*_D1169+
0.0044050183*_D1170+
-0.000886381*_D1171+
-0.042156277*_D1172+
-0.016094999*_D1173+
0.0067560696*_D1174+
0.0026364552*_D1175+
0.0080130866*_D1176+
-0.037650577*_D1177+
0.0098420561*_D1178+
0.0166490126*_D1179+
-0.000666134*_D1180+
0.001267983*_D1181+
-0.056024967*_D1182+
0.0030371969*_D1183+
0.0017804189*_D1184+
-0.002564097*_D1185+
0.0047135317*_D1186+
-0.010323748*_D1187+
0.0016278745*_D1188+
-0.001572061*_D1189+
0.0001835962*_D1190+
0.0102557401*_D1191+
-0.001112017*_D1192+
-0.001848848*_D1193+
-0.005075133*_D1194+
0.0010545454*_D1195+
0.0059707209*_D1196+
0.015128189*_D1197+
-0.000183098*_D1198+
-0.000442628*_D1199+
-0.180290618*_D1200+
0.0029420476*_D1201+
-0.00243257*_D1202+
-0.004207224*_D1203+
0.0190962583*_D1204;
/****************************************/
* Componente principal 11;
/****************************************/
;
length PC_11 8;
label PC_11 = "Componente principal 11";
PC_11 =
-0.002333639*_D1+
0.0056169358*_D2+
-0.014742581*_D3+
0.0014358903*_D4+
0.0011222021*_D5+
-0.008488236*_D6+
-0.000414459*_D7+
0.004817358*_D8+
0.0083565732*_D9+
-0.003063124*_D10+
0.0033286066*_D11+
0.0086794873*_D12+
-0.009454609*_D13+
0.0104246287*_D14+
0.0029629108*_D15+
0.0326806095*_D16+
0.017230925*_D17+
0.0070610921*_D18+
0.0001467795*_D19+
0.0034894448*_D20+
0.0029922072*_D21+
-0.012294937*_D22+
0.0014887815*_D23+
0.0004179308*_D24+
-0.019169763*_D25+
0.0062486902*_D26+
0.012652726*_D27+
-0.008361412*_D28+
0.0000380447*_D29+
0.0024860945*_D30+
0.0049731953*_D31+
0.0061894661*_D32+
0.0000781999*_D33+
0.0019183342*_D34+
0.0007439073*_D35+
0.0283222928*_D36+
-0.001652204*_D37+
-0.005677596*_D38+
0.0100076018*_D39+
-0.00277728*_D40+
-0.000914915*_D41+
-0.000389227*_D42+
0.0028736032*_D43+
0.014580802*_D44+
0.0020987371*_D45+
-0.009753977*_D46+
0.0053851253*_D47+
-0.003142244*_D48+
0.0508421307*_D49+
0.0208091415*_D50+
0.0019693068*_D51+
0.0009234662*_D52+
-0.006344832*_D53+
0.0075744653*_D54+
0.0006034292*_D55+
-0.003001158*_D56+
0.012503588*_D57+
0.0100003064*_D58+
0.0015696847*_D59+
0.0075847749*_D60+
0.0244985274*_D61+
0.0024008794*_D62+
-0.004095314*_D63+
-0.014540772*_D64+
0.0002110621*_D65+
0.0052484969*_D66+
0.0022207104*_D67+
-0.007799747*_D68+
0.0022268007*_D69+
0.0017697605*_D70+
-0.023292718*_D71+
0.1145102639*_D72+
-0.001414193*_D73+
0.0005077906*_D74+
0.0048427883*_D75+
-0.012746174*_D76+
0.0161988257*_D77+
-0.011331068*_D78+
0.0034222639*_D79+
-0.002411315*_D80+
-0.008777057*_D81+
0.0036430541*_D82+
-0.010382148*_D83+
0.0072663088*_D84+
-0.003543451*_D85+
0.0044439063*_D86+
-0.005922665*_D87+
-0.000986348*_D88+
-0.002288533*_D89+
-0.040698222*_D90+
-0.004435046*_D91+
-0.005574998*_D92+
0.0165058019*_D93+
-0.000835283*_D94+
0.0045946275*_D95+
-0.008515851*_D96+
-0.031246067*_D97+
0.0152864306*_D98+
-0.004983874*_D99+
0.0029831582*_D100+
-0.010885763*_D101+
0.0006211006*_D102+
0.0054915952*_D103+
-0.000235887*_D104+
0.0157122356*_D105+
-0.01209051*_D106+
0.0023358158*_D107+
0.0092439529*_D108+
-0.001581181*_D109+
0.0231628962*_D110+
0.0108803465*_D111+
-0.019615811*_D112+
0.0032846846*_D113+
-0.002792887*_D114+
0.0586677793*_D115+
-0.004244554*_D116+
-0.002808712*_D117+
-0.007240965*_D118+
-0.007492058*_D119+
-0.015280906*_D120+
-0.01577348*_D121+
-0.003147078*_D122+
-0.00097389*_D123+
0.0056899673*_D124+
-0.002826262*_D125+
-0.007207924*_D126+
0.039719657*_D127+
0.0023344773*_D128+
0.0140144292*_D129+
0.033795242*_D130+
0.0032458112*_D131+
0.0079292831*_D132+
0.0033888843*_D133+
0.0063245156*_D134+
0.0078487881*_D135+
-0.000863738*_D136+
0.001306418*_D137+
-0.015883499*_D138+
0.0011429722*_D139+
-0.011434674*_D140+
0.0007428017*_D141+
0.0040015689*_D142+
0.0032520669*_D143+
-0.00313793*_D144+
-0.004227281*_D145+
0.0134562988*_D146+
0.0036141017*_D147+
-0.018795249*_D148+
0.0044467113*_D149+
-0.00740327*_D150+
0.0090432207*_D151+
-0.014324022*_D152+
0.0041781135*_D153+
-0.015466383*_D154+
0.0004942099*_D155+
-0.001439313*_D156+
0.0041486755*_D157+
-0.003600836*_D158+
0.0226102966*_D159+
0.0004877413*_D160+
-0.010274675*_D161+
0.0119159945*_D162+
0.0031484458*_D163+
0.0052846799*_D164+
0.0164111956*_D165+
-0.007093829*_D166+
-0.000157102*_D167+
-0.00286191*_D168+
0.0013835943*_D169+
0.0181601578*_D170+
0.0079154224*_D171+
-0.000711178*_D172+
0.0034501701*_D173+
0.0001694467*_D174+
-0.000306652*_D175+
-0.004215114*_D176+
-0.000080906*_D177+
0.015930825*_D178+
-0.046726238*_D179+
0.0171526154*_D180+
-0.004169363*_D181+
-0.001074025*_D182+
-0.003313262*_D183+
0.0036256667*_D184+
0.0029316421*_D185+
0.0444014362*_D186+
0.0006014688*_D187+
0.0056081951*_D188+
-0.014645283*_D189+
-0.187024693*_D190+
0.007393666*_D191+
-0.084889733*_D192+
-0.002066755*_D193+
0.0024181929*_D194+
-0.021831467*_D195+
-0.002742391*_D196+
0.0301335597*_D197+
0.000330435*_D198+
0.0069855853*_D199+
0.0090273103*_D200+
-0.038714894*_D201+
0.0026086697*_D202+
0.0019756138*_D203+
-0.017233353*_D204+
-0.026772303*_D205+
0.0014226076*_D206+
0.0044513183*_D207+
-0.013649683*_D208+
0.0028611316*_D209+
-0.00344277*_D210+
-0.000339586*_D211+
-0.002414237*_D212+
-0.014649461*_D213+
-0.000332463*_D214+
-0.00160303*_D215+
-0.014241986*_D216+
0.0004395628*_D217+
0.002448048*_D218+
0.0016148279*_D219+
0.0078997483*_D220+
0.0032414418*_D221+
-0.002646404*_D222+
0.037441287*_D223+
-0.005054239*_D224+
0.0061206175*_D225+
0.0010247216*_D226+
0.0043935599*_D227+
0.0056197715*_D228+
-0.012129288*_D229+
-0.005185224*_D230+
-0.002531556*_D231+
0.0100979806*_D232+
-0.007568826*_D233+
0.0090605773*_D234+
-0.00323692*_D235+
0.001245509*_D236+
-0.001051383*_D237+
0.0001707358*_D238+
0.0031045973*_D239+
-0.024538683*_D240+
-0.000885645*_D241+
-0.003473005*_D242+
0.0037100029*_D243+
0.0013390386*_D244+
0.0021880595*_D245+
-0.011066035*_D246+
-0.045230923*_D247+
0.0135696675*_D248+
0.0069797587*_D249+
0.0036511661*_D250+
0.0081960277*_D251+
-0.005857475*_D252+
0.0133012397*_D253+
-0.00035103*_D254+
-0.001353641*_D255+
0.0074007168*_D256+
-0.002191748*_D257+
-0.003432971*_D258+
-0.000352677*_D259+
0.0184049042*_D260+
0.005077732*_D261+
0.0066435576*_D262+
-0.001271533*_D263+
0.0040402029*_D264+
0.0183375767*_D265+
-0.002956937*_D266+
-0.007938561*_D267+
0.0036484936*_D268+
-0.062698701*_D269+
-0.023615472*_D270+
-0.004112086*_D271+
0.0000430522*_D272+
0.0003907939*_D273+
-0.001145441*_D274+
-0.019299248*_D275+
-0.001684081*_D276+
-0.02047332*_D277+
-0.032205375*_D278+
-0.007594127*_D279+
0.0032216941*_D280+
0.0063573562*_D281+
0.000775206*_D282+
-0.008643842*_D283+
-0.009137424*_D284+
0.0071575103*_D285+
-0.003093413*_D286+
0.004451577*_D287+
0.0001130681*_D288+
0.0307106371*_D289+
-0.012119625*_D290+
-0.00453772*_D291+
0.0079085306*_D292+
0.0028884315*_D293+
0.0113854035*_D294+
0.0050993273*_D295+
0.0088551984*_D296+
0.0035726022*_D297+
-0.002078102*_D298+
-0.009245752*_D299+
0.000278979*_D300+
0.0043171139*_D301+
0.0134197003*_D302+
0.0090976043*_D303+
-0.00220717*_D304+
-0.060383527*_D305+
0.00439661*_D306+
0.0278009198*_D307+
-0.005721446*_D308+
0.01261877*_D309+
0.0181391394*_D310+
-0.000119774*_D311+
0.0050462942*_D312+
-0.001161378*_D313+
0.0101885798*_D314+
-0.00063008*_D315+
-0.082486575*_D316+
0.0011703334*_D317+
-0.04275901*_D318+
-0.012071898*_D319+
0.0097242223*_D320+
-0.00355786*_D321+
0.0016640299*_D322+
0.005107184*_D323+
-0.006655397*_D324+
0.0115426669*_D325+
0.0005862865*_D326+
0.0023115514*_D327+
-0.000807931*_D328+
0.0026791327*_D329+
-0.029860385*_D330+
-0.003103687*_D331+
0.0105230421*_D332+
-0.002240324*_D333+
0.0108835092*_D334+
0.0043414013*_D335+
0.0118258986*_D336+
0.0300156842*_D337+
-0.003556665*_D338+
0.0026467762*_D339+
-0.054267513*_D340+
0.0034004502*_D341+
0.0099850924*_D342+
-0.001805308*_D343+
0.002896829*_D344+
-0.005305793*_D345+
0.006132398*_D346+
0.0017954643*_D347+
0.0011429535*_D348+
0.0017243043*_D349+
0.0014705552*_D350+
-0.044003231*_D351+
-0.012847112*_D352+
-0.000623115*_D353+
-0.011024268*_D354+
-0.001952593*_D355+
-0.006451054*_D356+
0.0048311781*_D357+
-0.005327027*_D358+
-0.004111533*_D359+
0.0005460549*_D360+
0.0048199736*_D361+
-0.007277568*_D362+
0.000566167*_D363+
0.0019504353*_D364+
0.0055406347*_D365+
-0.000788474*_D366+
0.0029120357*_D367+
0.0020198397*_D368+
-0.008460518*_D369+
0.0084083251*_D370+
0.0024027175*_D371+
0.0053637543*_D372+
0.0014629809*_D373+
0.0012487816*_D374+
0.0027554822*_D375+
-0.003560627*_D376+
-0.00188779*_D377+
0.0109098376*_D378+
-0.001958601*_D379+
0.0009469586*_D380+
0.0002022747*_D381+
-0.005521883*_D382+
-0.007028838*_D383+
-0.003321402*_D384+
0.0007417469*_D385+
0.0136637311*_D386+
0.0071030771*_D387+
0.0002333654*_D388+
-0.008005682*_D389+
-0.043760971*_D390+
0.0008872229*_D391+
0.0000620206*_D392+
-0.004018903*_D393+
0.0271622554*_D394+
-0.001970338*_D395+
0.0012639948*_D396+
0.002526821*_D397+
0.0047260164*_D398+
-0.010180206*_D399+
-0.004310173*_D400+
0.0055578212*_D401+
0.0188615135*_D402+
-0.010248071*_D403+
0.000311192*_D404+
-0.048404746*_D405+
0.0164448639*_D406+
-0.004913293*_D407+
0.0001467921*_D408+
0.0012449865*_D409+
-0.012247472*_D410+
0.0088598334*_D411+
-0.024089013*_D412+
-0.006514919*_D413+
-0.006586102*_D414+
0.0193272988*_D415+
-0.001277073*_D416+
-0.004851246*_D417+
0.0030272178*_D418+
0.0004399464*_D419+
0.0002630599*_D420+
0.0016941475*_D421+
0.0039265164*_D422+
0.0258681767*_D423+
-0.000508413*_D424+
0.0045955989*_D425+
0.0005122678*_D426+
-0.002543255*_D427+
0.0037204624*_D428+
-0.003421607*_D429+
-0.001994323*_D430+
-0.001827609*_D431+
-0.001399093*_D432+
0.0093203839*_D433+
-0.003115394*_D434+
-0.070948371*_D435+
-0.002650976*_D436+
-0.034592729*_D437+
0.002821875*_D438+
0.0058000302*_D439+
0.0094347871*_D440+
-0.005233784*_D441+
0.0029677473*_D442+
-0.00089031*_D443+
-0.010107624*_D444+
0.0017472594*_D445+
0.0150432513*_D446+
0.0057974823*_D447+
0.0031022419*_D448+
-0.024840499*_D449+
0.0286902086*_D450+
0.0221539878*_D451+
0.0045335065*_D452+
0.0060892874*_D453+
0.0028014331*_D454+
-0.002801137*_D455+
-0.00789452*_D456+
0.0030029692*_D457+
-0.017923158*_D458+
-0.011885048*_D459+
0.0049339603*_D460+
-0.005269266*_D461+
0.002393131*_D462+
-0.009893701*_D463+
-0.002546047*_D464+
-0.000675591*_D465+
0.0008870792*_D466+
0.0087346493*_D467+
-0.007957606*_D468+
0.0013034242*_D469+
0.0020762185*_D470+
-0.001877843*_D471+
0.0099627922*_D472+
0.000750227*_D473+
0.0046148375*_D474+
0.0011513784*_D475+
0.0005483151*_D476+
0.0164509006*_D477+
0.0005010199*_D478+
-0.013157639*_D479+
0.0038439217*_D480+
0.0003772708*_D481+
-0.002136249*_D482+
0.0011482049*_D483+
0.0098177583*_D484+
-0.00917565*_D485+
-0.015946297*_D486+
0.001679867*_D487+
0.0019959695*_D488+
0.010894642*_D489+
-0.002610052*_D490+
-0.004931973*_D491+
-0.000956459*_D492+
0.0014700321*_D493+
0.0047756619*_D494+
-0.022716384*_D495+
0.0023319461*_D496+
0.0005720189*_D497+
-0.006029103*_D498+
-0.000232169*_D499+
-0.000078352*_D500+
0.1083620659*_D501+
0.0090206136*_D502+
-0.002440255*_D503+
0.0021909199*_D504+
-0.001419011*_D505+
-0.015408429*_D506+
0.0063282866*_D507+
-0.057886291*_D508+
0.0056480708*_D509+
0.0171565181*_D510+
0.0079708172*_D511+
0.0145884503*_D512+
0.007163219*_D513+
0.0020486137*_D514+
0.0045922945*_D515+
0.0011244695*_D516+
0.0090267219*_D517+
0.0088525961*_D518+
-0.009214457*_D519+
0.0039213901*_D520+
-0.006679117*_D521+
-0.017060804*_D522+
-0.033148286*_D523+
-0.000620512*_D524+
0.0090292427*_D525+
-0.002010355*_D526+
-0.016947976*_D527+
0.0007006613*_D528+
0.0048821128*_D529+
0.0096010358*_D530+
-0.000366132*_D531+
-0.00245128*_D532+
-0.007446397*_D533+
0.0219753487*_D534+
0.0200751661*_D535+
0.0042520972*_D536+
0.0003817907*_D537+
-0.00028538*_D538+
-0.001790305*_D539+
-0.000963053*_D540+
0.0004481549*_D541+
-0.005770927*_D542+
-0.015026*_D543+
0.000525938*_D544+
-0.000925161*_D545+
0.0029285856*_D546+
-0.006274216*_D547+
0.0070637477*_D548+
-0.007283557*_D549+
0.0020289123*_D550+
-0.003754781*_D551+
0.000957033*_D552+
-0.00617861*_D553+
-0.002347138*_D554+
0.0109949705*_D555+
-0.003271241*_D556+
0.0202018457*_D557+
-0.010517523*_D558+
-0.015170026*_D559+
0.0087302357*_D560+
0.0017339371*_D561+
-0.010213868*_D562+
-0.00492306*_D563+
0.0103489847*_D564+
0.001125923*_D565+
0.0267868226*_D566+
-0.031644079*_D567+
0.0036610304*_D568+
-0.002101794*_D569+
0.0215225589*_D570+
0.0033293373*_D571+
-0.058160222*_D572+
0.046074554*_D573+
0.0087840369*_D574+
0.0062661484*_D575+
-0.010176249*_D576+
0.0374559423*_D577+
0.0037601056*_D578+
0.0068174768*_D579+
-0.001230009*_D580+
0.0032486973*_D581+
-0.001258593*_D582+
0.000037722*_D583+
0.0032414931*_D584+
0.0003960794*_D585+
0.0007445924*_D586+
0.0018139973*_D587+
0.0044031668*_D588+
-0.000084198*_D589+
-0.001016577*_D590+
-0.001955555*_D591+
-0.002111668*_D592+
0.0023925429*_D593+
-0.004575378*_D594+
0.0003958879*_D595+
0.0161375871*_D596+
-0.009710398*_D597+
0.0074299658*_D598+
0.0010622141*_D599+
0.00081127*_D600+
-0.015596312*_D601+
-0.005457775*_D602+
0.0594926635*_D603+
0.0746467845*_D604+
0.0013904917*_D605+
0.0008669323*_D606+
-0.000355733*_D607+
-0.006180484*_D608+
-0.014883552*_D609+
-0.005372878*_D610+
-0.005352558*_D611+
0.0012172147*_D612+
-0.020040748*_D613+
-0.006463478*_D614+
0.0121119949*_D615+
0.0027358723*_D616+
-0.000101208*_D617+
-0.002239813*_D618+
0.0157602936*_D619+
0.0366914938*_D620+
0.0049401081*_D621+
0.0053772673*_D622+
0.0022980359*_D623+
-0.035297128*_D624+
-0.046070812*_D625+
0.0085836403*_D626+
-0.007568072*_D627+
0.0092876757*_D628+
0.0051916457*_D629+
0.0009218071*_D630+
-0.001719727*_D631+
-0.040497257*_D632+
-0.003354732*_D633+
-0.025360875*_D634+
-0.000868913*_D635+
0.0030487208*_D636+
0.0005490678*_D637+
0.0035056951*_D638+
-0.015793875*_D639+
0.0038022281*_D640+
0.0035798053*_D641+
-0.000255342*_D642+
-0.004484974*_D643+
0.0002784646*_D644+
-0.0227024*_D645+
0.0031864367*_D646+
0.0029363971*_D647+
-0.000764537*_D648+
0.0147208433*_D649+
-0.000938868*_D650+
0.0079946828*_D651+
0.0049566583*_D652+
0.0039721326*_D653+
0.0014230564*_D654+
-0.020230218*_D655+
-0.000631658*_D656+
-0.009119171*_D657+
-0.012885989*_D658+
0.0028398571*_D659+
0.002686037*_D660+
-0.000239852*_D661+
-0.046677671*_D662+
-0.006589832*_D663+
0.0016973385*_D664+
-0.016564587*_D665+
0.0006630313*_D666+
0.0006271613*_D667+
0.0049323672*_D668+
0.0023240561*_D669+
0.0012204512*_D670+
-0.006007498*_D671+
-0.001188679*_D672+
-0.000875159*_D673+
0.0213297915*_D674+
0.0065136784*_D675+
-0.004319036*_D676+
0.0052521386*_D677+
-0.006944514*_D678+
0.0021665664*_D679+
-0.018160366*_D680+
0.0042120343*_D681+
-0.00044712*_D682+
0.3926065578*_D683+
0.0049839561*_D684+
0.0037739907*_D685+
0.0011254328*_D686+
-0.009126814*_D687+
-0.000142154*_D688+
0.0050979035*_D689+
-0.007989543*_D690+
-0.009341617*_D691+
0.0010421733*_D692+
0.0032984162*_D693+
0.0044310552*_D694+
-0.000010457*_D695+
0.0009711583*_D696+
0.0193006044*_D697+
0.0011173081*_D698+
0.0030351895*_D699+
0.0018851637*_D700+
-0.001893457*_D701+
0.0196183902*_D702+
0.0053426439*_D703+
-0.001070549*_D704+
-0.001070582*_D705+
-0.001494164*_D706+
0.0085435075*_D707+
-0.011596859*_D708+
0.0062256811*_D709+
0.0109802545*_D710+
-0.004519068*_D711+
-0.00551419*_D712+
-0.01080879*_D713+
0.0059580253*_D714+
0.0043209631*_D715+
0.002574014*_D716+
0.011895777*_D717+
-0.002433832*_D718+
0.0117654446*_D719+
0.004746633*_D720+
0.0072847451*_D721+
0.0016213929*_D722+
0.023523081*_D723+
0.0040473986*_D724+
0.0068084487*_D725+
0.0012133545*_D726+
0.0000285529*_D727+
-0.0001813*_D728+
-0.000522853*_D729+
0.0019185601*_D730+
0.0035738991*_D731+
0.0049033075*_D732+
0.0016821721*_D733+
-0.000616711*_D734+
0.0009114176*_D735+
-0.005099077*_D736+
-0.000091583*_D737+
-0.010699259*_D738+
0.0159969504*_D739+
-0.017464086*_D740+
0.0101590188*_D741+
-0.000104938*_D742+
-0.019437701*_D743+
0.0104667912*_D744+
0.0051966687*_D745+
0.0021084775*_D746+
0.0122519413*_D747+
0.0013144806*_D748+
0.0172035322*_D749+
-0.009031653*_D750+
-0.002897407*_D751+
-0.007241923*_D752+
-0.002850422*_D753+
-0.00695569*_D754+
0.0166800314*_D755+
0.0003157851*_D756+
0.0064958356*_D757+
-0.001620642*_D758+
-0.000479628*_D759+
-0.000591916*_D760+
-0.009649952*_D761+
0.0109291754*_D762+
-0.000173348*_D763+
0.0088356757*_D764+
-0.019635165*_D765+
0.0076103816*_D766+
-0.023362745*_D767+
-0.008176226*_D768+
-0.001236131*_D769+
0.005836483*_D770+
0.0002115807*_D771+
0.0033635339*_D772+
-0.002874837*_D773+
-0.003694742*_D774+
-0.006043931*_D775+
0.0079865108*_D776+
-0.002219676*_D777+
0.0053010816*_D778+
0.0199574017*_D779+
-0.00056509*_D780+
0.0050525437*_D781+
0.0027227136*_D782+
0.0031104458*_D783+
-0.000026031*_D784+
0.0050939335*_D785+
-0.015502625*_D786+
-0.004154634*_D787+
0.0082302963*_D788+
-0.001166714*_D789+
-0.005399714*_D790+
-0.00028367*_D791+
-0.026932587*_D792+
0.0025621746*_D793+
0.0023560382*_D794+
0.0019655958*_D795+
-0.011725506*_D796+
0.0005060324*_D797+
-0.000727233*_D798+
0.0007022964*_D799+
0.003174242*_D800+
0.0010439447*_D801+
0.003869214*_D802+
0.0274506416*_D803+
-0.012845573*_D804+
-0.001023936*_D805+
0.0006538653*_D806+
-0.00662962*_D807+
-0.061778069*_D808+
0.0167573233*_D809+
0.0068181614*_D810+
-0.001280113*_D811+
-0.00025129*_D812+
-0.002639003*_D813+
0.0091110857*_D814+
0.0095472445*_D815+
0.0037569416*_D816+
-0.004083804*_D817+
0.0108423353*_D818+
-0.011440999*_D819+
-0.002139286*_D820+
0.0074434895*_D821+
-0.029634242*_D822+
-0.000407418*_D823+
0.0002071969*_D824+
-0.001355292*_D825+
-0.026999228*_D826+
0.004973975*_D827+
0.0064920201*_D828+
-0.004661897*_D829+
-0.001909958*_D830+
-0.005610472*_D831+
0.0044474878*_D832+
0.0005373598*_D833+
-0.014966235*_D834+
0.0003015318*_D835+
-0.003441151*_D836+
0.0120465441*_D837+
0.0021735152*_D838+
0.0042237955*_D839+
-0.002696424*_D840+
-0.000578831*_D841+
0.0089438709*_D842+
-0.001582335*_D843+
0.0057152578*_D844+
0.0079999755*_D845+
0.0003622232*_D846+
-0.027841591*_D847+
-0.001810583*_D848+
-0.005250961*_D849+
0.0040272595*_D850+
-0.077627599*_D851+
0.0010825011*_D852+
-0.00006949*_D853+
0.0036310078*_D854+
-0.017150995*_D855+
0.0002838148*_D856+
0.0002493888*_D857+
0.0004904612*_D858+
0.0008753311*_D859+
0.0020174462*_D860+
0.0015173588*_D861+
-0.005888251*_D862+
-0.001049771*_D863+
0.0015126241*_D864+
0.00285339*_D865+
-0.003163418*_D866+
0.0047958017*_D867+
0.0019637069*_D868+
0.0099981702*_D869+
0.0169509602*_D870+
-0.002976213*_D871+
0.0255792911*_D872+
-0.003968293*_D873+
-0.001695829*_D874+
0.004556536*_D875+
-0.005182084*_D876+
-0.002862148*_D877+
-0.003735281*_D878+
0.0011681138*_D879+
0.0033829452*_D880+
-0.008824162*_D881+
-0.004030512*_D882+
0.0003231425*_D883+
0.0109773132*_D884+
-0.012971869*_D885+
-0.004450594*_D886+
0.0031151962*_D887+
0.0015842306*_D888+
0.0198624319*_D889+
0.0057023653*_D890+
-0.000399499*_D891+
0.0026987383*_D892+
-0.000817611*_D893+
-0.004655261*_D894+
0.000603589*_D895+
-0.001859479*_D896+
-0.00253981*_D897+
-0.014940105*_D898+
0.0086225189*_D899+
0.0051666194*_D900+
0.0038613787*_D901+
0.0045481295*_D902+
-0.001320577*_D903+
0.00267411*_D904+
0.0109217944*_D905+
0.0017598709*_D906+
-0.003126934*_D907+
-0.001013854*_D908+
-0.020132792*_D909+
0.0199574017*_D910+
-0.002169513*_D911+
-0.030022039*_D912+
0.0016121824*_D913+
0.0030541352*_D914+
-0.005818632*_D915+
0.0028726198*_D916+
-0.039817103*_D917+
0.0172080754*_D918+
-0.011248105*_D919+
-0.002559072*_D920+
0.0021590147*_D921+
-0.002362197*_D922+
0.0002839277*_D923+
0.0217253647*_D924+
-0.019756628*_D925+
0.0000597733*_D926+
-0.008255913*_D927+
0.0031717102*_D928+
0.0464181638*_D929+
-0.06249684*_D930+
-0.003065901*_D931+
0.0020603555*_D932+
-0.003842112*_D933+
0.0055081337*_D934+
-0.000599957*_D935+
-0.003394954*_D936+
0.0012626314*_D937+
-0.000590543*_D938+
0.0040914896*_D939+
0.0209451783*_D940+
-0.001139935*_D941+
-0.010546283*_D942+
0.0020354861*_D943+
0.0057260215*_D944+
0.0004472411*_D945+
-0.039091274*_D946+
0.0064525312*_D947+
0.0139847862*_D948+
0.0001469979*_D949+
0.0008789106*_D950+
0.0038581226*_D951+
-0.157569749*_D952+
0.0124557497*_D953+
0.0081396646*_D954+
-0.000287335*_D955+
0.0123185217*_D956+
-0.001227957*_D957+
-0.012642697*_D958+
0.0312576151*_D959+
-0.0039235*_D960+
-0.00064752*_D961+
0.0011146802*_D962+
-0.001797508*_D963+
0.0045155368*_D964+
-0.000377434*_D965+
0.008150387*_D966+
0.0014819238*_D967+
0.0013530737*_D968+
0.0115529614*_D969+
0.0065426687*_D970+
-0.003151376*_D971+
0.0145931412*_D972+
0.0180179584*_D973+
0.0169917049*_D974+
-0.000604668*_D975+
0.0064102831*_D976+
0.0051076421*_D977+
0.0031080727*_D978+
-0.021592515*_D979+
-0.000689965*_D980+
0.0017839751*_D981+
0.0130088265*_D982+
-0.003464162*_D983+
0.0039698312*_D984+
0.0033567329*_D985+
-0.003564858*_D986+
0.0311221776*_D987+
-0.013030572*_D988+
0.0006701102*_D989+
-0.006297528*_D990+
0.0059503747*_D991+
0.004819336*_D992+
0.0178499714*_D993+
0.0001545599*_D994+
0.0082935947*_D995+
0.0011079714*_D996+
-0.017967719*_D997+
-0.000953152*_D998+
0.0068593477*_D999+
-0.006254271*_D1000+
0.0024123371*_D1001+
-0.001476947*_D1002+
0.0022493131*_D1003+
0.0114963989*_D1004+
0.0006577783*_D1005+
0.0006127918*_D1006+
0.0008778058*_D1007+
-0.005839066*_D1008+
-0.019806104*_D1009+
-0.001636166*_D1010+
-0.003314697*_D1011+
-0.004956028*_D1012+
-0.042553005*_D1013+
-0.011447901*_D1014+
-0.003065545*_D1015+
0.0033792151*_D1016+
0.0016326393*_D1017+
0.0031414316*_D1018+
0.0050376027*_D1019+
-0.005125784*_D1020+
0.0009336324*_D1021+
0.0012101001*_D1022+
0.0061894337*_D1023+
-0.002409794*_D1024+
0.0071188062*_D1025+
-0.007255919*_D1026+
-0.000336473*_D1027+
-0.0163487*_D1028+
0.0384421644*_D1029+
0.0051431275*_D1030+
0.00013637*_D1031+
-0.001376518*_D1032+
0.0065358162*_D1033+
0.0004144299*_D1034+
-0.011709643*_D1035+
-0.020589917*_D1036+
0.004992091*_D1037+
0.008705925*_D1038+
0.0126513356*_D1039+
-0.004700115*_D1040+
0.0033973137*_D1041+
-0.00096905*_D1042+
-0.001091829*_D1043+
-0.001138452*_D1044+
0.0166330809*_D1045+
-0.024873666*_D1046+
0.0002164479*_D1047+
0.0051233479*_D1048+
-0.005751812*_D1049+
-0.021910777*_D1050+
0.0330027619*_D1051+
-0.000252086*_D1052+
-0.001925907*_D1053+
-0.004322427*_D1054+
-0.003840075*_D1055+
0.0054065831*_D1056+
-0.018362393*_D1057+
-0.001910736*_D1058+
-0.015333741*_D1059+
-0.025952552*_D1060+
-0.010901067*_D1061+
-0.006161463*_D1062+
-0.005268222*_D1063+
0.0029196246*_D1064+
-0.019627536*_D1065+
-0.063514832*_D1066+
0.0001273587*_D1067+
0.0011996217*_D1068+
0.000500373*_D1069+
-0.004880243*_D1070+
-0.016173374*_D1071+
0.00808257*_D1072+
0.0241093014*_D1073+
0.0040405757*_D1074+
0.0065428218*_D1075+
0.003099719*_D1076+
0.0233140012*_D1077+
-0.005151436*_D1078+
-0.001168067*_D1079+
0.0078324277*_D1080+
-0.005347262*_D1081+
0.0029643322*_D1082+
0.000443747*_D1083+
0.0024482891*_D1084+
-0.003475775*_D1085+
0.0049329862*_D1086+
0.0014576052*_D1087+
-0.028767003*_D1088+
0.0043787869*_D1089+
0.0045384165*_D1090+
0.0015197581*_D1091+
-0.000374426*_D1092+
-0.006814656*_D1093+
0.0572581373*_D1094+
0.0023800476*_D1095+
0.0038757728*_D1096+
-0.001948245*_D1097+
-0.001035865*_D1098+
0.005188548*_D1099+
-0.006563371*_D1100+
0.0004922929*_D1101+
0.00447551*_D1102+
0.0286773755*_D1103+
0.0002414629*_D1104+
0.0040703931*_D1105+
0.0063836854*_D1106+
0.0023877562*_D1107+
-0.000204976*_D1108+
0.0039312708*_D1109+
-0.0006401*_D1110+
-0.000742629*_D1111+
0.0132788584*_D1112+
0.0089836163*_D1113+
0.0061334967*_D1114+
0.0168661483*_D1115+
0.0028579553*_D1116+
0.001196691*_D1117+
-0.001391993*_D1118+
-0.027809566*_D1119+
0.0046048745*_D1120+
0.0017711132*_D1121+
-0.015441519*_D1122+
-0.004722626*_D1123+
-0.013427438*_D1124+
-0.001664689*_D1125+
-0.003585594*_D1126+
-0.00212778*_D1127+
-0.003365258*_D1128+
-0.00142365*_D1129+
0.0027904824*_D1130+
0.001243974*_D1131+
-0.017052799*_D1132+
-0.00269121*_D1133+
0.008157743*_D1134+
-0.006660836*_D1135+
0.0017797975*_D1136+
-0.028924076*_D1137+
-0.013015431*_D1138+
0.0051897055*_D1139+
0.0026017127*_D1140+
0.0138666*_D1141+
-0.000714428*_D1142+
-0.081355442*_D1143+
0.0070554415*_D1144+
0.0033142772*_D1145+
0.0067686161*_D1146+
-0.002221917*_D1147+
-0.000703711*_D1148+
0.0022646328*_D1149+
0.0011648832*_D1150+
0.0004356305*_D1151+
-0.00409205*_D1152+
0.0003792092*_D1153+
-0.00154719*_D1154+
-0.001098307*_D1155+
-0.002805133*_D1156+
0.0007319942*_D1157+
0.0038372428*_D1158+
0.0044721231*_D1159+
-0.010266108*_D1160+
0.0046558395*_D1161+
0.012087348*_D1162+
-0.001911923*_D1163+
-0.013148276*_D1164+
0.0029323907*_D1165+
0.0065227692*_D1166+
0.0032075317*_D1167+
0.654533574*_D1168+
-0.012028588*_D1169+
0.0026186924*_D1170+
-0.017556793*_D1171+
-0.155083355*_D1172+
0.023862248*_D1173+
0.0022958832*_D1174+
0.0038928464*_D1175+
0.0059555361*_D1176+
-0.005194247*_D1177+
-0.008355491*_D1178+
0.0194175992*_D1179+
-0.00283633*_D1180+
0.0017732651*_D1181+
0.0004566685*_D1182+
0.0240166066*_D1183+
0.0085591285*_D1184+
-0.013752044*_D1185+
0.0008714899*_D1186+
0.0022830842*_D1187+
-0.017747243*_D1188+
-0.028186623*_D1189+
-0.289946619*_D1190+
-0.026667853*_D1191+
-0.003348491*_D1192+
-0.01132566*_D1193+
0.0003808154*_D1194+
0.0021475707*_D1195+
0.0030804153*_D1196+
0.0154275266*_D1197+
-0.001831402*_D1198+
0.0010956317*_D1199+
0.0095296049*_D1200+
0.0154273506*_D1201+
-0.034517277*_D1202+
-0.001797535*_D1203+
0.0067508113*_D1204;
/****************************************/
* Componente principal 12;
/****************************************/
;
length PC_12 8;
label PC_12 = "Componente principal 12";
PC_12 =
-0.000660625*_D1+
0.0013867363*_D2+
-0.000451444*_D3+
0.0248982367*_D4+
0.002278745*_D5+
-0.005405016*_D6+
0.0204309699*_D7+
-0.000181456*_D8+
0.0046159044*_D9+
-0.02451027*_D10+
-0.013136538*_D11+
0.0031783993*_D12+
0.026047153*_D13+
0.0089170317*_D14+
0.0073740493*_D15+
0.0051856809*_D16+
0.0136791202*_D17+
-0.014190371*_D18+
0.0045213121*_D19+
-0.000759822*_D20+
0.0117739644*_D21+
0.0183516631*_D22+
0.0288398544*_D23+
0.0166055168*_D24+
-0.000654222*_D25+
-0.000621664*_D26+
-0.000439463*_D27+
-0.001079747*_D28+
0.0044881188*_D29+
0.0124546994*_D30+
-0.015981405*_D31+
-0.009412081*_D32+
-0.026264016*_D33+
-0.018614312*_D34+
-0.021090268*_D35+
0.0123803638*_D36+
0.0103162541*_D37+
0.0067319751*_D38+
0.0046293903*_D39+
-0.002096661*_D40+
-0.008391888*_D41+
0.0033683992*_D42+
0.0363978895*_D43+
-0.002437064*_D44+
0.0200199289*_D45+
-0.002074686*_D46+
0.0175635661*_D47+
0.0038397303*_D48+
-0.020988086*_D49+
0.0151997745*_D50+
-0.000437307*_D51+
0.0039787456*_D52+
-0.043877073*_D53+
0.0061015641*_D54+
0.0116335204*_D55+
0.0019850283*_D56+
-0.011150936*_D57+
0.0010227134*_D58+
-0.001583289*_D59+
-0.041004045*_D60+
-0.037503238*_D61+
-0.00531346*_D62+
0.0085297794*_D63+
0.0029872674*_D64+
0.0115692562*_D65+
0.0095095908*_D66+
0.0062260006*_D67+
-0.000469885*_D68+
0.0042218438*_D69+
0.0058288082*_D70+
-0.012663184*_D71+
-0.003438507*_D72+
-0.001245596*_D73+
-0.017057496*_D74+
-0.001366557*_D75+
-0.00112848*_D76+
-0.063925816*_D77+
0.008577443*_D78+
0.0107052034*_D79+
0.0146653827*_D80+
0.0095358477*_D81+
-0.00890074*_D82+
-0.005189443*_D83+
-0.005757076*_D84+
-0.072625284*_D85+
0.0314156379*_D86+
-0.00172858*_D87+
0.0077864741*_D88+
0.0173823021*_D89+
-0.007631051*_D90+
-0.005777956*_D91+
-0.017236139*_D92+
0.0127649908*_D93+
-0.012312867*_D94+
0.015690376*_D95+
-0.028178788*_D96+
-0.009707709*_D97+
-0.009169739*_D98+
-0.014376275*_D99+
0.0128002868*_D100+
-0.006022558*_D101+
-0.006243875*_D102+
0.0146821761*_D103+
-0.006630402*_D104+
0.0170115802*_D105+
-0.014496445*_D106+
0.0211093637*_D107+
0.0000619637*_D108+
0.0021157545*_D109+
-0.060907628*_D110+
-0.016916923*_D111+
0.0058106286*_D112+
0.0104999446*_D113+
0.0009424812*_D114+
0.0329949742*_D115+
0.0005238914*_D116+
-0.004415451*_D117+
-0.003513262*_D118+
0.0029932829*_D119+
-0.002374806*_D120+
-0.013659701*_D121+
-0.014232401*_D122+
-0.003280115*_D123+
0.0156605984*_D124+
-0.005274473*_D125+
0.0034041427*_D126+
-0.021089929*_D127+
-0.009388129*_D128+
0.006832276*_D129+
0.0153917039*_D130+
0.0173511932*_D131+
0.0198685726*_D132+
0.0031900527*_D133+
0.0685021852*_D134+
0.0533348453*_D135+
0.0027238037*_D136+
-0.006504534*_D137+
0.0000542507*_D138+
-0.004714411*_D139+
0.0131287643*_D140+
0.0081315646*_D141+
0.0138051211*_D142+
-0.007914401*_D143+
-0.00332821*_D144+
0.0095110448*_D145+
0.0077675984*_D146+
0.0200888948*_D147+
0.0112493225*_D148+
0.0056045606*_D149+
0.0007297706*_D150+
0.0151966359*_D151+
0.0022844126*_D152+
-0.003565002*_D153+
-0.002602665*_D154+
0.0066464592*_D155+
-0.030221165*_D156+
0.0026366608*_D157+
0.0040329702*_D158+
-0.000794543*_D159+
0.022388361*_D160+
0.0055710847*_D161+
0.0001504961*_D162+
0.0016581631*_D163+
0.0353478271*_D164+
0.00594464*_D165+
0.0012100162*_D166+
-0.010891145*_D167+
-0.000673004*_D168+
-0.014375462*_D169+
-0.107567365*_D170+
0.0096607808*_D171+
-0.005343729*_D172+
-0.005061154*_D173+
-0.018578474*_D174+
0.0001911526*_D175+
0.0038179214*_D176+
0.0091561674*_D177+
-0.00728534*_D178+
-0.006604051*_D179+
0.0252087351*_D180+
0.0015622394*_D181+
-0.013564385*_D182+
-0.001664065*_D183+
0.0120617728*_D184+
0.0049425063*_D185+
-0.024167338*_D186+
0.0023281608*_D187+
0.0110032574*_D188+
0.0006760741*_D189+
-0.052409137*_D190+
0.003634232*_D191+
-0.02196169*_D192+
0.0010099544*_D193+
0.0123571052*_D194+
-0.004931339*_D195+
0.008821516*_D196+
0.0042418758*_D197+
-0.007437782*_D198+
0.0028600015*_D199+
0.0137660372*_D200+
-0.008168222*_D201+
0.0022458571*_D202+
0.0010531808*_D203+
0.0014060263*_D204+
0.0211720843*_D205+
0.0067742172*_D206+
0.0000724867*_D207+
0.0153694462*_D208+
0.0118859435*_D209+
0.0062580949*_D210+
0.0069610637*_D211+
0.0068608133*_D212+
-0.003661473*_D213+
-0.008313358*_D214+
0.008090501*_D215+
-0.111154308*_D216+
0.0076895015*_D217+
-0.001134819*_D218+
0.007520685*_D219+
0.0226971833*_D220+
0.0052873705*_D221+
0.0015268867*_D222+
-0.001507652*_D223+
-0.000622126*_D224+
0.0027561644*_D225+
0.0067513359*_D226+
-0.008769235*_D227+
0.0184316657*_D228+
0.0270664175*_D229+
0.0106962829*_D230+
-0.00056636*_D231+
-0.004148677*_D232+
0.0184379471*_D233+
0.0118327704*_D234+
0.0071403406*_D235+
0.0021547465*_D236+
-0.009517599*_D237+
0.0104793867*_D238+
0.0032488149*_D239+
-0.011428632*_D240+
-0.00364135*_D241+
-0.010919658*_D242+
0.0223579001*_D243+
0.0065077275*_D244+
0.0166245024*_D245+
-0.050459057*_D246+
-0.015638196*_D247+
0.003036836*_D248+
0.025732136*_D249+
0.0064045789*_D250+
0.0254782625*_D251+
0.0170289647*_D252+
-0.000909765*_D253+
0.0019164683*_D254+
0.0104064405*_D255+
0.0161704365*_D256+
-0.003019361*_D257+
0.0113430966*_D258+
-0.018811892*_D259+
0.0221599272*_D260+
-0.004980131*_D261+
0.0134690336*_D262+
0.0033648616*_D263+
0.0058320144*_D264+
-0.005867678*_D265+
-0.000493429*_D266+
0.0025429925*_D267+
-0.001779702*_D268+
-0.016529737*_D269+
-0.006032103*_D270+
0.0011398699*_D271+
0.0056405972*_D272+
-0.007928742*_D273+
0.0025717977*_D274+
0.0078983583*_D275+
-0.007326014*_D276+
-0.002755043*_D277+
-0.011608452*_D278+
0.0002253443*_D279+
-0.003650699*_D280+
-0.005485798*_D281+
-0.001257589*_D282+
-0.014011136*_D283+
-0.00011414*_D284+
0.0171808578*_D285+
0.0027557723*_D286+
0.0316725451*_D287+
-0.003259133*_D288+
-0.005235955*_D289+
0.0076081268*_D290+
0.005669187*_D291+
-0.017698516*_D292+
0.0331513522*_D293+
0.0073866723*_D294+
-0.005833014*_D295+
0.0259815513*_D296+
0.0012237313*_D297+
0.0078849091*_D298+
-0.000030599*_D299+
0.0054793382*_D300+
0.0077936111*_D301+
0.0193610281*_D302+
0.0611033716*_D303+
0.010332291*_D304+
-0.024694403*_D305+
-0.000439406*_D306+
0.0296413086*_D307+
0.0136379919*_D308+
0.0873175426*_D309+
0.005532872*_D310+
0.0133968257*_D311+
0.0116556007*_D312+
-0.001373453*_D313+
0.025768567*_D314+
0.0028355441*_D315+
0.061676598*_D316+
-0.004724268*_D317+
0.0181118351*_D318+
-0.025276138*_D319+
-0.017795546*_D320+
0.0009661926*_D321+
-0.007986063*_D322+
0.0407590484*_D323+
0.0001136777*_D324+
0.1197882762*_D325+
0.0079694648*_D326+
0.0045166471*_D327+
0.002293638*_D328+
0.0239380743*_D329+
-0.001283053*_D330+
0.0037896978*_D331+
-0.006267302*_D332+
0.0157009734*_D333+
-0.013983575*_D334+
0.0613739216*_D335+
-0.053600606*_D336+
-0.000070178*_D337+
0.014136391*_D338+
-0.005572398*_D339+
-0.011624085*_D340+
0.0107491983*_D341+
-0.010296304*_D342+
0.0042578148*_D343+
-0.002024564*_D344+
-0.001444632*_D345+
-0.002513415*_D346+
0.0106059792*_D347+
0.0032110423*_D348+
-0.019962642*_D349+
0.0043229615*_D350+
-0.003726658*_D351+
-0.005899168*_D352+
0.0093088198*_D353+
0.001605194*_D354+
0.0052899567*_D355+
-0.021883713*_D356+
0.029431585*_D357+
-0.003343802*_D358+
0.0014634259*_D359+
0.0067622579*_D360+
0.0035590593*_D361+
0.0062956408*_D362+
-9.192179E-6*_D363+
-0.001931116*_D364+
0.0240220478*_D365+
0.0074627087*_D366+
0.0002820181*_D367+
0.0085058204*_D368+
-0.006703109*_D369+
0.0047874671*_D370+
-0.000220833*_D371+
-0.00859225*_D372+
0.0051558325*_D373+
0.003557944*_D374+
0.0101203458*_D375+
-0.002398251*_D376+
0.0055048636*_D377+
0.0086683588*_D378+
0.0019739245*_D379+
0.0034489654*_D380+
-0.00181356*_D381+
-0.000211525*_D382+
-0.001677997*_D383+
0.0006217937*_D384+
-0.016503629*_D385+
0.0145533719*_D386+
0.0064244511*_D387+
-0.00409522*_D388+
0.000214911*_D389+
0.0000689*_D390+
-0.002386271*_D391+
-0.006489583*_D392+
0.000653797*_D393+
0.0367347631*_D394+
-0.000215261*_D395+
-0.003345357*_D396+
-0.012273034*_D397+
0.0080190751*_D398+
0.0030107136*_D399+
0.0065536518*_D400+
0.0059959545*_D401+
-0.008120363*_D402+
0.0055352264*_D403+
0.0059924465*_D404+
-0.001978918*_D405+
0.1121690139*_D406+
-0.007570259*_D407+
-0.001115169*_D408+
0.0045179203*_D409+
0.006537516*_D410+
0.0298045309*_D411+
-0.017218645*_D412+
-0.000630526*_D413+
-0.014980024*_D414+
0.0067462844*_D415+
0.0047362095*_D416+
0.0043831164*_D417+
-0.008690429*_D418+
0.0081928372*_D419+
0.0134448777*_D420+
0.034388233*_D421+
-0.00224019*_D422+
-0.00821454*_D423+
-0.001730067*_D424+
0.0084363204*_D425+
0.003602917*_D426+
0.0044748584*_D427+
0.0062423667*_D428+
-0.006564883*_D429+
-0.013031963*_D430+
-0.056069546*_D431+
0.0147357478*_D432+
-0.01396039*_D433+
0.002288309*_D434+
-0.021766306*_D435+
-0.002197346*_D436+
-0.002834886*_D437+
0.0226547571*_D438+
0.0183661181*_D439+
0.0344721875*_D440+
-0.072046073*_D441+
-0.011616947*_D442+
0.004232359*_D443+
-0.013039248*_D444+
0.0081930361*_D445+
0.008456603*_D446+
-0.004893273*_D447+
-0.02566993*_D448+
0.0053681424*_D449+
-0.479477219*_D450+
0.0263690133*_D451+
0.0082052914*_D452+
0.0111964757*_D453+
-0.0002087*_D454+
-0.00816624*_D455+
-0.020874688*_D456+
0.0032107726*_D457+
-0.010503047*_D458+
0.0005082143*_D459+
0.009405113*_D460+
-0.020738321*_D461+
0.0096898233*_D462+
0.0017585371*_D463+
-0.002670512*_D464+
0.0068092404*_D465+
0.0021515271*_D466+
0.0059698036*_D467+
0.0018138005*_D468+
0.0109957363*_D469+
0.0354464762*_D470+
0.0186915471*_D471+
0.0169711186*_D472+
0.0117147375*_D473+
0.0139785782*_D474+
0.0023153699*_D475+
-0.007293098*_D476+
0.0130544582*_D477+
0.0025880509*_D478+
-0.014248505*_D479+
0.0259611821*_D480+
-0.010458991*_D481+
0.002492682*_D482+
-0.010154357*_D483+
0.0033910688*_D484+
-0.0009314*_D485+
-0.004181734*_D486+
-0.002695092*_D487+
0.0029265762*_D488+
0.0011237536*_D489+
-0.002229534*_D490+
-0.006825913*_D491+
-0.058350389*_D492+
0.0039555537*_D493+
0.0256947074*_D494+
0.0036750921*_D495+
0.0111278811*_D496+
-0.03497823*_D497+
0.0140336734*_D498+
-0.000375709*_D499+
-0.007058481*_D500+
-0.051648106*_D501+
0.0168377466*_D502+
-0.000337148*_D503+
0.004795724*_D504+
-0.003367296*_D505+
0.0053925052*_D506+
0.0073641147*_D507+
0.0553142833*_D508+
-0.001450298*_D509+
0.0093425212*_D510+
0.004610372*_D511+
0.0095465927*_D512+
0.014187195*_D513+
0.0055256241*_D514+
0.0018111905*_D515+
0.014949039*_D516+
0.07346316*_D517+
0.0396874969*_D518+
0.0531105849*_D519+
0.0222706044*_D520+
-0.032439994*_D521+
-0.007012715*_D522+
0.026066434*_D523+
0.0034747054*_D524+
0.013945721*_D525+
-0.030263236*_D526+
-0.004771352*_D527+
0.0060648069*_D528+
0.0306833771*_D529+
-0.00324194*_D530+
-0.009831987*_D531+
0.0091242432*_D532+
-0.018285743*_D533+
0.0029852376*_D534+
0.0092501614*_D535+
0.0159229954*_D536+
0.0018990402*_D537+
-0.010089279*_D538+
-0.004824824*_D539+
-0.000637597*_D540+
0.0115299081*_D541+
-0.087651681*_D542+
-0.056893174*_D543+
0.0019097411*_D544+
0.0022914165*_D545+
0.0057282126*_D546+
-0.01346454*_D547+
0.0336056365*_D548+
0.0150226527*_D549+
0.0034611571*_D550+
-0.008849868*_D551+
-0.007589397*_D552+
-0.034760965*_D553+
-0.011502791*_D554+
0.0066589042*_D555+
-0.006255109*_D556+
0.0029361303*_D557+
0.0080074808*_D558+
-0.001484797*_D559+
-0.003548977*_D560+
-0.00055232*_D561+
-0.010342187*_D562+
0.0091310992*_D563+
0.0026502033*_D564+
0.0225409626*_D565+
-0.017571109*_D566+
-0.005211513*_D567+
0.0229877088*_D568+
-0.04490568*_D569+
0.0000239285*_D570+
0.0170553741*_D571+
0.0470919543*_D572+
0.0069787754*_D573+
0.0090825258*_D574+
0.0251323338*_D575+
0.0028302169*_D576+
0.0029999067*_D577+
0.0068948103*_D578+
0.0142141499*_D579+
-0.007719364*_D580+
0.0005503367*_D581+
0.005399908*_D582+
0.0093223542*_D583+
0.0126778431*_D584+
-0.002868496*_D585+
-0.009657444*_D586+
-0.003734907*_D587+
0.0102475052*_D588+
-0.000923345*_D589+
-0.015837255*_D590+
-0.012231396*_D591+
0.0062289892*_D592+
-0.001278245*_D593+
0.0050814203*_D594+
0.007304522*_D595+
-0.000527647*_D596+
0.0077919234*_D597+
0.0114559894*_D598+
0.0092393526*_D599+
-0.005733604*_D600+
-0.000474973*_D601+
0.0124608021*_D602+
0.0036569549*_D603+
0.0216903227*_D604+
0.0049146431*_D605+
0.0137281176*_D606+
-0.006558271*_D607+
-0.01302882*_D608+
-0.005165828*_D609+
-0.003210412*_D610+
0.0028174439*_D611+
-0.000426747*_D612+
0.0007980263*_D613+
0.0200053919*_D614+
-0.000137024*_D615+
0.0052814174*_D616+
-0.008820131*_D617+
0.0073155859*_D618+
0.0259671528*_D619+
0.0045200791*_D620+
0.0049864292*_D621+
0.0208158753*_D622+
0.0090939838*_D623+
-0.004955065*_D624+
0.0037884178*_D625+
0.042165721*_D626+
-0.025754603*_D627+
-0.004507413*_D628+
0.010192588*_D629+
0.0029857762*_D630+
0.007419028*_D631+
-0.018747379*_D632+
0.0056799538*_D633+
-0.010602932*_D634+
0.0083686624*_D635+
0.0126420855*_D636+
0.0049083213*_D637+
0.0103482228*_D638+
-0.008893037*_D639+
0.0178152344*_D640+
-0.007363565*_D641+
0.0014850879*_D642+
0.0113822761*_D643+
0.0057341859*_D644+
0.0360796788*_D645+
0.0159449143*_D646+
-0.011550009*_D647+
0.0072442721*_D648+
0.1219571561*_D649+
-0.002643602*_D650+
0.0643589274*_D651+
0.0437538908*_D652+
0.0138893345*_D653+
0.0036876906*_D654+
0.0019838848*_D655+
-0.00204832*_D656+
-0.006102266*_D657+
0.001915687*_D658+
-0.037461009*_D659+
0.0079503465*_D660+
0.0079456514*_D661+
-0.006894651*_D662+
0.0040340283*_D663+
-0.003587812*_D664+
-0.011507581*_D665+
0.0013426861*_D666+
-0.003901395*_D667+
-0.007122799*_D668+
0.0082901241*_D669+
0.0103470246*_D670+
0.0080841486*_D671+
0.0064964544*_D672+
0.004385599*_D673+
-0.028271271*_D674+
0.009746855*_D675+
0.0022802806*_D676+
-0.000056275*_D677+
0.0162827516*_D678+
0.0089909865*_D679+
-0.009733718*_D680+
0.0195992496*_D681+
0.0003190944*_D682+
-0.020284429*_D683+
0.0303797362*_D684+
-0.003458644*_D685+
-0.009604349*_D686+
-0.010881297*_D687+
0.0007467763*_D688+
0.0396682828*_D689+
-0.001200011*_D690+
-0.004090345*_D691+
-0.008973572*_D692+
0.0188581323*_D693+
-0.01244279*_D694+
-0.007140403*_D695+
-0.006567523*_D696+
0.0166732298*_D697+
0.0012942478*_D698+
0.0094564943*_D699+
-0.011038662*_D700+
0.0013488328*_D701+
-0.003934868*_D702+
0.0285431548*_D703+
-0.008463774*_D704+
0.0003449021*_D705+
0.0021105841*_D706+
0.0126512938*_D707+
0.0042874022*_D708+
0.0166898012*_D709+
-0.161835391*_D710+
0.037699743*_D711+
0.0069963395*_D712+
0.010881635*_D713+
0.0053920066*_D714+
0.001688316*_D715+
0.0023348147*_D716+
-0.045452096*_D717+
-0.000696192*_D718+
0.0008138341*_D719+
-0.002375768*_D720+
-0.016334937*_D721+
0.0164914011*_D722+
-0.00413219*_D723+
0.0132347775*_D724+
0.0066085746*_D725+
0.0019071542*_D726+
0.0018592878*_D727+
-0.007731917*_D728+
-0.007409432*_D729+
0.004301112*_D730+
-0.001683443*_D731+
0.0059965352*_D732+
0.0009349731*_D733+
-0.001602173*_D734+
0.0045529481*_D735+
-0.007888013*_D736+
-0.026076175*_D737+
-0.003437759*_D738+
-0.003940972*_D739+
-0.001848674*_D740+
0.0013527279*_D741+
0.0075087941*_D742+
0.003409456*_D743+
0.0062150218*_D744+
0.0004908497*_D745+
0.0019504153*_D746+
0.0190367971*_D747+
-0.004902673*_D748+
-0.352556841*_D749+
-0.01715976*_D750+
-0.00963403*_D751+
0.0099878179*_D752+
0.0020116451*_D753+
0.0129688895*_D754+
0.0032391431*_D755+
0.0051755548*_D756+
0.0484823992*_D757+
-0.015665785*_D758+
-0.024349531*_D759+
0.0073113171*_D760+
-0.000132388*_D761+
-0.000456717*_D762+
0.0032521803*_D763+
-0.005918023*_D764+
0.0050287483*_D765+
0.0487607729*_D766+
0.0041874924*_D767+
-0.002671128*_D768+
-0.012441001*_D769+
0.0026641916*_D770+
0.0035174151*_D771+
0.0023012934*_D772+
0.0220707663*_D773+
0.0015426532*_D774+
0.0037446086*_D775+
0.0371815539*_D776+
0.0107484619*_D777+
0.0303028421*_D778+
0.008804459*_D779+
-0.000301673*_D780+
0.0173419102*_D781+
0.0206376382*_D782+
-0.015598519*_D783+
-0.042658369*_D784+
-0.004564785*_D785+
-0.010596835*_D786+
-0.021308883*_D787+
-0.001531695*_D788+
0.0006170361*_D789+
-0.000766782*_D790+
0.0065748087*_D791+
-0.062227177*_D792+
-0.00230904*_D793+
-0.028903496*_D794+
0.0030742067*_D795+
0.0018231744*_D796+
-0.004325641*_D797+
-0.007320977*_D798+
-0.005203903*_D799+
-0.001711679*_D800+
0.0068465802*_D801+
-0.006170483*_D802+
0.0076276597*_D803+
-0.002435533*_D804+
0.005150381*_D805+
0.0250198425*_D806+
0.0038385074*_D807+
-0.014334956*_D808+
-0.026950987*_D809+
0.0077319926*_D810+
0.0091070557*_D811+
0.002839634*_D812+
-0.00454167*_D813+
-0.012349387*_D814+
0.0024668667*_D815+
0.0151874026*_D816+
-0.000014691*_D817+
0.0065497128*_D818+
0.0144831975*_D819+
0.0040526776*_D820+
0.0038737713*_D821+
0.0132778601*_D822+
0.007345971*_D823+
0.0121758053*_D824+
0.0253485721*_D825+
0.003269788*_D826+
0.012024196*_D827+
0.0161100304*_D828+
-0.018002653*_D829+
-0.014029706*_D830+
-0.004275099*_D831+
0.0010328676*_D832+
-0.00708651*_D833+
0.0006460373*_D834+
-0.001687928*_D835+
0.0049086632*_D836+
0.0320099653*_D837+
0.0033149796*_D838+
0.0012231685*_D839+
0.0006381728*_D840+
-0.009266254*_D841+
0.0519986397*_D842+
0.011273777*_D843+
-0.02855124*_D844+
0.020398858*_D845+
-0.015833838*_D846+
0.0705211413*_D847+
0.0047078801*_D848+
-0.009209811*_D849+
-0.002472779*_D850+
0.0435230871*_D851+
-0.003436172*_D852+
0.0075315292*_D853+
0.0335884611*_D854+
0.0205660445*_D855+
0.0031919918*_D856+
0.0093773891*_D857+
0.0006695791*_D858+
0.0034023814*_D859+
-0.006458778*_D860+
0.0123528787*_D861+
-0.00029237*_D862+
0.0008387864*_D863+
0.0052009825*_D864+
0.0121228231*_D865+
-0.004157797*_D866+
0.0001556273*_D867+
-0.000148252*_D868+
-0.001058361*_D869+
-0.066382257*_D870+
0.0167143701*_D871+
0.0058393019*_D872+
-0.003327896*_D873+
-0.003804846*_D874+
-0.002933271*_D875+
0.0000814516*_D876+
-0.007742661*_D877+
0.0048650217*_D878+
-0.019079068*_D879+
-0.003671941*_D880+
-0.004858892*_D881+
-0.012562392*_D882+
0.0083641409*_D883+
-0.010373543*_D884+
0.0213287281*_D885+
-0.004336187*_D886+
-0.013704255*_D887+
-0.022170881*_D888+
-0.000549623*_D889+
0.0081241892*_D890+
0.019316926*_D891+
0.0016668348*_D892+
0.0189721038*_D893+
-0.007928492*_D894+
0.0085141084*_D895+
0.0030960724*_D896+
-0.003976344*_D897+
0.0032626163*_D898+
-0.002971693*_D899+
0.0313000702*_D900+
-0.01508377*_D901+
0.0283167977*_D902+
-0.000768786*_D903+
-0.004239431*_D904+
0.0254858387*_D905+
-0.002153593*_D906+
0.0096413268*_D907+
-0.000304716*_D908+
-0.001705693*_D909+
0.008804459*_D910+
-0.002204473*_D911+
-0.006011184*_D912+
0.0116777394*_D913+
-0.002966813*_D914+
-0.006227117*_D915+
0.0089431461*_D916+
-0.003697934*_D917+
0.0044331984*_D918+
0.0114236985*_D919+
-0.003256463*_D920+
0.0008574005*_D921+
0.0251834154*_D922+
-0.006830458*_D923+
0.0680720248*_D924+
0.0029778872*_D925+
0.0245382634*_D926+
0.0033819035*_D927+
0.0122874255*_D928+
0.0024548765*_D929+
-0.012479177*_D930+
-0.003532482*_D931+
0.0053419714*_D932+
-0.000315571*_D933+
-0.00624527*_D934+
-0.000653656*_D935+
-0.002145116*_D936+
0.0046635856*_D937+
0.0517405498*_D938+
0.0042923011*_D939+
0.0184663343*_D940+
-0.005105076*_D941+
0.0258272319*_D942+
0.0042200931*_D943+
0.0392382768*_D944+
-0.022503523*_D945+
-0.008588732*_D946+
-0.009664688*_D947+
-0.009600763*_D948+
-0.007954407*_D949+
-0.001229687*_D950+
-0.002229191*_D951+
-0.018613521*_D952+
0.0028654075*_D953+
-0.001872989*_D954+
0.0031880625*_D955+
-0.005193214*_D956+
-0.029191325*_D957+
-0.002725779*_D958+
-0.011064353*_D959+
-0.01743597*_D960+
-0.027374421*_D961+
0.0054473625*_D962+
-0.008875369*_D963+
0.006005751*_D964+
0.0097263325*_D965+
0.0048900566*_D966+
0.0115886248*_D967+
0.0058647766*_D968+
0.003580152*_D969+
-0.042172975*_D970+
0.003171678*_D971+
0.0086473951*_D972+
0.0532811037*_D973+
0.0013805075*_D974+
-0.000089167*_D975+
-0.006157026*_D976+
0.0185777201*_D977+
0.0022093868*_D978+
-0.0074681*_D979+
-0.024917782*_D980+
0.0166907872*_D981+
0.01980434*_D982+
-0.004663766*_D983+
0.0065562402*_D984+
0.0196193002*_D985+
-0.001686622*_D986+
0.0264280561*_D987+
0.0007772249*_D988+
-0.019977136*_D989+
-0.003280612*_D990+
0.0050511138*_D991+
0.0052267414*_D992+
0.0064093684*_D993+
-0.001019598*_D994+
-0.011472195*_D995+
0.0059287441*_D996+
-0.002183738*_D997+
0.004950698*_D998+
-0.002790775*_D999+
0.0068842322*_D1000+
-0.006406602*_D1001+
0.001987452*_D1002+
0.0070646377*_D1003+
0.012856283*_D1004+
0.0061797067*_D1005+
-0.00060616*_D1006+
0.0013223806*_D1007+
-0.009903419*_D1008+
-0.000939208*_D1009+
0.0098543564*_D1010+
0.0076511874*_D1011+
-0.002166443*_D1012+
-0.011932996*_D1013+
0.0187828331*_D1014+
0.0068200065*_D1015+
0.1023227233*_D1016+
0.0038851136*_D1017+
0.0224129484*_D1018+
0.003084773*_D1019+
0.0019298284*_D1020+
0.0037557244*_D1021+
-0.009262283*_D1022+
-0.003201155*_D1023+
0.020359502*_D1024+
0.0336900581*_D1025+
0.0045266057*_D1026+
-0.002716097*_D1027+
-0.002141221*_D1028+
0.0085033868*_D1029+
0.0012298872*_D1030+
0.0022244915*_D1031+
0.0001003781*_D1032+
0.0002539767*_D1033+
0.0132364069*_D1034+
0.016022737*_D1035+
0.0008799784*_D1036+
0.0354523134*_D1037+
-0.035761187*_D1038+
0.0079834216*_D1039+
-0.024938193*_D1040+
0.0204665946*_D1041+
0.0091381643*_D1042+
-0.030277266*_D1043+
0.015110666*_D1044+
-0.069015*_D1045+
0.0034569062*_D1046+
0.0277674547*_D1047+
0.0357765784*_D1048+
0.0066708624*_D1049+
0.0310057913*_D1050+
-0.005307315*_D1051+
0.007090266*_D1052+
-0.000306675*_D1053+
0.0050452579*_D1054+
-0.007663022*_D1055+
0.0389993151*_D1056+
0.0020951618*_D1057+
0.0057142815*_D1058+
0.0017790731*_D1059+
0.0053816233*_D1060+
0.00339563*_D1061+
-0.005598719*_D1062+
0.0038377377*_D1063+
0.0119216009*_D1064+
0.0060154538*_D1065+
-0.008424336*_D1066+
-0.010137278*_D1067+
-0.036414768*_D1068+
-0.010080091*_D1069+
0.0356773796*_D1070+
0.0048151686*_D1071+
-0.004662859*_D1072+
0.0207105296*_D1073+
-0.026996117*_D1074+
0.0110057009*_D1075+
0.0269445228*_D1076+
-0.009467897*_D1077+
0.0062829827*_D1078+
0.0051270781*_D1079+
-0.002950473*_D1080+
0.0065915284*_D1081+
-0.004407892*_D1082+
0.0024089694*_D1083+
-0.005616842*_D1084+
-0.013743085*_D1085+
0.0346929902*_D1086+
0.0038687676*_D1087+
-0.007216688*_D1088+
-0.006180409*_D1089+
0.0358537411*_D1090+
-0.014578324*_D1091+
0.0002016476*_D1092+
0.0069024051*_D1093+
0.0025155884*_D1094+
0.0107643041*_D1095+
0.0065030618*_D1096+
0.0029589609*_D1097+
0.0136532302*_D1098+
0.0014648014*_D1099+
0.0040492338*_D1100+
0.0038276134*_D1101+
-0.022847464*_D1102+
-0.006865975*_D1103+
0.0117251685*_D1104+
0.0364584918*_D1105+
0.0409217974*_D1106+
-0.004501421*_D1107+
0.0086200008*_D1108+
-0.002173362*_D1109+
-0.019551351*_D1110+
0.0091036341*_D1111+
0.0316721527*_D1112+
-0.012023966*_D1113+
-0.007680049*_D1114+
-0.038943609*_D1115+
-0.006918108*_D1116+
-0.003269507*_D1117+
0.0009858391*_D1118+
0.005055894*_D1119+
0.0057844163*_D1120+
-0.004341167*_D1121+
-0.012881293*_D1122+
0.0249747109*_D1123+
0.0141522411*_D1124+
0.0165242717*_D1125+
0.0029697441*_D1126+
-0.008046085*_D1127+
-0.002358558*_D1128+
0.0344722905*_D1129+
0.002114343*_D1130+
-0.002367138*_D1131+
-0.029180303*_D1132+
-0.009663266*_D1133+
-0.036042735*_D1134+
0.0001830554*_D1135+
0.0153486279*_D1136+
0.005852375*_D1137+
0.0069268766*_D1138+
0.0052012797*_D1139+
-0.015892039*_D1140+
-0.016666208*_D1141+
0.0074524919*_D1142+
-0.027633699*_D1143+
0.0048360226*_D1144+
-0.02917528*_D1145+
-0.038314974*_D1146+
-0.00138717*_D1147+
0.0023318767*_D1148+
0.0023806085*_D1149+
0.0140298494*_D1150+
-0.003052871*_D1151+
0.0010347908*_D1152+
0.003341134*_D1153+
0.0042851908*_D1154+
0.0025570619*_D1155+
0.0017852394*_D1156+
0.020642179*_D1157+
0.0017435404*_D1158+
0.004623814*_D1159+
0.026253572*_D1160+
0.0232036758*_D1161+
0.0157408602*_D1162+
-0.000436321*_D1163+
-0.002949919*_D1164+
-0.007543335*_D1165+
-0.043832576*_D1166+
0.0042722257*_D1167+
-0.029808627*_D1168+
-0.010981442*_D1169+
0.0231911356*_D1170+
-0.016279059*_D1171+
-0.054169886*_D1172+
-0.428487893*_D1173+
0.0046049332*_D1174+
0.0007639831*_D1175+
0.0229480342*_D1176+
0.0092017184*_D1177+
-0.000407981*_D1178+
0.0194193058*_D1179+
0.0094370773*_D1180+
0.0022603523*_D1181+
0.0143333531*_D1182+
0.0034353217*_D1183+
0.0017014331*_D1184+
-0.006837265*_D1185+
-0.005624415*_D1186+
-0.009984007*_D1187+
0.0004764294*_D1188+
-0.0008927*_D1189+
-0.061018643*_D1190+
-0.010287421*_D1191+
-0.00362251*_D1192+
-0.000512138*_D1193+
-0.012211557*_D1194+
0.010265224*_D1195+
0.0180653297*_D1196+
0.1056805975*_D1197+
0.0065549608*_D1198+
0.0054878903*_D1199+
0.0144906269*_D1200+
0.0077861873*_D1201+
0.0849668004*_D1202+
-0.004694705*_D1203+
-0.010026854*_D1204;
/****************************************/
* Componente principal 13;
/****************************************/
;
length PC_13 8;
label PC_13 = "Componente principal 13";
PC_13 =
-0.000493529*_D1+
0.0009324229*_D2+
0.0045204251*_D3+
-0.010392788*_D4+
0.0016687007*_D5+
-0.014322363*_D6+
0.0081699787*_D7+
-0.008562021*_D8+
0.0024844397*_D9+
-0.035276292*_D10+
0.0022817861*_D11+
0.0020094345*_D12+
-0.017362798*_D13+
-0.002721346*_D14+
0.0002679806*_D15+
-0.016293534*_D16+
-0.002177566*_D17+
-0.000368739*_D18+
0.0021295882*_D19+
0.0077053393*_D20+
-0.00086106*_D21+
0.0776323783*_D22+
-0.000419064*_D23+
0.0011970073*_D24+
0.0060725044*_D25+
-0.008617315*_D26+
-0.002094868*_D27+
0.0112647398*_D28+
-0.00498345*_D29+
-0.001646045*_D30+
0.0024393893*_D31+
0.0020542834*_D32+
-0.016431424*_D33+
-0.000907025*_D34+
-0.271780299*_D35+
-0.000379187*_D36+
-0.006418641*_D37+
0.0013411265*_D38+
-0.006500273*_D39+
0.0037688601*_D40+
0.0121820928*_D41+
0.0075458117*_D42+
-0.000469489*_D43+
-0.001847714*_D44+
-0.005756088*_D45+
-0.033973231*_D46+
-0.004016259*_D47+
-0.001270385*_D48+
0.0145016117*_D49+
-0.017767287*_D50+
0.0018693021*_D51+
0.0008237783*_D52+
0.0466544703*_D53+
-0.001859412*_D54+
0.0027759759*_D55+
0.0017346816*_D56+
-0.002713184*_D57+
-0.00740645*_D58+
0.0015315332*_D59+
-0.008330275*_D60+
-0.002903703*_D61+
0.0045097322*_D62+
-0.015712557*_D63+
0.0058975246*_D64+
0.0005086421*_D65+
-0.002470219*_D66+
-0.007158901*_D67+
0.0027025398*_D68+
0.0197541403*_D69+
-0.005147999*_D70+
0.0254897833*_D71+
-0.000904546*_D72+
0.0008749098*_D73+
0.0185450664*_D74+
-0.025309157*_D75+
0.002772123*_D76+
0.0115942447*_D77+
0.0020618457*_D78+
0.0003154574*_D79+
0.017743472*_D80+
0.0014427953*_D81+
-0.000346413*_D82+
0.0045794097*_D83+
-0.003427672*_D84+
0.0200305848*_D85+
-0.003076124*_D86+
-0.005663123*_D87+
0.0006514066*_D88+
0.0290696239*_D89+
0.0003042304*_D90+
0.0030420741*_D91+
-0.000202109*_D92+
-0.012001466*_D93+
-0.147629701*_D94+
-0.025815545*_D95+
0.1586562719*_D96+
0.0046817842*_D97+
0.003754616*_D98+
0.0029225112*_D99+
-0.002263126*_D100+
0.00065134*_D101+
-0.001778052*_D102+
-0.000842375*_D103+
0.0048791684*_D104+
-0.010038608*_D105+
0.0142009974*_D106+
0.0010188919*_D107+
-0.000821905*_D108+
-0.002801508*_D109+
0.0035362111*_D110+
-0.043781646*_D111+
0.0110369477*_D112+
-0.010341604*_D113+
0.0032717143*_D114+
-0.001841869*_D115+
0.0065157615*_D116+
-0.004481554*_D117+
0.0086369071*_D118+
-0.004933457*_D119+
0.0030975682*_D120+
-0.003111205*_D121+
0.0065424248*_D122+
0.004127349*_D123+
-0.002660499*_D124+
0.007773445*_D125+
0.0022536705*_D126+
0.0067165519*_D127+
0.0000334118*_D128+
-0.01106482*_D129+
-0.001171881*_D130+
0.0090737457*_D131+
0.0006126101*_D132+
-0.002470994*_D133+
-0.007170764*_D134+
0.0016319267*_D135+
-0.0009265*_D136+
-0.001285408*_D137+
0.0075190817*_D138+
0.0057181969*_D139+
0.0055583821*_D140+
0.0011914812*_D141+
-0.007550398*_D142+
0.000102624*_D143+
0.0090972214*_D144+
-0.000639162*_D145+
0.0009568928*_D146+
0.0038263213*_D147+
0.0060683039*_D148+
0.0166014621*_D149+
0.0218698264*_D150+
-0.003720532*_D151+
0.0015435548*_D152+
-0.000857024*_D153+
0.0031717494*_D154+
0.0042317442*_D155+
0.0047639974*_D156+
0.0010975954*_D157+
-0.00564642*_D158+
-0.001540356*_D159+
0.0013073432*_D160+
0.0006164059*_D161+
0.0009237198*_D162+
0.0031460021*_D163+
0.0001721191*_D164+
-0.007426233*_D165+
0.0006677573*_D166+
0.0045602701*_D167+
0.0072180216*_D168+
0.0027512687*_D169+
-0.003195954*_D170+
0.001893502*_D171+
0.0016678115*_D172+
-0.139980445*_D173+
0.0090810253*_D174+
0.0145005111*_D175+
0.0031398847*_D176+
-0.005880463*_D177+
0.0037358881*_D178+
-0.001755162*_D179+
-0.000736041*_D180+
0.0182774113*_D181+
-0.014022723*_D182+
0.0050104941*_D183+
0.0025198164*_D184+
-0.001805777*_D185+
0.0013222338*_D186+
0.0046770845*_D187+
-0.005587703*_D188+
-0.006023609*_D189+
0.0455589084*_D190+
-0.00129266*_D191+
0.0191493803*_D192+
-0.013217106*_D193+
0.0022461008*_D194+
0.004159676*_D195+
-0.003763195*_D196+
0.0006732919*_D197+
-0.004813577*_D198+
0.0023170291*_D199+
-0.000124763*_D200+
-0.014793732*_D201+
0.0134473185*_D202+
-0.004039503*_D203+
0.002533228*_D204+
-0.019954647*_D205+
-0.002556442*_D206+
0.0006323605*_D207+
-0.006501171*_D208+
0.001579135*_D209+
0.0131200323*_D210+
0.0009303175*_D211+
-0.006385661*_D212+
0.0003057865*_D213+
0.0047269279*_D214+
0.0154709617*_D215+
-0.003013503*_D216+
0.0016437891*_D217+
-0.00815541*_D218+
0.0009697135*_D219+
0.0045967453*_D220+
0.0011834131*_D221+
-0.000121557*_D222+
0.002808208*_D223+
0.0042294411*_D224+
0.0074264243*_D225+
0.0008960665*_D226+
0.0002378482*_D227+
0.0140331385*_D228+
0.0303091598*_D229+
0.0040145493*_D230+
0.0030028447*_D231+
0.0048738691*_D232+
0.0273324238*_D233+
0.0003918713*_D234+
0.0040669597*_D235+
-0.000191094*_D236+
0.0032644122*_D237+
-0.003824715*_D238+
0.0013539393*_D239+
0.0275912158*_D240+
0.0061647087*_D241+
0.003451374*_D242+
-0.0006658*_D243+
0.0005232809*_D244+
-0.000864071*_D245+
0.0070039882*_D246+
0.011362428*_D247+
0.0026851995*_D248+
0.0009036213*_D249+
0.0033854415*_D250+
-0.002544416*_D251+
0.0274487361*_D252+
0.0003448984*_D253+
0.0013257914*_D254+
-0.001070862*_D255+
0.0001198302*_D256+
-0.002474441*_D257+
-0.002101844*_D258+
-0.001062335*_D259+
-0.000961599*_D260+
0.0008351524*_D261+
-0.004908528*_D262+
0.002195393*_D263+
-0.004396916*_D264+
0.0046741488*_D265+
0.0000670737*_D266+
0.0049157017*_D267+
-0.004799235*_D268+
0.0114499718*_D269+
0.0102578781*_D270+
-0.000908662*_D271+
-0.002554252*_D272+
0.0015119194*_D273+
0.0007988468*_D274+
-0.025361102*_D275+
0.0005778719*_D276+
0.0018436197*_D277+
0.0051149133*_D278+
-0.001798744*_D279+
0.0032949432*_D280+
-0.002812026*_D281+
0.0132695862*_D282+
0.0376740348*_D283+
-0.002240288*_D284+
-0.007606845*_D285+
0.0044576656*_D286+
-0.001926393*_D287+
-0.002570222*_D288+
0.0124861159*_D289+
-0.000460332*_D290+
0.0016245008*_D291+
-0.002981838*_D292+
0.0034480449*_D293+
0.002187965*_D294+
0.0049606247*_D295+
0.0012946249*_D296+
-0.000371443*_D297+
-0.003269906*_D298+
-0.001345275*_D299+
0.0060913539*_D300+
0.0004297333*_D301+
0.0033395429*_D302+
-0.005382014*_D303+
0.0020825073*_D304+
0.0039433059*_D305+
0.0037432306*_D306+
-0.007424899*_D307+
-0.006146387*_D308+
-0.011901842*_D309+
-0.016245764*_D310+
0.0000839243*_D311+
-0.003928637*_D312+
0.0037567863*_D313+
0.0061633976*_D314+
0.0011358842*_D315+
-0.159517203*_D316+
-0.014184447*_D317+
0.0006022259*_D318+
0.0108241305*_D319+
0.0054209476*_D320+
-0.000776388*_D321+
-0.001223749*_D322+
-0.013515913*_D323+
0.0023134247*_D324+
0.0218648336*_D325+
-0.006606457*_D326+
-0.00206242*_D327+
0.013036357*_D328+
-0.001342655*_D329+
0.0086451594*_D330+
-0.001002952*_D331+
-0.009891913*_D332+
-0.038519068*_D333+
0.0776316814*_D334+
-0.008366962*_D335+
0.000372411*_D336+
-0.010050678*_D337+
-0.011643263*_D338+
0.0117513905*_D339+
0.009068127*_D340+
0.0000193278*_D341+
0.0002651136*_D342+
0.001799696*_D343+
0.0023935748*_D344+
0.0016416246*_D345+
-0.012144847*_D346+
-0.003550663*_D347+
0.001910516*_D348+
0.0031144127*_D349+
-0.000277238*_D350+
-0.002181646*_D351+
0.0028494969*_D352+
0.0003349792*_D353+
-0.010793253*_D354+
-0.002935269*_D355+
-0.016262691*_D356+
0.0008232287*_D357+
0.0028014737*_D358+
-0.000037237*_D359+
0.0025806026*_D360+
0.0024644704*_D361+
0.0407690668*_D362+
0.0039967684*_D363+
0.0005120211*_D364+
-0.013521303*_D365+
-0.000856183*_D366+
0.0046752616*_D367+
-0.006734008*_D368+
-0.001036378*_D369+
0.0044482766*_D370+
-0.000803819*_D371+
-0.001116769*_D372+
0.0016834103*_D373+
-0.013258747*_D374+
0.0049190814*_D375+
0.0069591914*_D376+
0.0149056468*_D377+
0.0024404158*_D378+
0.002468237*_D379+
-0.006550626*_D380+
-0.001373869*_D381+
-0.006293701*_D382+
0.0003451576*_D383+
-0.000150952*_D384+
-0.001030411*_D385+
0.0017834816*_D386+
0.0006520181*_D387+
0.0041601292*_D388+
0.001786234*_D389+
-0.026372746*_D390+
-0.00888164*_D391+
0.0004966188*_D392+
0.008126848*_D393+
-0.00938383*_D394+
0.0000732386*_D395+
0.0025562784*_D396+
-0.008334283*_D397+
0.0002014807*_D398+
0.0011326517*_D399+
0.0036551323*_D400+
0.0010722282*_D401+
0.0118169202*_D402+
0.0002016962*_D403+
-0.001321625*_D404+
0.0194166956*_D405+
-0.001551127*_D406+
0.0040791637*_D407+
0.0018235382*_D408+
-0.013961751*_D409+
-0.000738852*_D410+
0.0006819437*_D411+
0.0014775675*_D412+
0.0001052473*_D413+
0.003664663*_D414+
-0.001121231*_D415+
-0.040667558*_D416+
-0.016917184*_D417+
0.0008173105*_D418+
0.0001516571*_D419+
0.0016945395*_D420+
-0.003379711*_D421+
-0.005797856*_D422+
0.0030949923*_D423+
0.0009632603*_D424+
0.0034143759*_D425+
-0.004549194*_D426+
-0.016105461*_D427+
-0.003302051*_D428+
0.0014237119*_D429+
0.0006756132*_D430+
0.0093687534*_D431+
-0.012511714*_D432+
-0.002478737*_D433+
0.0043160683*_D434+
0.0622063744*_D435+
-0.010649341*_D436+
-0.04295906*_D437+
-0.011164619*_D438+
0.0013325721*_D439+
-0.00769509*_D440+
0.0131786394*_D441+
-0.001423691*_D442+
0.0008901893*_D443+
0.0077247947*_D444+
-0.000377767*_D445+
-0.001846437*_D446+
-0.000080139*_D447+
0.0050870384*_D448+
-0.009996514*_D449+
0.0012912243*_D450+
-0.009121839*_D451+
0.0092382194*_D452+
0.000096657*_D453+
-0.01683438*_D454+
-0.011785824*_D455+
0.133358963*_D456+
0.0000760152*_D457+
0.0046186119*_D458+
-0.002610323*_D459+
-0.005024018*_D460+
0.1449860971*_D461+
-0.001787635*_D462+
0.0009119407*_D463+
-0.003032887*_D464+
-0.005354821*_D465+
-0.010107713*_D466+
0.0009070859*_D467+
0.0058479698*_D468+
0.0005297084*_D469+
-0.00263826*_D470+
0.015201982*_D471+
0.0069321775*_D472+
0.0044919548*_D473+
0.0006825203*_D474+
0.0048967848*_D475+
0.0118673304*_D476+
0.0007014931*_D477+
-0.000254378*_D478+
-0.002070638*_D479+
0.0006633145*_D480+
-0.002584814*_D481+
-0.000690712*_D482+
-0.036464136*_D483+
0.0081221164*_D484+
0.0032598017*_D485+
-0.003789059*_D486+
0.0014572724*_D487+
-0.00499892*_D488+
0.0005728093*_D489+
-0.027736782*_D490+
-0.005112053*_D491+
0.0078006765*_D492+
0.0026529765*_D493+
-0.00044057*_D494+
0.000908258*_D495+
0.0020162987*_D496+
0.0021532537*_D497+
0.0005446963*_D498+
-0.00970516*_D499+
0.0029334478*_D500+
0.0273675595*_D501+
-0.002924855*_D502+
-0.001706678*_D503+
0.001553208*_D504+
0.0517347652*_D505+
-0.001176928*_D506+
0.0126239469*_D507+
-0.125092192*_D508+
0.0017183504*_D509+
0.00784538*_D510+
0.0026493185*_D511+
-0.002231233*_D512+
-0.003903064*_D513+
0.0009488388*_D514+
0.0022186674*_D515+
-0.001925975*_D516+
0.0026824727*_D517+
-0.012346069*_D518+
-0.001222949*_D519+
-0.017191514*_D520+
0.0050114785*_D521+
-0.006947261*_D522+
0.0481245137*_D523+
-0.000180472*_D524+
-0.002886104*_D525+
0.0042802638*_D526+
0.0231652216*_D527+
-0.001401831*_D528+
-0.0144094*_D529+
0.0003595597*_D530+
0.005433589*_D531+
-0.002353637*_D532+
0.0011034688*_D533+
0.0013193124*_D534+
-0.001274024*_D535+
0.000421641*_D536+
0.0034023391*_D537+
-0.026472611*_D538+
0.0146152634*_D539+
-0.001449821*_D540+
-0.002538288*_D541+
-0.092027786*_D542+
0.2016819418*_D543+
-0.001495999*_D544+
0.0004349994*_D545+
0.0014798688*_D546+
0.0172343668*_D547+
-0.007796545*_D548+
-0.005127783*_D549+
-0.067511421*_D550+
0.0206787846*_D551+
-0.096847677*_D552+
-0.004126303*_D553+
0.0159589163*_D554+
-0.000635508*_D555+
0.008774377*_D556+
0.0038233553*_D557+
-0.001086378*_D558+
0.007156803*_D559+
-0.002423002*_D560+
-0.004064968*_D561+
0.0116323285*_D562+
0.000541808*_D563+
0.0011141919*_D564+
-0.009590761*_D565+
-0.003904715*_D566+
0.0030939867*_D567+
-0.011146315*_D568+
0.0170248917*_D569+
-0.01951038*_D570+
-0.003419465*_D571+
-0.120192132*_D572+
0.0076183902*_D573+
-0.001596495*_D574+
-0.006444134*_D575+
-0.008123526*_D576+
0.0061449648*_D577+
0.0030847041*_D578+
0.0006616478*_D579+
0.0216696812*_D580+
0.0028265851*_D581+
0.0014447294*_D582+
0.0005350964*_D583+
-0.004809672*_D584+
-0.003382673*_D585+
0.0088303818*_D586+
0.0044626153*_D587+
-0.011821399*_D588+
0.0061170578*_D589+
0.0288066844*_D590+
0.0364166879*_D591+
0.0105314832*_D592+
0.0023105105*_D593+
0.028159322*_D594+
0.0037536882*_D595+
0.0039911347*_D596+
-0.004860108*_D597+
0.0012845351*_D598+
0.0014202897*_D599+
0.0051605721*_D600+
-0.000787822*_D601+
-0.004615673*_D602+
-0.001195321*_D603+
-0.003172707*_D604+
0.0034083157*_D605+
-0.001593995*_D606+
0.0066023025*_D607+
0.0183868516*_D608+
-0.000504694*_D609+
-0.000152291*_D610+
0.0006354758*_D611+
0.0016067055*_D612+
-0.001507596*_D613+
0.0017825259*_D614+
0.0016088655*_D615+
0.0001625327*_D616+
0.0013742732*_D617+
-0.001175463*_D618+
-0.011685198*_D619+
0.0013419496*_D620+
0.0011392606*_D621+
-0.003358425*_D622+
-0.00197607*_D623+
0.0088822787*_D624+
-0.010962045*_D625+
0.0160192329*_D626+
0.0048136747*_D627+
0.0048038535*_D628+
0.0070246404*_D629+
-0.00265182*_D630+
0.0005435031*_D631+
0.0024335359*_D632+
-0.001557215*_D633+
0.006880284*_D634+
-0.00278774*_D635+
-0.000086096*_D636+
0.0034112215*_D637+
-0.001778984*_D638+
0.0013522298*_D639+
0.0027194645*_D640+
0.0003469611*_D641+
0.0010805328*_D642+
-0.006518218*_D643+
0.0024450527*_D644+
0.1445913214*_D645+
0.0038143188*_D646+
0.0024433284*_D647+
0.0029182287*_D648+
-0.018763036*_D649+
-0.012311507*_D650+
-0.010042421*_D651+
-0.006726928*_D652+
-0.007556709*_D653+
-0.005792338*_D654+
0.0002585689*_D655+
0.0022502805*_D656+
0.004347203*_D657+
-0.003627314*_D658+
0.0006500375*_D659+
-0.000772464*_D660+
0.0004299241*_D661+
0.0487902115*_D662+
0.0102311149*_D663+
-0.005391696*_D664+
0.0057662382*_D665+
0.0023158338*_D666+
0.0014981036*_D667+
-0.000615669*_D668+
-0.002941594*_D669+
-0.000555886*_D670+
-0.000942951*_D671+
-0.00481321*_D672+
-0.001446399*_D673+
0.0053397358*_D674+
0.0007019875*_D675+
0.0008348952*_D676+
-0.000185067*_D677+
-0.04433461*_D678+
0.0020327369*_D679+
0.004604969*_D680+
0.0003708111*_D681+
-0.014466425*_D682+
0.0290920212*_D683+
-0.004639902*_D684+
-0.000314524*_D685+
0.0027116279*_D686+
0.0092980713*_D687+
0.0018961264*_D688+
0.0004699893*_D689+
-0.004992341*_D690+
-0.000148127*_D691+
0.002681361*_D692+
-0.001530054*_D693+
0.0031989614*_D694+
0.0069114113*_D695+
-0.003722308*_D696+
0.0044117802*_D697+
0.002041682*_D698+
-0.000965148*_D699+
-0.019625296*_D700+
-0.010674698*_D701+
-0.007760079*_D702+
-0.005338135*_D703+
0.0098198638*_D704+
0.0408255885*_D705+
0.0027958406*_D706+
0.0003269774*_D707+
-0.000897064*_D708+
-0.036104068*_D709+
-0.019129559*_D710+
-0.018780262*_D711+
0.0022656095*_D712+
-0.018163807*_D713+
0.0077137884*_D714+
-0.000484395*_D715+
-0.015924313*_D716+
0.0326618593*_D717+
0.001657097*_D718+
0.0016315506*_D719+
0.0058295042*_D720+
-0.000477797*_D721+
0.009423304*_D722+
0.0032118702*_D723+
0.0500979887*_D724+
0.0003890447*_D725+
-0.00387886*_D726+
-0.005392094*_D727+
0.0109370635*_D728+
0.0093977824*_D729+
-0.001363934*_D730+
0.0013333127*_D731+
-0.00072821*_D732+
0.0013076122*_D733+
-0.00104177*_D734+
0.0049515898*_D735+
-0.000121699*_D736+
-0.013817523*_D737+
0.0027784291*_D738+
0.0014991722*_D739+
-0.009464205*_D740+
0.004395345*_D741+
0.0111598956*_D742+
0.0024236497*_D743+
-0.002529284*_D744+
0.0066117269*_D745+
0.0003988203*_D746+
0.020797015*_D747+
0.0135790054*_D748+
-0.006259324*_D749+
0.0011263407*_D750+
0.0434788482*_D751+
0.000248292*_D752+
-0.000612085*_D753+
-0.005392313*_D754+
0.0002722777*_D755+
0.0018780342*_D756+
-0.006002889*_D757+
0.0053450241*_D758+
-0.004789207*_D759+
-0.006607744*_D760+
0.0018105555*_D761+
0.0167322546*_D762+
-0.018848155*_D763+
-0.003670603*_D764+
-0.012923758*_D765+
-0.00196248*_D766+
-0.007216213*_D767+
-0.008400496*_D768+
0.0237281701*_D769+
0.0026306815*_D770+
0.0007512163*_D771+
0.0005984054*_D772+
-0.001017821*_D773+
-0.009539554*_D774+
0.0185686875*_D775+
-0.009194451*_D776+
-0.007754921*_D777+
-0.001485358*_D778+
0.0012303786*_D779+
-0.003748141*_D780+
-0.009465507*_D781+
-0.002783158*_D782+
-0.00382036*_D783+
0.0046528836*_D784+
-0.00694583*_D785+
0.0034299768*_D786+
0.0095229809*_D787+
0.0021047503*_D788+
0.0009381438*_D789+
0.0011103496*_D790+
0.0046140092*_D791+
-0.008266771*_D792+
-0.0003231*_D793+
0.0030756913*_D794+
-0.000297866*_D795+
-0.011880229*_D796+
-0.000333209*_D797+
0.0127514093*_D798+
-0.00836227*_D799+
0.002414378*_D800+
-0.00025453*_D801+
0.0043865474*_D802+
-0.012246946*_D803+
0.0030298113*_D804+
0.0003983153*_D805+
-0.016162987*_D806+
-0.016406601*_D807+
-0.009125189*_D808+
0.0059028589*_D809+
0.0016020719*_D810+
-0.00698388*_D811+
0.0029727199*_D812+
0.0132503622*_D813+
-0.017433267*_D814+
0.0019833682*_D815+
-0.000850679*_D816+
-0.002027971*_D817+
0.0056124558*_D818+
0.0332540534*_D819+
-0.005030787*_D820+
0.0009114761*_D821+
0.0020867341*_D822+
0.0036012675*_D823+
-0.007364154*_D824+
-0.013899643*_D825+
0.0051960821*_D826+
-0.003338624*_D827+
-0.006568416*_D828+
0.0011233344*_D829+
-0.02552912*_D830+
0.0029353214*_D831+
0.001113145*_D832+
0.0035189218*_D833+
-0.000757106*_D834+
-0.013736842*_D835+
0.0028879324*_D836+
-0.033070945*_D837+
-0.000064759*_D838+
-0.001389502*_D839+
-0.001787154*_D840+
0.0042980105*_D841+
0.0009311672*_D842+
0.0000665972*_D843+
0.0074346466*_D844+
0.0007859537*_D845+
-0.006694406*_D846+
0.2106529309*_D847+
0.0080236035*_D848+
0.0151147985*_D849+
0.0186989429*_D850+
-0.120551297*_D851+
-0.000915053*_D852+
-0.001713291*_D853+
0.0044552757*_D854+
0.0234171812*_D855+
0.002662675*_D856+
0.0042184568*_D857+
0.0020753248*_D858+
-0.002416226*_D859+
0.0027100681*_D860+
0.0025309702*_D861+
0.0021472167*_D862+
0.0079074292*_D863+
-0.001699928*_D864+
0.0000247227*_D865+
0.0118013228*_D866+
0.0010328472*_D867+
0.0001977697*_D868+
-0.004915004*_D869+
0.0102674179*_D870+
-0.004231949*_D871+
-0.002382024*_D872+
-0.004827392*_D873+
0.011167451*_D874+
0.0036242204*_D875+
0.0037346096*_D876+
0.0024680465*_D877+
-0.002604004*_D878+
0.0013429653*_D879+
0.0075311627*_D880+
0.0027925142*_D881+
-0.035159782*_D882+
0.0010708788*_D883+
0.0020511205*_D884+
0.0287967994*_D885+
0.0019161595*_D886+
0.0018722598*_D887+
-0.00020381*_D888+
0.0012179924*_D889+
-0.002078987*_D890+
0.001188744*_D891+
0.0034506779*_D892+
0.0037227301*_D893+
0.0055078812*_D894+
-0.002732791*_D895+
0.0010633779*_D896+
-0.000668765*_D897+
0.0059450751*_D898+
-0.031915906*_D899+
0.0022386808*_D900+
-0.000778343*_D901+
-0.001604735*_D902+
0.0188173053*_D903+
0.0011576526*_D904+
-0.001910223*_D905+
-0.000325043*_D906+
-0.001059378*_D907+
0.0011526744*_D908+
0.0004992346*_D909+
0.0012303786*_D910+
-0.000973315*_D911+
0.0062859072*_D912+
-0.001170732*_D913+
0.0009372855*_D914+
-0.001332184*_D915+
0.0022851912*_D916+
0.0195319812*_D917+
0.0026307755*_D918+
-0.01239611*_D919+
0.0014310846*_D920+
-0.00426425*_D921+
-0.031447552*_D922+
-0.029796563*_D923+
-0.015976263*_D924+
-0.008403549*_D925+
-0.00103044*_D926+
0.0088207726*_D927+
-0.002301171*_D928+
0.0078705677*_D929+
-0.002073462*_D930+
-0.003758748*_D931+
0.0019137108*_D932+
-0.002514048*_D933+
-0.000879707*_D934+
0.0015624906*_D935+
0.0048094346*_D936+
-0.005319674*_D937+
0.0053811234*_D938+
0.0034478587*_D939+
0.0009055287*_D940+
-0.001958927*_D941+
0.0238281583*_D942+
-0.00095403*_D943+
0.0021055899*_D944+
0.0041684933*_D945+
0.0076186025*_D946+
-0.001420591*_D947+
-0.001262491*_D948+
0.0008741587*_D949+
-0.001758732*_D950+
-0.000659131*_D951+
-0.018527651*_D952+
-0.002336589*_D953+
-0.004774693*_D954+
-0.00651129*_D955+
0.0049367188*_D956+
0.0003654284*_D957+
-0.003741033*_D958+
0.0332252881*_D959+
0.0817863647*_D960+
-0.006641292*_D961+
-0.01054207*_D962+
-0.006943261*_D963+
-0.002278079*_D964+
-0.002714479*_D965+
0.0006049697*_D966+
-0.000513923*_D967+
-0.000331291*_D968+
-0.001531439*_D969+
0.0099593702*_D970+
0.0015359043*_D971+
-0.002916806*_D972+
-0.016028233*_D973+
-0.002901484*_D974+
0.0024289937*_D975+
0.001027581*_D976+
-0.003971481*_D977+
0.0043010417*_D978+
0.0019395439*_D979+
0.0044912105*_D980+
-0.002294452*_D981+
-0.001491193*_D982+
0.0016643477*_D983+
-0.000473103*_D984+
-0.003614676*_D985+
-0.007325202*_D986+
-0.003813756*_D987+
-6.071333E-6*_D988+
-0.000899872*_D989+
-0.002712635*_D990+
0.0020868433*_D991+
-0.005137497*_D992+
0.00401285*_D993+
0.0040654056*_D994+
-0.003020698*_D995+
0.0012835411*_D996+
-0.001062336*_D997+
-0.004853501*_D998+
0.0008401246*_D999+
-0.00046943*_D1000+
0.0040246803*_D1001+
0.0005825208*_D1002+
-0.002026728*_D1003+
-0.015896966*_D1004+
-0.001809708*_D1005+
0.0017014682*_D1006+
-0.002045234*_D1007+
0.0107960008*_D1008+
-0.003589002*_D1009+
0.0199211851*_D1010+
0.0090215618*_D1011+
0.0019998696*_D1012+
0.0194529985*_D1013+
0.0909343798*_D1014+
-0.003188844*_D1015+
0.078042973*_D1016+
-0.014247711*_D1017+
-0.008352788*_D1018+
0.0029849318*_D1019+
0.0028794835*_D1020+
-0.004914469*_D1021+
0.0065831261*_D1022+
-0.002395751*_D1023+
0.0127361317*_D1024+
-0.003413183*_D1025+
0.0020843828*_D1026+
0.002715099*_D1027+
0.0050766181*_D1028+
-0.001364522*_D1029+
0.0012703456*_D1030+
-0.024338575*_D1031+
-0.006356596*_D1032+
-0.002143189*_D1033+
-0.00477898*_D1034+
-0.000994612*_D1035+
-0.00236666*_D1036+
0.0014270752*_D1037+
0.004350236*_D1038+
-0.009023972*_D1039+
0.0047776618*_D1040+
-0.002937885*_D1041+
0.0049946657*_D1042+
0.0046630946*_D1043+
0.0019494425*_D1044+
0.0112884853*_D1045+
-0.001600167*_D1046+
0.0017386622*_D1047+
-0.00088048*_D1048+
0.0462498426*_D1049+
-0.007698968*_D1050+
0.002052079*_D1051+
0.0005135384*_D1052+
0.0074768737*_D1053+
-0.002160573*_D1054+
0.001079955*_D1055+
-0.019110912*_D1056+
-0.00225244*_D1057+
-0.010315054*_D1058+
0.0491373212*_D1059+
0.0016034864*_D1060+
-0.032513064*_D1061+
-0.008639653*_D1062+
-2.407879E-6*_D1063+
0.0044217066*_D1064+
0.0015732125*_D1065+
-0.000149684*_D1066+
0.0171808281*_D1067+
-0.105692218*_D1068+
0.01038339*_D1069+
-0.017438145*_D1070+
0.0021486124*_D1071+
0.0088569727*_D1072+
0.0009301607*_D1073+
-0.338101571*_D1074+
-0.001628153*_D1075+
-0.001542422*_D1076+
0.0073688557*_D1077+
0.0022232005*_D1078+
0.0056354718*_D1079+
-0.023854827*_D1080+
0.0247417777*_D1081+
0.0012344858*_D1082+
-0.000596768*_D1083+
-0.002600995*_D1084+
-0.004982643*_D1085+
0.0132900486*_D1086+
0.0012212223*_D1087+
0.0079682322*_D1088+
0.0028828345*_D1089+
0.0206143521*_D1090+
0.0013649985*_D1091+
-0.001641037*_D1092+
-0.003471514*_D1093+
-0.001152947*_D1094+
0.0006289703*_D1095+
-0.000352438*_D1096+
0.0023275364*_D1097+
0.0107512434*_D1098+
0.0035537043*_D1099+
-0.00708166*_D1100+
0.0004589758*_D1101+
-0.004343621*_D1102+
0.0083825934*_D1103+
-0.003807125*_D1104+
-0.012436677*_D1105+
-0.000905637*_D1106+
0.003702274*_D1107+
-0.008865391*_D1108+
-0.009311366*_D1109+
-0.025474079*_D1110+
-0.002623277*_D1111+
-0.016081355*_D1112+
-0.001657867*_D1113+
-0.000287811*_D1114+
-0.007500998*_D1115+
0.0023028664*_D1116+
-0.006473009*_D1117+
0.0036273742*_D1118+
-0.001753527*_D1119+
-0.040896652*_D1120+
0.0028120245*_D1121+
-0.031438869*_D1122+
-0.123577174*_D1123+
-0.000949701*_D1124+
-0.00778311*_D1125+
-0.003223577*_D1126+
0.0542764923*_D1127+
0.0009258271*_D1128+
-0.005954609*_D1129+
-0.001488256*_D1130+
0.0015735529*_D1131+
0.0014297336*_D1132+
-0.006663761*_D1133+
0.0021445777*_D1134+
-0.000214659*_D1135+
-0.001789561*_D1136+
-0.015057553*_D1137+
-0.001617118*_D1138+
-0.00096555*_D1139+
0.0061327723*_D1140+
-0.486827213*_D1141+
-0.000908633*_D1142+
0.0104572522*_D1143+
-0.001348656*_D1144+
0.0032638925*_D1145+
-0.001353613*_D1146+
-0.000414012*_D1147+
-0.002128276*_D1148+
0.0016852577*_D1149+
-0.004034643*_D1150+
0.0102095671*_D1151+
0.001513289*_D1152+
-0.002965317*_D1153+
-0.002401643*_D1154+
0.003878893*_D1155+
0.0021353852*_D1156+
0.0462776828*_D1157+
0.0021661461*_D1158+
-0.017829886*_D1159+
-0.041626755*_D1160+
0.0010899315*_D1161+
0.0055635238*_D1162+
0.0071304862*_D1163+
0.0014959186*_D1164+
0.005620008*_D1165+
-0.000087448*_D1166+
0.0006527029*_D1167+
0.0454639918*_D1168+
0.0034126104*_D1169+
0.0020224176*_D1170+
0.0070577463*_D1171+
-0.004130733*_D1172+
0.0018641914*_D1173+
0.0010538183*_D1174+
0.0058446981*_D1175+
-0.005484048*_D1176+
0.0049796886*_D1177+
0.0076577571*_D1178+
-0.008281207*_D1179+
0.000990627*_D1180+
0.0017522399*_D1181+
0.0143950082*_D1182+
0.0028701534*_D1183+
0.0001884627*_D1184+
0.0008847887*_D1185+
0.009270212*_D1186+
-0.001500248*_D1187+
-0.000229218*_D1188+
-0.003298486*_D1189+
0.0792276056*_D1190+
-0.002693165*_D1191+
0.0009674046*_D1192+
0.0002674353*_D1193+
0.0014023545*_D1194+
0.0040149647*_D1195+
0.0230166917*_D1196+
0.0023516122*_D1197+
0.0022725449*_D1198+
0.0041163542*_D1199+
-0.006397367*_D1200+
0.0015500805*_D1201+
0.2692964437*_D1202+
0.0089573355*_D1203+
-0.001449332*_D1204;
/****************************************/
* Componente principal 14;
/****************************************/
;
length PC_14 8;
label PC_14 = "Componente principal 14";
PC_14 =
-0.000069885*_D1+
0.0016150627*_D2+
-0.004439377*_D3+
-0.007010757*_D4+
-0.001778402*_D5+
0.0035472232*_D6+
0.0327084492*_D7+
0.0046096835*_D8+
0.0016369548*_D9+
0.0237220674*_D10+
-0.012704576*_D11+
0.0056076821*_D12+
-0.063818809*_D13+
-0.002411517*_D14+
-0.002012892*_D15+
-0.033891137*_D16+
-0.010205211*_D17+
-0.000726062*_D18+
0.0030323642*_D19+
-0.002422485*_D20+
-0.00031329*_D21+
0.0119745392*_D22+
0.0198202371*_D23+
0.0198137737*_D24+
0.0063009449*_D25+
0.0036257443*_D26+
0.0009348639*_D27+
0.0677984427*_D28+
-0.002642778*_D29+
-0.005780655*_D30+
-0.009982717*_D31+
-0.012859555*_D32+
0.0019947761*_D33+
-0.009380328*_D34+
0.1137335087*_D35+
0.0036679382*_D36+
-0.002633638*_D37+
-0.003093841*_D38+
-0.014097825*_D39+
-0.013161038*_D40+
0.0078854963*_D41+
0.0051898951*_D42+
0.0220811539*_D43+
-0.003232062*_D44+
0.0055915295*_D45+
0.0110395469*_D46+
-0.01639101*_D47+
-0.000027778*_D48+
0.0075301292*_D49+
-0.024755596*_D50+
0.0020714628*_D51+
0.0004763134*_D52+
-0.024631421*_D53+
-0.0043958*_D54+
-0.001451707*_D55+
-0.000169654*_D56+
-0.003004872*_D57+
0.0048443281*_D58+
-0.001144211*_D59+
-0.006868907*_D60+
0.000529189*_D61+
-0.00268079*_D62+
0.0014317575*_D63+
0.084965526*_D64+
0.003380363*_D65+
-0.009390463*_D66+
-0.004029503*_D67+
0.0357628429*_D68+
0.0038423486*_D69+
-0.014939422*_D70+
0.1330190502*_D71+
0.0108465161*_D72+
-0.002486297*_D73+
-0.009590874*_D74+
0.0097175067*_D75+
0.0023432199*_D76+
-0.054066247*_D77+
0.0079715839*_D78+
-0.009729861*_D79+
0.0081338304*_D80+
0.0051246793*_D81+
-0.000728916*_D82+
0.006697525*_D83+
-0.009695144*_D84+
-0.004524045*_D85+
0.0102398361*_D86+
0.0083097395*_D87+
0.0019701776*_D88+
0.0677069938*_D89+
0.0051895318*_D90+
-0.001749524*_D91+
0.0105347087*_D92+
0.0216093873*_D93+
0.0622491802*_D94+
-0.003709171*_D95+
-0.100490111*_D96+
-0.005334128*_D97+
0.0038191123*_D98+
0.0014004871*_D99+
0.003115539*_D100+
-0.005692237*_D101+
-0.014121754*_D102+
0.0088288358*_D103+
-0.002952868*_D104+
-0.011525931*_D105+
-0.003020741*_D106+
0.0051834773*_D107+
-0.003849749*_D108+
-0.010354784*_D109+
-0.001363246*_D110+
0.0089092986*_D111+
0.0036743819*_D112+
0.0002286009*_D113+
0.0060046152*_D114+
-0.002547391*_D115+
0.003588843*_D116+
-0.005423035*_D117+
-0.008009289*_D118+
-0.009212002*_D119+
-0.005984931*_D120+
0.0049953599*_D121+
-0.008567713*_D122+
0.0172357482*_D123+
-0.011711672*_D124+
-0.018826849*_D125+
0.0078252851*_D126+
0.0062605576*_D127+
-0.006374266*_D128+
-0.002209461*_D129+
-0.000746495*_D130+
0.0064803951*_D131+
0.0159426631*_D132+
-0.0076881*_D133+
0.0201419149*_D134+
0.0161589062*_D135+
-0.006868612*_D136+
-0.00181258*_D137+
0.0041194205*_D138+
0.0065648697*_D139+
-0.008516099*_D140+
0.000070758*_D141+
-0.002544259*_D142+
-0.001839281*_D143+
-0.012405329*_D144+
0.0086652151*_D145+
-0.001420197*_D146+
0.0134720723*_D147+
0.0089660723*_D148+
0.0014109697*_D149+
-0.009544611*_D150+
0.0052785819*_D151+
0.0100124169*_D152+
-0.010304945*_D153+
0.0087607323*_D154+
0.0131543673*_D155+
-0.001109717*_D156+
-0.005898378*_D157+
-0.007014997*_D158+
0.0015703054*_D159+
0.0134077224*_D160+
0.0040008745*_D161+
0.0034274552*_D162+
0.0016669698*_D163+
0.0157957891*_D164+
-0.041464644*_D165+
0.0038652966*_D166+
-0.005128141*_D167+
-0.004223832*_D168+
-0.005479483*_D169+
-0.040675949*_D170+
-0.001520571*_D171+
-0.000709769*_D172+
0.060285037*_D173+
-0.00689758*_D174+
-0.002063478*_D175+
0.0005599748*_D176+
0.0065034785*_D177+
0.0048156697*_D178+
-0.008802005*_D179+
0.0078100928*_D180+
-0.005693058*_D181+
-0.00884256*_D182+
0.0017062526*_D183+
0.0060194123*_D184+
-0.002701123*_D185+
-0.001075283*_D186+
0.0098848683*_D187+
-0.003230201*_D188+
0.0045265272*_D189+
0.0920172685*_D190+
-0.00414148*_D191+
0.019768927*_D192+
-0.004791596*_D193+
0.0050295225*_D194+
0.0072105856*_D195+
-0.002811037*_D196+
0.0037814309*_D197+
0.00219108*_D198+
0.0032627059*_D199+
-0.002402329*_D200+
-0.016651792*_D201+
0.0041983918*_D202+
0.0027905353*_D203+
0.008345306*_D204+
-0.031096808*_D205+
-0.009824467*_D206+
-0.008589218*_D207+
-0.019013915*_D208+
0.0017811936*_D209+
0.0327115483*_D210+
0.0047841858*_D211+
-0.014870951*_D212+
-0.003165477*_D213+
-0.003691022*_D214+
0.0033790853*_D215+
-0.008778121*_D216+
0.0009444956*_D217+
0.0027923368*_D218+
0.0029649167*_D219+
0.0099739689*_D220+
-0.008790543*_D221+
-0.000586584*_D222+
0.0025522835*_D223+
0.0004960757*_D224+
-0.005863494*_D225+
0.0037982761*_D226+
-0.007210955*_D227+
-0.006655034*_D228+
-0.004754018*_D229+
0.0493978109*_D230+
-0.004206398*_D231+
-0.007734962*_D232+
0.0088449673*_D233+
0.0103057185*_D234+
0.0071030677*_D235+
-0.002484047*_D236+
0.0063242954*_D237+
-0.006500936*_D238+
0.0013567239*_D239+
0.1429023647*_D240+
-0.00225369*_D241+
-0.002472334*_D242+
0.0053159092*_D243+
-0.000806937*_D244+
0.0059548241*_D245+
0.0125325124*_D246+
0.0169371785*_D247+
0.0026741601*_D248+
-0.012946183*_D249+
0.0019671317*_D250+
0.0022209631*_D251+
0.0098867138*_D252+
-0.002356368*_D253+
0.0012457647*_D254+
0.0012609615*_D255+
-0.001623858*_D256+
0.0083442808*_D257+
-0.021465827*_D258+
-0.000735445*_D259+
0.0104952537*_D260+
0.0039474731*_D261+
-0.007392202*_D262+
0.001356965*_D263+
0.000528105*_D264+
0.0046247228*_D265+
-0.012361723*_D266+
0.0071053381*_D267+
-0.012468136*_D268+
0.0254367428*_D269+
0.0290726128*_D270+
-0.004194912*_D271+
0.0007195283*_D272+
-0.001343827*_D273+
-0.001031192*_D274+
-0.073481635*_D275+
-0.00069289*_D276+
-0.008738352*_D277+
0.0021366766*_D278+
-0.014846507*_D279+
-0.001667981*_D280+
-0.003890346*_D281+
-0.011023982*_D282+
-0.031019229*_D283+
-0.002763863*_D284+
-0.008806267*_D285+
-0.017858441*_D286+
0.0077074193*_D287+
-0.004069049*_D288+
0.0057379356*_D289+
0.0042253778*_D290+
0.0043620795*_D291+
0.001422033*_D292+
0.0198765172*_D293+
0.002079227*_D294+
-0.017964191*_D295+
-0.012985825*_D296+
-0.005446538*_D297+
-0.008039221*_D298+
0.0005996215*_D299+
0.0125127589*_D300+
0.00129866*_D301+
0.0002499614*_D302+
0.0137171703*_D303+
-0.004743038*_D304+
-0.014816143*_D305+
-0.003457456*_D306+
-0.012996879*_D307+
-0.003061407*_D308+
0.0357674092*_D309+
-0.043731721*_D310+
0.0088738391*_D311+
-0.001361485*_D312+
0.0004474081*_D313+
-0.001037338*_D314+
0.0003234487*_D315+
-0.389714481*_D316+
0.0035407769*_D317+
0.0258149688*_D318+
0.0238792912*_D319+
-0.017313212*_D320+
-0.004871678*_D321+
-0.000902297*_D322+
0.0139946357*_D323+
-0.00258433*_D324+
0.05538129*_D325+
-0.01435407*_D326+
-0.00970411*_D327+
0.0001597648*_D328+
0.0117107722*_D329+
0.0285970689*_D330+
0.0021102444*_D331+
-0.006335656*_D332+
0.0174596322*_D333+
-0.047866983*_D334+
0.0215751375*_D335+
-0.013037175*_D336+
-0.060786969*_D337+
-0.027412364*_D338+
-0.019692871*_D339+
0.0256499244*_D340+
0.0006946036*_D341+
-0.016565851*_D342+
0.0012351031*_D343+
-0.001986763*_D344+
0.0011114639*_D345+
0.0053478189*_D346+
-0.014080841*_D347+
-0.004657846*_D348+
0.0014952839*_D349+
-0.006261323*_D350+
0.0012332327*_D351+
0.0089043805*_D352+
0.0036316844*_D353+
-0.022916017*_D354+
0.0015129201*_D355+
0.0046574152*_D356+
0.0101337286*_D357+
-0.004813522*_D358+
0.0021267479*_D359+
0.0025106482*_D360+
0.0044468582*_D361+
0.0072023146*_D362+
0.0021209301*_D363+
-0.000929767*_D364+
-0.006939877*_D365+
0.0020330132*_D366+
0.0042771926*_D367+
0.0012025433*_D368+
0.0008352648*_D369+
0.0061007115*_D370+
-0.001830342*_D371+
-0.000723412*_D372+
-0.002643107*_D373+
0.011419974*_D374+
0.006350677*_D375+
-0.008722745*_D376+
0.0062728964*_D377+
0.0040018812*_D378+
-0.000895885*_D379+
0.0054331823*_D380+
0.0020685716*_D381+
-0.010608462*_D382+
-0.003749861*_D383+
-0.002139493*_D384+
-0.0143376*_D385+
0.0089609136*_D386+
0.0014686239*_D387+
-0.003672649*_D388+
-0.000436601*_D389+
-0.038536507*_D390+
0.0016909233*_D391+
-0.005416284*_D392+
-0.002658446*_D393+
-0.022821857*_D394+
0.0014445176*_D395+
-0.00091625*_D396+
0.005747282*_D397+
0.0025576185*_D398+
-0.000910299*_D399+
0.0127677157*_D400+
-0.010365397*_D401+
0.0057215582*_D402+
-0.001059267*_D403+
0.0036633076*_D404+
0.0360575016*_D405+
0.0518888458*_D406+
0.0003815424*_D407+
-0.002457507*_D408+
0.006363041*_D409+
-0.002866101*_D410+
-0.013337739*_D411+
-0.005063177*_D412+
-0.00340936*_D413+
0.0072675008*_D414+
0.0002392664*_D415+
0.0255603644*_D416+
-0.005038502*_D417+
-0.008115553*_D418+
0.0036227622*_D419+
0.0132483112*_D420+
0.0072588891*_D421+
0.0033676418*_D422+
0.0032974258*_D423+
-0.000349938*_D424+
-0.000864963*_D425+
-0.014066899*_D426+
-0.004524312*_D427+
-0.002880921*_D428+
0.0035402947*_D429+
-0.003966613*_D430+
-0.003308971*_D431+
-0.010099145*_D432+
-0.000891755*_D433+
-0.014921637*_D434+
0.2881279578*_D435+
-0.016765145*_D436+
-0.039765284*_D437+
0.0074525052*_D438+
-0.014341677*_D439+
-0.012747859*_D440+
0.0000579402*_D441+
-0.001188748*_D442+
-0.001583449*_D443+
0.0127647665*_D444+
-0.005444601*_D445+
-0.013447231*_D446+
0.0040956044*_D447+
0.0017906149*_D448+
-0.007919422*_D449+
-0.023436398*_D450+
-0.000217338*_D451+
-0.002763846*_D452+
-0.002081679*_D453+
0.0093327765*_D454+
0.0034348083*_D455+
-0.075009624*_D456+
0.0009214076*_D457+
0.0061903222*_D458+
-0.000181121*_D459+
0.0167770337*_D460+
-0.09293481*_D461+
-0.001146669*_D462+
0.0046744838*_D463+
-0.003246726*_D464+
0.0072198281*_D465+
0.0032708543*_D466+
0.0016022449*_D467+
-0.001558574*_D468+
0.0050268308*_D469+
0.0082514919*_D470+
0.0003857255*_D471+
0.0032075409*_D472+
0.0109871329*_D473+
0.0035988358*_D474+
0.0030684341*_D475+
-0.001362013*_D476+
-0.000238756*_D477+
-0.00058604*_D478+
-0.006084304*_D479+
0.0049251031*_D480+
-0.004574817*_D481+
0.0008122624*_D482+
0.0100513351*_D483+
-0.011815898*_D484+
0.0061445037*_D485+
-0.012191232*_D486+
-0.001519595*_D487+
0.0033796921*_D488+
0.000456449*_D489+
0.0146521764*_D490+
0.0043845232*_D491+
0.0213190992*_D492+
0.0021224861*_D493+
0.0051061376*_D494+
0.0061376631*_D495+
0.0021355144*_D496+
0.0051625789*_D497+
0.0124653864*_D498+
0.0079229114*_D499+
-0.005594197*_D500+
0.0482841549*_D501+
0.0031975354*_D502+
0.0057110177*_D503+
-0.003208145*_D504+
-0.035902985*_D505+
-0.00637559*_D506+
0.0016829139*_D507+
-0.298888484*_D508+
0.0001932402*_D509+
-0.000715784*_D510+
0.0016969967*_D511+
0.0035688831*_D512+
-0.004462801*_D513+
-0.000312694*_D514+
0.003789463*_D515+
-0.000747729*_D516+
0.0313234388*_D517+
-0.017369361*_D518+
-0.040407953*_D519+
0.0103155617*_D520+
-0.014025543*_D521+
-0.031400028*_D522+
0.0493145848*_D523+
-0.004175388*_D524+
-0.010346058*_D525+
-0.00100609*_D526+
0.0607277561*_D527+
-0.000798806*_D528+
-0.019656131*_D529+
-0.008241984*_D530+
-0.007720041*_D531+
-0.004825992*_D532+
0.0168213522*_D533+
-0.002779068*_D534+
0.0009114543*_D535+
0.0056360201*_D536+
-0.000557781*_D537+
-0.0050522*_D538+
-0.002622862*_D539+
0.0004837728*_D540+
0.0046486847*_D541+
0.0247997465*_D542+
-0.089854493*_D543+
0.0011018323*_D544+
0.0017626425*_D545+
-0.006362326*_D546+
-0.040541483*_D547+
-0.010086839*_D548+
-0.007218499*_D549+
0.0263997394*_D550+
-0.007023802*_D551+
0.0399269469*_D552+
0.0092487353*_D553+
-0.004348233*_D554+
0.0007345812*_D555+
-0.016775833*_D556+
-0.000095922*_D557+
0.0039625045*_D558+
-0.000031855*_D559+
-0.007126687*_D560+
0.0003822156*_D561+
0.0377976916*_D562+
0.0024001778*_D563+
-0.000854547*_D564+
0.0095858493*_D565+
-0.00710461*_D566+
0.0238741388*_D567+
0.0107981952*_D568+
-0.015124598*_D569+
0.0071931347*_D570+
0.0009052841*_D571+
-0.294675408*_D572+
-0.000326729*_D573+
0.0038240696*_D574+
0.0010176406*_D575+
0.014559212*_D576+
0.009151967*_D577+
0.0033654372*_D578+
0.004355254*_D579+
-0.006822496*_D580+
-0.0011254*_D581+
-0.000991404*_D582+
0.0045717532*_D583+
-0.000600956*_D584+
0.0007695984*_D585+
0.018634389*_D586+
-0.003036118*_D587+
0.0083766601*_D588+
-0.000581499*_D589+
-0.012630712*_D590+
-0.013816409*_D591+
0.0120306368*_D592+
-0.002217464*_D593+
0.0126158688*_D594+
0.0020176647*_D595+
-0.009123124*_D596+
0.0002764791*_D597+
0.0060868101*_D598+
0.0000807681*_D599+
0.0018668693*_D600+
-0.014637511*_D601+
-0.006067239*_D602+
0.0054713541*_D603+
-0.029940928*_D604+
0.0022428001*_D605+
0.0089813046*_D606+
0.000141868*_D607+
-0.040080745*_D608+
-0.002327399*_D609+
-0.006243562*_D610+
0.0021520926*_D611+
-0.010472413*_D612+
-0.004165847*_D613+
0.0005517466*_D614+
-0.002046597*_D615+
-0.003528335*_D616+
0.0056912464*_D617+
-0.003297327*_D618+
-0.006692887*_D619+
-0.000353718*_D620+
0.0010707873*_D621+
0.0011617937*_D622+
0.0002278771*_D623+
-0.007673106*_D624+
-0.027375083*_D625+
-0.034534908*_D626+
-0.002468444*_D627+
-0.00071789*_D628+
0.0027525914*_D629+
0.0001639716*_D630+
0.0048139587*_D631+
-0.000180084*_D632+
-0.006355282*_D633+
0.0194131724*_D634+
-0.030124307*_D635+
-0.000190233*_D636+
-0.002799357*_D637+
-0.009556956*_D638+
-0.001831622*_D639+
0.0054855336*_D640+
-0.001558758*_D641+
-0.002078702*_D642+
-0.011509398*_D643+
0.0024823637*_D644+
0.010146777*_D645+
-0.005755906*_D646+
-0.004795641*_D647+
0.0004854885*_D648+
0.0441533542*_D649+
0.0061991806*_D650+
0.0200593498*_D651+
0.0107262307*_D652+
-0.002486428*_D653+
0.0038143488*_D654+
-0.01327006*_D655+
0.0067359893*_D656+
0.0090581308*_D657+
0.0008366185*_D658+
-0.001406625*_D659+
-0.00126688*_D660+
-0.000238877*_D661+
0.1746571264*_D662+
0.0015651962*_D663+
0.0031758562*_D664+
0.0140040476*_D665+
0.0031592734*_D666+
-0.001681559*_D667+
-0.001381578*_D668+
-0.002301052*_D669+
0.0021126759*_D670+
0.0058146163*_D671+
-0.005674732*_D672+
-0.000932314*_D673+
-0.010962551*_D674+
0.001292939*_D675+
0.0063898826*_D676+
-0.011237046*_D677+
-0.000483831*_D678+
0.0019293054*_D679+
-0.004011047*_D680+
0.0051102908*_D681+
0.005922904*_D682+
0.0213661884*_D683+
-0.014201623*_D684+
-0.000593237*_D685+
0.0003930768*_D686+
-0.00442588*_D687+
-0.000380478*_D688+
0.0169673975*_D689+
-0.028189956*_D690+
-0.006574295*_D691+
-0.00470254*_D692+
0.0054779667*_D693+
-0.00131338*_D694+
-0.00595248*_D695+
-0.003102502*_D696+
0.0016803411*_D697+
0.0029775708*_D698+
0.006705459*_D699+
0.0047649149*_D700+
0.0053516528*_D701+
-0.014774125*_D702+
0.0002154771*_D703+
-0.004702391*_D704+
-0.029284711*_D705+
-0.003979267*_D706+
-0.005373917*_D707+
0.0011114455*_D708+
0.0023794778*_D709+
-0.001082852*_D710+
-0.004819332*_D711+
-0.00165203*_D712+
-0.025042246*_D713+
0.0025688203*_D714+
0.0052332461*_D715+
0.0116677157*_D716+
-0.048931695*_D717+
0.0014506961*_D718+
0.0017281631*_D719+
-0.002189893*_D720+
0.0076655268*_D721+
-0.000926812*_D722+
0.0011741302*_D723+
-0.038499186*_D724+
0.0014503673*_D725+
0.0016986282*_D726+
-0.000163254*_D727+
-0.005298089*_D728+
-0.006603312*_D729+
0.0082609374*_D730+
-0.007800325*_D731+
-0.007097346*_D732+
-0.001088807*_D733+
-0.00987484*_D734+
-0.000147566*_D735+
0.0068677987*_D736+
0.0014636409*_D737+
0.0049024482*_D738+
-0.000605374*_D739+
-0.026959037*_D740+
-0.008166564*_D741+
-0.023579966*_D742+
0.0062783508*_D743+
-0.000182822*_D744+
-0.002418256*_D745+
0.0007655614*_D746+
-0.00741631*_D747+
-0.015737843*_D748+
-0.00465604*_D749+
-0.01746245*_D750+
-0.033907164*_D751+
-0.001475985*_D752+
0.0001267149*_D753+
0.0350700695*_D754+
0.001616803*_D755+
0.0005621346*_D756+
0.0143753157*_D757+
-0.002537457*_D758+
-0.000751057*_D759+
0.0022356891*_D760+
0.002998828*_D761+
-0.008637953*_D762+
0.0099551994*_D763+
-0.002160195*_D764+
0.0134376331*_D765+
0.0190452885*_D766+
-0.01942815*_D767+
-0.032644325*_D768+
-0.014361715*_D769+
0.0005437263*_D770+
0.0002550701*_D771+
-0.002900113*_D772+
0.0096058321*_D773+
-0.00196166*_D774+
0.0218068717*_D775+
0.0015123275*_D776+
0.0040607139*_D777+
0.0086121031*_D778+
-0.002036809*_D779+
-0.000738208*_D780+
0.0015350171*_D781+
0.0065942227*_D782+
-0.017225438*_D783+
0.0010841305*_D784+
0.0017275366*_D785+
0.0003194002*_D786+
0.0028612305*_D787+
0.0083990142*_D788+
-0.003379258*_D789+
-0.000173273*_D790+
-0.004090987*_D791+
-0.012477933*_D792+
-0.004719583*_D793+
0.0014314004*_D794+
-0.006611095*_D795+
-0.034830138*_D796+
-0.002642932*_D797+
-0.007088342*_D798+
0.0038324793*_D799+
0.0009301974*_D800+
-0.002797909*_D801+
0.003191573*_D802+
-0.036839543*_D803+
-0.00416093*_D804+
-0.000542463*_D805+
0.0025473988*_D806+
0.0274355664*_D807+
-0.011595999*_D808+
-0.016310983*_D809+
-0.005949387*_D810+
-0.017864033*_D811+
-0.003573919*_D812+
-0.017493041*_D813+
0.0111760945*_D814+
-0.006377032*_D815+
0.0053284739*_D816+
0.0035917567*_D817+
-0.002988127*_D818+
0.0069553123*_D819+
-0.003769968*_D820+
-0.002192877*_D821+
0.0243273091*_D822+
0.0005362082*_D823+
0.0035147499*_D824+
0.0045492328*_D825+
0.0764203587*_D826+
-0.002277162*_D827+
-0.020883262*_D828+
0.0089993865*_D829+
0.0047701731*_D830+
0.0070013233*_D831+
-0.00125698*_D832+
-0.002083433*_D833+
-0.003909245*_D834+
0.0104785002*_D835+
-0.004689494*_D836+
0.0030892636*_D837+
-0.002417498*_D838+
-0.002719312*_D839+
0.0024076263*_D840+
0.0015192549*_D841+
0.0162955336*_D842+
-0.003139275*_D843+
-0.023670107*_D844+
-0.011632664*_D845+
0.0026322405*_D846+
0.0466177678*_D847+
0.0091812083*_D848+
-0.016653922*_D849+
0.0595597979*_D850+
-0.304787364*_D851+
-0.007106424*_D852+
-0.005107386*_D853+
0.0175352742*_D854+
0.0049969605*_D855+
-0.001990957*_D856+
-0.002129127*_D857+
0.0036668745*_D858+
0.0087486708*_D859+
-0.006867175*_D860+
0.002860737*_D861+
-0.006395676*_D862+
0.0003850585*_D863+
-0.001258106*_D864+
0.0029727632*_D865+
-0.01676051*_D866+
0.0022366675*_D867+
-0.001839042*_D868+
-0.010585698*_D869+
-0.056059249*_D870+
0.0124444734*_D871+
-0.008758913*_D872+
0.0003308188*_D873+
-0.00130274*_D874+
-0.002485153*_D875+
0.001187937*_D876+
-0.0058653*_D877+
-0.002777664*_D878+
-0.004098147*_D879+
-0.016730026*_D880+
0.0053809927*_D881+
0.0066762724*_D882+
-0.00047063*_D883+
-0.002452305*_D884+
0.0230102473*_D885+
0.0035041922*_D886+
-0.009104596*_D887+
-0.008313819*_D888+
0.0033437893*_D889+
-0.007789981*_D890+
-0.011126819*_D891+
0.0006693325*_D892+
0.0030808964*_D893+
0.000485146*_D894+
-0.010636887*_D895+
-0.001650483*_D896+
-0.003316943*_D897+
-0.000067669*_D898+
0.0115795796*_D899+
0.008106565*_D900+
-0.005531486*_D901+
0.0073233901*_D902+
-0.0049159*_D903+
-0.002237902*_D904+
0.0018506914*_D905+
-0.001888314*_D906+
0.0020938774*_D907+
0.000791326*_D908+
-0.000159791*_D909+
-0.002036809*_D910+
-0.002294193*_D911+
0.0058578739*_D912+
0.003565665*_D913+
-0.001357753*_D914+
0.0117716058*_D915+
-0.004491862*_D916+
0.0741306032*_D917+
-0.002771078*_D918+
0.0208835385*_D919+
-0.002666925*_D920+
-0.008018509*_D921+
0.0157047563*_D922+
0.0202457031*_D923+
-0.002387769*_D924+
-0.018219264*_D925+
0.005919574*_D926+
0.0503194186*_D927+
-0.012537824*_D928+
-0.000319315*_D929+
-0.022840162*_D930+
-0.015616607*_D931+
-0.000959757*_D932+
-0.002504224*_D933+
-0.003153426*_D934+
-0.001060986*_D935+
-0.005338115*_D936+
0.0006037906*_D937+
0.055776474*_D938+
0.000140156*_D939+
-0.022150489*_D940+
0.0027286205*_D941+
-0.002109024*_D942+
0.01059251*_D943+
0.0179498441*_D944+
-0.005219989*_D945+
0.0269419324*_D946+
-0.000697972*_D947+
-0.004161824*_D948+
-0.005157324*_D949+
-0.007620332*_D950+
-0.000591133*_D951+
-0.046973647*_D952+
-0.008361617*_D953+
-0.014755366*_D954+
0.0051657324*_D955+
-0.008866154*_D956+
-0.001393216*_D957+
-0.004048772*_D958+
0.0124075445*_D959+
-0.05148239*_D960+
-0.003866862*_D961+
-0.005191218*_D962+
0.0044287626*_D963+
0.002799213*_D964+
0.0091264461*_D965+
0.0047223734*_D966+
0.0021096827*_D967+
0.0004765052*_D968+
0.0086008547*_D969+
-0.0318806*_D970+
0.0016672778*_D971+
0.0099967326*_D972+
-0.046675722*_D973+
-0.012404448*_D974+
-0.00104707*_D975+
-0.00548145*_D976+
-0.004308084*_D977+
-0.001238499*_D978+
-0.006570857*_D979+
-0.000459226*_D980+
0.0031265939*_D981+
0.0049955288*_D982+
-0.004030252*_D983+
-0.000691287*_D984+
0.0053144657*_D985+
0.0012954925*_D986+
0.0062802485*_D987+
0.0023393665*_D988+
-0.00178028*_D989+
-0.00295966*_D990+
-0.00091758*_D991+
0.0037563025*_D992+
-0.007150302*_D993+
-0.006030331*_D994+
-0.001105799*_D995+
-0.000671734*_D996+
-0.00260656*_D997+
0.0127631622*_D998+
-0.012732957*_D999+
0.0088877113*_D1000+
0.0040311894*_D1001+
-0.010945598*_D1002+
0.0020872816*_D1003+
-0.011052204*_D1004+
0.0017213843*_D1005+
0.0012944782*_D1006+
0.0011143392*_D1007+
-0.00957335*_D1008+
0.0003054978*_D1009+
-0.006092678*_D1010+
0.0154735052*_D1011+
0.0012601247*_D1012+
0.0246910363*_D1013+
0.0142984153*_D1014+
0.0041909608*_D1015+
0.0460750034*_D1016+
0.0007817249*_D1017+
0.0101367944*_D1018+
-0.003477612*_D1019+
0.005400629*_D1020+
0.0039158287*_D1021+
0.0137816722*_D1022+
-0.00328052*_D1023+
0.0056683507*_D1024+
0.0106981284*_D1025+
0.0049936152*_D1026+
-0.00177065*_D1027+
0.0120797169*_D1028+
0.0016499358*_D1029+
0.0062592494*_D1030+
0.0111940282*_D1031+
-0.014891604*_D1032+
-0.002254685*_D1033+
-0.003269046*_D1034+
0.0019644558*_D1035+
-0.002621051*_D1036+
0.0154457256*_D1037+
-0.008858393*_D1038+
-0.027452245*_D1039+
0.0075364591*_D1040+
0.0032375756*_D1041+
0.0103555154*_D1042+
-0.003301768*_D1043+
0.0060479111*_D1044+
-0.050240749*_D1045+
0.0085080687*_D1046+
0.0166398643*_D1047+
0.0091921494*_D1048+
0.0028705745*_D1049+
-0.013975288*_D1050+
0.0041055412*_D1051+
-0.000245797*_D1052+
0.0036887488*_D1053+
-0.007061786*_D1054+
-0.000108353*_D1055+
0.0268044677*_D1056+
-0.005508156*_D1057+
-0.017235817*_D1058+
0.0338313381*_D1059+
0.0079387258*_D1060+
-0.046906722*_D1061+
-0.028446049*_D1062+
-0.000635278*_D1063+
0.0077254504*_D1064+
0.0069686293*_D1065+
0.0038473972*_D1066+
-0.007203427*_D1067+
0.0376554224*_D1068+
-0.005555431*_D1069+
-0.031824541*_D1070+
0.0019511781*_D1071+
0.0161240346*_D1072+
0.0024425668*_D1073+
0.1393098054*_D1074+
-0.000095001*_D1075+
0.0082136707*_D1076+
0.012216486*_D1077+
-0.003100703*_D1078+
-0.00369761*_D1079+
0.0142124376*_D1080+
0.0081491098*_D1081+
-0.001908158*_D1082+
-0.000899565*_D1083+
-0.018035494*_D1084+
-0.007902095*_D1085+
0.0004461225*_D1086+
-0.004515589*_D1087+
0.0324283965*_D1088+
-0.00196459*_D1089+
0.0201270661*_D1090+
0.0006554666*_D1091+
0.0018414596*_D1092+
-0.004205776*_D1093+
0.0022926735*_D1094+
0.0091997993*_D1095+
-0.00688191*_D1096+
0.0069983688*_D1097+
0.0070074956*_D1098+
-0.007251498*_D1099+
-0.013369961*_D1100+
-0.000214808*_D1101+
-0.006187941*_D1102+
0.0140592637*_D1103+
-0.001546564*_D1104+
0.0091226672*_D1105+
0.0128775298*_D1106+
-0.001264616*_D1107+
-0.000703638*_D1108+
0.0040769249*_D1109+
0.0076805312*_D1110+
-0.00167412*_D1111+
0.0032798643*_D1112+
-0.001498166*_D1113+
-0.001297338*_D1114+
-0.003218628*_D1115+
-0.001917465*_D1116+
0.0003250948*_D1117+
-0.002770139*_D1118+
0.0080907855*_D1119+
0.0173365884*_D1120+
-0.004883833*_D1121+
-0.090472724*_D1122+
0.044726007*_D1123+
0.0100505658*_D1124+
-0.025248083*_D1125+
-0.002534525*_D1126+
-0.037173568*_D1127+
0.0034595588*_D1128+
-0.010684488*_D1129+
0.0064262047*_D1130+
0.0004146408*_D1131+
0.0169612542*_D1132+
0.0073440239*_D1133+
-0.001894471*_D1134+
-0.001690896*_D1135+
0.0032001833*_D1136+
-0.023284365*_D1137+
-0.010590455*_D1138+
-0.011254125*_D1139+
-0.004859041*_D1140+
0.2009001914*_D1141+
0.0032393175*_D1142+
0.008198479*_D1143+
-0.004989327*_D1144+
-0.005546106*_D1145+
-0.02049522*_D1146+
0.0026095341*_D1147+
0.0010728989*_D1148+
-0.004888991*_D1149+
-0.00441899*_D1150+
-0.003461921*_D1151+
-0.00035998*_D1152+
-0.003542091*_D1153+
0.0022549223*_D1154+
-0.001865191*_D1155+
0.0083801119*_D1156+
0.0006181657*_D1157+
-0.006412313*_D1158+
0.0068447903*_D1159+
0.0329484539*_D1160+
0.0035678517*_D1161+
0.0093705569*_D1162+
-0.005491177*_D1163+
0.0055313592*_D1164+
-0.00082458*_D1165+
-0.004749949*_D1166+
-0.001496654*_D1167+
0.045111257*_D1168+
0.0013300516*_D1169+
0.01112766*_D1170+
-0.003049545*_D1171+
-0.011988642*_D1172+
-0.0120574*_D1173+
0.0018442473*_D1174+
0.0038012265*_D1175+
-0.009038981*_D1176+
0.0035320936*_D1177+
0.0039581172*_D1178+
-0.014837804*_D1179+
0.0006772926*_D1180+
0.0018500858*_D1181+
-0.003140176*_D1182+
0.0066567416*_D1183+
0.002164568*_D1184+
0.0165593557*_D1185+
-0.002858012*_D1186+
-0.003198227*_D1187+
-0.005983861*_D1188+
-0.007812224*_D1189+
0.2493355518*_D1190+
-0.000282568*_D1191+
-0.001687682*_D1192+
0.0006482109*_D1193+
-0.001619332*_D1194+
0.0019394902*_D1195+
-0.007402067*_D1196+
0.0358299833*_D1197+
-0.005059315*_D1198+
-0.013959761*_D1199+
0.009649878*_D1200+
0.0043477*_D1201+
0.0528915554*_D1202+
-0.002591554*_D1203+
-0.000773042*_D1204;
/****************************************/
* Componente principal 15;
/****************************************/
;
length PC_15 8;
label PC_15 = "Componente principal 15";
PC_15 =
-0.002304565*_D1+
-0.003449996*_D2+
-0.011985925*_D3+
0.0011512196*_D4+
-0.002994797*_D5+
-0.000951081*_D6+
0.0364621227*_D7+
-0.002338978*_D8+
-0.002363887*_D9+
0.0024580922*_D10+
-0.026414477*_D11+
0.0033208986*_D12+
0.0406731207*_D13+
-0.00569745*_D14+
-0.007480122*_D15+
0.1277122355*_D16+
-0.010980061*_D17+
-0.009376215*_D18+
0.0003127674*_D19+
-0.003292884*_D20+
-0.004059663*_D21+
0.0421813934*_D22+
0.013403352*_D23+
0.0195735577*_D24+
-0.004559441*_D25+
-0.000495277*_D26+
-0.001255284*_D27+
0.0890743116*_D28+
-0.005758261*_D29+
0.0017503076*_D30+
-0.02245145*_D31+
-0.020565671*_D32+
0.0007227026*_D33+
-0.016447004*_D34+
0.0088826238*_D35+
-0.000817141*_D36+
-0.001930706*_D37+
-0.010757675*_D38+
0.0123256822*_D39+
-0.009898785*_D40+
0.0185735292*_D41+
0.0056377911*_D42+
0.0152712554*_D43+
-0.000989857*_D44+
-0.002786435*_D45+
-0.010878774*_D46+
-0.029679263*_D47+
-0.007402373*_D48+
-0.018803021*_D49+
-0.01732784*_D50+
-0.002642154*_D51+
0.0011840859*_D52+
-0.015171483*_D53+
-0.020958985*_D54+
-0.006965114*_D55+
-0.000526588*_D56+
0.0006745203*_D57+
0.0026699093*_D58+
-0.001737547*_D59+
0.0022535383*_D60+
0.0108707232*_D61+
-0.001571904*_D62+
0.0078006117*_D63+
0.1087244666*_D64+
-0.000492917*_D65+
-0.01555078*_D66+
-0.002189708*_D67+
0.1114062194*_D68+
0.0072263984*_D69+
-0.012498164*_D70+
0.1794069221*_D71+
0.0271706469*_D72+
-0.005903473*_D73+
-0.008598601*_D74+
-0.001007129*_D75+
-0.008592186*_D76+
-0.103636134*_D77+
-0.008714844*_D78+
0.0009308472*_D79+
0.022912894*_D80+
-0.005323249*_D81+
0.0001842489*_D82+
-0.009981466*_D83+
-0.015779853*_D84+
-0.003256893*_D85+
-0.001648341*_D86+
0.000611996*_D87+
-0.003169999*_D88+
0.0833226146*_D89+
-0.010667973*_D90+
-0.008136052*_D91+
0.0091393315*_D92+
0.0131920357*_D93+
0.0076310992*_D94+
-0.019656502*_D95+
-0.03781459*_D96+
-0.034892046*_D97+
-0.006908322*_D98+
-0.00343912*_D99+
-0.001734368*_D100+
-0.011556257*_D101+
-0.019536034*_D102+
-0.0008709*_D103+
-0.002491064*_D104+
-0.00042721*_D105+
-0.011152764*_D106+
-0.001126443*_D107+
-0.0051017*_D108+
0.003467307*_D109+
0.0016265599*_D110+
-0.010475423*_D111+
-0.007836624*_D112+
-0.007489908*_D113+
0.0037749534*_D114+
0.0007596276*_D115+
0.0056018795*_D116+
-0.00580815*_D117+
-0.010382193*_D118+
0.0040846524*_D119+
-0.009043908*_D120+
-0.006913192*_D121+
-0.019606734*_D122+
0.0192600128*_D123+
-0.019530855*_D124+
-0.005298927*_D125+
-0.005882157*_D126+
-0.011484889*_D127+
-0.005952228*_D128+
0.0067705192*_D129+
-0.004550477*_D130+
0.0002042202*_D131+
-0.002592318*_D132+
-0.012236833*_D133+
-0.000679453*_D134+
0.002616866*_D135+
-0.005183574*_D136+
-0.007066789*_D137+
0.0028808578*_D138+
0.0087933539*_D139+
-0.008158373*_D140+
-0.006406007*_D141+
-0.008247475*_D142+
-0.001556354*_D143+
0.0034106354*_D144+
-0.011548357*_D145+
0.0116355971*_D146+
0.0077545901*_D147+
-0.0118618*_D148+
-0.006977836*_D149+
0.0019273726*_D150+
0.0007560631*_D151+
-0.014421655*_D152+
-0.021883105*_D153+
0.0011682415*_D154+
0.0142071578*_D155+
0.0006297347*_D156+
-0.011781074*_D157+
0.0057527661*_D158+
-0.001450408*_D159+
0.0082050857*_D160+
-0.003087465*_D161+
2.4096496E-6*_D162+
-0.001311524*_D163+
0.0026042241*_D164+
-0.052969161*_D165+
-0.003551327*_D166+
-0.005847309*_D167+
0.0003746107*_D168+
-0.002267717*_D169+
-0.030858559*_D170+
-0.002841325*_D171+
-0.000911656*_D172+
0.0015908089*_D173+
-0.00625428*_D174+
-0.000930615*_D175+
-0.007310957*_D176+
0.0039525489*_D177+
0.0035932532*_D178+
-0.025284843*_D179+
0.0016863079*_D180+
-0.003510962*_D181+
-0.000185936*_D182+
-0.005966748*_D183+
0.0051698882*_D184+
-0.007258935*_D185+
0.0124152448*_D186+
0.0099966117*_D187+
-0.012510695*_D188+
0.0009049587*_D189+
-0.070933263*_D190+
-0.001551837*_D191+
-0.05041383*_D192+
-0.012578026*_D193+
0.0017529745*_D194+
-0.002574122*_D195+
0.0013504478*_D196+
0.0032197066*_D197+
0.0005780689*_D198+
-0.006075669*_D199+
-0.010487982*_D200+
0.0041524798*_D201+
0.0035276342*_D202+
-0.002331731*_D203+
0.0022283077*_D204+
0.016779129*_D205+
0.002335888*_D206+
-0.019822161*_D207+
-0.025382224*_D208+
-0.005238803*_D209+
0.0430721183*_D210+
0.0010203801*_D211+
0.014044625*_D212+
-0.008266935*_D213+
-0.003899881*_D214+
0.0115518619*_D215+
0.0077039422*_D216+
0.0031224264*_D217+
-0.001596478*_D218+
-0.000711895*_D219+
0.0046709437*_D220+
-0.010440639*_D221+
-0.003299158*_D222+
0.0054912166*_D223+
-0.001451439*_D224+
-0.022794005*_D225+
0.0029342713*_D226+
-0.014481062*_D227+
-0.017792984*_D228+
0.0222776176*_D229+
0.0574387064*_D230+
-0.01224172*_D231+
-0.015139877*_D232+
0.0075279492*_D233+
0.0085445905*_D234+
0.003995924*_D235+
-0.004992801*_D236+
0.0053422677*_D237+
0.0015870404*_D238+
-0.001210435*_D239+
0.191475595*_D240+
-0.001430107*_D241+
-0.012779066*_D242+
-0.000980175*_D243+
-0.002608246*_D244+
0.0007988936*_D245+
0.0031653633*_D246+
-0.0186453*_D247+
0.0004231288*_D248+
-0.013567515*_D249+
-0.005018077*_D250+
0.0090755493*_D251+
0.0228789452*_D252+
-0.01038051*_D253+
-0.001652232*_D254+
-0.004216903*_D255+
-0.009478166*_D256+
0.0050973079*_D257+
-0.043211292*_D258+
-0.010230684*_D259+
0.0132475905*_D260+
0.0065755017*_D261+
-0.014595769*_D262+
0.0177663966*_D263+
-0.004856408*_D264+
-0.002255933*_D265+
0.0069143843*_D266+
0.0031873322*_D267+
-0.017570066*_D268+
-0.0328174*_D269+
0.0039858368*_D270+
-0.002447615*_D271+
-0.00328333*_D272+
-0.004362781*_D273+
-0.000422374*_D274+
0.0219431673*_D275+
0.0031345801*_D276+
-0.014789293*_D277+
-0.019562491*_D278+
-0.033546795*_D279+
-0.003018136*_D280+
-0.00587534*_D281+
-0.015692316*_D282+
-0.012422982*_D283+
-0.002872667*_D284+
-0.000559328*_D285+
-0.024882676*_D286+
-0.001175859*_D287+
-0.005499086*_D288+
0.0065048588*_D289+
-0.000069497*_D290+
-0.002015182*_D291+
0.0057878799*_D292+
0.00557474*_D293+
-0.004494962*_D294+
-0.029693667*_D295+
-0.014995357*_D296+
-0.01033308*_D297+
-0.001533499*_D298+
-0.004310921*_D299+
0.0137444602*_D300+
-0.003967605*_D301+
-0.001873893*_D302+
-0.004502249*_D303+
-0.002993259*_D304+
-0.028598501*_D305+
-0.006658314*_D306+
0.0064789454*_D307+
-0.00899247*_D308+
0.009441221*_D309+
0.029685968*_D310+
-0.011110682*_D311+
0.0008629512*_D312+
-0.007682836*_D313+
-0.009736775*_D314+
-0.000592978*_D315+
0.3347043464*_D316+
-0.00229872*_D317+
-0.003610422*_D318+
-0.003457065*_D319+
-0.028166047*_D320+
-0.006175073*_D321+
-0.001753312*_D322+
-0.002802752*_D323+
-0.003592602*_D324+
0.0245651927*_D325+
0.0113950701*_D326+
0.0021397956*_D327+
0.0029500115*_D328+
0.0024697783*_D329+
0.0086314561*_D330+
-0.006722464*_D331+
-0.013040717*_D332+
-0.01159593*_D333+
-0.017042379*_D334+
-0.00749174*_D335+
-0.000459015*_D336+
-0.065857616*_D337+
-0.005168823*_D338+
-0.005376996*_D339+
-0.002316456*_D340+
-0.005262575*_D341+
-0.015120036*_D342+
0.0001889665*_D343+
-0.003285829*_D344+
-0.003659831*_D345+
-0.004114909*_D346+
-0.016457913*_D347+
-0.010299353*_D348+
0.0020877075*_D349+
-0.002086654*_D350+
-0.011364102*_D351+
0.0002912271*_D352+
0.0000131172*_D353+
0.0133699911*_D354+
-0.006277235*_D355+
-0.023341274*_D356+
0.0005644179*_D357+
-0.008409536*_D358+
-0.001503716*_D359+
-0.000635586*_D360+
0.000562357*_D361+
0.0282518198*_D362+
-0.00114746*_D363+
-0.00176127*_D364+
-0.00848848*_D365+
-0.002003975*_D366+
0.0024122964*_D367+
-0.009503672*_D368+
-0.015027271*_D369+
0.002938825*_D370+
-0.002926766*_D371+
0.0016749045*_D372+
-0.006548193*_D373+
0.0016626239*_D374+
-0.000394826*_D375+
-0.002192901*_D376+
0.010583837*_D377+
0.000498713*_D378+
-0.006553028*_D379+
0.0019247653*_D380+
-0.001391116*_D381+
-0.00245307*_D382+
-0.007037053*_D383+
-0.004007306*_D384+
0.0029104212*_D385+
0.0005282282*_D386+
-0.004944518*_D387+
-0.001336582*_D388+
-0.008846861*_D389+
-0.005638976*_D390+
-0.005188648*_D391+
-0.015261468*_D392+
-0.004864558*_D393+
0.0088935195*_D394+
-0.005953315*_D395+
-0.002089517*_D396+
0.0049882418*_D397+
-0.002741394*_D398+
-0.007011566*_D399+
0.0213124529*_D400+
-0.013055128*_D401+
-0.001939913*_D402+
-0.013109302*_D403+
0.0133261121*_D404+
-0.003866516*_D405+
0.0106029437*_D406+
-0.007290607*_D407+
-0.004011643*_D408+
-0.002279773*_D409+
-0.011826166*_D410+
-0.013976835*_D411+
-0.011877414*_D412+
-0.005437946*_D413+
0.0010182121*_D414+
0.0035095381*_D415+
0.0127239494*_D416+
-0.001373283*_D417+
-0.014365626*_D418+
0.0025755622*_D419+
-0.000726541*_D420+
-0.005464827*_D421+
0.0004485515*_D422+
-0.008075093*_D423+
-0.000201998*_D424+
-0.008759075*_D425+
-0.01164219*_D426+
-0.003268591*_D427+
-0.005653718*_D428+
0.0012798332*_D429+
-0.002016128*_D430+
-0.003036508*_D431+
0.0000866235*_D432+
0.0031897494*_D433+
-0.006203295*_D434+
0.3581715339*_D435+
0.0145639144*_D436+
0.0357081625*_D437+
-0.003592384*_D438+
0.0047081405*_D439+
-0.03974031*_D440+
0.0015101214*_D441+
-0.000720807*_D442+
-0.003222316*_D443+
-0.008847591*_D444+
-0.004444278*_D445+
-0.016727725*_D446+
0.0072052504*_D447+
0.0002121782*_D448+
-0.019694777*_D449+
0.0976675123*_D450+
0.012393814*_D451+
-0.006211058*_D452+
-0.00846301*_D453+
-0.002657811*_D454+
0.0008460303*_D455+
-0.019524089*_D456+
-0.002730742*_D457+
-0.006908944*_D458+
-0.005755141*_D459+
0.006076676*_D460+
-0.03542881*_D461+
-0.006789714*_D462+
0.0004795099*_D463+
-0.008686744*_D464+
0.000677318*_D465+
-0.001814338*_D466+
-0.000922444*_D467+
-0.002106415*_D468+
0.0012351056*_D469+
0.0027569732*_D470+
0.0042149435*_D471+
0.0031781535*_D472+
0.0094082095*_D473+
-0.006231989*_D474+
0.0042287001*_D475+
-0.003117921*_D476+
-0.001924773*_D477+
-0.008424414*_D478+
-0.008150514*_D479+
-0.002264958*_D480+
-0.004539847*_D481+
-0.00269191*_D482+
-0.007366868*_D483+
-0.025167579*_D484+
-0.006752198*_D485+
0.0052099534*_D486+
0.0008667277*_D487+
0.0020695996*_D488+
-0.001264387*_D489+
0.0039365607*_D490+
0.0039280128*_D491+
0.0435379053*_D492+
0.0005546255*_D493+
-0.002301233*_D494+
-0.008857887*_D495+
-0.000820513*_D496+
0.0166386622*_D497+
0.0073420997*_D498+
0.0023635044*_D499+
-0.013547697*_D500+
-0.016569108*_D501+
-0.005898224*_D502+
0.0051750545*_D503+
-0.003637884*_D504+
-0.028321218*_D505+
-0.025935539*_D506+
0.0041593614*_D507+
0.2621822557*_D508+
-0.004941724*_D509+
0.0016697317*_D510+
0.0024762208*_D511+
0.0002024573*_D512+
0.0042032603*_D513+
-0.003678613*_D514+
0.0017944305*_D515+
-0.00360661*_D516+
0.0161192276*_D517+
-0.018504761*_D518+
0.0235506596*_D519+
-0.005021052*_D520+
-0.035956082*_D521+
0.0163586207*_D522+
0.0569792599*_D523+
-0.009548284*_D524+
-0.013880176*_D525+
0.0002886443*_D526+
0.0886292847*_D527+
-0.007109468*_D528+
-0.014701295*_D529+
-0.010185275*_D530+
-0.015534856*_D531+
0.005005946*_D532+
0.0047470693*_D533+
-0.002859534*_D534+
0.0009206667*_D535+
-0.004019807*_D536+
-0.000874838*_D537+
0.0093960323*_D538+
0.0023141799*_D539+
-0.001935075*_D540+
-0.004107482*_D541+
-0.018097849*_D542+
-0.015079387*_D543+
-0.000235349*_D544+
-0.006674999*_D545+
-0.006733205*_D546+
-0.010877605*_D547+
-0.028758918*_D548+
-0.014360593*_D549+
0.0035024152*_D550+
-0.001743321*_D551+
-0.00195092*_D552+
0.0018191158*_D553+
0.0004560579*_D554+
-0.003178002*_D555+
-0.002016344*_D556+
-0.002233904*_D557+
-0.023715717*_D558+
-0.011052605*_D559+
-0.015788092*_D560+
-0.001886812*_D561+
-0.002743522*_D562+
-0.000311056*_D563+
-0.004197165*_D564+
-0.001971692*_D565+
0.0155859061*_D566+
0.0182427496*_D567+
-0.002522204*_D568+
-0.012727057*_D569+
-0.010731742*_D570+
-0.008523046*_D571+
0.2504576106*_D572+
0.0080804807*_D573+
-0.00044093*_D574+
-0.013568485*_D575+
0.0145198482*_D576+
0.0092502735*_D577+
-0.004223451*_D578+
-0.00053744*_D579+
-0.001725719*_D580+
0.0031672579*_D581+
-0.005381679*_D582+
-0.001857251*_D583+
-0.006524386*_D584+
-0.00046512*_D585+
0.0294639732*_D586+
-0.002414829*_D587+
0.0024736141*_D588+
-0.002065681*_D589+
-0.005896501*_D590+
-0.003005632*_D591+
0.0046599164*_D592+
-0.00240071*_D593+
0.0234473165*_D594+
0.0043466832*_D595+
-0.031311711*_D596+
0.0053415361*_D597+
0.003855187*_D598+
-0.002553261*_D599+
-0.000430764*_D600+
-0.009797891*_D601+
-0.002872315*_D602+
0.0063984717*_D603+
0.038538609*_D604+
0.001510187*_D605+
0.0050790983*_D606+
-0.002121698*_D607+
-0.010500277*_D608+
-0.010322528*_D609+
-0.009012878*_D610+
0.0046886745*_D611+
-0.02110645*_D612+
-0.00324779*_D613+
-0.0059882*_D614+
0.0018565102*_D615+
0.0003896622*_D616+
0.0067635475*_D617+
0.0012212853*_D618+
-0.017681936*_D619+
0.0012597683*_D620+
-0.002341923*_D621+
-0.009100912*_D622+
-0.002988255*_D623+
-0.015792696*_D624+
0.0323525416*_D625+
0.0425065595*_D626+
-0.002630649*_D627+
0.0017659006*_D628+
0.0014016531*_D629+
-0.005079413*_D630+
-0.001605176*_D631+
-0.025028114*_D632+
-0.006259478*_D633+
-0.004675282*_D634+
0.0101958521*_D635+
-0.015143045*_D636+
-0.004390811*_D637+
-0.010700706*_D638+
-0.016269672*_D639+
0.0005462881*_D640+
-0.002108986*_D641+
-0.001426487*_D642+
-0.007989571*_D643+
-0.003294996*_D644+
0.0833361261*_D645+
-0.011435198*_D646+
-0.009169714*_D647+
-0.001098753*_D648+
0.0058477576*_D649+
-0.003704673*_D650+
-0.001607647*_D651+
-0.001995705*_D652+
-0.008148008*_D653+
-0.000577139*_D654+
-0.020728573*_D655+
0.0029507904*_D656+
-0.0046646*_D657+
-0.005322751*_D658+
0.0061104229*_D659+
-0.007595059*_D660+
-0.001659724*_D661+
0.2175581797*_D662+
0.0035953143*_D663+
-0.006735734*_D664+
-0.016972192*_D665+
0.0043175233*_D666+
-0.002209846*_D667+
0.000272498*_D668+
-0.012991238*_D669+
-0.003223128*_D670+
-0.000365674*_D671+
-0.006403004*_D672+
-0.003987536*_D673+
-0.01008888*_D674+
-0.010752966*_D675+
-0.00152442*_D676+
-0.01905948*_D677+
-0.037505594*_D678+
-0.000203595*_D679+
-0.012092975*_D680+
-0.000456422*_D681+
0.0013873219*_D682+
0.0303759289*_D683+
-0.030555581*_D684+
0.0001304502*_D685+
-0.000459771*_D686+
-0.009978549*_D687+
-0.002588873*_D688+
0.00300217*_D689+
0.0060331565*_D690+
-0.008527948*_D691+
-0.003348568*_D692+
-0.001874065*_D693+
0.0026701048*_D694+
-0.005144293*_D695+
-0.009487698*_D696+
0.0001205859*_D697+
0.0005610681*_D698+
0.0013379946*_D699+
-0.000205155*_D700+
0.0000892085*_D701+
0.0100050002*_D702+
-0.008101763*_D703+
-0.002520736*_D704+
-0.02049284*_D705+
-0.002638021*_D706+
-0.014103014*_D707+
-0.011170908*_D708+
-0.016377363*_D709+
0.0355157917*_D710+
-0.019512263*_D711+
-0.009645026*_D712+
0.0109973195*_D713+
0.0010531073*_D714+
0.0037731577*_D715+
0.0062268763*_D716+
-0.051985234*_D717+
-0.002811684*_D718+
0.0038205812*_D719+
-0.0014261*_D720+
0.0114210735*_D721+
-0.008853478*_D722+
0.0023671327*_D723+
-0.026510458*_D724+
-0.006612539*_D725+
-0.00171412*_D726+
-0.003469745*_D727+
-0.001652508*_D728+
-0.003723526*_D729+
0.0015384632*_D730+
-0.011704946*_D731+
0.0004154709*_D732+
-0.005612234*_D733+
0.0056788904*_D734+
-0.006226437*_D735+
-0.005825482*_D736+
0.0005421607*_D737+
-0.008360504*_D738+
-0.006221525*_D739+
0.0145905721*_D740+
-0.008417077*_D741+
-0.014681248*_D742+
-0.003185133*_D743+
-0.009289159*_D744+
-0.002326926*_D745+
-0.001778241*_D746+
-0.00724462*_D747+
-0.013395257*_D748+
0.0958579121*_D749+
-0.038933628*_D750+
-0.02209377*_D751+
-0.012987991*_D752+
-0.003609378*_D753+
0.0426780963*_D754+
-0.002009657*_D755+
-0.001743797*_D756+
-0.00685926*_D757+
-0.000093615*_D758+
-0.005646273*_D759+
-0.002098205*_D760+
-0.004063408*_D761+
-0.022253477*_D762+
0.0033089149*_D763+
-0.002439957*_D764+
-0.007185094*_D765+
0.0059325713*_D766+
0.0172885201*_D767+
0.0167190524*_D768+
-0.007648079*_D769+
-0.000397457*_D770+
-0.001599269*_D771+
-0.009857902*_D772+
0.004785332*_D773+
-0.002390654*_D774+
0.068886493*_D775+
-0.020799014*_D776+
-0.003390958*_D777+
-0.002226301*_D778+
0.0022277996*_D779+
-0.003754961*_D780+
-0.016025653*_D781+
-0.00151666*_D782+
-0.017778785*_D783+
-0.003846544*_D784+
-0.006160639*_D785+
-0.017129354*_D786+
-0.030578278*_D787+
-0.004862348*_D788+
-0.005307811*_D789+
-0.002952797*_D790+
-0.006981926*_D791+
-0.01675446*_D792+
-0.009811496*_D793+
0.0080303299*_D794+
-0.005843912*_D795+
-0.004321328*_D796+
-0.004154568*_D797+
-0.004141128*_D798+
0.008057934*_D799+
-0.001321084*_D800+
-0.006308939*_D801+
-0.003014777*_D802+
0.0095253423*_D803+
-0.011857231*_D804+
-0.002777027*_D805+
0.0071378836*_D806+
0.0109291337*_D807+
-0.020140119*_D808+
-0.027078924*_D809+
-0.009184027*_D810+
-0.003620609*_D811+
-0.007050044*_D812+
-0.004998163*_D813+
-0.001652106*_D814+
-0.019847976*_D815+
-0.002117815*_D816+
-0.001162405*_D817+
-0.007679026*_D818+
0.0221201694*_D819+
-0.007480479*_D820+
-0.002191982*_D821+
-0.011613405*_D822+
-0.010133947*_D823+
-0.007276865*_D824+
-0.016470085*_D825+
0.1123751939*_D826+
-0.009495991*_D827+
-0.039748437*_D828+
0.0072369845*_D829+
0.0005705758*_D830+
0.0058970975*_D831+
-0.001803298*_D832+
0.0036402536*_D833+
-0.003901751*_D834+
0.002827261*_D835+
-0.007631915*_D836+
0.0024397944*_D837+
0.0000457128*_D838+
-0.006331939*_D839+
-0.004214262*_D840+
0.0007538356*_D841+
0.0019518654*_D842+
-0.010556633*_D843+
-0.008953331*_D844+
-0.00915586*_D845+
0.0022182072*_D846+
0.1578608402*_D847+
0.0130367677*_D848+
-0.008768942*_D849+
0.0744188227*_D850+
0.2410247404*_D851+
-0.009235599*_D852+
-0.015757323*_D853+
0.0093225576*_D854+
-0.00080578*_D855+
-0.000936289*_D856+
-0.007513478*_D857+
-0.000422478*_D858+
-0.002170974*_D859+
-0.012541584*_D860+
-0.003391534*_D861+
-0.003979256*_D862+
0.0013571655*_D863+
-0.003588548*_D864+
-0.003808116*_D865+
-0.00136255*_D866+
0.000206349*_D867+
-0.00250554*_D868+
0.0490283176*_D869+
-0.107458364*_D870+
0.0048914605*_D871+
0.0134561318*_D872+
-0.003490731*_D873+
0.0039947869*_D874+
-0.000371725*_D875+
-0.002908916*_D876+
-0.011960671*_D877+
-0.001726241*_D878+
-0.002733692*_D879+
-0.008749918*_D880+
0.0006870584*_D881+
0.0107932674*_D882+
-0.009363966*_D883+
-0.004851661*_D884+
0.0268464732*_D885+
-0.002078482*_D886+
-0.019972016*_D887+
-0.017449998*_D888+
0.0002610825*_D889+
0.0058993508*_D890+
0.0008164449*_D891+
-0.001058161*_D892+
-0.008609152*_D893+
-0.001156696*_D894+
0.0237899819*_D895+
-0.003403155*_D896+
-0.009979916*_D897+
-0.002696318*_D898+
0.0024257308*_D899+
0.0001861036*_D900+
-0.001990724*_D901+
-0.003871989*_D902+
0.0003819439*_D903+
-0.00178363*_D904+
-0.010435338*_D905+
-0.00018324*_D906+
-0.000297588*_D907+
0.0013946141*_D908+
-0.008889963*_D909+
0.0022277996*_D910+
-0.006095487*_D911+
-0.019686199*_D912+
-0.000301286*_D913+
-0.001147422*_D914+
0.0130166741*_D915+
-0.010217251*_D916+
0.0686360777*_D917+
-0.007536211*_D918+
0.0159225969*_D919+
-0.005528439*_D920+
-0.009882337*_D921+
-0.003646504*_D922+
0.0044638391*_D923+
-0.027384545*_D924+
-0.004578601*_D925+
-0.001382296*_D926+
0.069410089*_D927+
-0.022239626*_D928+
-0.009759958*_D929+
-0.019582413*_D930+
-0.012930257*_D931+
-0.004968933*_D932+
0.0015496424*_D933+
-0.004518726*_D934+
-0.003564742*_D935+
-0.002023559*_D936+
-0.004933134*_D937+
0.0531155955*_D938+
-0.004165905*_D939+
-0.034340065*_D940+
0.0023928707*_D941+
0.0267695922*_D942+
0.0054770684*_D943+
0.0004110677*_D944+
0.0020563375*_D945+
0.0011170925*_D946+
0.0018217319*_D947+
-0.000323236*_D948+
-0.006503662*_D949+
-0.010943252*_D950+
0.0002116119*_D951+
-0.059396004*_D952+
-0.00900653*_D953+
0.003198309*_D954+
-0.001028676*_D955+
-0.02080127*_D956+
-0.002166587*_D957+
-0.008079016*_D958+
0.0068163355*_D959+
-0.020318915*_D960+
0.0003076588*_D961+
0.0071154636*_D962+
-0.000485651*_D963+
-0.001997547*_D964+
0.0017961628*_D965+
-0.006621482*_D966+
-0.003295186*_D967+
0.0062886046*_D968+
0.0095307153*_D969+
-0.050251206*_D970+
-0.004761461*_D971+
0.0009682894*_D972+
-0.076905954*_D973+
-0.000978187*_D974+
0.0070567766*_D975+
-0.002588984*_D976+
-0.011668727*_D977+
0.0085412278*_D978+
-0.008326183*_D979+
-0.000418767*_D980+
-0.003263902*_D981+
-0.004772745*_D982+
-0.006555518*_D983+
-0.006356407*_D984+
-0.004230547*_D985+
0.0009539041*_D986+
-0.000745744*_D987+
0.0024081089*_D988+
-0.004128573*_D989+
-0.001854694*_D990+
-0.007888047*_D991+
-0.014043054*_D992+
-0.005415769*_D993+
-0.008341277*_D994+
0.0017011386*_D995+
-0.005017931*_D996+
-0.005815006*_D997+
0.0050196703*_D998+
-0.01701382*_D999+
0.0011606684*_D1000+
-0.012784056*_D1001+
-0.017175173*_D1002+
-0.002543838*_D1003+
-0.017407117*_D1004+
-0.006206661*_D1005+
-0.002083076*_D1006+
-0.003685101*_D1007+
-0.01008646*_D1008+
-0.00528489*_D1009+
-0.003638754*_D1010+
0.0219788152*_D1011+
-0.007409362*_D1012+
-0.008027144*_D1013+
0.0539859589*_D1014+
-0.004361375*_D1015+
0.0573818543*_D1016+
-0.001810801*_D1017+
-0.002308213*_D1018+
0.0005708265*_D1019+
0.0042648542*_D1020+
-0.00346032*_D1021+
0.0059060097*_D1022+
0.0025881943*_D1023+
0.0183299869*_D1024+
-0.001877059*_D1025+
-0.010204469*_D1026+
-0.004652469*_D1027+
-0.017486975*_D1028+
-0.005471481*_D1029+
0.0027700608*_D1030+
0.0021988752*_D1031+
-0.009626274*_D1032+
-0.005806398*_D1033+
0.0069428037*_D1034+
0.0075004734*_D1035+
-0.003326357*_D1036+
0.0033330494*_D1037+
-0.013987429*_D1038+
0.0206420501*_D1039+
0.0074115773*_D1040+
-0.003281344*_D1041+
0.0102233683*_D1042+
-0.002102126*_D1043+
0.000969261*_D1044+
-0.096475616*_D1045+
0.0038983275*_D1046+
0.0072662749*_D1047+
-0.000070916*_D1048+
0.0256346135*_D1049+
-0.030723285*_D1050+
0.002408928*_D1051+
-0.006819436*_D1052+
0.0003119136*_D1053+
-0.014267133*_D1054+
-0.004892401*_D1055+
0.0008620863*_D1056+
-0.006390476*_D1057+
0.0095936944*_D1058+
0.04403041*_D1059+
0.0074983046*_D1060+
0.0424794688*_D1061+
0.0194304305*_D1062+
-0.00655688*_D1063+
0.0036455281*_D1064+
-0.003042426*_D1065+
0.0134702459*_D1066+
-0.002069644*_D1067+
-0.002348359*_D1068+
-0.003040757*_D1069+
0.0135913453*_D1070+
-0.010117224*_D1071+
0.0021880356*_D1072+
-0.00067332*_D1073+
-0.003534576*_D1074+
-0.006600793*_D1075+
-0.000481838*_D1076+
0.0074636751*_D1077+
-0.009570809*_D1078+
-0.009542451*_D1079+
0.0027354715*_D1080+
0.0122877499*_D1081+
-0.004333451*_D1082+
-0.004933486*_D1083+
-0.008885433*_D1084+
0.003498036*_D1085+
0.0077352779*_D1086+
-0.006569379*_D1087+
0.0101259682*_D1088+
5.7462878E-6*_D1089+
0.0217218352*_D1090+
-0.001888594*_D1091+
-0.000211789*_D1092+
-0.006213913*_D1093+
0.0001439002*_D1094+
0.00732073*_D1095+
-0.008194634*_D1096+
0.0037282809*_D1097+
0.0044243429*_D1098+
-0.007272227*_D1099+
0.0028053628*_D1100+
-0.001268244*_D1101+
-0.010143693*_D1102+
0.0143121285*_D1103+
-0.003929822*_D1104+
0.0065635115*_D1105+
-0.000162293*_D1106+
-0.001513128*_D1107+
0.0021686*_D1108+
-0.01089421*_D1109+
0.002599509*_D1110+
-0.018235577*_D1111+
-0.009255162*_D1112+
0.0017749538*_D1113+
0.000535861*_D1114+
0.0079010581*_D1115+
-0.0116972*_D1116+
-0.007947583*_D1117+
-0.004206422*_D1118+
0.0028008839*_D1119+
-0.00442924*_D1120+
-0.007439526*_D1121+
0.0669766697*_D1122+
0.0398731958*_D1123+
-0.004802317*_D1124+
-0.038576719*_D1125+
-0.00576754*_D1126+
-0.026739475*_D1127+
-0.000824431*_D1128+
-0.032714084*_D1129+
-0.004024658*_D1130+
-0.004328288*_D1131+
0.0082666645*_D1132+
-0.008870482*_D1133+
0.0044910063*_D1134+
-0.004773724*_D1135+
-0.003713441*_D1136+
0.01838068*_D1137+
-0.016703764*_D1138+
-0.003887804*_D1139+
-0.004984122*_D1140+
-0.006580476*_D1141+
-0.002464587*_D1142+
-0.06654241*_D1143+
-0.003904326*_D1144+
-0.006536193*_D1145+
-0.031861615*_D1146+
0.002033069*_D1147+
-0.004595866*_D1148+
-0.003698689*_D1149+
-0.010355053*_D1150+
-0.002307898*_D1151+
-0.002986821*_D1152+
-0.007441603*_D1153+
-0.002953473*_D1154+
-0.003343358*_D1155+
0.010712888*_D1156+
0.0078520068*_D1157+
-0.012809149*_D1158+
-0.006967896*_D1159+
0.0074927983*_D1160+
-0.004488667*_D1161+
-0.002413264*_D1162+
-0.003556568*_D1163+
-0.001394937*_D1164+
0.0015489557*_D1165+
0.00087531*_D1166+
-0.004704992*_D1167+
0.148332442*_D1168+
-0.009403552*_D1169+
0.0059122188*_D1170+
-0.015285047*_D1171+
-0.049157989*_D1172+
0.1075866146*_D1173+
-0.000549404*_D1174+
-0.002312301*_D1175+
-0.022775337*_D1176+
-0.002061916*_D1177+
-0.017083719*_D1178+
0.0083130983*_D1179+
0.0001134577*_D1180+
-0.00215096*_D1181+
0.004194567*_D1182+
0.0105429212*_D1183+
-0.001633284*_D1184+
0.009520969*_D1185+
0.0008212171*_D1186+
0.0002114972*_D1187+
-0.011381321*_D1188+
-0.012542508*_D1189+
0.0500551652*_D1190+
-0.011335084*_D1191+
-0.009514323*_D1192+
-0.00371405*_D1193+
-0.00656374*_D1194+
-0.002862063*_D1195+
-0.002561429*_D1196+
0.0106729066*_D1197+
-0.001848593*_D1198+
-0.006880662*_D1199+
-0.004480992*_D1200+
0.0020114433*_D1201+
0.1952864111*_D1202+
0.0004691552*_D1203+
0.0018939181*_D1204;
/****************************************/
* Componente principal 16;
/****************************************/
;
length PC_16 8;
label PC_16 = "Componente principal 16";
PC_16 =
0.0031039557*_D1+
-0.000648313*_D2+
0.0015046263*_D3+
-0.006226694*_D4+
-0.006757742*_D5+
-0.000230818*_D6+
-0.033075806*_D7+
0.0083565415*_D8+
0.0009596251*_D9+
0.0113319029*_D10+
-0.000193609*_D11+
0.0096858683*_D12+
0.012531307*_D13+
-0.00391746*_D14+
0.0002688573*_D15+
-0.043529831*_D16+
0.0015381591*_D17+
-0.002132179*_D18+
0.0007536165*_D19+
0.00166245*_D20+
0.0047321876*_D21+
0.0999257332*_D22+
0.0083446828*_D23+
-0.002792113*_D24+
0.0018196376*_D25+
0.0046208424*_D26+
0.0047691444*_D27+
-0.063540627*_D28+
-0.000971673*_D29+
0.0082035098*_D30+
-0.009571618*_D31+
-0.005005978*_D32+
0.001335393*_D33+
-0.00122249*_D34+
0.0268260357*_D35+
-0.001217348*_D36+
0.0035035494*_D37+
0.0107039254*_D38+
-0.001747871*_D39+
0.0058313201*_D40+
-0.027814886*_D41+
0.0178017696*_D42+
0.0127290151*_D43+
0.0021725973*_D44+
0.011174368*_D45+
0.0070231935*_D46+
-0.010475521*_D47+
0.0068356372*_D48+
0.0058460078*_D49+
-0.005797638*_D50+
0.0028158125*_D51+
-0.000546096*_D52+
-0.037191145*_D53+
-0.01026987*_D54+
0.0086312765*_D55+
-0.000581852*_D56+
-0.010219458*_D57+
0.0023098546*_D58+
-0.001337106*_D59+
-0.018380878*_D60+
-0.034952882*_D61+
-0.004316569*_D62+
0.0020268286*_D63+
-0.070058001*_D64+
-0.00294389*_D65+
-0.002471352*_D66+
0.0002488242*_D67+
-0.058401484*_D68+
0.0338119994*_D69+
-0.002877394*_D70+
-0.120571563*_D71+
-0.013298058*_D72+
0.0011132043*_D73+
-0.017108213*_D74+
0.0056127597*_D75+
0.0081495781*_D76+
-0.035720648*_D77+
0.0017569974*_D78+
-0.009783335*_D79+
0.0492241566*_D80+
0.0068038394*_D81+
-0.005919239*_D82+
0.0023820237*_D83+
-0.000721774*_D84+
-0.034085594*_D85+
0.0192436513*_D86+
0.003524446*_D87+
0.0028887713*_D88+
-0.125425556*_D89+
0.0000206949*_D90+
0.0020969114*_D91+
-0.006692271*_D92+
0.0181429752*_D93+
0.0232777984*_D94+
0.0050237477*_D95+
-0.160660698*_D96+
0.0075259497*_D97+
-0.001487426*_D98+
0.0035202571*_D99+
0.0083620165*_D100+
-0.004262004*_D101+
0.0052255557*_D102+
0.0087997125*_D103+
-0.008386698*_D104+
0.0074440448*_D105+
-0.002146173*_D106+
0.0080977104*_D107+
0.0005049878*_D108+
-0.005555405*_D109+
0.0230169921*_D110+
-0.014862162*_D111+
0.012377857*_D112+
0.0077195182*_D113+
-0.004087669*_D114+
0.0010105381*_D115+
-0.001705612*_D116+
-0.003339052*_D117+
-0.021667134*_D118+
0.0006620931*_D119+
0.0022205691*_D120+
-0.012451276*_D121+
-0.005761294*_D122+
-0.022200973*_D123+
-0.019525576*_D124+
-0.035804946*_D125+
-0.003354919*_D126+
0.0058957409*_D127+
-0.003112193*_D128+
0.0018879518*_D129+
-0.00686773*_D130+
0.0246910744*_D131+
0.0106428238*_D132+
0.0095169357*_D133+
0.0401887805*_D134+
0.047161322*_D135+
0.0024813485*_D136+
-0.006678868*_D137+
-0.002512643*_D138+
-0.006932646*_D139+
-0.035049909*_D140+
0.0063445612*_D141+
0.0113140237*_D142+
0.0052609726*_D143+
-0.04484935*_D144+
0.0200579805*_D145+
-0.022598526*_D146+
0.0100884687*_D147+
0.004661611*_D148+
0.0020657807*_D149+
-0.009241164*_D150+
0.0049908716*_D151+
0.0084056592*_D152+
-0.011552939*_D153+
-0.004953362*_D154+
-0.01656635*_D155+
-0.014891152*_D156+
-0.006611391*_D157+
0.0059605348*_D158+
-0.010634244*_D159+
0.0068028576*_D160+
0.000301833*_D161+
0.00171876*_D162+
0.0035786103*_D163+
0.0199609026*_D164+
-0.015149839*_D165+
0.0021789695*_D166+
-0.000957399*_D167+
-0.003019841*_D168+
0.0069820603*_D169+
0.0168909879*_D170+
0.0026753528*_D171+
-0.003451895*_D172+
0.0186530505*_D173+
-0.017039687*_D174+
0.0135764503*_D175+
0.0049212598*_D176+
0.0032476573*_D177+
0.008478872*_D178+
0.0203434002*_D179+
0.0155174005*_D180+
-0.006754071*_D181+
-0.002151304*_D182+
-0.008029605*_D183+
-0.013066431*_D184+
0.003474278*_D185+
0.0110089391*_D186+
-0.010285651*_D187+
0.0031559889*_D188+
-0.012493929*_D189+
-0.020876308*_D190+
-0.001634189*_D191+
0.0188180352*_D192+
-0.005477947*_D193+
0.0079555095*_D194+
-0.003595076*_D195+
0.0057321665*_D196+
-0.000277023*_D197+
0.0016950145*_D198+
0.0079145047*_D199+
0.0051447838*_D200+
-0.000046521*_D201+
-0.025961589*_D202+
-0.002319602*_D203+
-0.010904817*_D204+
0.0034115146*_D205+
0.002653407*_D206+
-0.006638924*_D207+
0.0088919909*_D208+
0.008187508*_D209+
-0.047792526*_D210+
0.0168894905*_D211+
0.0022361101*_D212+
0.0062993234*_D213+
-0.003254812*_D214+
0.0281208285*_D215+
0.0575676879*_D216+
0.0087511675*_D217+
-0.001797585*_D218+
0.001497979*_D219+
0.0278678044*_D220+
-0.001721643*_D221+
0.002589312*_D222+
-0.003120761*_D223+
0.0074422091*_D224+
-0.012064087*_D225+
-0.000694253*_D226+
-0.003471003*_D227+
-0.007473595*_D228+
0.0576192506*_D229+
-0.029223928*_D230+
0.0031090932*_D231+
0.0027980743*_D232+
0.0459233608*_D233+
-0.013169534*_D234+
-0.003735129*_D235+
0.0001840204*_D236+
-0.002078269*_D237+
0.00265204*_D238+
0.003408662*_D239+
-0.130001773*_D240+
-0.002863426*_D241+
0.0120218706*_D242+
0.0153704902*_D243+
0.0090243348*_D244+
0.0113196542*_D245+
-0.001413583*_D246+
0.0022500426*_D247+
-0.008132895*_D248+
0.0186472552*_D249+
-0.005574928*_D250+
0.00413637*_D251+
0.0526336778*_D252+
-0.005583315*_D253+
0.0031762199*_D254+
0.0072077937*_D255+
0.0047856661*_D256+
0.0034635879*_D257+
0.0067525131*_D258+
0.0126624583*_D259+
0.0226095848*_D260+
-0.007032978*_D261+
-0.001831473*_D262+
-0.016923317*_D263+
0.0009450026*_D264+
-0.001256999*_D265+
-0.014662922*_D266+
-0.00561933*_D267+
-0.003977869*_D268+
0.0053080767*_D269+
-0.018486141*_D270+
0.001113474*_D271+
0.0032926718*_D272+
-0.010583365*_D273+
0.0009556769*_D274+
-0.045868927*_D275+
0.0060668211*_D276+
-0.003762845*_D277+
0.0109878868*_D278+
-0.012979112*_D279+
-0.003284937*_D280+
0.0068480554*_D281+
0.011034245*_D282+
0.0332261833*_D283+
0.0042100922*_D284+
0.0119153823*_D285+
-0.011919417*_D286+
0.0238631367*_D287+
-0.003249428*_D288+
0.00917708*_D289+
0.0008495967*_D290+
0.0031640498*_D291+
0.0172741616*_D292+
0.0248426831*_D293+
0.0084533845*_D294+
-0.00823248*_D295+
0.0169964709*_D296+
-0.004944445*_D297+
0.0014809341*_D298+
0.0009908075*_D299+
-0.019716611*_D300+
0.0005341803*_D301+
0.0081747051*_D302+
0.0413598854*_D303+
0.0065581526*_D304+
0.0158790521*_D305+
-0.014075734*_D306+
0.0247148368*_D307+
0.0054923999*_D308+
0.0555077294*_D309+
-0.000702006*_D310+
0.0104753938*_D311+
-0.000460483*_D312+
0.0027065344*_D313+
0.0019330075*_D314+
0.0018115046*_D315+
-0.023080821*_D316+
0.0026616619*_D317+
-0.011541536*_D318+
-0.002962811*_D319+
-0.006663297*_D320+
-0.000830688*_D321+
0.0067248105*_D322+
0.0317142266*_D323+
-0.000117142*_D324+
0.1429449539*_D325+
-0.002994769*_D326+
-0.001604612*_D327+
0.0114960391*_D328+
0.0116643769*_D329+
-0.018792648*_D330+
0.0042937744*_D331+
-0.004636942*_D332+
0.0170006698*_D333+
-0.077817737*_D334+
0.0436549757*_D335+
0.0256687955*_D336+
-0.100824401*_D337+
0.0012678825*_D338+
-0.038021611*_D339+
-0.01466837*_D340+
0.0019617104*_D341+
0.0070173042*_D342+
0.003811085*_D343+
-0.004881765*_D344+
-0.000106868*_D345+
0.0030295144*_D346+
-0.002347098*_D347+
0.0048002047*_D348+
-0.000723889*_D349+
0.0007480326*_D350+
0.0051010198*_D351+
-0.009091267*_D352+
-0.000287673*_D353+
0.0036877468*_D354+
-0.001872111*_D355+
0.0323263588*_D356+
0.0259395633*_D357+
-0.00397808*_D358+
-0.003656561*_D359+
0.0101226349*_D360+
0.0027227446*_D361+
0.0527634669*_D362+
0.0000223882*_D363+
0.0053558026*_D364+
0.0176444788*_D365+
0.0060058838*_D366+
-0.000622637*_D367+
-0.002720412*_D368+
0.0162433967*_D369+
-0.00296136*_D370+
0.0005442403*_D371+
-0.006829778*_D372+
0.0009950733*_D373+
0.0127683465*_D374+
0.0181572154*_D375+
-0.032080005*_D376+
0.0325026086*_D377+
0.0063588205*_D378+
0.0016148445*_D379+
-0.001038558*_D380+
0.0028512059*_D381+
-0.001467048*_D382+
-0.001951165*_D383+
0.0015488891*_D384+
0.0077072955*_D385+
0.0145110894*_D386+
0.006488019*_D387+
-0.004541472*_D388+
0.00235801*_D389+
0.0112134491*_D390+
0.0038154455*_D391+
-0.008890203*_D392+
0.0061878748*_D393+
-0.007306594*_D394+
-0.000060165*_D395+
-0.002449404*_D396+
0.0091135585*_D397+
0.002579794*_D398+
-0.00202527*_D399+
-0.020724586*_D400+
-0.007168427*_D401+
0.0029391622*_D402+
0.000613199*_D403+
-0.00172658*_D404+
0.000647259*_D405+
0.0658797752*_D406+
-0.00165347*_D407+
-0.003124008*_D408+
0.0114811271*_D409+
0.0029501966*_D410+
0.0213112324*_D411+
0.0178439899*_D412+
-0.000374496*_D413+
-0.013443158*_D414+
-0.014137754*_D415+
0.0199177641*_D416+
-0.018740906*_D417+
-0.005448604*_D418+
0.0042776206*_D419+
-0.011610712*_D420+
0.0082149324*_D421+
0.0006633383*_D422+
0.0066500473*_D423+
0.0007604552*_D424+
0.007817819*_D425+
-0.002532661*_D426+
-0.013650839*_D427+
0.011231475*_D428+
-0.001854935*_D429+
-0.004947433*_D430+
-0.02564561*_D431+
0.0105193648*_D432+
-0.010904563*_D433+
-0.030467845*_D434+
-0.248938206*_D435+
-0.002328796*_D436+
-0.002447961*_D437+
0.0092945326*_D438+
0.0044217922*_D439+
0.0071804064*_D440+
-0.039815709*_D441+
-0.006627838*_D442+
0.0004006852*_D443+
-0.000488781*_D444+
0.0017589673*_D445+
-0.006042799*_D446+
-0.009290134*_D447+
0.0059439411*_D448+
0.0070085157*_D449+
0.2190089905*_D450+
0.0085712167*_D451+
0.0115020294*_D452+
0.0063791745*_D453+
-0.000891761*_D454+
-0.005896658*_D455+
-0.116463301*_D456+
0.0012376793*_D457+
-0.007871242*_D458+
0.0032316994*_D459+
0.0046547184*_D460+
-0.146824757*_D461+
0.0056286962*_D462+
-0.009825003*_D463+
-0.012941852*_D464+
0.0157161624*_D465+
-0.000530212*_D466+
0.0003076651*_D467+
0.0071813622*_D468+
0.0106789204*_D469+
0.0179638195*_D470+
0.0147690166*_D471+
0.0154082715*_D472+
0.0030204744*_D473+
0.0056178834*_D474+
0.0031708872*_D475+
0.0039675223*_D476+
0.0032819107*_D477+
-0.003078905*_D478+
-0.004757887*_D479+
0.024288784*_D480+
-0.010243213*_D481+
-0.005022126*_D482+
-0.008897962*_D483+
-0.008430812*_D484+
-0.004282568*_D485+
-0.003003995*_D486+
-0.001053894*_D487+
0.0003223885*_D488+
0.0043057374*_D489+
0.0158531732*_D490+
0.009956419*_D491+
-0.01915715*_D492+
-0.002705686*_D493+
0.0181510152*_D494+
-0.004081274*_D495+
0.0033103467*_D496+
-0.000817404*_D497+
0.0019207463*_D498+
0.0007100433*_D499+
-0.001440828*_D500+
-0.029256612*_D501+
0.0110576903*_D502+
0.015806279*_D503+
0.0113040956*_D504+
-0.057357559*_D505+
0.0146625687*_D506+
0.0159416193*_D507+
-0.018568623*_D508+
-0.010908235*_D509+
0.0103511535*_D510+
0.0065361737*_D511+
0.0078219751*_D512+
0.0119497224*_D513+
0.0040317462*_D514+
-0.001200782*_D515+
0.0035269575*_D516+
0.0590552953*_D517+
0.0009115309*_D518+
-0.030023245*_D519+
0.0164722568*_D520+
-0.009747994*_D521+
0.0066897487*_D522+
0.00853462*_D523+
-0.001814598*_D524+
-0.005413458*_D525+
-0.01451491*_D526+
-0.072282108*_D527+
0.0021329171*_D528+
-0.000412514*_D529+
0.0027958493*_D530+
-0.006692541*_D531+
0.0019987615*_D532+
-0.013252912*_D533+
-0.00303492*_D534+
0.0024167218*_D535+
0.0141752907*_D536+
-0.005522492*_D537+
0.0046781408*_D538+
0.0047181702*_D539+
0.0013376612*_D540+
0.0090524278*_D541+
-0.025146325*_D542+
-0.090188759*_D543+
0.0065940151*_D544+
0.006352846*_D545+
-0.009854931*_D546+
-0.076695322*_D547+
-0.013681818*_D548+
0.0117585108*_D549+
0.0173974897*_D550+
-0.005903096*_D551+
0.0075048378*_D552+
0.0061074825*_D553+
-0.000679893*_D554+
0.006385615*_D555+
-0.03832203*_D556+
-0.007836721*_D557+
0.004053191*_D558+
-0.010991572*_D559+
-0.004898829*_D560+
0.0010922724*_D561+
-0.023288009*_D562+
-0.004892795*_D563+
0.0034040095*_D564+
0.0067760754*_D565+
-0.004113416*_D566+
-0.008540321*_D567+
0.0197209629*_D568+
-0.05944386*_D569+
0.0130117221*_D570+
0.0085996964*_D571+
-0.015119551*_D572+
-0.001509117*_D573+
0.0072240022*_D574+
0.0099001593*_D575+
-0.006101742*_D576+
-0.010166824*_D577+
0.0039794038*_D578+
0.0125000513*_D579+
0.0004784712*_D580+
-0.005062121*_D581+
0.0057516073*_D582+
-0.00663338*_D583+
0.008654567*_D584+
0.0029695744*_D585+
-0.022699127*_D586+
-0.006268834*_D587+
0.0068176347*_D588+
-0.003113845*_D589+
-0.010870102*_D590+
-0.007781822*_D591+
0.009619339*_D592+
0.0080160219*_D593+
0.0236831216*_D594+
0.0153385284*_D595+
-0.001620315*_D596+
-0.004194142*_D597+
0.0128138922*_D598+
0.0002769724*_D599+
-0.008983647*_D600+
0.0059545448*_D601+
0.0102711159*_D602+
-0.006400351*_D603+
-0.003571783*_D604+
0.008609843*_D605+
0.0093129089*_D606+
-0.001451964*_D607+
-0.076048127*_D608+
0.0065986837*_D609+
0.012485132*_D610+
-0.000879091*_D611+
-0.002912393*_D612+
-0.000681119*_D613+
0.004015284*_D614+
-0.002701309*_D615+
0.0011935229*_D616+
-0.006013845*_D617+
-0.00185779*_D618+
-0.005705661*_D619+
-0.003607668*_D620+
0.0004021344*_D621+
0.0060528811*_D622+
0.0091682114*_D623+
-0.001284828*_D624+
-0.009811131*_D625+
0.0312740163*_D626+
0.0155466126*_D627+
0.001409498*_D628+
0.0112251638*_D629+
0.003384353*_D630+
-0.000329051*_D631+
0.0147364019*_D632+
-0.000069951*_D633+
-0.007902251*_D634+
-0.016713185*_D635+
0.0164256018*_D636+
-0.005986006*_D637+
-0.01357258*_D638+
0.0112148462*_D639+
0.0162864465*_D640+
-0.007809984*_D641+
0.0064978418*_D642+
-0.008442717*_D643+
0.0044795393*_D644+
0.1499888586*_D645+
0.0113795303*_D646+
-0.007076201*_D647+
0.0061658135*_D648+
0.0660167297*_D649+
0.0038099485*_D650+
0.0475140746*_D651+
0.0221167749*_D652+
0.0113099132*_D653+
0.0053601403*_D654+
0.0149516888*_D655+
0.0024994187*_D656+
-0.004508338*_D657+
0.0037420684*_D658+
0.0137704781*_D659+
0.0076850359*_D660+
0.004407085*_D661+
-0.129296994*_D662+
0.0051781184*_D663+
0.0054315986*_D664+
-0.017078991*_D665+
-0.006443991*_D666+
-0.00233217*_D667+
-0.005854528*_D668+
0.0020701817*_D669+
0.0049794545*_D670+
0.0039256449*_D671+
-0.00151849*_D672+
0.0048763137*_D673+
0.0043827123*_D674+
-0.013866872*_D675+
0.0003459582*_D676+
-0.015089051*_D677+
-0.022543699*_D678+
0.0024358271*_D679+
0.0057736903*_D680+
-0.001826705*_D681+
0.0077220288*_D682+
-0.040050402*_D683+
-0.007782862*_D684+
-0.004078919*_D685+
0.0099360363*_D686+
0.0047978735*_D687+
0.0008323156*_D688+
0.0250615989*_D689+
0.0071854348*_D690+
0.0049390167*_D691+
-0.009958401*_D692+
0.0156801247*_D693+
-0.005592868*_D694+
-0.011427316*_D695+
0.0006866156*_D696+
-0.008317307*_D697+
0.0101684057*_D698+
0.0190130722*_D699+
-0.002795057*_D700+
0.0072382219*_D701+
-0.004119998*_D702+
0.0120012645*_D703+
-0.006216819*_D704+
-0.039605901*_D705+
-0.013198888*_D706+
0.0067416754*_D707+
-0.001498567*_D708+
0.0135099574*_D709+
0.0701035582*_D710+
0.0065352942*_D711+
-0.002299673*_D712+
0.0024020388*_D713+
-0.005446842*_D714+
0.0101696124*_D715+
0.00387561*_D716+
-0.048536248*_D717+
0.0102842993*_D718+
-0.000852071*_D719+
0.0126804237*_D720+
0.0086101468*_D721+
-0.002050213*_D722+
-0.001214612*_D723+
-0.053447538*_D724+
0.0055126847*_D725+
0.0053731989*_D726+
-0.001711753*_D727+
-0.004019903*_D728+
-0.009381786*_D729+
0.0141967794*_D730+
-0.002260091*_D731+
-0.000787538*_D732+
0.0031053014*_D733+
-0.006192439*_D734+
0.003433097*_D735+
-0.002175666*_D736+
0.0017104136*_D737+
0.0010836809*_D738+
0.0007373008*_D739+
0.0026908743*_D740+
0.00573142*_D741+
-0.037589371*_D742+
0.001075592*_D743+
0.0032342227*_D744+
-0.003146293*_D745+
0.0009588892*_D746+
0.0060848483*_D747+
0.0097536785*_D748+
0.1592397363*_D749+
-0.013125745*_D750+
-0.051157474*_D751+
-0.00197035*_D752+
-0.003959483*_D753+
-0.043046542*_D754+
-0.008239029*_D755+
0.0051351613*_D756+
0.0373415167*_D757+
-0.000296266*_D758+
-0.008705941*_D759+
0.0102221209*_D760+
0.0094965771*_D761+
-0.025528152*_D762+
-0.00196073*_D763+
0.0003802413*_D764+
0.0039003566*_D765+
0.0310579353*_D766+
-0.004148179*_D767+
0.0085564465*_D768+
-0.019352399*_D769+
-0.001001605*_D770+
0.0058399927*_D771+
-0.010226672*_D772+
0.0056290447*_D773+
-0.025541459*_D774+
-0.047945893*_D775+
0.0161271051*_D776+
0.0073573833*_D777+
0.0240389756*_D778+
0.001428*_D779+
-0.000163222*_D780+
0.0085047997*_D781+
0.015388498*_D782+
0.0000739989*_D783+
-0.018269652*_D784+
0.0011893665*_D785+
0.0069148009*_D786+
0.012916637*_D787+
-0.003314273*_D788+
0.0011968625*_D789+
-0.001420333*_D790+
-0.005399284*_D791+
0.006172402*_D792+
0.0021509221*_D793+
0.0067722937*_D794+
0.0121381948*_D795+
-0.006311081*_D796+
0.0037581463*_D797+
-0.008047068*_D798+
0.0097077966*_D799+
-0.0001215*_D800+
0.0012904365*_D801+
0.0035978898*_D802+
-0.00358748*_D803+
0.0056242028*_D804+
0.0022032671*_D805+
0.0009608026*_D806+
0.0095593419*_D807+
0.0075374982*_D808+
-0.01537924*_D809+
0.0010945321*_D810+
0.0003625256*_D811+
0.0017875515*_D812+
-0.033179287*_D813+
0.0045253763*_D814+
-0.003198496*_D815+
0.0126423388*_D816+
0.0086965147*_D817+
-0.007122287*_D818+
0.0514925625*_D819+
0.0007737658*_D820+
-0.001249264*_D821+
0.0184037439*_D822+
0.0042582476*_D823+
0.0071111288*_D824+
0.0042039104*_D825+
-0.069114049*_D826+
0.0009306847*_D827+
-0.02277244*_D828+
-0.003418474*_D829+
-0.000520074*_D830+
0.0016588912*_D831+
-0.000803111*_D832+
0.0233670369*_D833+
0.006657371*_D834+
-0.000170394*_D835+
0.0010487541*_D836+
0.0016414025*_D837+
0.001084328*_D838+
0.0004721608*_D839+
0.0032208071*_D840+
0.0067284342*_D841+
0.0502147545*_D842+
-0.003569178*_D843+
0.0287649516*_D844+
0.0149989074*_D845+
0.009306717*_D846+
0.299624269*_D847+
0.0307003235*_D848+
0.0287155531*_D849+
-0.130001736*_D850+
-0.007644887*_D851+
-0.00224734*_D852+
-0.000358508*_D853+
0.0183930743*_D854+
0.0363528633*_D855+
-0.000172118*_D856+
0.0033577179*_D857+
0.0026894015*_D858+
0.0176884038*_D859+
0.000942588*_D860+
0.0046313992*_D861+
-0.009703914*_D862+
0.003119546*_D863+
0.004179947*_D864+
0.0131974504*_D865+
-0.027567891*_D866+
-0.000064108*_D867+
0.0077461568*_D868+
-0.014920927*_D869+
-0.04472284*_D870+
0.0110345036*_D871+
0.0021833461*_D872+
0.0043869461*_D873+
0.0061514192*_D874+
0.0020502974*_D875+
0.0023381308*_D876+
-0.005415809*_D877+
0.0013991485*_D878+
0.0088357798*_D879+
-0.032568807*_D880+
-0.008973122*_D881+
-0.000463837*_D882+
0.0022064812*_D883+
0.0021466728*_D884+
-0.028159968*_D885+
0.0093327841*_D886+
-0.005138689*_D887+
-0.003429151*_D888+
0.0001237118*_D889+
0.0053749419*_D890+
0.0009712845*_D891+
0.0005117619*_D892+
0.0141360573*_D893+
0.0043704356*_D894+
0.0020079418*_D895+
0.0041787373*_D896+
0.0101817927*_D897+
0.0118746379*_D898+
0.0117766091*_D899+
0.0275209965*_D900+
0.0105207024*_D901+
0.0167113597*_D902+
0.0025205322*_D903+
-0.005850735*_D904+
0.0079542243*_D905+
0.0022474817*_D906+
0.0075466103*_D907+
0.0043528069*_D908+
0.0090821773*_D909+
0.001428*_D910+
-0.000477355*_D911+
0.0062953444*_D912+
0.0078791194*_D913+
-0.005006893*_D914+
0.0099978587*_D915+
0.0000368846*_D916+
-0.053927761*_D917+
-0.009913493*_D918+
0.0010763389*_D919+
0.0025214129*_D920+
-0.003157455*_D921+
0.0200626463*_D922+
0.0070969752*_D923+
-0.004765953*_D924+
-0.006088389*_D925+
0.0206396657*_D926+
-0.040811918*_D927+
-0.013148711*_D928+
-0.017059384*_D929+
0.0157360493*_D930+
0.0044151558*_D931+
-0.000756173*_D932+
-0.000376335*_D933+
0.0031342458*_D934+
-0.001859033*_D935+
0.000063629*_D936+
0.0047980271*_D937+
0.0164568906*_D938+
0.0075239896*_D939+
-0.024043925*_D940+
0.0029504126*_D941+
0.0327554228*_D942+
0.0069657215*_D943+
0.0313382122*_D944+
0.0162129528*_D945+
-0.01840529*_D946+
-0.008190248*_D947+
-0.006456269*_D948+
-0.003396547*_D949+
-0.004897737*_D950+
0.0014570662*_D951+
0.0516162865*_D952+
0.0079902437*_D953+
0.0003908646*_D954+
0.0065800086*_D955+
-0.048793555*_D956+
-0.011646332*_D957+
0.010534975*_D958+
0.0010394316*_D959+
-0.081876183*_D960+
-0.007790927*_D961+
0.000499161*_D962+
0.0031102061*_D963+
0.001626102*_D964+
0.0108552285*_D965+
0.0067188272*_D966+
0.002736657*_D967+
0.0099832186*_D968+
-0.008161741*_D969+
-0.009782655*_D970+
0.0021399909*_D971+
-0.00083768*_D972+
-0.040388774*_D973+
-0.003845372*_D974+
0.0020612*_D975+
-0.003025568*_D976+
-0.009431411*_D977+
0.0112278113*_D978+
0.0130585621*_D979+
-0.011572059*_D980+
0.0098655113*_D981+
0.0132880405*_D982+
0.0039214463*_D983+
0.0003141066*_D984+
0.0095759954*_D985+
-0.000838983*_D986+
-0.009373955*_D987+
0.0002918318*_D988+
-0.015546242*_D989+
0.0011211114*_D990+
0.0043354617*_D991+
-0.003112782*_D992+
-0.009164775*_D993+
-0.003247418*_D994+
-0.010135681*_D995+
0.0017145869*_D996+
0.0045097394*_D997+
0.0150836723*_D998+
-0.005433021*_D999+
-0.001077443*_D1000+
0.0007425594*_D1001+
0.007740497*_D1002+
0.0023897592*_D1003+
-0.010202221*_D1004+
0.003900421*_D1005+
0.0015140017*_D1006+
0.0017079177*_D1007+
-0.0325111*_D1008+
0.0067390953*_D1009+
-0.016848928*_D1010+
0.0447948504*_D1011+
0.0005059805*_D1012+
-0.019960787*_D1013+
0.1183501623*_D1014+
0.0044412567*_D1015+
0.1840293841*_D1016+
0.0152270977*_D1017+
0.0167976502*_D1018+
0.0030684623*_D1019+
-0.011209075*_D1020+
0.0041277656*_D1021+
-0.003277761*_D1022+
-0.003212281*_D1023+
0.0491297457*_D1024+
0.0239265337*_D1025+
0.0013645077*_D1026+
-0.004244385*_D1027+
-0.016748946*_D1028+
-0.002722649*_D1029+
-0.006111227*_D1030+
-0.001013911*_D1031+
0.0065253672*_D1032+
-0.002179263*_D1033+
-0.000047262*_D1034+
0.0236855662*_D1035+
0.0043331939*_D1036+
0.0262152747*_D1037+
-0.006568115*_D1038+
-0.006102935*_D1039+
0.0048005966*_D1040+
0.0138524032*_D1041+
-0.004394698*_D1042+
-0.013519374*_D1043+
0.0047156054*_D1044+
-0.033851671*_D1045+
-0.007718326*_D1046+
0.0139559606*_D1047+
0.0260931677*_D1048+
0.0479234972*_D1049+
0.0283205742*_D1050+
0.0006421403*_D1051+
-0.00034695*_D1052+
-0.004855583*_D1053+
0.0046083128*_D1054+
-0.002664716*_D1055+
0.0293728733*_D1056+
0.0031229282*_D1057+
-0.001193215*_D1058+
0.0050133738*_D1059+
-0.025330464*_D1060+
-0.000546422*_D1061+
-0.009822804*_D1062+
0.0027901548*_D1063+
-0.004150248*_D1064+
0.0011030581*_D1065+
-0.013009314*_D1066+
-0.005430016*_D1067+
0.0014068167*_D1068+
-0.010943003*_D1069+
0.0219947682*_D1070+
-0.003232598*_D1071+
-0.002098798*_D1072+
0.0044817356*_D1073+
0.0302790491*_D1074+
0.0124108729*_D1075+
0.0206416396*_D1076+
-0.006808456*_D1077+
-0.000773087*_D1078+
0.0047080354*_D1079+
0.006407886*_D1080+
0.0493164636*_D1081+
0.0073694619*_D1082+
0.0001658564*_D1083+
-0.01415806*_D1084+
-0.006679558*_D1085+
0.0325128815*_D1086+
-0.004347264*_D1087+
-0.024265853*_D1088+
-0.0038106*_D1089+
0.0406782211*_D1090+
-0.003345168*_D1091+
-0.005962105*_D1092+
0.005542527*_D1093+
-0.000272022*_D1094+
0.0024559985*_D1095+
-0.004817805*_D1096+
-0.002622769*_D1097+
-0.011157341*_D1098+
-0.006576882*_D1099+
-0.000033105*_D1100+
0.0017502541*_D1101+
0.0060281199*_D1102+
-0.01298035*_D1103+
0.0026515091*_D1104+
0.0325967667*_D1105+
0.0341716029*_D1106+
-0.004341114*_D1107+
0.0033568238*_D1108+
0.0046775107*_D1109+
0.0066841074*_D1110+
-0.002773416*_D1111+
-0.010152338*_D1112+
-0.011022035*_D1113+
-0.00669595*_D1114+
-0.024166524*_D1115+
0.0090180866*_D1116+
0.0075746776*_D1117+
-0.002213251*_D1118+
-0.006339206*_D1119+
0.0144154601*_D1120+
0.0002090467*_D1121+
-0.009790546*_D1122+
-0.02149903*_D1123+
-0.004304107*_D1124+
-0.052537754*_D1125+
0.0028716153*_D1126+
-0.060661654*_D1127+
0.0106484283*_D1128+
0.0054823448*_D1129+
0.0105448705*_D1130+
0.0103183506*_D1131+
-0.012519191*_D1132+
-0.00114145*_D1133+
0.0142977879*_D1134+
-0.003022951*_D1135+
0.0012547749*_D1136+
0.0052336933*_D1137+
-0.008263448*_D1138+
-0.000337481*_D1139+
-0.014994534*_D1140+
0.0653888619*_D1141+
0.0097357367*_D1142+
0.0209532853*_D1143+
-0.010701905*_D1144+
-0.005280137*_D1145+
-0.004547949*_D1146+
-0.00187771*_D1147+
0.004242107*_D1148+
-0.005056887*_D1149+
0.0074874245*_D1150+
-0.004122774*_D1151+
-0.000383118*_D1152+
0.0058712882*_D1153+
0.0025224355*_D1154+
0.0001266266*_D1155+
-0.008682991*_D1156+
0.0269339057*_D1157+
-0.01172408*_D1158+
-0.005808376*_D1159+
0.0192936236*_D1160+
0.0121651954*_D1161+
0.011240243*_D1162+
0.0003454784*_D1163+
0.0011904199*_D1164+
-0.002856879*_D1165+
0.0201765115*_D1166+
-0.00227663*_D1167+
-0.071840573*_D1168+
0.0079445206*_D1169+
0.0099344531*_D1170+
0.0216593315*_D1171+
0.0311347819*_D1172+
0.1864909417*_D1173+
0.0024722336*_D1174+
-0.000798397*_D1175+
-0.009665444*_D1176+
0.0106253351*_D1177+
-0.012778611*_D1178+
0.0148276695*_D1179+
-0.000664128*_D1180+
-0.001940883*_D1181+
-0.025828645*_D1182+
-0.003911152*_D1183+
0.0002712501*_D1184+
0.0546474545*_D1185+
0.0147324227*_D1186+
0.0037855603*_D1187+
0.011293388*_D1188+
0.0104117425*_D1189+
-0.154060839*_D1190+
0.0043872582*_D1191+
0.0076546687*_D1192+
0.0028699423*_D1193+
-0.015220856*_D1194+
0.005394466*_D1195+
-0.026871846*_D1196+
0.0939275919*_D1197+
-0.003253464*_D1198+
-0.022403372*_D1199+
0.0192715267*_D1200+
0.0005116858*_D1201+
0.3607850317*_D1202+
-0.000530634*_D1203+
-0.008505448*_D1204;
/****************************************/
* Componente principal 17;
/****************************************/
;
length PC_17 8;
label PC_17 = "Componente principal 17";
PC_17 =
0.0044109954*_D1+
0.0054274152*_D2+
0.010153707*_D3+
-0.005947935*_D4+
0.0009447428*_D5+
0.0028646933*_D6+
0.0335638752*_D7+
0.01012216*_D8+
0.0086622635*_D9+
0.0220504476*_D10+
-0.020967656*_D11+
0.020545232*_D12+
-0.020392546*_D13+
-0.00166236*_D14+
0.0012258357*_D15+
-0.07259806*_D16+
-0.019423876*_D17+
-0.007714726*_D18+
0.0053982007*_D19+
0.0070284725*_D20+
0.0142190684*_D21+
-0.102953489*_D22+
0.0386792443*_D23+
0.0242699859*_D24+
-0.002900606*_D25+
0.0004548101*_D26+
0.0183404203*_D27+
-0.003948012*_D28+
0.0222521105*_D29+
0.0171545498*_D30+
-0.029665954*_D31+
-0.018412946*_D32+
0.0156256649*_D33+
-0.023598169*_D34+
-0.098176361*_D35+
-0.000876393*_D36+
0.0032481637*_D37+
0.010823014*_D38+
0.0012490698*_D39+
0.0029803138*_D40+
-0.012940254*_D41+
0.0011009173*_D42+
0.0487730817*_D43+
0.00206944*_D44+
0.0202624057*_D45+
-0.010105951*_D46+
-0.024877161*_D47+
0.0045529666*_D48+
-0.002560626*_D49+
-0.021815402*_D50+
0.0029804527*_D51+
-0.000071899*_D52+
0.0412025414*_D53+
-0.027364256*_D54+
0.0181288459*_D55+
0.011342624*_D56+
-0.018747596*_D57+
0.0031308789*_D58+
0.0041181303*_D59+
-0.074495417*_D60+
-0.053327493*_D61+
0.0003388468*_D62+
0.0038019666*_D63+
0.0027174377*_D64+
0.0124628622*_D65+
-0.016873647*_D66+
-0.002737073*_D67+
-0.015187025*_D68+
-0.011589521*_D69+
-0.017595158*_D70+
-0.001868628*_D71+
-0.016254028*_D72+
-0.002784893*_D73+
0.0115120871*_D74+
-0.004490854*_D75+
0.0001172545*_D76+
-0.131124844*_D77+
0.0091003313*_D78+
-0.015287727*_D79+
-0.041404825*_D80+
0.0137866676*_D81+
-0.012307929*_D82+
0.0001584248*_D83+
-0.014276082*_D84+
-0.055160942*_D85+
0.0415837666*_D86+
0.0042277883*_D87+
0.0063115413*_D88+
0.0272036098*_D89+
0.0035048932*_D90+
0.0001399102*_D91+
0.006273139*_D92+
0.0181549804*_D93+
-0.046259489*_D94+
-0.01364644*_D95+
-0.0029057*_D96+
-0.017406928*_D97+
-0.01193514*_D98+
0.0061101018*_D99+
0.0225882234*_D100+
-0.011724109*_D101+
-0.016088575*_D102+
0.0317828765*_D103+
0.0049598037*_D104+
-0.006228683*_D105+
0.0009904163*_D106+
0.0243602919*_D107+
-0.000501958*_D108+
-0.003413799*_D109+
0.0288087429*_D110+
0.0034545778*_D111+
0.0146859462*_D112+
0.0064420656*_D113+
-0.001012348*_D114+
-0.010932409*_D115+
0.0073685952*_D116+
-0.004240015*_D117+
0.0013919554*_D118+
0.000196629*_D119+
-0.002626335*_D120+
-0.003860875*_D121+
-0.024208073*_D122+
-0.001297569*_D123+
-0.023569122*_D124+
0.0323500648*_D125+
0.0142011728*_D126+
-0.014896775*_D127+
-0.010107902*_D128+
0.0005396516*_D129+
0.0070337914*_D130+
0.0222732448*_D131+
0.0227413339*_D132+
0.0043657384*_D133+
0.0752424847*_D134+
0.078415096*_D135+
-0.002398854*_D136+
-0.011194584*_D137+
0.0098637184*_D138+
0.0065538147*_D139+
-0.033034131*_D140+
0.013206131*_D141+
-0.000545835*_D142+
0.005472721*_D143+
0.0350423779*_D144+
0.0281171385*_D145+
-0.015267569*_D146+
0.03145725*_D147+
0.0124144048*_D148+
0.0263166372*_D149+
-0.006284066*_D150+
0.0125115888*_D151+
0.0051346421*_D152+
-0.026215596*_D153+
-0.001470013*_D154+
0.0088637383*_D155+
-0.024671596*_D156+
-0.012247218*_D157+
0.0070852566*_D158+
-0.00132322*_D159+
0.0275071429*_D160+
0.0075464977*_D161+
0.007339176*_D162+
0.0111362412*_D163+
0.0479143039*_D164+
-0.061099744*_D165+
0.0083061353*_D166+
-0.003802109*_D167+
0.0004029689*_D168+
0.0009417704*_D169+
-0.046276609*_D170+
0.0105105277*_D171+
0.0035440349*_D172+
-0.053901727*_D173+
0.0138608655*_D174+
0.0046305187*_D175+
-0.00850536*_D176+
0.0113997876*_D177+
-0.004102979*_D178+
0.0014394003*_D179+
0.0297965801*_D180+
0.0035914696*_D181+
0.0119790374*_D182+
0.0045096429*_D183+
0.0032782118*_D184+
-0.001206112*_D185+
-0.002213216*_D186+
0.0046730958*_D187+
-0.009682516*_D188+
-0.011177311*_D189+
0.0195564884*_D190+
0.0001780826*_D191+
-0.005801952*_D192+
-0.010888546*_D193+
0.0116488814*_D194+
0.0053197619*_D195+
0.0141506113*_D196+
0.0012324292*_D197+
-0.001378419*_D198+
0.0151162508*_D199+
0.0053469743*_D200+
-0.020732946*_D201+
-0.017585405*_D202+
0.0006357181*_D203+
0.0027342117*_D204+
0.0040244585*_D205+
0.0029687084*_D206+
-0.018530896*_D207+
-0.007971075*_D208+
0.0192148406*_D209+
0.0177872532*_D210+
0.0288155772*_D211+
0.0001380906*_D212+
-0.004759101*_D213+
0.0041083864*_D214+
-0.016566555*_D215+
0.0335262414*_D216+
0.0194165196*_D217+
0.0027946023*_D218+
0.0026343131*_D219+
0.0282179779*_D220+
-0.010496812*_D221+
0.0032606555*_D222+
0.0107231227*_D223+
0.0086380213*_D224+
-0.011060006*_D225+
0.0069884799*_D226+
-0.013790332*_D227+
-0.014379051*_D228+
-0.071505389*_D229+
0.0143518124*_D230+
0.0070158052*_D231+
0.0125750076*_D232+
-0.025766776*_D233+
0.0002379423*_D234+
0.0081136582*_D235+
0.0052422613*_D236+
0.0044103532*_D237+
0.00250318*_D238+
0.0047675392*_D239+
0.0003674327*_D240+
0.0085079168*_D241+
-0.005004876*_D242+
0.0260691112*_D243+
0.0059113046*_D244+
0.0238395884*_D245+
0.0076263462*_D246+
0.0053280984*_D247+
-0.005139737*_D248+
0.0048851486*_D249+
-0.003339227*_D250+
0.0265980881*_D251+
-0.030937155*_D252+
-0.000376566*_D253+
0.0069146221*_D254+
0.0239349796*_D255+
0.0100936968*_D256+
0.004763952*_D257+
-0.028559275*_D258+
0.0129174712*_D259+
0.0442146464*_D260+
-0.009298292*_D261+
-0.024631697*_D262+
0.0076340978*_D263+
0.0046079781*_D264+
0.0204107277*_D265+
0.0108826694*_D266+
0.0107142788*_D267+
-0.024505203*_D268+
0.0021319632*_D269+
0.013447996*_D270+
0.0017534383*_D271+
0.0023404101*_D272+
0.0088068299*_D273+
0.0001743134*_D274+
0.0302694519*_D275+
0.0102786044*_D276+
-0.01304871*_D277+
-0.011926549*_D278+
-0.031882421*_D279+
-0.000363032*_D280+
0.002358043*_D281+
0.0067274831*_D282+
0.0381208998*_D283+
0.0015879421*_D284+
0.0136748141*_D285+
-0.024750284*_D286+
0.0446861747*_D287+
-0.011245762*_D288+
-0.009827271*_D289+
0.0108073758*_D290+
0.0065264979*_D291+
0.0167257349*_D292+
0.0438506207*_D293+
0.0102636454*_D294+
-0.026482921*_D295+
0.0042834799*_D296+
-0.017249564*_D297+
0.002250416*_D298+
-0.002359231*_D299+
0.0105839246*_D300+
0.0052360392*_D301+
0.0221437071*_D302+
0.0824350694*_D303+
-0.02026484*_D304+
-0.020382196*_D305+
-0.015903686*_D306+
0.0165115068*_D307+
0.0073669486*_D308+
0.1169524338*_D309+
-0.000310316*_D310+
0.0208229496*_D311+
-0.005494486*_D312+
-0.002807867*_D313+
0.0264377541*_D314+
-0.001045542*_D315+
0.029807012*_D316+
0.0032585866*_D317+
0.0331733835*_D318+
-0.011130875*_D319+
-0.026796164*_D320+
-0.006698591*_D321+
0.0036825096*_D322+
0.0485246751*_D323+
-0.000397657*_D324+
0.1376431238*_D325+
-0.000685647*_D326+
-0.000162899*_D327+
-0.011562295*_D328+
0.0301380335*_D329+
0.0173329748*_D330+
0.000477369*_D331+
-0.027150888*_D332+
-0.00446261*_D333+
-0.000994007*_D334+
0.0719157142*_D335+
0.0112053611*_D336+
-0.154228857*_D337+
-0.009866883*_D338+
0.0333418365*_D339+
0.0114703095*_D340+
0.0078549685*_D341+
-0.020507574*_D342+
-0.001812831*_D343+
0.000343194*_D344+
-0.002447312*_D345+
-0.000998749*_D346+
-0.015681574*_D347+
-0.005916219*_D348+
0.0026354932*_D349+
-0.007011851*_D350+
0.0072425032*_D351+
-0.004042117*_D352+
0.0086285307*_D353+
-0.000393807*_D354+
-0.001110675*_D355+
0.003775978*_D356+
0.0443318206*_D357+
-0.00700356*_D358+
0.0037613104*_D359+
0.0061827421*_D360+
0.0060684489*_D361+
-0.047938968*_D362+
0.0025692349*_D363+
0.0051597758*_D364+
0.0144858937*_D365+
0.0084063419*_D366+
0.0061626078*_D367+
-0.000509777*_D368+
-0.000778632*_D369+
0.0010231298*_D370+
-0.004815189*_D371+
-0.010598006*_D372+
-0.001735621*_D373+
0.0114802136*_D374+
0.0276349567*_D375+
0.0310907357*_D376+
-0.021323964*_D377+
0.0065639731*_D378+
-0.000400281*_D379+
0.0021332186*_D380+
0.0075410219*_D381+
0.0034271549*_D382+
-0.003080161*_D383+
0.0005858679*_D384+
0.0097982635*_D385+
0.0244317314*_D386+
0.0117294395*_D387+
0.0055518202*_D388+
0.0030274602*_D389+
-0.01914203*_D390+
-0.002771131*_D391+
-0.017466103*_D392+
-0.001101599*_D393+
0.0031479207*_D394+
0.003902038*_D395+
0.006568123*_D396+
0.0098670215*_D397+
0.0082553536*_D398+
-0.002916468*_D399+
0.0116139241*_D400+
-0.016892354*_D401+
-0.000285623*_D402+
0.0037682232*_D403+
0.005457741*_D404+
0.0028612141*_D405+
0.1480872718*_D406+
0.0055576488*_D407+
0.0073668071*_D408+
0.0095466489*_D409+
0.0028637152*_D410+
0.0063029008*_D411+
-0.000212225*_D412+
-0.003336535*_D413+
0.000815536*_D414+
-0.007818172*_D415+
-0.021100721*_D416+
-0.002510221*_D417+
-0.015420489*_D418+
0.0106012863*_D419+
0.0044703835*_D420+
0.0314764217*_D421+
0.0053280817*_D422+
0.0011579544*_D423+
0.0031002441*_D424+
0.0039623648*_D425+
-0.022288306*_D426+
-0.005909674*_D427+
0.0107532476*_D428+
0.0069461199*_D429+
0.0190518863*_D430+
-0.044618191*_D431+
0.0168087326*_D432+
-0.020824516*_D433+
0.0332631117*_D434+
-0.011421077*_D435+
-0.011306095*_D436+
-0.004086417*_D437+
0.0193336541*_D438+
0.0103115549*_D439+
0.000394761*_D440+
-0.063151267*_D441+
-0.002486709*_D442+
0.007625817*_D443+
-0.005104545*_D444+
0.0094443016*_D445+
-0.015162812*_D446+
-0.013596775*_D447+
0.0011704104*_D448+
-0.002949808*_D449+
0.1582140861*_D450+
0.0288913545*_D451+
0.0036674186*_D452+
0.0059302284*_D453+
-0.001031647*_D454+
0.005177302*_D455+
0.0008060067*_D456+
0.007081145*_D457+
-0.003092378*_D458+
0.0035674017*_D459+
0.0243836866*_D460+
0.0034538185*_D461+
0.001190635*_D462+
-0.011800401*_D463+
-0.000487445*_D464+
0.0249126414*_D465+
0.0043589218*_D466+
0.0072064256*_D467+
0.0055758011*_D468+
0.0187435863*_D469+
0.0403507022*_D470+
-0.018994108*_D471+
0.0085279088*_D472+
0.0138360856*_D473+
0.013897393*_D474+
0.0061908575*_D475+
-0.002417285*_D476+
0.0122427619*_D477+
-0.008333563*_D478+
-0.024272844*_D479+
0.0348598095*_D480+
0.0125584412*_D481+
-0.000422063*_D482+
-0.005425776*_D483+
-0.007484142*_D484+
0.000769355*_D485+
-0.007412245*_D486+
-0.004628993*_D487+
0.0012884379*_D488+
0.0098847998*_D489+
-0.012198244*_D490+
0.0221538266*_D491+
-0.002004553*_D492+
0.0038103285*_D493+
0.0387510114*_D494+
0.0050850629*_D495+
0.0139577123*_D496+
0.0185260559*_D497+
0.0062012153*_D498+
0.0108486826*_D499+
0.0035238828*_D500+
0.1190966882*_D501+
0.007988638*_D502+
-0.015582133*_D503+
0.0139024097*_D504+
-0.008029454*_D505+
0.0025448364*_D506+
0.0080766819*_D507+
0.0200617991*_D508+
-0.01578754*_D509+
-0.006122105*_D510+
-0.000148345*_D511+
0.0110716997*_D512+
0.0163652662*_D513+
0.0109557661*_D514+
0.0017309653*_D515+
0.0090610968*_D516+
0.1040067988*_D517+
-0.024153057*_D518+
0.0138569449*_D519+
0.0195500919*_D520+
-0.035407003*_D521+
-0.001293814*_D522+
-0.045870126*_D523+
-0.002841833*_D524+
-0.01745842*_D525+
-0.02462207*_D526+
-0.005646186*_D527+
0.0013091607*_D528+
0.0031299848*_D529+
-0.003250375*_D530+
0.0037726997*_D531+
0.007334979*_D532+
0.0123534807*_D533+
0.0076666132*_D534+
0.0112368624*_D535+
0.0190575402*_D536+
0.0069791594*_D537+
0.0080190863*_D538+
-0.001852746*_D539+
-0.005536747*_D540+
0.0154982908*_D541+
0.0161202665*_D542+
0.0022825875*_D543+
0.0113613434*_D544+
0.0019679965*_D545+
0.0060200685*_D546+
0.0729971016*_D547+
-0.01194992*_D548+
0.0072525749*_D549+
-0.028240178*_D550+
0.0054258719*_D551+
-0.041078926*_D552+
-0.003381536*_D553+
0.0039677045*_D554+
0.0171738983*_D555+
0.0325090403*_D556+
-0.009334012*_D557+
0.0047314151*_D558+
-0.012675699*_D559+
-0.022638114*_D560+
0.0107230797*_D561+
0.006419125*_D562+
0.0043274823*_D563+
0.0004641741*_D564+
0.0165328872*_D565+
-0.025423526*_D566+
0.0158149895*_D567+
0.0311331493*_D568+
0.0128968447*_D569+
-0.006380946*_D570+
0.0145537955*_D571+
0.02102266*_D572+
-0.004241426*_D573+
0.0146236943*_D574+
0.0154979835*_D575+
0.0061227938*_D576+
-0.004060553*_D577+
0.0038211442*_D578+
0.0190968611*_D579+
-0.001194448*_D580+
-0.002993804*_D581+
0.0098132446*_D582+
0.0029233515*_D583+
0.0072814899*_D584+
-0.000907026*_D585+
0.0220698856*_D586+
0.0049796775*_D587+
0.0131507641*_D588+
0.0114544066*_D589+
0.0110431803*_D590+
0.0083031864*_D591+
0.0015524608*_D592+
0.0018983109*_D593+
-0.026347579*_D594+
-0.008536454*_D595+
-0.010883955*_D596+
0.0024598627*_D597+
0.0186280804*_D598+
0.011661803*_D599+
0.0002850402*_D600+
-0.000590651*_D601+
0.0098003528*_D602+
0.002475938*_D603+
-0.00053611*_D604+
0.0019701526*_D605+
0.0129629437*_D606+
0.0113129823*_D607+
0.0702123404*_D608+
0.0032041963*_D609+
0.0119094756*_D610+
0.0003190378*_D611+
-0.019586116*_D612+
0.0046024603*_D613+
0.0281980933*_D614+
-0.005175138*_D615+
0.0018800312*_D616+
-0.005165385*_D617+
-0.001485689*_D618+
-0.006277302*_D619+
0.0077539733*_D620+
0.0014214221*_D621+
0.0157513427*_D622+
0.0186434689*_D623+
0.0004141836*_D624+
0.0173696847*_D625+
-0.031873089*_D626+
0.0078667706*_D627+
0.0020721179*_D628+
0.0053430653*_D629+
0.0004923218*_D630+
0.0072263912*_D631+
0.0163702208*_D632+
-0.010203198*_D633+
0.003497146*_D634+
0.0147517906*_D635+
0.0152932564*_D636+
-0.003552133*_D637+
-0.043275778*_D638+
-0.002810788*_D639+
0.0261688099*_D640+
-0.000742554*_D641+
-0.000168838*_D642+
-0.017304186*_D643+
0.0129991102*_D644+
-0.146704*_D645+
0.009256424*_D646+
-0.010891879*_D647+
0.0018078774*_D648+
0.1301930453*_D649+
0.0101905472*_D650+
0.0838868787*_D651+
0.0456367669*_D652+
-0.000589007*_D653+
0.0100176411*_D654+
-0.005069001*_D655+
0.0094367787*_D656+
0.0081812544*_D657+
-0.002195869*_D658+
0.0114814904*_D659+
0.0103315324*_D660+
0.008011185*_D661+
-0.035464239*_D662+
-0.010882807*_D663+
0.0023108184*_D664+
-0.000249092*_D665+
0.0012920299*_D666+
0.0041711659*_D667+
-0.007454147*_D668+
0.006807416*_D669+
0.0126962695*_D670+
0.0122233733*_D671+
-0.000104511*_D672+
0.0030608821*_D673+
-0.013740517*_D674+
-0.024309861*_D675+
0.0041931426*_D676+
-0.024278689*_D677+
-0.019523293*_D678+
0.0126274713*_D679+
-0.002780268*_D680+
0.0204840472*_D681+
-0.006916506*_D682+
0.0807661114*_D683+
-0.015770721*_D684+
-0.005605696*_D685+
-0.006391553*_D686+
-0.00134889*_D687+
0.0052240725*_D688+
0.0506403731*_D689+
-0.005857372*_D690+
-0.006073345*_D691+
0.0044781539*_D692+
0.0227351024*_D693+
-0.009149669*_D694+
0.0020358426*_D695+
-0.005828038*_D696+
0.0011097824*_D697+
-0.000611029*_D698+
0.032909597*_D699+
-0.007582188*_D700+
0.0064222755*_D701+
-0.007469425*_D702+
0.03104247*_D703+
0.0059630053*_D704+
0.0017763177*_D705+
0.0126803508*_D706+
0.0014528565*_D707+
-0.001076572*_D708+
-0.022950092*_D709+
0.0632243602*_D710+
0.0167175036*_D711+
0.0066856694*_D712+
-0.00042471*_D713+
-0.010340635*_D714+
0.0172633213*_D715+
0.0044268947*_D716+
-0.048643023*_D717+
0.0145974925*_D718+
-0.004642856*_D719+
-0.00890656*_D720+
0.0174672236*_D721+
-0.000489512*_D722+
-0.007150772*_D723+
-0.014022105*_D724+
0.0088925778*_D725+
0.0118306657*_D726+
-0.006033628*_D727+
0.0018931185*_D728+
0.0104774961*_D729+
0.0215478295*_D730+
-0.003643602*_D731+
-0.003640957*_D732+
0.0065827882*_D733+
-0.000304209*_D734+
-0.009780459*_D735+
0.0164389739*_D736+
0.0156408697*_D737+
0.0087263562*_D738+
0.0071763588*_D739+
0.0143241899*_D740+
0.0103452979*_D741+
0.0653283049*_D742+
0.0121529715*_D743+
0.010192451*_D744+
0.007430001*_D745+
0.0092720151*_D746+
0.0043823074*_D747+
0.0086871367*_D748+
0.1288311413*_D749+
-0.040497222*_D750+
-0.008636492*_D751+
0.0007902289*_D752+
-0.000406423*_D753+
-0.022735339*_D754+
-0.005649122*_D755+
0.0029168496*_D756+
0.068289963*_D757+
0.0058052399*_D758+
0.0030888548*_D759+
0.0017931083*_D760+
0.0039874078*_D761+
-0.0321572*_D762+
-0.003750148*_D763+
-0.005983727*_D764+
0.0016684799*_D765+
0.071085717*_D766+
0.0064529696*_D767+
0.0053060827*_D768+
0.0080728405*_D769+
-0.001463481*_D770+
0.0101956515*_D771+
-0.007992633*_D772+
0.0311248539*_D773+
-0.010512363*_D774+
-0.006285006*_D775+
0.0273928385*_D776+
0.0084553659*_D777+
0.0467541161*_D778+
0.0019919068*_D779+
-0.002152839*_D780+
0.0164422024*_D781+
0.0270306768*_D782+
-0.014737801*_D783+
-0.033489073*_D784+
-0.010483432*_D785+
-0.006360114*_D786+
0.0139962205*_D787+
0.019393952*_D788+
0.0016105366*_D789+
0.0001945397*_D790+
0.0006152567*_D791+
-0.081947343*_D792+
-0.005051442*_D793+
0.0140723096*_D794+
0.0218079479*_D795+
-0.016254248*_D796+
0.0044669436*_D797+
0.0175619009*_D798+
-0.005219701*_D799+
0.0037187525*_D800+
-0.000134018*_D801+
-0.001921787*_D802+
-0.011427443*_D803+
-0.001385278*_D804+
0.0071921586*_D805+
0.0167360846*_D806+
0.0141118079*_D807+
-0.008547579*_D808+
-0.020672952*_D809+
0.0074830312*_D810+
-0.002251502*_D811+
0.0023505208*_D812+
0.0276747587*_D813+
-0.001303088*_D814+
-0.007220402*_D815+
0.0245004695*_D816+
0.0082005952*_D817+
-0.017461259*_D818+
-0.046062744*_D819+
-0.008467746*_D820+
0.0120127076*_D821+
0.0485395569*_D822+
0.0108135004*_D823+
0.0064405973*_D824+
0.0048575738*_D825+
-0.01752131*_D826+
-0.001901194*_D827+
-0.049038629*_D828+
0.0072376192*_D829+
0.002703496*_D830+
0.0133479082*_D831+
0.007547454*_D832+
-0.012073774*_D833+
-0.001285022*_D834+
-0.00161511*_D835+
0.0062921615*_D836+
-0.00746351*_D837+
0.0027859488*_D838+
0.0023636603*_D839+
0.0045463666*_D840+
0.0093155423*_D841+
0.0851466445*_D842+
0.0050816795*_D843+
0.0270879564*_D844+
0.0071342783*_D845+
-0.002777708*_D846+
-0.267893833*_D847+
-0.026179123*_D848+
0.0254634421*_D849+
-0.079191345*_D850+
0.0109093036*_D851+
-0.003069311*_D852+
-0.005476679*_D853+
0.043841661*_D854+
-0.002754741*_D855+
0.003734599*_D856+
0.0105923584*_D857+
0.0099681439*_D858+
0.02352314*_D859+
-0.006282028*_D860+
0.0094143503*_D861+
-0.011129006*_D862+
0.0025134311*_D863+
0.0052529483*_D864+
0.0171116506*_D865+
0.0253022374*_D866+
0.0013481437*_D867+
-0.003087891*_D868+
-0.028300104*_D869+
-0.140981919*_D870+
0.0121404578*_D871+
0.0058267274*_D872+
0.0025697394*_D873+
-0.004128504*_D874+
0.0043688911*_D875+
0.0136816251*_D876+
-0.010010802*_D877+
0.0068081367*_D878+
0.0018264907*_D879+
0.0228202495*_D880+
-0.002241847*_D881+
0.0257951971*_D882+
0.0052008104*_D883+
-0.000327232*_D884+
0.0183545546*_D885+
0.0007939967*_D886+
-0.004532542*_D887+
-0.015817737*_D888+
-0.002392116*_D889+
0.0088980415*_D890+
0.0196456609*_D891+
0.0055126344*_D892+
0.022481668*_D893+
0.0052538621*_D894+
-0.005207687*_D895+
0.0038922368*_D896+
0.0068087939*_D897+
-0.005890005*_D898+
-0.010162005*_D899+
0.0512953957*_D900+
0.0123000473*_D901+
0.0386154538*_D902+
-0.000464619*_D903+
-0.00595027*_D904+
0.0114115467*_D905+
-0.004804141*_D906+
0.0102275652*_D907+
0.0096737602*_D908+
0.0034303479*_D909+
0.0019919068*_D910+
0.0040984187*_D911+
0.0145691364*_D912+
0.0150569102*_D913+
-0.003250056*_D914+
-0.007391349*_D915+
-0.009075604*_D916+
-0.00064405*_D917+
-0.013970623*_D918+
-0.006778325*_D919+
-0.000605558*_D920+
-0.011948981*_D921+
0.0181653903*_D922+
0.001425849*_D923+
0.005317081*_D924+
-0.01923615*_D925+
0.027468627*_D926+
0.0082354343*_D927+
-0.017917774*_D928+
-0.009189995*_D929+
-0.013498398*_D930+
-0.011133104*_D931+
0.0029510286*_D932+
-0.00785009*_D933+
0.0004769689*_D934+
-0.004027066*_D935+
0.0018868889*_D936+
0.0074743185*_D937+
0.0658727334*_D938+
-0.001386531*_D939+
-0.036956839*_D940+
-0.006851282*_D941+
-0.037648772*_D942+
0.0196725151*_D943+
0.053426028*_D944+
0.0137159047*_D945+
0.0134609539*_D946+
-0.012604005*_D947+
-0.016144804*_D948+
-0.006148052*_D949+
-0.008767584*_D950+
0.000037987*_D951+
-0.01735829*_D952+
0.0089754318*_D953+
-0.003710516*_D954+
0.0084403291*_D955+
-0.060162773*_D956+
-0.022923936*_D957+
0.0035830121*_D958+
-0.001229648*_D959+
0.000339908*_D960+
-0.051272096*_D961+
0.0114408537*_D962+
0.012140314*_D963+
0.0182423542*_D964+
0.0223663865*_D965+
0.0188069163*_D966+
0.0219457041*_D967+
0.0276863974*_D968+
-0.000530526*_D969+
-0.048870372*_D970+
0.0096159812*_D971+
0.0090608925*_D972+
-0.068694932*_D973+
-0.00182004*_D974+
-0.004104272*_D975+
-0.01107832*_D976+
-0.014924419*_D977+
-0.00054501*_D978+
0.0009615682*_D979+
-0.01878769*_D980+
0.0203891231*_D981+
0.0258850496*_D982+
-0.003589569*_D983+
0.0050014761*_D984+
0.021035504*_D985+
0.007667063*_D986+
-0.013827363*_D987+
0.0039642082*_D988+
0.0133301794*_D989+
0.009680224*_D990+
0.0108609175*_D991+
-0.003832608*_D992+
-0.019530378*_D993+
-0.002649299*_D994+
-0.017185695*_D995+
-0.000136524*_D996+
-0.002013799*_D997+
0.0005416266*_D998+
-0.017271465*_D999+
0.0055259533*_D1000+
0.0139026131*_D1001+
0.0003047602*_D1002+
0.0042380857*_D1003+
-0.029458704*_D1004+
0.0083729516*_D1005+
0.0067991833*_D1006+
0.0050949502*_D1007+
0.0207676306*_D1008+
0.0161177828*_D1009+
-0.003558776*_D1010+
-0.042477576*_D1011+
-0.002069692*_D1012+
0.0122065165*_D1013+
-0.103460103*_D1014+
0.0002077144*_D1015+
0.0241301552*_D1016+
0.0023046288*_D1017+
0.0317218334*_D1018+
0.0053803832*_D1019+
0.0015654473*_D1020+
0.0105226767*_D1021+
-0.000504723*_D1022+
0.0062980654*_D1023+
-0.03012687*_D1024+
0.038409524*_D1025+
0.0052266934*_D1026+
0.0078267041*_D1027+
-0.010534474*_D1028+
0.0101699533*_D1029+
0.0010404835*_D1030+
0.0115311656*_D1031+
0.0012861577*_D1032+
-0.003414589*_D1033+
-0.002797705*_D1034+
-0.013268922*_D1035+
0.0052470849*_D1036+
0.0445927287*_D1037+
-0.023356266*_D1038+
0.0043036153*_D1039+
0.003274147*_D1040+
0.0271840511*_D1041+
0.015731006*_D1042+
-0.023884195*_D1043+
0.0221670382*_D1044+
-0.119276433*_D1045+
0.0174657361*_D1046+
0.0401226754*_D1047+
0.0483580604*_D1048+
-0.043141104*_D1049+
0.0181848782*_D1050+
0.0029819044*_D1051+
0.0039148427*_D1052+
0.024601237*_D1053+
-0.018700588*_D1054+
0.0054734618*_D1055+
0.0487972747*_D1056+
-0.001408942*_D1057+
-0.001262078*_D1058+
-0.060400032*_D1059+
-0.010558055*_D1060+
0.0131462356*_D1061+
-0.009950518*_D1062+
0.0040595075*_D1063+
0.0136132016*_D1064+
0.0186127335*_D1065+
0.0080203597*_D1066+
-5.417425E-6*_D1067+
-0.02594172*_D1068+
0.0093746909*_D1069+
0.0385716291*_D1070+
0.0011964362*_D1071+
0.0015164086*_D1072+
0.0163648115*_D1073+
-0.14125236*_D1074+
0.0158664768*_D1075+
0.0378514743*_D1076+
0.0208655001*_D1077+
0.0037571885*_D1078+
0.0172667593*_D1079+
-0.005016354*_D1080+
-0.020107736*_D1081+
0.0027333535*_D1082+
0.0080523328*_D1083+
-0.004880929*_D1084+
0.0095805426*_D1085+
0.0266702909*_D1086+
-0.014952665*_D1087+
0.0249256802*_D1088+
-0.004248965*_D1089+
0.0090916488*_D1090+
-0.008253349*_D1091+
0.0117043309*_D1092+
0.0027889118*_D1093+
0.011291985*_D1094+
0.0147541872*_D1095+
-0.003707727*_D1096+
0.0065520357*_D1097+
-0.007251546*_D1098+
-0.004526235*_D1099+
0.000058201*_D1100+
0.0074144095*_D1101+
-0.008046323*_D1102+
-0.011405558*_D1103+
0.0069578725*_D1104+
0.0510850958*_D1105+
0.0514829311*_D1106+
0.0017817805*_D1107+
0.0039750744*_D1108+
0.010216584*_D1109+
0.0051890948*_D1110+
-0.000405355*_D1111+
-0.004355199*_D1112+
-0.017865482*_D1113+
-0.013125991*_D1114+
-0.070217538*_D1115+
0.0041738307*_D1116+
-0.002254383*_D1117+
0.004569792*_D1118+
0.0148407022*_D1119+
-0.000933844*_D1120+
-0.003361507*_D1121+
-0.016790441*_D1122+
-0.069256213*_D1123+
-0.004412672*_D1124+
-0.081684789*_D1125+
-0.0000374*_D1126+
-0.011803469*_D1127+
0.0027384217*_D1128+
0.0091239716*_D1129+
-0.01074635*_D1130+
0.0093415369*_D1131+
0.0017327415*_D1132+
-0.012140161*_D1133+
0.0153520506*_D1134+
-0.001992048*_D1135+
0.0083442917*_D1136+
-0.011767167*_D1137+
-0.031073631*_D1138+
0.0082044935*_D1139+
0.0057134991*_D1140+
-0.192818627*_D1141+
0.0038031496*_D1142+
-0.022504101*_D1143+
-0.005411891*_D1144+
-0.015208056*_D1145+
-0.035225337*_D1146+
-0.008206961*_D1147+
0.0057355897*_D1148+
-0.002200863*_D1149+
-0.004251518*_D1150+
0.0074548133*_D1151+
0.00530779*_D1152+
0.0043310176*_D1153+
0.0064300708*_D1154+
0.0097413578*_D1155+
0.0033137569*_D1156+
0.0002968504*_D1157+
-0.013238553*_D1158+
-0.035052448*_D1159+
-0.041571765*_D1160+
0.0273645187*_D1161+
0.013046412*_D1162+
-0.001508161*_D1163+
0.0028941187*_D1164+
0.0046863469*_D1165+
0.0179296731*_D1166+
-0.002218877*_D1167+
-0.078241105*_D1168+
-0.006482035*_D1169+
0.033895636*_D1170+
-0.001471602*_D1171+
-0.017131862*_D1172+
0.1454749954*_D1173+
0.0120260154*_D1174+
0.0040493327*_D1175+
-0.017569906*_D1176+
0.0065956295*_D1177+
0.000126204*_D1178+
0.0114473322*_D1179+
0.0045405299*_D1180+
0.0089634059*_D1181+
-0.030334686*_D1182+
-0.002336074*_D1183+
0.0011695618*_D1184+
-0.033292728*_D1185+
0.0069629676*_D1186+
-0.021643989*_D1187+
-0.001139477*_D1188+
-0.006710221*_D1189+
0.0917514903*_D1190+
-0.013760826*_D1191+
-0.004949894*_D1192+
-0.002673677*_D1193+
0.0123068329*_D1194+
0.0123001441*_D1195+
0.0497309268*_D1196+
0.153877755*_D1197+
0.0118569331*_D1198+
0.0330842436*_D1199+
0.0136755399*_D1200+
0.0114775102*_D1201+
-0.328506156*_D1202+
0.0041509829*_D1203+
-0.013164973*_D1204;
/****************************************/
* Componente principal 18;
/****************************************/
;
length PC_18 8;
label PC_18 = "Componente principal 18";
PC_18 =
-0.003231781*_D1+
0.0082283045*_D2+
-0.014427858*_D3+
0.0172732185*_D4+
0.0026897257*_D5+
-0.000609287*_D6+
-0.022261235*_D7+
-0.003876827*_D8+
0.0077257385*_D9+
0.0172594408*_D10+
0.016092743*_D11+
-0.00108243*_D12+
0.008452047*_D13+
0.0122852534*_D14+
0.0017641363*_D15+
-0.273979104*_D16+
-0.005392688*_D17+
0.0085964513*_D18+
-0.00157948*_D19+
0.0044278058*_D20+
-0.003611065*_D21+
0.0303314309*_D22+
-0.011312782*_D23+
-0.009734721*_D24+
-0.025152484*_D25+
-0.002488666*_D26+
0.0067398781*_D27+
-0.024097486*_D28+
0.0006523291*_D29+
-0.002019869*_D30+
0.016569491*_D31+
0.0093014276*_D32+
-0.003439805*_D33+
0.0105976131*_D34+
0.0189069431*_D35+
0.0196067015*_D36+
0.0023925889*_D37+
-0.004858234*_D38+
0.0201075847*_D39+
-0.002719007*_D40+
-0.002915298*_D41+
0.0022894485*_D42+
-0.012667524*_D43+
0.0172592685*_D44+
-0.005336077*_D45+
0.0032381492*_D46+
0.0101699005*_D47+
0.00115142*_D48+
0.0195261353*_D49+
0.0122489813*_D50+
-0.001149149*_D51+
-0.001772789*_D52+
0.0022802118*_D53+
0.0086248769*_D54+
-0.006306789*_D55+
-0.000740668*_D56+
0.0204999222*_D57+
-0.001946546*_D58+
0.0003860826*_D59+
0.0013380519*_D60+
0.0331208187*_D61+
0.0021776909*_D62+
0.0054100211*_D63+
-0.035357058*_D64+
-0.00665101*_D65+
0.0076945955*_D66+
-0.000775859*_D67+
-0.105254106*_D68+
-0.00200335*_D69+
0.0011217316*_D70+
-0.049298885*_D71+
-0.02435816*_D72+
-0.002445586*_D73+
0.0022250776*_D74+
0.0107601933*_D75+
-0.028907838*_D76+
0.0713916641*_D77+
0.0050332835*_D78+
-0.009763095*_D79+
0.0100330971*_D80+
-0.011617601*_D81+
0.0034998177*_D82+
-0.002385833*_D83+
0.0047943158*_D84+
0.0169823471*_D85+
-0.010444968*_D86+
-0.003836465*_D87+
-0.003442809*_D88+
-0.047699376*_D89+
0.0158368172*_D90+
-0.000384737*_D91+
-0.024716143*_D92+
-0.006398797*_D93+
0.0128434195*_D94+
-0.005778257*_D95+
-0.057731768*_D96+
-0.027936128*_D97+
-0.034982886*_D98+
0.0060116663*_D99+
-0.001417369*_D100+
-0.003318656*_D101+
0.005001565*_D102+
-0.002167321*_D103+
0.0003227457*_D104+
-0.024314414*_D105+
-0.01362515*_D106+
-0.001746517*_D107+
0.0072919595*_D108+
-0.005217346*_D109+
0.0416477949*_D110+
0.0214827582*_D111+
-0.002012457*_D112+
-0.000538983*_D113+
-0.002011738*_D114+
-0.015941649*_D115+
-0.005264752*_D116+
0.0092088466*_D117+
-0.008628067*_D118+
0.0031638021*_D119+
-0.008940885*_D120+
0.0403821356*_D121+
0.0179573611*_D122+
-0.004808256*_D123+
0.0113483087*_D124+
-0.0004871*_D125+
0.0140932632*_D126+
-0.034343111*_D127+
0.003198785*_D128+
0.0002736332*_D129+
-0.030070719*_D130+
-0.00548162*_D131+
0.0133289481*_D132+
0.0055841494*_D133+
-0.014422901*_D134+
-0.013131259*_D135+
-0.001626417*_D136+
0.0009911417*_D137+
0.0096609425*_D138+
-0.002763266*_D139+
-0.005538956*_D140+
-0.006371044*_D141+
-0.006733027*_D142+
-0.000982717*_D143+
-0.004117221*_D144+
-0.007983468*_D145+
0.0037925952*_D146+
-0.007984906*_D147+
-0.009316724*_D148+
-0.002704173*_D149+
-0.01610087*_D150+
-0.002362772*_D151+
0.0124031239*_D152+
0.0153902506*_D153+
0.0139951314*_D154+
-0.008630676*_D155+
0.0059690354*_D156+
0.008381464*_D157+
-0.0045795*_D158+
0.0081863665*_D159+
-0.004772387*_D160+
0.0107833586*_D161+
-0.02444296*_D162+
-0.000030327*_D163+
-0.007002283*_D164+
0.0162493234*_D165+
-0.00623662*_D166+
-0.002845686*_D167+
0.0043822891*_D168+
-0.005850645*_D169+
0.0160448845*_D170+
0.0005269128*_D171+
0.0011000966*_D172+
0.009997983*_D173+
0.0023785456*_D174+
0.0042800824*_D175+
-0.003382187*_D176+
-0.00188129*_D177+
-0.012067397*_D178+
-0.037123932*_D179+
-0.010327009*_D180+
-0.001725723*_D181+
0.0066934605*_D182+
0.0188419816*_D183+
-0.003607821*_D184+
-0.004824247*_D185+
-0.026889995*_D186+
-0.003181502*_D187+
-0.001270458*_D188+
-0.016165018*_D189+
0.0294999754*_D190+
-0.001164875*_D191+
-0.086516966*_D192+
0.0007494059*_D193+
-0.005452017*_D194+
0.0227165784*_D195+
0.0008229264*_D196+
0.0136552846*_D197+
0.0037687614*_D198+
0.0015044158*_D199+
0.0013161982*_D200+
-0.042154011*_D201+
0.0102935461*_D202+
-0.003758157*_D203+
0.0257503499*_D204+
0.0059614766*_D205+
-0.00117745*_D206+
0.0056256613*_D207+
0.0002850363*_D208+
-0.002926947*_D209+
-0.021829254*_D210+
-0.003658847*_D211+
0.0045207126*_D212+
-0.014903491*_D213+
0.0016802468*_D214+
0.0088980655*_D215+
-0.013947819*_D216+
0.0050121708*_D217+
0.0008562421*_D218+
-0.00405985*_D219+
-0.004166712*_D220+
0.0031700486*_D221+
-0.004762115*_D222+
0.0114764329*_D223+
0.0069652478*_D224+
0.018568632*_D225+
-0.00216541*_D226+
-0.006266157*_D227+
0.0039383391*_D228+
-0.014749404*_D229+
-0.019976899*_D230+
0.0012733765*_D231+
0.0172558393*_D232+
-0.001945365*_D233+
0.0007433589*_D234+
-0.007780663*_D235+
0.0017039191*_D236+
0.0017339078*_D237+
0.0030341861*_D238+
0.0010741809*_D239+
-0.053314815*_D240+
-0.002255003*_D241+
-0.057360005*_D242+
-0.003763449*_D243+
0.0030244876*_D244+
-0.003948573*_D245+
0.0207607592*_D246+
0.000952994*_D247+
-0.000248611*_D248+
0.0271449128*_D249+
0.0009690763*_D250+
-0.002133669*_D251+
0.0055934716*_D252+
0.0294009823*_D253+
-0.002608868*_D254+
-0.000677932*_D255+
0.0156569564*_D256+
0.0029647492*_D257+
-0.014843238*_D258+
0.0003158767*_D259+
-0.001802767*_D260+
0.002198083*_D261+
0.0018347225*_D262+
-0.00277109*_D263+
-0.000307633*_D264+
0.0592386125*_D265+
-0.000807778*_D266+
-0.006950677*_D267+
0.0076484507*_D268+
0.0027338341*_D269+
0.038159732*_D270+
0.00475702*_D271+
-0.00329515*_D272+
0.0011476268*_D273+
-0.00123358*_D274+
0.0082945138*_D275+
-0.002885362*_D276+
-0.003252354*_D277+
-0.046142446*_D278+
0.0072856395*_D279+
-0.00043365*_D280+
-0.016455603*_D281+
0.0049434052*_D282+
0.0020882458*_D283+
-0.003586587*_D284+
-0.00225845*_D285+
0.0097950821*_D286+
-0.007833871*_D287+
-0.003911906*_D288+
-0.023922341*_D289+
0.0119680587*_D290+
-0.003177585*_D291+
0.0002913567*_D292+
-0.009230991*_D293+
0.0065753049*_D294+
0.0149247237*_D295+
0.0231691204*_D296+
0.0033185152*_D297+
0.012633373*_D298+
0.0054926904*_D299+
-0.011759729*_D300+
-0.00245338*_D301+
0.0030537707*_D302+
-0.012260999*_D303+
-0.001236384*_D304+
-0.062362811*_D305+
0.0011175593*_D306+
0.0088161057*_D307+
0.0071815881*_D308+
-0.019751718*_D309+
0.0113168972*_D310+
0.0036616025*_D311+
-0.008464256*_D312+
-0.001033129*_D313+
-0.00718398*_D314+
0.000264267*_D315+
0.1179852449*_D316+
-0.001188873*_D317+
0.077277102*_D318+
-0.059705495*_D319+
0.018200854*_D320+
-0.000542292*_D321+
-0.001298667*_D322+
-0.002648142*_D323+
-0.006324268*_D324+
-0.02774172*_D325+
-0.012836445*_D326+
0.00266494*_D327+
0.0066470434*_D328+
-0.005559068*_D329+
0.0569047537*_D330+
-0.003685424*_D331+
-0.008773393*_D332+
-0.003256412*_D333+
-0.033986113*_D334+
-0.011080386*_D335+
-0.008513253*_D336+
0.0292257342*_D337+
-0.003700219*_D338+
0.000178996*_D339+
0.0312711104*_D340+
-0.004575113*_D341+
0.0003013114*_D342+
-0.003194364*_D343+
0.0025623285*_D344+
-0.001058584*_D345+
0.0203026791*_D346+
0.0025081473*_D347+
0.0050326748*_D348+
0.0019628239*_D349+
-0.00488685*_D350+
0.0029447744*_D351+
0.0201743414*_D352+
-0.002321203*_D353+
-0.008226925*_D354+
0.0016282413*_D355+
-0.093693832*_D356+
-0.007605393*_D357+
0.0035382904*_D358+
0.0096206322*_D359+
0.0017612976*_D360+
-0.004356951*_D361+
0.0174181234*_D362+
-0.001970908*_D363+
-0.000374619*_D364+
0.0009087739*_D365+
0.0013070327*_D366+
-0.001357533*_D367+
0.0029852083*_D368+
-0.071423181*_D369+
0.0029533816*_D370+
-0.003527498*_D371+
0.0083757771*_D372+
0.0019454372*_D373+
-0.003039388*_D374+
-0.003336348*_D375+
0.0036898401*_D376+
0.0039542388*_D377+
-0.001750132*_D378+
-0.011948416*_D379+
-0.000994152*_D380+
0.0020112981*_D381+
0.0155229407*_D382+
-0.00270287*_D383+
-0.001174834*_D384+
0.0064503641*_D385+
0.024488432*_D386+
-0.008930222*_D387+
0.0020212201*_D388+
-0.0019527*_D389+
-0.014625213*_D390+
0.0002307939*_D391+
0.0014725176*_D392+
0.0039967096*_D393+
-0.01842053*_D394+
0.0152319919*_D395+
0.0009144576*_D396+
0.0137660442*_D397+
0.0015765199*_D398+
-0.01214198*_D399+
-0.009832047*_D400+
0.0045478296*_D401+
-0.005534997*_D402+
0.0046370483*_D403+
0.0173227169*_D404+
0.0445208597*_D405+
-0.028154604*_D406+
-0.007044912*_D407+
-0.001386261*_D408+
-0.004908404*_D409+
-0.002144574*_D410+
0.0309349513*_D411+
-0.025199096*_D412+
-0.006868783*_D413+
-0.016592104*_D414+
0.0133811171*_D415+
0.0117846505*_D416+
-0.013080792*_D417+
0.0025351769*_D418+
-0.003221442*_D419+
0.0108794511*_D420+
-0.012389097*_D421+
0.0009912337*_D422+
-0.008285465*_D423+
0.0061385587*_D424+
0.0036389198*_D425+
-0.004855208*_D426+
-0.006088326*_D427+
-0.001753324*_D428+
-0.016716783*_D429+
0.0036907953*_D430+
0.0120782763*_D431+
-0.005152108*_D432+
0.0136536788*_D433+
0.0017537078*_D434+
-0.046487909*_D435+
0.0018826272*_D436+
0.0187700253*_D437+
-0.005701211*_D438+
0.0017253085*_D439+
0.0033089791*_D440+
0.0133252311*_D441+
0.0072535756*_D442+
-0.005198704*_D443+
-0.033746723*_D444+
0.0091070896*_D445+
0.0061309367*_D446+
0.0029634166*_D447+
0.0019609382*_D448+
-0.027026172*_D449+
-0.031407927*_D450+
0.0447914963*_D451+
0.0067959612*_D452+
-0.000985343*_D453+
0.0219534915*_D454+
0.0032055682*_D455+
-0.041504359*_D456+
-0.000708049*_D457+
0.0013579248*_D458+
0.0034015271*_D459+
-0.009386704*_D460+
-0.050976947*_D461+
0.0008354842*_D462+
-0.005465004*_D463+
-0.0041163*_D464+
-0.004094459*_D465+
0.0011830089*_D466+
0.0047202277*_D467+
0.00267914*_D468+
-0.000218296*_D469+
-0.015104577*_D470+
0.013932795*_D471+
-0.002193726*_D472+
-0.002311654*_D473+
0.001593531*_D474+
-0.001263547*_D475+
-0.027711909*_D476+
0.003362775*_D477+
0.0054944495*_D478+
-0.008944399*_D479+
-0.008430008*_D480+
0.0012353689*_D481+
-0.001086156*_D482+
0.0035273435*_D483+
0.0123349849*_D484+
0.0131912262*_D485+
-0.002514436*_D486+
0.003750398*_D487+
0.0010161795*_D488+
-0.002121749*_D489+
0.0059655076*_D490+
0.0062945673*_D491+
-0.011250567*_D492+
-0.002382072*_D493+
-0.003913369*_D494+
0.0284514077*_D495+
-0.00139764*_D496+
-0.004751873*_D497+
-0.023894439*_D498+
-0.000673983*_D499+
0.0070961233*_D500+
0.4369549566*_D501+
-0.001676412*_D502+
0.0023428533*_D503+
-0.000942335*_D504+
-0.015863729*_D505+
-0.047895025*_D506+
-0.003156697*_D507+
0.0577081524*_D508+
-0.014996573*_D509+
0.0016223709*_D510+
-0.000349564*_D511+
-0.00258398*_D512+
-0.00493311*_D513+
-0.001400102*_D514+
0.0015312395*_D515+
-0.004045338*_D516+
-0.020731047*_D517+
0.00061005*_D518+
-0.01791249*_D519+
-0.003728582*_D520+
0.0255096716*_D521+
0.0134440573*_D522+
0.0048553358*_D523+
0.002456275*_D524+
0.0091805983*_D525+
0.0051949818*_D526+
-0.038175597*_D527+
-0.003733996*_D528+
0.0037628128*_D529+
0.0095473575*_D530+
0.0078539571*_D531+
0.0043917242*_D532+
0.0407651038*_D533+
0.0218761653*_D534+
0.0032341943*_D535+
-0.00009428*_D536+
-0.002622417*_D537+
0.0078651742*_D538+
0.0059481038*_D539+
-0.004257995*_D540+
-0.000457747*_D541+
-0.006089335*_D542+
-0.027970679*_D543+
-0.002934531*_D544+
-0.022132373*_D545+
0.0026574114*_D546+
-0.000361635*_D547+
0.0109260071*_D548+
-0.003388852*_D549+
0.0074948569*_D550+
0.0003045503*_D551+
0.0115847145*_D552+
0.0211927211*_D553+
0.0070946847*_D554+
-0.003840515*_D555+
-0.001141666*_D556+
0.0334781568*_D557+
0.0102010501*_D558+
-0.008469374*_D559+
0.007459716*_D560+
-8.343731E-6*_D561+
0.0657117157*_D562+
-0.000273214*_D563+
-0.012850823*_D564+
-0.008389197*_D565+
-0.012926456*_D566+
0.0268610979*_D567+
-0.00458856*_D568+
-0.008090912*_D569+
0.0178663927*_D570+
-0.007686015*_D571+
0.0830314803*_D572+
-0.008768161*_D573+
0.0035414686*_D574+
-0.010050457*_D575+
-0.002637752*_D576+
-0.004044545*_D577+
-0.002560924*_D578+
-0.006170676*_D579+
0.0061964662*_D580+
-0.006242027*_D581+
-0.000128378*_D582+
0.0078320108*_D583+
-0.002528881*_D584+
0.0019660632*_D585+
-0.014819532*_D586+
0.0025059601*_D587+
0.0001991792*_D588+
0.0005498758*_D589+
0.0010173103*_D590+
0.0012688552*_D591+
0.0044722616*_D592+
0.0013302625*_D593+
0.0056467692*_D594+
0.0030008732*_D595+
0.0104999268*_D596+
0.0059937986*_D597+
-0.002874646*_D598+
-0.000199228*_D599+
-0.003512902*_D600+
-0.009437236*_D601+
-0.001455415*_D602+
0.0315329748*_D603+
0.0321196461*_D604+
0.0025168386*_D605+
-0.002512228*_D606+
-0.001100874*_D607+
-0.000291562*_D608+
0.0046526509*_D609+
-0.003446502*_D610+
-0.014420016*_D611+
0.0054820211*_D612+
0.0197444565*_D613+
-0.003318227*_D614+
0.0051350752*_D615+
-0.009122758*_D616+
-0.009790319*_D617+
-0.013431294*_D618+
0.0090661067*_D619+
0.0028564908*_D620+
0.0002458203*_D621+
-0.00084917*_D622+
-0.002174269*_D623+
-0.00459868*_D624+
0.0093807523*_D625+
0.0378150139*_D626+
-0.034740516*_D627+
-0.007578566*_D628+
0.0053692387*_D629+
0.0037242931*_D630+
0.0030451291*_D631+
-0.015863958*_D632+
-0.006037867*_D633+
0.0035598684*_D634+
0.0035043774*_D635+
0.0005183945*_D636+
0.0015656325*_D637+
0.0044990017*_D638+
-0.022096198*_D639+
-0.004008082*_D640+
0.0049356524*_D641+
-0.00073052*_D642+
0.0034132807*_D643+
-0.003204327*_D644+
0.0307362853*_D645+
0.0141902367*_D646+
0.0001606165*_D647+
-0.000423033*_D648+
-0.027689916*_D649+
-0.002470438*_D650+
-0.012738193*_D651+
-0.010858945*_D652+
-0.006812922*_D653+
0.0017722906*_D654+
-0.024394538*_D655+
-0.001600971*_D656+
0.0343676498*_D657+
-0.006161432*_D658+
-0.002486774*_D659+
-0.00326097*_D660+
-0.001001161*_D661+
-0.013713169*_D662+
0.0037906396*_D663+
0.0017856086*_D664+
0.0264359867*_D665+
-0.000335269*_D666+
0.0009574901*_D667+
0.0068720293*_D668+
0.0005999401*_D669+
-0.002383697*_D670+
0.0053219547*_D671+
0.0083779092*_D672+
-0.000409514*_D673+
-0.000944675*_D674+
-0.002300161*_D675+
0.0000605049*_D676+
0.0057183637*_D677+
-0.011128885*_D678+
0.0028810286*_D679+
-0.002391914*_D680+
-0.005281159*_D681+
0.0017134064*_D682+
0.3823992435*_D683+
0.0193373338*_D684+
0.0053320119*_D685+
-0.012229042*_D686+
-0.009527347*_D687+
0.0012822094*_D688+
-0.00791814*_D689+
-0.003130085*_D690+
-0.01707183*_D691+
0.0007922571*_D692+
-0.002219337*_D693+
0.0124848289*_D694+
0.0028697398*_D695+
0.0055133735*_D696+
0.0001805083*_D697+
-0.001997261*_D698+
-0.006940393*_D699+
0.0047379219*_D700+
-0.002879482*_D701+
-0.012383466*_D702+
-0.007187519*_D703+
-0.000405629*_D704+
-0.014635203*_D705+
0.000960934*_D706+
0.0007831853*_D707+
0.000441396*_D708+
0.0058650621*_D709+
-0.011023177*_D710+
-0.007472771*_D711+
-0.012025221*_D712+
-0.026565495*_D713+
-0.000738207*_D714+
-0.003843637*_D715+
0.0043756918*_D716+
0.0019589115*_D717+
-0.002712319*_D718+
-0.007201607*_D719+
0.0032473303*_D720+
-0.011014476*_D721+
0.0007255234*_D722+
-0.016412803*_D723+
-0.017922922*_D724+
-0.014144248*_D725+
-0.003154539*_D726+
-0.001599394*_D727+
0.0011411726*_D728+
0.0000843679*_D729+
-0.007564345*_D730+
0.0051326946*_D731+
-0.01108696*_D732+
0.0035629775*_D733+
0.0022297158*_D734+
-0.000671243*_D735+
0.0579001454*_D736+
-0.003736849*_D737+
0.0191074255*_D738+
0.0339264709*_D739+
0.0380060254*_D740+
-0.001804567*_D741+
-0.00430871*_D742+
0.0029650094*_D743+
0.0080901871*_D744+
0.0047653678*_D745+
-0.002480129*_D746+
-0.001358358*_D747+
0.003466024*_D748+
-0.031164305*_D749+
0.0207743429*_D750+
-0.01614246*_D751+
-0.00016052*_D752+
-0.001666682*_D753+
-0.009593186*_D754+
0.0062452379*_D755+
-0.00074834*_D756+
-0.009507198*_D757+
0.0014250151*_D758+
0.0025014105*_D759+
-0.005359732*_D760+
-0.031745604*_D761+
0.0103286863*_D762+
0.0007193632*_D763+
0.0032328929*_D764+
0.0374791369*_D765+
-0.012807589*_D766+
0.0032616278*_D767+
0.0004081359*_D768+
-0.003532099*_D769+
-0.014414263*_D770+
0.00122475*_D771+
0.0071369982*_D772+
0.007720943*_D773+
-0.011086256*_D774+
-0.013256244*_D775+
-0.015408172*_D776+
0.0044467466*_D777+
-0.00779285*_D778+
0.0114868967*_D779+
0.0020674137*_D780+
-0.006768783*_D781+
-0.005919657*_D782+
0.0031695962*_D783+
0.0058196194*_D784+
-0.001824939*_D785+
-0.022944437*_D786+
0.0412830072*_D787+
0.0209006738*_D788+
-0.000784593*_D789+
-0.005248662*_D790+
0.0001356248*_D791+
-0.041922352*_D792+
0.0050355937*_D793+
-0.000711594*_D794+
0.0011085549*_D795+
-0.001030043*_D796+
0.0003766491*_D797+
-0.002410323*_D798+
0.0071590994*_D799+
0.0045066482*_D800+
-0.0026864*_D801+
-0.030545074*_D802+
0.0265049668*_D803+
-0.026211243*_D804+
-0.003163699*_D805+
-0.007771259*_D806+
0.0090052977*_D807+
-0.042612867*_D808+
0.0167714319*_D809+
0.0054660594*_D810+
0.0023204652*_D811+
0.0002000167*_D812+
-0.000439448*_D813+
-0.016591554*_D814+
0.0170325724*_D815+
-0.00431513*_D816+
-0.003964739*_D817+
0.0056463528*_D818+
0.0148292456*_D819+
-0.002998673*_D820+
-0.000290256*_D821+
0.0090036103*_D822+
0.0038879875*_D823+
-0.007239878*_D824+
0.0154102184*_D825+
-0.091422132*_D826+
-0.00360454*_D827+
0.0231157581*_D828+
-0.022307873*_D829+
-0.001446013*_D830+
-0.001421817*_D831+
-0.002314989*_D832+
-0.00610472*_D833+
-0.014029972*_D834+
-0.004241707*_D835+
-0.00315952*_D836+
-0.000514374*_D837+
-0.000526779*_D838+
0.0080730331*_D839+
0.0071085988*_D840+
-0.00083742*_D841+
-0.013655641*_D842+
-0.001992257*_D843+
-0.009838653*_D844+
0.023779091*_D845+
0.0027625474*_D846+
0.0831493268*_D847+
0.0102229965*_D848+
0.0012092865*_D849+
-0.00927695*_D850+
0.0617412738*_D851+
0.00077243*_D852+
-0.001879114*_D853+
-0.01032544*_D854+
-0.005813017*_D855+
-0.001182482*_D856+
-0.004008388*_D857+
-0.005204373*_D858+
-0.014989913*_D859+
0.0072773962*_D860+
-0.004218822*_D861+
-0.019657659*_D862+
0.0029447593*_D863+
-0.001495308*_D864+
-0.002061653*_D865+
0.0018086231*_D866+
0.0018900562*_D867+
-0.007604221*_D868+
-0.124541141*_D869+
0.0750978803*_D870+
-0.010490158*_D871+
0.0024239983*_D872+
-0.005528582*_D873+
0.0067919818*_D874+
-0.002673178*_D875+
-0.004254344*_D876+
0.0052953297*_D877+
0.0019391551*_D878+
0.0018508185*_D879+
-0.001820042*_D880+
-0.017503535*_D881+
-0.002114945*_D882+
-0.00181644*_D883+
-0.000937973*_D884+
-0.028602166*_D885+
-0.001283068*_D886+
0.0034682096*_D887+
0.0005523361*_D888+
-0.010185473*_D889+
-0.006424143*_D890+
-0.006888049*_D891+
-0.000245739*_D892+
-0.006074338*_D893+
-0.017848092*_D894+
-0.039664895*_D895+
-0.002866021*_D896+
-0.005786286*_D897+
-0.008984647*_D898+
0.0123102143*_D899+
-0.008832134*_D900+
0.0016277604*_D901+
-0.008538542*_D902+
0.0026141789*_D903+
0.0048175944*_D904+
-0.028966764*_D905+
0.0022532033*_D906+
-0.004435534*_D907+
0.0021412829*_D908+
-0.012492047*_D909+
0.0114868967*_D910+
0.0008310864*_D911+
0.0277554131*_D912+
-0.003141414*_D913+
0.0024093055*_D914+
0.0086184786*_D915+
0.0019385823*_D916+
0.0428000265*_D917+
-0.006825725*_D918+
-0.020075198*_D919+
-0.011598365*_D920+
-0.000305666*_D921+
-0.012004677*_D922+
0.007586603*_D923+
-0.00345604*_D924+
-0.011411232*_D925+
-0.008518381*_D926+
-0.02101235*_D927+
0.0040960701*_D928+
-0.000174076*_D929+
-0.027874922*_D930+
-0.005357216*_D931+
0.0006361578*_D932+
-0.00340893*_D933+
0.0059426619*_D934+
-0.003125882*_D935+
-0.001017709*_D936+
-0.00101763*_D937+
-0.024998535*_D938+
-0.008987006*_D939+
0.0189256483*_D940+
0.0017338144*_D941+
0.0152845001*_D942+
-0.005490657*_D943+
-0.008678076*_D944+
0.0003245609*_D945+
0.0651313605*_D946+
0.0103468811*_D947+
0.0233671892*_D948+
0.0009066906*_D949+
0.0041436071*_D950+
0.0037147283*_D951+
-0.078395226*_D952+
0.002607506*_D953+
0.0061808813*_D954+
0.001353136*_D955+
0.0144800983*_D956+
0.0063749661*_D957+
-0.014562679*_D958+
0.0109969364*_D959+
-0.028558875*_D960+
-0.01085677*_D961+
-0.000820477*_D962+
0.0054280801*_D963+
-0.000577066*_D964+
-0.004371662*_D965+
0.0018172312*_D966+
-0.00295612*_D967+
0.0056580963*_D968+
-0.007002694*_D969+
0.0242947485*_D970+
-0.002650609*_D971+
0.0093824713*_D972+
0.0452274917*_D973+
0.0071740283*_D974+
-0.014012229*_D975+
-0.001913664*_D976+
-0.001674224*_D977+
0.0067894547*_D978+
-0.027008013*_D979+
0.00434618*_D980+
-0.003341832*_D981+
0.0081841585*_D982+
-0.007750515*_D983+
-0.001344175*_D984+
-0.00372519*_D985+
0.0077484455*_D986+
0.0265325828*_D987+
0.0128797195*_D988+
0.0009527635*_D989+
0.0034480099*_D990+
-0.000571465*_D991+
0.0055217497*_D992+
-0.016454047*_D993+
0.0055467204*_D994+
0.0110354881*_D995+
0.0020717785*_D996+
0.0002395848*_D997+
0.0127895465*_D998+
0.006835478*_D999+
0.0066321675*_D1000+
0.0379381037*_D1001+
0.0006489537*_D1002+
-0.003687116*_D1003+
0.0022313154*_D1004+
-0.001886265*_D1005+
0.0028266701*_D1006+
0.0052816144*_D1007+
-0.002703936*_D1008+
0.0055556829*_D1009+
-0.006276639*_D1010+
0.0171486238*_D1011+
-0.009866829*_D1012+
0.0422449474*_D1013+
0.0359484075*_D1014+
-0.00047294*_D1015+
0.0030143111*_D1016+
0.0002605083*_D1017+
-0.004227917*_D1018+
-0.00664416*_D1019+
-0.012674098*_D1020+
0.0016028524*_D1021+
0.0182561712*_D1022+
-0.002869369*_D1023+
0.0105085496*_D1024+
-0.005491975*_D1025+
0.0031183745*_D1026+
-0.001715407*_D1027+
0.0287854102*_D1028+
0.011617173*_D1029+
0.0036337408*_D1030+
0.0019697379*_D1031+
0.0059587647*_D1032+
0.011579511*_D1033+
-0.004796528*_D1034+
0.0191961505*_D1035+
0.0051825886*_D1036+
-0.007564528*_D1037+
0.0165109318*_D1038+
0.0121815884*_D1039+
-0.007359774*_D1040+
-0.004254311*_D1041+
-0.005356222*_D1042+
0.0066715452*_D1043+
-0.006091021*_D1044+
0.070847165*_D1045+
0.0442904993*_D1046+
-0.004793491*_D1047+
-0.007358581*_D1048+
0.0144695269*_D1049+
0.0015255655*_D1050+
-0.009410693*_D1051+
0.0012158664*_D1052+
0.0022400569*_D1053+
0.0033532894*_D1054+
0.0029200239*_D1055+
-0.005706453*_D1056+
-0.007145567*_D1057+
0.0026771842*_D1058+
0.0229863791*_D1059+
0.0031289504*_D1060+
0.0249077178*_D1061+
0.0029706123*_D1062+
-0.00982629*_D1063+
-0.003958829*_D1064+
0.0267776737*_D1065+
-0.003398906*_D1066+
0.0012556924*_D1067+
0.0042278327*_D1068+
-0.00087328*_D1069+
-0.001735389*_D1070+
0.0048368477*_D1071+
0.0000418487*_D1072+
-0.012316197*_D1073+
0.0156998248*_D1074+
-0.001280597*_D1075+
-0.006008916*_D1076+
0.0350755888*_D1077+
-0.002471942*_D1078+
-0.003439747*_D1079+
0.013591627*_D1080+
0.006056006*_D1081+
-0.005724441*_D1082+
0.0013114821*_D1083+
0.0096424825*_D1084+
0.0029799485*_D1085+
-0.010797196*_D1086+
-0.000568469*_D1087+
0.0844069987*_D1088+
0.0073077755*_D1089+
0.0042437963*_D1090+
0.0039722228*_D1091+
0.0016685331*_D1092+
-0.006707834*_D1093+
0.0570818415*_D1094+
-0.006409978*_D1095+
0.0037491659*_D1096+
-0.003984092*_D1097+
-0.001984672*_D1098+
-0.001634089*_D1099+
0.0048538558*_D1100+
-0.000679913*_D1101+
0.0023401866*_D1102+
-0.011990762*_D1103+
-0.001126116*_D1104+
-0.004754972*_D1105+
-0.006220558*_D1106+
0.0023669242*_D1107+
-0.001666966*_D1108+
-0.000195336*_D1109+
-0.00416366*_D1110+
0.0006808254*_D1111+
-0.006856471*_D1112+
0.0118418809*_D1113+
0.0058825787*_D1114+
0.0123228719*_D1115+
0.0031446951*_D1116+
-0.002202564*_D1117+
-0.001219327*_D1118+
0.0331742167*_D1119+
-0.001548827*_D1120+
0.0022221948*_D1121+
0.0226621048*_D1122+
-0.02011439*_D1123+
0.0244252549*_D1124+
0.0155486721*_D1125+
-0.009398805*_D1126+
-0.016444257*_D1127+
0.0014901922*_D1128+
0.001493153*_D1129+
-0.019190892*_D1130+
-0.013478278*_D1131+
0.0013447708*_D1132+
-0.02907252*_D1133+
-0.002896776*_D1134+
0.0118484675*_D1135+
-0.000034327*_D1136+
-0.007717983*_D1137+
0.007541665*_D1138+
-0.003035849*_D1139+
0.0036194206*_D1140+
0.0235142622*_D1141+
0.0028854005*_D1142+
-0.066143511*_D1143+
0.0072656941*_D1144+
0.0076976924*_D1145+
0.0149443541*_D1146+
-0.004322524*_D1147+
-0.007228724*_D1148+
-0.001333287*_D1149+
0.002526242*_D1150+
9.3368803E-6*_D1151+
0.0099193771*_D1152+
0.0046441441*_D1153+
-0.000495066*_D1154+
-0.000955803*_D1155+
-0.007493938*_D1156+
0.0029736075*_D1157+
0.0043112525*_D1158+
0.0072377325*_D1159+
0.0042664769*_D1160+
-0.003206346*_D1161+
-0.003657775*_D1162+
0.0037387217*_D1163+
0.0157902118*_D1164+
-0.001871182*_D1165+
-0.003464826*_D1166+
-0.000028113*_D1167+
-0.169519439*_D1168+
-0.039949101*_D1169+
-0.006459819*_D1170+
-0.099920432*_D1171+
-0.147032245*_D1172+
-0.032982681*_D1173+
0.0001836051*_D1174+
-0.001977318*_D1175+
0.0184256215*_D1176+
0.006573671*_D1177+
0.0068290096*_D1178+
0.0125358436*_D1179+
-0.000725877*_D1180+
0.0013303637*_D1181+
-0.002358654*_D1182+
-0.007508484*_D1183+
0.0079494228*_D1184+
0.0034218362*_D1185+
0.0036565714*_D1186+
-0.09022757*_D1187+
-0.017173417*_D1188+
-0.024170739*_D1189+
0.3927464577*_D1190+
-0.014475782*_D1191+
-0.021843954*_D1192+
-0.011411471*_D1193+
0.0015931163*_D1194+
-0.001201833*_D1195+
-0.012300371*_D1196+
-0.027291706*_D1197+
-0.001573308*_D1198+
-0.001380013*_D1199+
0.0126523941*_D1200+
-0.000647101*_D1201+
0.0999153464*_D1202+
0.00214609*_D1203+
0.0108620675*_D1204;
/****************************************/
* Componente principal 19;
/****************************************/
;
length PC_19 8;
label PC_19 = "Componente principal 19";
PC_19 =
0.0001956062*_D1+
-0.005861327*_D2+
-0.016039714*_D3+
0.0145666239*_D4+
-0.001222358*_D5+
0.0003432808*_D6+
-0.038905929*_D7+
0.0091332782*_D8+
0.0097380754*_D9+
0.0426410433*_D10+
0.0173816453*_D11+
0.0126316664*_D12+
-0.000926411*_D13+
-0.003403977*_D14+
-0.004610729*_D15+
0.052674452*_D16+
0.0072128032*_D17+
0.0098506752*_D18+
0.0006821542*_D19+
0.0007847392*_D20+
0.0010234167*_D21+
0.0038202382*_D22+
-0.001855946*_D23+
-0.005029464*_D24+
0.0067186511*_D25+
0.006763582*_D26+
0.0045302112*_D27+
-0.032762846*_D28+
-0.000589697*_D29+
0.0074032823*_D30+
0.0149387057*_D31+
0.009139705*_D32+
0.0105854854*_D33+
0.0090736408*_D34+
-0.01497944*_D35+
0.0124434547*_D36+
-0.004796975*_D37+
-0.020489552*_D38+
-0.006503721*_D39+
-0.010089232*_D40+
-0.010552405*_D41+
0.0052430474*_D42+
-0.000046333*_D43+
-0.024803442*_D44+
0.0015147492*_D45+
-0.00299928*_D46+
0.0057313581*_D47+
-0.003721188*_D48+
-0.028208053*_D49+
0.0044417336*_D50+
-0.000615256*_D51+
-0.002597471*_D52+
0.0290369637*_D53+
0.032790498*_D54+
0.0057280372*_D55+
0.0023025752*_D56+
0.006901024*_D57+
-0.004631207*_D58+
0.0008897198*_D59+
-0.033993923*_D60+
-0.002372441*_D61+
0.0021654765*_D62+
-0.000650586*_D63+
-0.041128127*_D64+
-0.003784006*_D65+
0.0058821366*_D66+
0.0011637345*_D67+
0.0020572973*_D68+
0.0041480812*_D69+
0.0062853*_D70+
-0.0661777*_D71+
0.0595971204*_D72+
-0.004301391*_D73+
0.0088350952*_D74+
-0.001468757*_D75+
-0.001536502*_D76+
0.0704615533*_D77+
0.0076716057*_D78+
-0.004517134*_D79+
-0.006698447*_D80+
-0.000118936*_D81+
-0.004074809*_D82+
0.0141468649*_D83+
0.0080007068*_D84+
-0.002092509*_D85+
0.0028592872*_D86+
-0.00729802*_D87+
0.0075839817*_D88+
-0.11003461*_D89+
0.0230543833*_D90+
0.0014919259*_D91+
0.0034179105*_D92+
0.0250436222*_D93+
-0.004116603*_D94+
-0.004612999*_D95+
-0.074646948*_D96+
0.019620753*_D97+
0.0421104972*_D98+
0.0116434278*_D99+
0.0053367149*_D100+
0.0095212998*_D101+
0.0069388198*_D102+
0.0095298885*_D103+
0.0021603654*_D104+
0.0124015325*_D105+
-0.003678977*_D106+
0.0063224507*_D107+
0.0001917165*_D108+
-0.005799864*_D109+
-0.036845135*_D110+
-0.020143968*_D111+
0.0143567922*_D112+
0.0010079072*_D113+
-0.000586607*_D114+
0.0068929476*_D115+
-0.007200253*_D116+
0.013557583*_D117+
-0.003259473*_D118+
0.0029053949*_D119+
-0.002213079*_D120+
0.0316837436*_D121+
0.0167597907*_D122+
-0.007018916*_D123+
0.0059368935*_D124+
-0.004750277*_D125+
0.0211835402*_D126+
0.0543471752*_D127+
-0.001034405*_D128+
0.0179989987*_D129+
0.0055804817*_D130+
-0.003720233*_D131+
0.0161805919*_D132+
0.0041248323*_D133+
0.0096496333*_D134+
0.0083597388*_D135+
0.0001154471*_D136+
0.0025282387*_D137+
0.0069727406*_D138+
-0.00507165*_D139+
-0.013156716*_D140+
0.0029221962*_D141+
-0.006221933*_D142+
0.0031959401*_D143+
-0.01425211*_D144+
0.0131697595*_D145+
-0.005079307*_D146+
-0.00245875*_D147+
0.0073662049*_D148+
0.0112138697*_D149+
-0.01811524*_D150+
0.0030416898*_D151+
0.0052763402*_D152+
0.0139832852*_D153+
0.0215891075*_D154+
-0.014426813*_D155+
-0.002599784*_D156+
0.0041258426*_D157+
0.0086189291*_D158+
0.0128956621*_D159+
0.003103544*_D160+
0.0033231711*_D161+
0.0080784894*_D162+
0.0028282074*_D163+
0.0056793658*_D164+
0.0325708267*_D165+
0.0010058784*_D166+
-0.006911351*_D167+
0.0045217276*_D168+
0.0034353336*_D169+
0.0236479263*_D170+
-0.007730918*_D171+
0.0042346636*_D172+
-0.01077957*_D173+
0.0083767834*_D174+
0.0079795286*_D175+
-0.003996808*_D176+
0.0030725957*_D177+
0.0333028247*_D178+
-0.031750638*_D179+
0.0148911983*_D180+
0.0019491064*_D181+
0.0134912901*_D182+
0.0108439195*_D183+
-0.010423267*_D184+
-0.004679325*_D185+
0.0227084375*_D186+
-0.009008015*_D187+
0.0023351458*_D188+
-0.027474951*_D189+
0.2357115733*_D190+
0.0030690113*_D191+
0.0311956453*_D192+
-0.010572213*_D193+
-0.005460859*_D194+
0.0105538553*_D195+
0.0045033342*_D196+
0.001169206*_D197+
0.0040484144*_D198+
0.007056366*_D199+
-0.013281488*_D200+
-0.048246604*_D201+
-0.007587313*_D202+
0.0056531693*_D203+
0.0248266357*_D204+
-0.014899812*_D205+
0.0062553136*_D206+
0.0092886538*_D207+
0.0070014997*_D208+
-0.00154887*_D209+
-0.047178071*_D210+
0.0033165006*_D211+
0.0037537598*_D212+
-0.003821298*_D213+
-0.002086727*_D214+
-0.003217366*_D215+
-0.002722724*_D216+
-0.007261481*_D217+
0.0000278266*_D218+
-0.001717971*_D219+
0.0064224617*_D220+
0.002133625*_D221+
0.0022945976*_D222+
-0.019622479*_D223+
0.0102147377*_D224+
0.0330765913*_D225+
0.0006244624*_D226+
0.015222813*_D227+
-0.005442483*_D228+
-0.017785157*_D229+
-0.020038872*_D230+
0.0015502445*_D231+
-0.018293045*_D232+
0.0051659359*_D233+
-0.005644772*_D234+
-0.006070897*_D235+
0.003582182*_D236+
0.0091768639*_D237+
0.0050267179*_D238+
0.0035180922*_D239+
-0.072984422*_D240+
0.0039327775*_D241+
0.0121184846*_D242+
0.0028128884*_D243+
0.002522085*_D244+
0.0027281185*_D245+
0.0307492207*_D246+
0.0589107855*_D247+
0.0113465085*_D248+
0.0026135134*_D249+
0.0014399827*_D250+
-0.002906726*_D251+
-0.006161905*_D252+
-0.024608803*_D253+
0.0027132746*_D254+
0.0063323838*_D255+
-0.00302431*_D256+
0.0120931803*_D257+
0.0179121177*_D258+
0.0043999862*_D259+
0.0074732859*_D260+
-0.006200367*_D261+
0.0030477189*_D262+
-0.014695289*_D263+
-0.002750376*_D264+
-0.043548112*_D265+
-0.006716154*_D266+
-0.000198858*_D267+
0.0108332038*_D268+
0.0640964266*_D269+
0.0640568185*_D270+
0.0059529209*_D271+
-0.002707769*_D272+
0.0043296132*_D273+
-0.013742172*_D274+
-0.004215132*_D275+
0.0040036493*_D276+
0.0013881521*_D277+
0.0031118371*_D278+
0.0259428362*_D279+
0.0017477854*_D280+
0.0065673591*_D281+
0.0048015963*_D282+
0.0129632849*_D283+
-0.001468717*_D284+
-0.00772977*_D285+
0.0042667864*_D286+
0.0048557402*_D287+
0.0018173469*_D288+
0.0314769594*_D289+
0.0112326671*_D290+
-0.000485786*_D291+
-0.000421764*_D292+
0.0074283563*_D293+
-0.004115695*_D294+
0.0061057532*_D295+
0.0056165326*_D296+
0.0066156037*_D297+
0.0090809949*_D298+
0.0157914702*_D299+
-0.020895319*_D300+
0.0007422883*_D301+
-0.002094129*_D302+
0.0109510298*_D303+
-0.006322146*_D304+
0.0260984252*_D305+
-0.003339802*_D306+
0.011049253*_D307+
0.0086373081*_D308+
0.0080990166*_D309+
0.0107524663*_D310+
-0.009588914*_D311+
-0.004601414*_D312+
0.0006934646*_D313+
-0.011357404*_D314+
0.0002316056*_D315+
0.0864029443*_D316+
0.001191766*_D317+
0.0836400023*_D318+
0.0193598007*_D319+
0.0208750699*_D320+
-0.001780862*_D321+
0.0016860083*_D322+
0.0097007799*_D323+
-0.015932277*_D324+
0.0166229492*_D325+
0.0069118728*_D326+
0.00149232*_D327+
0.00326979*_D328+
0.0024927166*_D329+
0.0474551868*_D330+
0.0126991471*_D331+
-0.020250806*_D332+
0.0035426904*_D333+
-0.021566114*_D334+
0.0136871124*_D335+
-0.005389347*_D336+
-0.01795743*_D337+
-0.011501986*_D338+
-0.01067354*_D339+
0.0342381794*_D340+
-0.000879083*_D341+
-0.00549238*_D342+
0.0067718436*_D343+
0.0030854805*_D344+
0.0114508231*_D345+
-0.015427048*_D346+
0.0046760569*_D347+
0.0049456252*_D348+
-0.008334905*_D349+
-0.002843674*_D350+
0.0177726299*_D351+
0.0149706066*_D352+
-0.001674056*_D353+
-0.002128977*_D354+
0.006777289*_D355+
-0.01107146*_D356+
0.007767012*_D357+
0.0089737089*_D358+
-0.004265104*_D359+
0.000774497*_D360+
0.0090831247*_D361+
0.001526973*_D362+
0.0047077681*_D363+
0.001065922*_D364+
-0.008196123*_D365+
0.0003042489*_D366+
0.0002417416*_D367+
0.0069542521*_D368+
-0.009383719*_D369+
-0.000065077*_D370+
0.0009483665*_D371+
0.0020786322*_D372+
0.0051445216*_D373+
0.0018688629*_D374+
0.0082820871*_D375+
-0.006016963*_D376+
0.0039416812*_D377+
0.015225187*_D378+
0.0013268227*_D379+
-0.001059252*_D380+
0.007874553*_D381+
-0.017879561*_D382+
-0.005309492*_D383+
-0.001620841*_D384+
-0.000114251*_D385+
-0.000322974*_D386+
0.0088418674*_D387+
0.0036327489*_D388+
-0.019472785*_D389+
-0.00905831*_D390+
0.0005398559*_D391+
0.0089307554*_D392+
0.0076395146*_D393+
0.0010476528*_D394+
-0.002230143*_D395+
0.002702415*_D396+
0.0029041742*_D397+
0.0014051502*_D398+
-0.001906154*_D399+
-0.021372356*_D400+
0.0047094433*_D401+
0.0400274059*_D402+
0.0040692993*_D403+
0.006658008*_D404+
0.1046375943*_D405+
0.0104385815*_D406+
-0.004301149*_D407+
0.0014601633*_D408+
0.004025854*_D409+
1.2344537E-6*_D410+
0.003210105*_D411+
-0.005752822*_D412+
-0.002878802*_D413+
0.0130739834*_D414+
-0.010892075*_D415+
-0.000225509*_D416+
-0.020438862*_D417+
0.0016419992*_D418+
-0.002081827*_D419+
-0.006433584*_D420+
-0.002569944*_D421+
-0.00023611*_D422+
0.0078715966*_D423+
-0.000503703*_D424+
0.0084704745*_D425+
0.0124183423*_D426+
-0.014767749*_D427+
-0.002818313*_D428+
0.0049771737*_D429+
0.0145847319*_D430+
-0.003417959*_D431+
0.0016708142*_D432+
0.0018095843*_D433+
-0.003760373*_D434+
-0.082717459*_D435+
0.0162697946*_D436+
0.0225801207*_D437+
0.0004350167*_D438+
-0.00966079*_D439+
0.0096851938*_D440+
-0.010083949*_D441+
0.0045761537*_D442+
-0.002215528*_D443+
0.0269260319*_D444+
0.002945575*_D445+
0.007765907*_D446+
-0.008578319*_D447+
-0.00526353*_D448+
-0.034316729*_D449+
-0.007252945*_D450+
-0.032615259*_D451+
0.0022280919*_D452+
0.0002256014*_D453+
-0.005023605*_D454+
0.0070637806*_D455+
-0.05571209*_D456+
-0.003359661*_D457+
0.0371043547*_D458+
-0.00943468*_D459+
0.0125964344*_D460+
-0.078227264*_D461+
0.0008383104*_D462+
-0.008202873*_D463+
-0.005080308*_D464+
0.0086797574*_D465+
-0.001401735*_D466+
0.0044253428*_D467+
0.0067713266*_D468+
0.0037042289*_D469+
0.0000687958*_D470+
-0.001996974*_D471+
-0.00112109*_D472+
0.0006271007*_D473+
-0.001062609*_D474+
-0.000182352*_D475+
0.0062850143*_D476+
0.0020463772*_D477+
0.0049160434*_D478+
-0.009835932*_D479+
0.0006185108*_D480+
0.0025362597*_D481+
0.0005489995*_D482+
-0.003270495*_D483+
0.008122278*_D484+
0.0223095146*_D485+
-0.006414923*_D486+
0.0005739543*_D487+
-0.000152485*_D488+
0.0054824449*_D489+
0.0056792965*_D490+
0.0095930508*_D491+
-0.013749293*_D492+
-0.001176898*_D493+
0.0046967871*_D494+
0.0195310683*_D495+
-0.001044245*_D496+
-0.001632108*_D497+
-0.012465503*_D498+
0.0037765612*_D499+
-0.001448522*_D500+
-0.322879161*_D501+
0.0100448128*_D502+
-0.006329963*_D503+
0.0032362557*_D504+
-0.018147142*_D505+
0.0010455391*_D506+
0.0087203867*_D507+
0.0633701972*_D508+
-0.000921406*_D509+
0.0095291082*_D510+
0.0032336815*_D511+
0.0082519113*_D512+
0.0046958162*_D513+
0.0027277797*_D514+
0.0043032102*_D515+
-0.006578383*_D516+
0.006301507*_D517+
-0.023079781*_D518+
-0.004863557*_D519+
0.0024111199*_D520+
0.0342807549*_D521+
0.0045098994*_D522+
-0.005837399*_D523+
-0.003481621*_D524+
0.0040708049*_D525+
-0.003413166*_D526+
-0.042443835*_D527+
0.0023277193*_D528+
-0.003654356*_D529+
-0.002790725*_D530+
-0.002689406*_D531+
0.0077696376*_D532+
-0.055647258*_D533+
-0.016245528*_D534+
0.0007673003*_D535+
0.0036655491*_D536+
0.0000852105*_D537+
0.0097218885*_D538+
0.0084287376*_D539+
-0.001333422*_D540+
0.0026768957*_D541+
0.0293228144*_D542+
-0.013558634*_D543+
-0.001432356*_D544+
0.0015382532*_D545+
6.6926708E-6*_D546+
-0.008653099*_D547+
0.0005238519*_D548+
-0.006589093*_D549+
-0.005918747*_D550+
0.0071631868*_D551+
-0.019486204*_D552+
0.0398936134*_D553+
0.0126730775*_D554+
0.0133631165*_D555+
-0.005616319*_D556+
-0.01120155*_D557+
0.0011129904*_D558+
0.0104964293*_D559+
0.0266010188*_D560+
0.0035905777*_D561+
0.1081977968*_D562+
-0.005151523*_D563+
0.0039497894*_D564+
-0.000023539*_D565+
0.0906779772*_D566+
0.0235031944*_D567+
0.0039399523*_D568+
-0.010641912*_D569+
0.0047565801*_D570+
0.000508426*_D571+
0.0606416109*_D572+
0.0227184866*_D573+
-0.000698578*_D574+
0.0003852414*_D575+
0.0038849677*_D576+
0.0261664496*_D577+
0.0011915315*_D578+
0.0055419177*_D579+
0.0088787056*_D580+
0.0000540368*_D581+
0.0040593579*_D582+
0.0132574191*_D583+
-0.005971214*_D584+
0.0018487589*_D585+
-0.032580206*_D586+
0.0022045039*_D587+
0.002291284*_D588+
0.0007495086*_D589+
0.0078780852*_D590+
0.0063451089*_D591+
0.015442531*_D592+
0.0019690599*_D593+
-0.004033768*_D594+
-0.002019884*_D595+
0.0336440682*_D596+
-0.006296165*_D597+
0.0035164688*_D598+
-0.000882916*_D599+
0.0018299877*_D600+
-0.003117559*_D601+
0.000982499*_D602+
-0.00306665*_D603+
-0.035941724*_D604+
-0.00146752*_D605+
-0.000268248*_D606+
0.0086322907*_D607+
-0.008914285*_D608+
0.0057977643*_D609+
0.0021232248*_D610+
-0.018770213*_D611+
0.0049852703*_D612+
0.0072334487*_D613+
-0.013691083*_D614+
-0.000013291*_D615+
0.0061765335*_D616+
-0.000192259*_D617+
0.0038128797*_D618+
0.0072003823*_D619+
0.0129939363*_D620+
0.0015340835*_D621+
0.0052416276*_D622+
0.0008969475*_D623+
-0.016368029*_D624+
-0.020520277*_D625+
-0.021264744*_D626+
0.0041472485*_D627+
0.0056453124*_D628+
-0.000013003*_D629+
-0.002073509*_D630+
0.0049890386*_D631+
-0.091009263*_D632+
-0.007718987*_D633+
0.0432790572*_D634+
-0.042047561*_D635+
0.0159422491*_D636+
-0.002042447*_D637+
0.0054179925*_D638+
-0.010071569*_D639+
0.0037898366*_D640+
0.0028691703*_D641+
-0.000435657*_D642+
0.0016184506*_D643+
0.0050812415*_D644+
-0.02681325*_D645+
0.0036233104*_D646+
-0.00086046*_D647+
-0.00020036*_D648+
0.0060904865*_D649+
0.0089103201*_D650+
0.0091261813*_D651+
0.0020850505*_D652+
-0.006353601*_D653+
0.0050569625*_D654+
-0.031066121*_D655+
0.0035852991*_D656+
0.0046059206*_D657+
0.0006361327*_D658+
-0.001288261*_D659+
-0.006277635*_D660+
0.0004026297*_D661+
-0.055081115*_D662+
-0.002146101*_D663+
0.0010869167*_D664+
0.0328501244*_D665+
-0.004440218*_D666+
0.0021933691*_D667+
0.0026099832*_D668+
-0.000645828*_D669+
0.0008213687*_D670+
0.0086238831*_D671+
0.0045799757*_D672+
-0.000799399*_D673+
0.0323946793*_D674+
0.0107130501*_D675+
0.0129664785*_D676+
0.001709308*_D677+
-0.033596736*_D678+
-0.005013598*_D679+
0.0126649433*_D680+
-0.002998832*_D681+
-0.000832664*_D682+
-0.256972174*_D683+
0.0118628354*_D684+
0.0020165016*_D685+
0.0205235955*_D686+
0.0011779923*_D687+
0.0056510831*_D688+
0.0040839889*_D689+
-0.000624336*_D690+
-0.012016429*_D691+
0.0010454494*_D692+
0.0032113147*_D693+
0.0091859916*_D694+
-0.001191973*_D695+
0.0025593579*_D696+
0.0051647217*_D697+
0.0010320889*_D698+
0.0030784849*_D699+
0.0076900471*_D700+
-0.00315396*_D701+
0.0270324857*_D702+
0.0030566649*_D703+
0.0047980884*_D704+
-0.013649129*_D705+
0.0008358611*_D706+
0.0010784587*_D707+
0.0119039317*_D708+
-0.014238693*_D709+
-0.001046115*_D710+
-0.004984678*_D711+
-0.017804032*_D712+
-0.012824214*_D713+
0.0016369736*_D714+
0.0002204586*_D715+
0.0038685955*_D716+
-0.005974337*_D717+
0.0073130306*_D718+
0.007840313*_D719+
0.0075021581*_D720+
0.0055907697*_D721+
-0.002655244*_D722+
0.0230748075*_D723+
-0.024729043*_D724+
0.0118962469*_D725+
0.0020328084*_D726+
0.0032420932*_D727+
0.0021032601*_D728+
0.0047533442*_D729+
0.007882826*_D730+
-0.000685355*_D731+
0.0000225597*_D732+
-0.000412565*_D733+
0.0006504566*_D734+
0.0165853571*_D735+
-0.047934501*_D736+
0.0104960834*_D737+
0.0048992848*_D738+
-0.044039403*_D739+
-0.04463231*_D740+
0.0028086756*_D741+
-0.00655097*_D742+
0.0067004905*_D743+
0.0085187625*_D744+
0.0009877307*_D745+
0.0014483545*_D746+
-0.00298892*_D747+
0.0061473574*_D748+
-0.013548813*_D749+
0.0302915227*_D750+
-0.017403317*_D751+
-0.00965828*_D752+
-0.001286916*_D753+
-0.026919962*_D754+
0.0285144008*_D755+
0.003420036*_D756+
0.0082410311*_D757+
0.007511292*_D758+
0.0111298348*_D759+
-0.001743334*_D760+
-0.01014554*_D761+
0.0095609517*_D762+
-0.002638956*_D763+
0.0053330618*_D764+
0.0160266626*_D765+
0.0052013257*_D766+
-0.009568256*_D767+
0.000772398*_D768+
0.0041825584*_D769+
0.0031612066*_D770+
-0.00413576*_D771+
0.0064130233*_D772+
-0.001997586*_D773+
-0.00983635*_D774+
-0.050821219*_D775+
0.0004460885*_D776+
-0.001381512*_D777+
0.0056993966*_D778+
0.0288467375*_D779+
-0.001261634*_D780+
0.0090620461*_D781+
0.001938906*_D782+
0.0073480562*_D783+
-0.005307933*_D784+
-0.004546172*_D785+
-0.001859003*_D786+
-0.090605919*_D787+
-0.044498604*_D788+
0.0018549813*_D789+
0.002712804*_D790+
0.0004867041*_D791+
-0.063054235*_D792+
0.0062344439*_D793+
-0.00498431*_D794+
0.0146209339*_D795+
-0.000251461*_D796+
0.0024955887*_D797+
0.0056385828*_D798+
0.0055729459*_D799+
0.0061741989*_D800+
0.0002552143*_D801+
-0.00099568*_D802+
-0.009844872*_D803+
-0.024339348*_D804+
-0.003073548*_D805+
-0.014028496*_D806+
0.0108700555*_D807+
-0.000090989*_D808+
0.000401312*_D809+
0.0024202795*_D810+
-0.001775202*_D811+
-0.000411458*_D812+
-0.004007774*_D813+
0.017617834*_D814+
0.0117852781*_D815+
0.0004578596*_D816+
0.0052845819*_D817+
0.0119147459*_D818+
-0.001546759*_D819+
-0.002382857*_D820+
0.0033985337*_D821+
0.02015474*_D822+
-0.010831163*_D823+
0.0014652556*_D824+
0.0120157238*_D825+
-0.079159311*_D826+
0.0039414332*_D827+
-0.00300214*_D828+
0.0057335544*_D829+
0.0016382967*_D830+
-0.000143288*_D831+
0.0057345931*_D832+
-0.005907745*_D833+
-0.018089516*_D834+
-0.004945457*_D835+
-0.000332602*_D836+
0.0004151145*_D837+
0.0007627811*_D838+
-0.003601155*_D839+
0.0084633023*_D840+
0.0039817863*_D841+
0.010935982*_D842+
0.0019437613*_D843+
0.002413685*_D844+
0.0017074731*_D845+
0.0005871785*_D846+
-0.019777084*_D847+
0.0030383014*_D848+
0.0065038412*_D849+
-0.039330514*_D850+
0.0434924917*_D851+
0.0053864191*_D852+
0.0049311104*_D853+
0.0012722269*_D854+
0.0062764656*_D855+
0.0023358851*_D856+
-0.001253148*_D857+
0.0028177379*_D858+
-0.002176039*_D859+
0.0073608079*_D860+
0.0017518524*_D861+
-0.004961416*_D862+
0.0044828124*_D863+
0.0014512982*_D864+
0.0038780292*_D865+
-0.004422062*_D866+
-0.001167317*_D867+
0.0011705462*_D868+
0.0206390395*_D869+
0.0733454452*_D870+
-0.008257528*_D871+
0.0052728476*_D872+
-0.002195517*_D873+
0.0075846031*_D874+
0.0035710127*_D875+
-0.00278323*_D876+
-0.009984961*_D877+
0.0006221567*_D878+
0.0020279197*_D879+
0.0029381988*_D880+
0.0072461895*_D881+
0.0117373453*_D882+
-0.017928864*_D883+
-0.005610183*_D884+
-0.017705147*_D885+
0.0161530203*_D886+
0.0103246707*_D887+
0.0086690149*_D888+
0.0125797456*_D889+
0.0066751861*_D890+
0.0045997324*_D891+
0.0070640658*_D892+
0.0054285798*_D893+
0.0124134974*_D894+
0.0082863752*_D895+
-0.002154689*_D896+
-0.01853805*_D897+
-0.004605328*_D898+
0.0006894106*_D899+
0.0068667107*_D900+
-0.001447951*_D901+
0.0054297425*_D902+
0.001498968*_D903+
0.0005936728*_D904+
-0.012540655*_D905+
-0.005727609*_D906+
-0.008413863*_D907+
0.0038485053*_D908+
-0.002541869*_D909+
0.0288467375*_D910+
0.0053900138*_D911+
-0.015512236*_D912+
0.0014146044*_D913+
0.0008816763*_D914+
0.0126210398*_D915+
0.0030804671*_D916+
0.0307686371*_D917+
0.0150054383*_D918+
-0.020072574*_D919+
-0.006576121*_D920+
0.0031915637*_D921+
-0.006613577*_D922+
0.0176247535*_D923+
-0.003888885*_D924+
-0.011758714*_D925+
0.0002562677*_D926+
-0.025298563*_D927+
-0.002115502*_D928+
0.0082815954*_D929+
0.0011895062*_D930+
-0.012472269*_D931+
0.0044596132*_D932+
-0.001233478*_D933+
0.0082423127*_D934+
0.0025693534*_D935+
0.0011125088*_D936+
0.0011528419*_D937+
-0.010816241*_D938+
0.0114214688*_D939+
0.0140057304*_D940+
0.0031148125*_D941+
-0.019769307*_D942+
0.0048988664*_D943+
0.0097368919*_D944+
-0.002594168*_D945+
0.059495622*_D946+
0.0027963545*_D947+
0.0096612927*_D948+
0.0013820335*_D949+
-0.003837415*_D950+
0.0014689501*_D951+
-0.124447089*_D952+
-0.010595567*_D953+
0.0131814236*_D954+
0.0069840578*_D955+
0.0039961175*_D956+
-0.000845082*_D957+
-0.013737215*_D958+
0.0502844022*_D959+
-0.03432455*_D960+
-0.033732905*_D961+
-0.004743085*_D962+
0.0154771366*_D963+
0.0038774439*_D964+
0.0011402934*_D965+
0.0137882241*_D966+
0.003872534*_D967+
0.0119822349*_D968+
0.0061807075*_D969+
0.0182009015*_D970+
0.0045531976*_D971+
-0.006381821*_D972+
0.0101425039*_D973+
0.0141466045*_D974+
0.000347521*_D975+
0.0090941325*_D976+
0.0008071445*_D977+
0.0021895054*_D978+
-0.010394951*_D979+
-0.002096905*_D980+
0.0035865614*_D981+
0.0015127757*_D982+
-0.00443813*_D983+
0.0050301122*_D984+
0.0055436516*_D985+
0.009660011*_D986+
-0.022421706*_D987+
-0.00352585*_D988+
0.0082402384*_D989+
0.0050471194*_D990+
0.0016283079*_D991+
0.0066112642*_D992+
0.0180913194*_D993+
-0.000474893*_D994+
0.0004466491*_D995+
0.0174644275*_D996+
-0.003563562*_D997+
0.0053814771*_D998+
0.0083960301*_D999+
0.010646698*_D1000+
-0.046446581*_D1001+
0.0036980898*_D1002+
0.0002559261*_D1003+
-0.001294722*_D1004+
0.0017819301*_D1005+
0.0062029257*_D1006+
0.0017993087*_D1007+
-0.003368114*_D1008+
0.0029586992*_D1009+
0.0099181808*_D1010+
-0.001050571*_D1011+
0.0120406667*_D1012+
0.0608850978*_D1013+
0.0017790132*_D1014+
0.0073432594*_D1015+
0.0046662987*_D1016+
-0.006304178*_D1017+
0.004821804*_D1018+
0.0083102072*_D1019+
-0.014079063*_D1020+
0.0051290955*_D1021+
0.0295029634*_D1022+
0.0102244719*_D1023+
-0.004667122*_D1024+
0.003883127*_D1025+
0.008966744*_D1026+
0.0034803226*_D1027+
0.0595144543*_D1028+
0.052961461*_D1029+
0.0124560275*_D1030+
0.0021933112*_D1031+
0.0173043149*_D1032+
-0.007670706*_D1033+
0.012977148*_D1034+
0.0108499455*_D1035+
-0.009392717*_D1036+
0.0047718716*_D1037+
0.0110994873*_D1038+
0.0032484239*_D1039+
0.0037826858*_D1040+
0.0033749939*_D1041+
-0.000783433*_D1042+
-0.001367568*_D1043+
-0.003759165*_D1044+
0.0658966716*_D1045+
0.0427201969*_D1046+
0.0066508178*_D1047+
0.0057941058*_D1048+
-0.001317466*_D1049+
0.0259216507*_D1050+
0.0277926998*_D1051+
0.0023794363*_D1052+
0.0072749179*_D1053+
0.0004140193*_D1054+
0.0087982294*_D1055+
0.0081911356*_D1056+
-0.018508949*_D1057+
0.003352803*_D1058+
0.0017596275*_D1059+
-0.019663325*_D1060+
0.0072121235*_D1061+
-0.004851657*_D1062+
-0.01183094*_D1063+
-0.009574462*_D1064+
0.0271918616*_D1065+
-0.011999321*_D1066+
0.0038738613*_D1067+
0.0064794957*_D1068+
0.0039597098*_D1069+
0.0047385224*_D1070+
0.0033188401*_D1071+
0.0497804596*_D1072+
0.0130931944*_D1073+
-0.03159788*_D1074+
0.0048793348*_D1075+
0.0058446824*_D1076+
-0.038453123*_D1077+
-0.006278206*_D1078+
-0.00336578*_D1079+
0.0072867162*_D1080+
0.0022220386*_D1081+
-0.011219524*_D1082+
0.0034697424*_D1083+
-0.014033134*_D1084+
0.0048773521*_D1085+
0.0038039253*_D1086+
0.0042964451*_D1087+
0.021293169*_D1088+
0.0019497577*_D1089+
0.001267204*_D1090+
-0.005327544*_D1091+
0.0068193262*_D1092+
-0.009295802*_D1093+
-0.035610191*_D1094+
-0.001619615*_D1095+
-0.002361747*_D1096+
-0.004464696*_D1097+
-0.011132123*_D1098+
-0.004461001*_D1099+
0.0019617632*_D1100+
0.0008258583*_D1101+
0.0084260165*_D1102+
0.0304578586*_D1103+
0.002552967*_D1104+
0.0090723402*_D1105+
0.007205638*_D1106+
0.0026487965*_D1107+
0.0044959909*_D1108+
0.0079661619*_D1109+
0.0008462143*_D1110+
0.0125626766*_D1111+
-0.01432583*_D1112+
-0.000564804*_D1113+
-0.004498799*_D1114+
-0.02752726*_D1115+
0.0118576299*_D1116+
0.0173521791*_D1117+
0.000457137*_D1118+
0.0362358493*_D1119+
0.0017281948*_D1120+
0.0059458607*_D1121+
0.0142208256*_D1122+
-0.03083009*_D1123+
-0.00782445*_D1124+
-0.03619461*_D1125+
-0.011980779*_D1126+
-0.020060708*_D1127+
0.0138263619*_D1128+
0.0029209248*_D1129+
-0.014858438*_D1130+
0.0132483711*_D1131+
0.0087522349*_D1132+
-0.004961278*_D1133+
-0.002938682*_D1134+
0.0089866499*_D1135+
0.0027717936*_D1136+
0.0087014876*_D1137+
0.0140759222*_D1138+
0.0047320676*_D1139+
0.0059541488*_D1140+
-0.048384522*_D1141+
-0.003395259*_D1142+
0.0599079478*_D1143+
0.0027559599*_D1144+
0.0052646588*_D1145+
0.0227440745*_D1146+
-0.001783456*_D1147+
0.0004964505*_D1148+
-0.00274379*_D1149+
0.0043561175*_D1150+
0.00352068*_D1151+
0.0083977127*_D1152+
0.0087134148*_D1153+
0.002019825*_D1154+
0.0025061773*_D1155+
-0.006626502*_D1156+
0.0010183664*_D1157+
0.0033823521*_D1158+
-0.012668604*_D1159+
-0.006252587*_D1160+
0.005076272*_D1161+
0.0230756324*_D1162+
-0.003995492*_D1163+
0.0349377189*_D1164+
0.0021136548*_D1165+
-0.000293477*_D1166+
0.0015087767*_D1167+
0.3987769937*_D1168+
0.0029178583*_D1169+
0.0006599869*_D1170+
0.0042272724*_D1171+
-0.181646069*_D1172+
-0.014125542*_D1173+
0.0024624422*_D1174+
0.0088594025*_D1175+
-0.006251634*_D1176+
0.0061776374*_D1177+
0.0073362643*_D1178+
0.0185049654*_D1179+
-0.00345108*_D1180+
0.0060137239*_D1181+
-0.019838723*_D1182+
0.0120198915*_D1183+
0.0003473469*_D1184+
0.0008818629*_D1185+
-0.013604252*_D1186+
-0.012307303*_D1187+
-0.02002722*_D1188+
-0.033337061*_D1189+
0.4453693188*_D1190+
-0.017498002*_D1191+
-0.00954983*_D1192+
-0.024581983*_D1193+
0.0066954777*_D1194+
0.0001486984*_D1195+
-0.011965919*_D1196+
0.0139230209*_D1197+
0.0009980034*_D1198+
-0.006799418*_D1199+
-0.001264787*_D1200+
0.0062053032*_D1201+
-0.028636159*_D1202+
0.0042307262*_D1203+
0.002861824*_D1204;
/****************************************/
* Componente principal 20;
/****************************************/
;
length PC_20 8;
label PC_20 = "Componente principal 20";
PC_20 =
0.0115584311*_D1+
0.0034714024*_D2+
0.0078600215*_D3+
-0.003080491*_D4+
-0.005602592*_D5+
0.0042857748*_D6+
0.0778966982*_D7+
0.0195731483*_D8+
0.0023547749*_D9+
0.1345462811*_D10+
0.0003356941*_D11+
-0.010059444*_D12+
-0.010580742*_D13+
-0.00432949*_D14+
0.0038674635*_D15+
0.0191671015*_D16+
-0.005572714*_D17+
-0.0214175*_D18+
0.0033969457*_D19+
0.0104292825*_D20+
-0.013425085*_D21+
0.0460279056*_D22+
-0.018267333*_D23+
-0.007822697*_D24+
-0.000956739*_D25+
0.0068202601*_D26+
0.0197050942*_D27+
0.0014329643*_D28+
0.0286957392*_D29+
-0.006878252*_D30+
-0.00064376*_D31+
-0.00257827*_D32+
0.0259351888*_D33+
-0.010755151*_D34+
-0.048016897*_D35+
-0.007232027*_D36+
0.0015252381*_D37+
0.0004894737*_D38+
-0.0041958*_D39+
0.0125100524*_D40+
-0.018103989*_D41+
0.0087689547*_D42+
-0.024737405*_D43+
-0.000087566*_D44+
-0.011462665*_D45+
-0.01964586*_D46+
0.0485613511*_D47+
0.001053717*_D48+
0.0048617484*_D49+
-0.017020655*_D50+
0.0017192531*_D51+
-0.00106933*_D52+
0.1200182528*_D53+
-0.007787274*_D54+
0.0000466283*_D55+
0.0076321452*_D56+
-0.001035579*_D57+
0.0053797483*_D58+
0.0014984677*_D59+
-0.050469993*_D60+
-0.02206547*_D61+
0.0006392577*_D62+
-0.00475748*_D63+
-0.008634115*_D64+
0.0090075669*_D65+
0.0022468453*_D66+
-0.008068167*_D67+
0.002852421*_D68+
0.0038122426*_D69+
0.002918459*_D70+
-0.000206331*_D71+
-0.007402267*_D72+
0.0082085243*_D73+
0.0284660436*_D74+
0.0046375431*_D75+
0.0016645634*_D76+
-0.043732902*_D77+
-0.007720037*_D78+
0.009180865*_D79+
0.0022756303*_D80+
-0.003852535*_D81+
-0.006835893*_D82+
-0.000021467*_D83+
-0.00706436*_D84+
0.0316555575*_D85+
-0.018404303*_D86+
0.0068479034*_D87+
0.0116888267*_D88+
0.2450850758*_D89+
-0.004352232*_D90+
0.0036478855*_D91+
-0.001944921*_D92+
0.0190307682*_D93+
-0.003299836*_D94+
0.0007945162*_D95+
-0.331606221*_D96+
0.0066127087*_D97+
0.0010213363*_D98+
0.0020582786*_D99+
-0.005790589*_D100+
0.0063495862*_D101+
0.0056196646*_D102+
0.0020129507*_D103+
0.0160988984*_D104+
-0.001530678*_D105+
0.0055887631*_D106+
-0.012927095*_D107+
0.0018890117*_D108+
0.008079166*_D109+
-0.000548833*_D110+
0.0019641274*_D111+
0.0031014302*_D112+
-0.016983877*_D113+
0.0050146472*_D114+
0.002547698*_D115+
0.0165179918*_D116+
0.0030558366*_D117+
-0.0327029*_D118+
0.0052563559*_D119+
0.0074408694*_D120+
0.0030475385*_D121+
0.007341679*_D122+
0.0131515295*_D123+
0.0509081694*_D124+
0.0376210629*_D125+
0.0013498845*_D126+
0.0014793789*_D127+
0.0035757705*_D128+
0.0110357842*_D129+
0.0103767077*_D130+
-0.01020588*_D131+
-0.009080657*_D132+
-0.002951178*_D133+
-0.040154327*_D134+
-0.042017483*_D135+
0.0023875492*_D136+
0.0075036407*_D137+
-0.000535123*_D138+
0.0135395336*_D139+
0.0434933447*_D140+
0.0005124988*_D141+
-0.011332249*_D142+
-0.000892499*_D143+
0.0544817535*_D144+
0.0087648893*_D145+
0.0037540713*_D146+
0.0016402108*_D147+
0.0024630034*_D148+
0.0127027747*_D149+
-0.027709986*_D150+
-0.005238796*_D151+
0.0005212394*_D152+
0.0004740828*_D153+
0.0003059795*_D154+
0.0310871668*_D155+
0.009212565*_D156+
0.0079624835*_D157+
-0.003062789*_D158+
0.0026465749*_D159+
-0.00698885*_D160+
-0.004595388*_D161+
0.0059617572*_D162+
0.0045403495*_D163+
-0.017610553*_D164+
0.0277728434*_D165+
0.0055818511*_D166+
0.0126525178*_D167+
0.0143696844*_D168+
-0.00119539*_D169+
-0.016112795*_D170+
0.0047902744*_D171+
0.0176174962*_D172+
-0.057532022*_D173+
0.0381106867*_D174+
0.0177852273*_D175+
-0.000287637*_D176+
0.0082193146*_D177+
0.0309031706*_D178+
0.0155476531*_D179+
-0.013033464*_D180+
-0.011516471*_D181+
0.0428825333*_D182+
-0.006446163*_D183+
0.0252463341*_D184+
-0.003681403*_D185+
-0.003710654*_D186+
0.022004772*_D187+
-0.003608732*_D188+
0.0212553386*_D189+
-0.038032924*_D190+
0.0036804752*_D191+
0.0056745913*_D192+
0.0086504181*_D193+
0.0045270135*_D194+
-0.001976727*_D195+
0.0034715168*_D196+
-0.000552082*_D197+
0.0142488377*_D198+
-0.012843507*_D199+
-0.001854574*_D200+
-0.005280902*_D201+
-0.003147378*_D202+
0.0046908523*_D203+
-0.002539474*_D204+
0.0061644741*_D205+
0.006775447*_D206+
0.00238284*_D207+
0.0029639491*_D208+
-0.006895189*_D209+
0.0947944311*_D210+
-0.004975656*_D211+
-0.003574114*_D212+
0.0054842594*_D213+
0.0030895286*_D214+
0.0037966955*_D215+
-0.015534278*_D216+
-0.002942453*_D217+
0.0031269663*_D218+
0.0053113053*_D219+
-0.018004273*_D220+
-0.009959592*_D221+
0.0004948187*_D222+
0.0084685319*_D223+
0.0009887516*_D224+
-0.004514498*_D225+
0.0001731646*_D226+
0.0044644977*_D227+
0.0253592552*_D228+
0.0223628906*_D229+
-0.013837432*_D230+
0.0091329468*_D231+
0.0168662831*_D232+
-0.002706091*_D233+
-0.002788097*_D234+
0.006614672*_D235+
0.0055193252*_D236+
0.0394697354*_D237+
-0.000889267*_D238+
0.0042540572*_D239+
0.0067248179*_D240+
0.017341912*_D241+
0.0076985915*_D242+
-0.009250876*_D243+
-0.004853658*_D244+
-0.007301246*_D245+
0.0010781509*_D246+
-0.006381969*_D247+
0.0069722052*_D248+
0.0097483621*_D249+
0.0153610017*_D250+
0.0024415273*_D251+
-0.00129185*_D252+
0.0064771508*_D253+
0.0012827207*_D254+
0.0009765281*_D255+
-0.00708603*_D256+
0.0406860633*_D257+
0.0014865234*_D258+
-0.000208469*_D259+
-0.030759225*_D260+
-0.014478795*_D261+
-0.005173099*_D262+
0.0397674022*_D263+
-0.000788647*_D264+
0.0068063985*_D265+
0.0183511928*_D266+
0.0113537395*_D267+
0.0007994446*_D268+
-0.007374266*_D269+
0.0039665314*_D270+
0.0042802389*_D271+
0.0009346518*_D272+
0.0197261882*_D273+
-0.00350373*_D274+
0.062815951*_D275+
-0.000418629*_D276+
-0.020449332*_D277+
-0.000528855*_D278+
0.0128886213*_D279+
0.0002057763*_D280+
0.0098623396*_D281+
0.0050157434*_D282+
-0.000956292*_D283+
0.0070639906*_D284+
-0.006407055*_D285+
0.0103736246*_D286+
-0.023802433*_D287+
0.0030476351*_D288+
-0.000568693*_D289+
-0.000046466*_D290+
0.0148136233*_D291+
-0.009335312*_D292+
-0.02260472*_D293+
-0.000330171*_D294+
-0.009659687*_D295+
0.0026013062*_D296+
0.0067930998*_D297+
-0.003511249*_D298+
-0.000883314*_D299+
0.0488526384*_D300+
-0.000469324*_D301+
-0.004431399*_D302+
-0.035249495*_D303+
0.0153042025*_D304+
0.0150025212*_D305+
0.0134636914*_D306+
-0.003577968*_D307+
-0.008417303*_D308+
-0.05068759*_D309+
0.0006997186*_D310+
0.0102358297*_D311+
0.0003443416*_D312+
-0.000897922*_D313+
-0.010366881*_D314+
0.0067259081*_D315+
-0.029242869*_D316+
0.0079746395*_D317+
-0.011472208*_D318+
0.0117415079*_D319+
0.0144724806*_D320+
0.0020048648*_D321+
0.0034921293*_D322+
-0.009926848*_D323+
0.0112431544*_D324+
-0.106863375*_D325+
0.0019229433*_D326+
0.0014841517*_D327+
0.0100371083*_D328+
-0.011663423*_D329+
-0.013136741*_D330+
-0.003951229*_D331+
-0.017050799*_D332+
-0.028121085*_D333+
-0.148302143*_D334+
-0.037320099*_D335+
-0.012069002*_D336+
0.0534560014*_D337+
-0.00019811*_D338+
0.0350925618*_D339+
-0.007732092*_D340+
0.004648138*_D341+
-0.001540866*_D342+
0.0005712407*_D343+
-0.003374208*_D344+
0.0009738338*_D345+
-0.004972363*_D346+
0.0062478918*_D347+
0.0083350623*_D348+
0.0053298974*_D349+
0.0043611426*_D350+
0.006476572*_D351+
0.0027592827*_D352+
0.0087464911*_D353+
0.0094011774*_D354+
0.0089002861*_D355+
0.0305515289*_D356+
-0.013244421*_D357+
-0.002262936*_D358+
0.0027112991*_D359+
0.0043745127*_D360+
0.004121406*_D361+
0.0263967438*_D362+
0.0024641151*_D363+
-0.001086558*_D364+
-0.019253455*_D365+
-0.002484872*_D366+
0.0054079182*_D367+
0.0014162762*_D368+
0.0154333628*_D369+
0.0105504594*_D370+
0.0009488354*_D371+
0.0000890469*_D372+
0.0059707092*_D373+
-0.007308264*_D374+
0.0001928733*_D375+
0.0370123056*_D376+
0.0072869614*_D377+
0.0023350393*_D378+
0.0079185113*_D379+
-0.003030714*_D380+
0.0222035266*_D381+
0.0120877891*_D382+
-0.005578122*_D383+
0.0055496979*_D384+
0.0056083262*_D385+
0.0078060049*_D386+
-0.001654952*_D387+
0.0162362441*_D388+
0.0071129617*_D389+
0.0099348562*_D390+
-0.001569378*_D391+
0.0000805576*_D392+
0.0237976046*_D393+
-0.009472704*_D394+
0.0028508933*_D395+
0.0069548332*_D396+
-0.00539855*_D397+
-0.002547199*_D398+
0.0136294253*_D399+
0.0450327008*_D400+
0.0016746391*_D401+
-0.005523778*_D402+
-0.000255924*_D403+
-0.004767272*_D404+
-0.008531837*_D405+
-0.065800841*_D406+
0.0107397107*_D407+
0.005863756*_D408+
-0.00005159*_D409+
0.0007523888*_D410+
0.0093178922*_D411+
0.003129368*_D412+
0.0060494358*_D413+
-0.014027633*_D414+
0.0068836902*_D415+
0.0137227027*_D416+
0.0138715853*_D417+
-0.006731057*_D418+
-0.001783085*_D419+
0.0111409109*_D420+
0.0007056754*_D421+
0.000715739*_D422+
-0.004265334*_D423+
0.0013831984*_D424+
-0.011728952*_D425+
0.0015691279*_D426+
0.0117364688*_D427+
-0.007585013*_D428+
0.00353652*_D429+
0.054993269*_D430+
0.017638643*_D431+
-0.00060904*_D432+
-0.003358728*_D433+
0.0322923508*_D434+
-0.01481697*_D435+
0.0013378271*_D436+
0.0012341333*_D437+
-0.018779838*_D438+
0.0031375762*_D439+
0.0104149646*_D440+
0.0288383908*_D441+
0.017152018*_D442+
0.0058648212*_D443+
-0.001808222*_D444+
0.0058295931*_D445+
-0.01616026*_D446+
-0.015206808*_D447+
0.0015347765*_D448+
0.0041026511*_D449+
-0.056761815*_D450+
0.0014600883*_D451+
0.0063500833*_D452+
-0.003841337*_D453+
0.0037155334*_D454+
0.0423670402*_D455+
-0.224814231*_D456+
0.0088773084*_D457+
-0.008202864*_D458+
0.0010439369*_D459+
-0.008541377*_D460+
-0.303753093*_D461+
0.0024859645*_D462+
0.0066904158*_D463+
-0.011412267*_D464+
0.0108981457*_D465+
0.0066454979*_D466+
0.0012037247*_D467+
0.0037383242*_D468+
-0.00627235*_D469+
-0.017252835*_D470+
0.0201147527*_D471+
-0.003235694*_D472+
-0.000961881*_D473+
0.0070272728*_D474+
0.0057500831*_D475+
0.0041703424*_D476+
-0.003757731*_D477+
0.0041344818*_D478+
-0.009320956*_D479+
-0.022656734*_D480+
0.0261712095*_D481+
0.0092436801*_D482+
-0.004485009*_D483+
-0.010849024*_D484+
-0.00120677*_D485+
0.0001889329*_D486+
0.0052930488*_D487+
0.0046599037*_D488+
0.001568327*_D489+
0.0235660052*_D490+
0.0191450668*_D491+
0.0118895527*_D492+
0.0137591818*_D493+
-0.016503329*_D494+
-0.001163146*_D495+
-0.000914486*_D496+
0.0154471002*_D497+
-0.001205165*_D498+
0.0114057263*_D499+
0.0147480268*_D500+
-0.002215289*_D501+
0.0016570465*_D502+
0.0067660461*_D503+
-0.001383369*_D504+
-0.139232372*_D505+
0.0150703041*_D506+
0.0032378885*_D507+
-0.024165469*_D508+
-0.000154049*_D509+
-0.003761876*_D510+
0.0056024988*_D511+
-0.006618658*_D512+
0.0006286573*_D513+
0.0001288852*_D514+
0.0037140783*_D515+
-0.002386592*_D516+
-0.05542556*_D517+
-0.011875706*_D518+
-0.056330037*_D519+
-0.021062575*_D520+
-0.004313753*_D521+
0.0052206674*_D522+
-0.011956861*_D523+
-0.002836187*_D524+
0.0028569237*_D525+
0.0092250382*_D526+
-0.022716203*_D527+
0.0034242675*_D528+
0.033031879*_D529+
0.0069596702*_D530+
0.0227011888*_D531+
-0.000368129*_D532+
-0.001734543*_D533+
0.0004222825*_D534+
-0.001926417*_D535+
0.0042101431*_D536+
0.0108707115*_D537+
0.0366987821*_D538+
0.0352015849*_D539+
-0.005483616*_D540+
0.0054491593*_D541+
0.0983971967*_D542+
-0.11000082*_D543+
0.0052952559*_D544+
0.0025979767*_D545+
0.0102758022*_D546+
0.0869234018*_D547+
0.0473205158*_D548+
-0.003333919*_D549+
-0.019363262*_D550+
0.0127294343*_D551+
-0.04671163*_D552+
0.1558248442*_D553+
0.0511940644*_D554+
0.003321256*_D555+
0.038049493*_D556+
0.0015728311*_D557+
0.0378779661*_D558+
-0.000257455*_D559+
-0.005140435*_D560+
0.0070274867*_D561+
-0.012913892*_D562+
0.0030216019*_D563+
-0.002967951*_D564+
-0.018145316*_D565+
-0.012038538*_D566+
-0.023062449*_D567+
-0.020674502*_D568+
-0.030746706*_D569+
-0.017346356*_D570+
-0.001092767*_D571+
-0.020795286*_D572+
-0.007137896*_D573+
-0.001293098*_D574+
-0.003112755*_D575+
0.0112271968*_D576+
0.0064746*_D577+
0.0003101862*_D578+
-0.00633864*_D579+
0.0397449127*_D580+
-0.003847728*_D581+
0.0003443426*_D582+
-0.00073483*_D583+
-0.000723523*_D584+
0.0052607562*_D585+
0.0703128251*_D586+
0.0164809803*_D587+
0.001331274*_D588+
0.0261700209*_D589+
0.0348337794*_D590+
0.0335879804*_D591+
0.0049242261*_D592+
0.0140923583*_D593+
0.0028692618*_D594+
0.000857378*_D595+
-0.017347081*_D596+
-0.000896211*_D597+
-0.010238785*_D598+
0.0145021002*_D599+
0.0030644193*_D600+
0.0061527035*_D601+
-0.006134125*_D602+
-0.001600944*_D603+
-0.000563846*_D604+
0.0055696105*_D605+
-0.009674139*_D606+
0.0315555656*_D607+
0.0840085015*_D608+
0.0044540743*_D609+
0.0005642023*_D610+
0.0023917934*_D611+
0.0055256547*_D612+
-0.001420253*_D613+
0.013859907*_D614+
-0.003144815*_D615+
-0.002332886*_D616+
0.0027392943*_D617+
0.0022476268*_D618+
0.0251013264*_D619+
0.0073617327*_D620+
-0.004198227*_D621+
-0.007941475*_D622+
-0.006047911*_D623+
-0.004989673*_D624+
0.0087531891*_D625+
-0.025523237*_D626+
0.0009174168*_D627+
0.0116098218*_D628+
0.0034382212*_D629+
0.0063909984*_D630+
0.0015489098*_D631+
0.0124558066*_D632+
0.0071497237*_D633+
-0.002244915*_D634+
0.0103303296*_D635+
0.0091511417*_D636+
-0.0127634*_D637+
-0.000725629*_D638+
0.0091483764*_D639+
-0.013021008*_D640+
0.0072099867*_D641+
-0.00376337*_D642+
-0.000853485*_D643+
0.006396032*_D644+
-0.041824353*_D645+
-0.002406909*_D646+
0.0088025123*_D647+
0.0027503481*_D648+
-0.079598823*_D649+
0.0192281725*_D650+
-0.042561867*_D651+
-0.025243531*_D652+
-0.011389683*_D653+
0.0175395209*_D654+
0.030398407*_D655+
0.0024828537*_D656+
-0.005718034*_D657+
0.0038126219*_D658+
0.0023462823*_D659+
0.0046822744*_D660+
0.0007141191*_D661+
-0.002353109*_D662+
0.0136478607*_D663+
-0.001636254*_D664+
-0.007558506*_D665+
0.0056628738*_D666+
0.0092108266*_D667+
0.0016570635*_D668+
0.0097150031*_D669+
-0.001745703*_D670+
-0.001711387*_D671+
-0.009812398*_D672+
0.0092220891*_D673+
0.00331743*_D674+
0.0094410859*_D675+
-0.001898314*_D676+
-0.01676495*_D677+
-0.091590697*_D678+
0.0043044089*_D679+
0.00318854*_D680+
0.0164057365*_D681+
0.000421188*_D682+
-0.013312112*_D683+
0.0153034349*_D684+
0.0007979587*_D685+
-0.001290174*_D686+
0.0114041875*_D687+
0.0110962288*_D688+
-0.022886291*_D689+
0.0072590782*_D690+
0.0016533176*_D691+
0.0074607562*_D692+
-0.009427334*_D693+
0.0252878744*_D694+
0.018891858*_D695+
-0.002519112*_D696+
0.0081661104*_D697+
0.0070907679*_D698+
-0.009699629*_D699+
0.0151467702*_D700+
0.0110415809*_D701+
-0.009107253*_D702+
-0.0307813*_D703+
0.0155320683*_D704+
-0.103863742*_D705+
0.0287314176*_D706+
-0.002732967*_D707+
-0.001321956*_D708+
0.0008673462*_D709+
0.0004896997*_D710+
0.016150482*_D711+
0.018315473*_D712+
0.0166208761*_D713+
-0.001402079*_D714+
-0.006685192*_D715+
0.0237709391*_D716+
-0.168545674*_D717+
-0.000533703*_D718+
0.0014076327*_D719+
0.00652789*_D720+
0.0057143167*_D721+
0.0299120125*_D722+
0.0004678471*_D723+
-0.063780141*_D724+
0.0144752083*_D725+
0.0032777402*_D726+
-0.000415018*_D727+
0.0128668637*_D728+
0.0214884696*_D729+
-0.005607853*_D730+
0.0132552432*_D731+
0.0047801108*_D732+
0.0025577372*_D733+
0.0041247749*_D734+
0.0203262285*_D735+
-0.000895716*_D736+
0.0247339792*_D737+
-0.003326538*_D738+
0.0020711628*_D739+
0.0026418883*_D740+
0.0018053074*_D741+
0.0511452317*_D742+
0.0039608706*_D743+
0.0015258327*_D744+
0.009335141*_D745+
0.0045851745*_D746+
-0.02636309*_D747+
0.0047625603*_D748+
-0.039713644*_D749+
-0.001915835*_D750+
-0.111626481*_D751+
0.0002588145*_D752+
0.009652261*_D753+
0.0036627873*_D754+
0.003460832*_D755+
0.0108339528*_D756+
-0.02911722*_D757+
0.0309737335*_D758+
0.0417725583*_D759+
-0.00374034*_D760+
-0.001977647*_D761+
0.0110711484*_D762+
-0.0032*_D763+
-0.007392546*_D764+
-0.012840804*_D765+
-0.03076489*_D766+
0.0040223299*_D767+
0.009369589*_D768+
0.0165838127*_D769+
-0.000703497*_D770+
0.002077668*_D771+
-0.001911807*_D772+
-0.002344313*_D773+
0.0113331202*_D774+
-0.00934678*_D775+
-0.004916153*_D776+
-0.000768143*_D777+
-0.023301361*_D778+
0.0005596646*_D779+
-0.00043891*_D780+
0.0084417889*_D781+
-0.01389167*_D782+
0.0082643399*_D783+
0.0081257903*_D784+
-0.010913371*_D785+
0.0030786968*_D786+
0.0099782811*_D787+
0.0084098672*_D788+
0.0037745071*_D789+
0.0012543689*_D790+
0.0019333909*_D791+
-0.063693816*_D792+
0.0003116361*_D793+
0.008378808*_D794+
0.0104610274*_D795+
-0.024305796*_D796+
0.0056669147*_D797+
0.0264738742*_D798+
0.0230370261*_D799+
0.0065380523*_D800+
0.0053901491*_D801+
0.0016458661*_D802+
-0.000043869*_D803+
0.0075276493*_D804+
0.0015168261*_D805+
0.0078101501*_D806+
0.017719803*_D807+
0.0056748818*_D808+
0.032043485*_D809+
0.0120934814*_D810+
0.0055639779*_D811+
0.0050899542*_D812+
0.023638404*_D813+
0.0068405395*_D814+
-0.004387239*_D815+
0.0009591848*_D816+
0.0094960432*_D817+
0.017153111*_D818+
-0.003666606*_D819+
0.0021362175*_D820+
0.0063615189*_D821+
-0.001476954*_D822+
0.0058412484*_D823+
-0.001439264*_D824+
-0.0058031*_D825+
0.0172952324*_D826+
-0.004797975*_D827+
0.0001504852*_D828+
-0.002748102*_D829+
0.0209882942*_D830+
0.0085381209*_D831+
0.0136050801*_D832+
0.0181764128*_D833+
0.0044286581*_D834+
-0.00409943*_D835+
-0.003050118*_D836+
-0.020323038*_D837+
-0.00175955*_D838+
0.0061147267*_D839+
0.0114216913*_D840+
4.1081056E-6*_D841+
-0.044758621*_D842+
-0.000332562*_D843+
0.0008886319*_D844+
0.0087664087*_D845+
0.008230756*_D846+
-0.002651199*_D847+
0.0128595705*_D848+
-0.006126579*_D849+
0.0369307877*_D850+
-0.011586382*_D851+
0.0025438517*_D852+
0.0063510272*_D853+
-0.013342763*_D854+
-0.000075344*_D855+
0.0102841144*_D856+
0.0019255992*_D857+
0.0071067101*_D858+
0.0069559804*_D859+
-0.003754711*_D860+
0.0001860881*_D861+
0.0065145473*_D862+
0.0052552698*_D863+
-0.003370411*_D864+
-0.007205465*_D865+
0.0374071067*_D866+
-0.005592199*_D867+
0.0024886173*_D868+
0.0079102038*_D869+
-0.053011938*_D870+
-0.011976029*_D871+
-0.000587873*_D872+
0.0055179942*_D873+
0.0266855203*_D874+
0.0042123414*_D875+
-0.007509109*_D876+
0.0004012378*_D877+
0.0003309202*_D878+
0.0007311912*_D879+
0.0398373649*_D880+
0.0029111643*_D881+
0.0255233376*_D882+
-0.00139673*_D883+
0.0058103666*_D884+
-0.00053158*_D885+
0.0261264893*_D886+
0.0057371331*_D887+
0.0100696928*_D888+
0.0024703792*_D889+
-0.000420749*_D890+
-0.005873176*_D891+
0.004737813*_D892+
-0.007958532*_D893+
0.0060122084*_D894+
-0.000704367*_D895+
-0.002697277*_D896+
0.0014614854*_D897+
0.005579611*_D898+
0.0086732718*_D899+
-0.027800973*_D900+
0.0117099013*_D901+
-0.013663465*_D902+
0.0189219107*_D903+
0.0040041281*_D904+
0.0190421424*_D905+
-0.004309432*_D906+
-0.002202535*_D907+
-0.002557303*_D908+
0.0014916366*_D909+
0.0005596646*_D910+
0.0160393601*_D911+
0.0076839491*_D912+
-0.007227503*_D913+
-0.005706848*_D914+
0.0657604412*_D915+
0.0120395991*_D916+
-0.01235379*_D917+
0.0050534614*_D918+
-0.01804799*_D919+
0.0067299988*_D920+
-0.00594157*_D921+
-0.021673242*_D922+
0.0487422524*_D923+
-0.022951144*_D924+
-0.003216852*_D925+
-0.009947672*_D926+
-0.001421534*_D927+
0.0188902484*_D928+
0.0283159855*_D929+
0.0119376491*_D930+
0.0031699924*_D931+
0.0171544774*_D932+
-0.006506242*_D933+
-0.004833108*_D934+
0.0022950127*_D935+
0.0079836834*_D936+
-0.003012073*_D937+
-0.047346381*_D938+
0.0019620305*_D939+
0.0470227956*_D940+
0.0078632799*_D941+
0.0007696329*_D942+
0.0023550167*_D943+
-0.025296795*_D944+
0.007085269*_D945+
-0.012712559*_D946+
-0.001223871*_D947+
-0.000621667*_D948+
0.005645513*_D949+
0.0028801912*_D950+
-0.000392786*_D951+
0.0372060016*_D952+
-0.011491086*_D953+
-0.001221846*_D954+
0.0165167094*_D955+
0.0274477836*_D956+
0.0108757291*_D957+
0.0072272758*_D958+
-0.002805854*_D959+
-0.157465531*_D960+
-0.040181064*_D961+
0.0116267747*_D962+
0.0544383976*_D963+
0.0043692981*_D964+
-0.00792413*_D965+
0.001012539*_D966+
0.0025417907*_D967+
0.0025964099*_D968+
0.0055625661*_D969+
-0.019826782*_D970+
-0.000909525*_D971+
-0.004637058*_D972+
0.1465581554*_D973+
0.0008017999*_D974+
0.0016099201*_D975+
0.000767479*_D976+
0.020639694*_D977+
0.0076945978*_D978+
0.0098435456*_D979+
0.0058278819*_D980+
-0.007168981*_D981+
-0.013285105*_D982+
0.0027201126*_D983+
0.0041220185*_D984+
-0.008033638*_D985+
0.0125496437*_D986+
0.0066529518*_D987+
0.0008734857*_D988+
0.0317890464*_D989+
0.0234498*_D990+
0.0006159699*_D991+
-0.006868618*_D992+
0.0139724238*_D993+
0.0027638754*_D994+
-0.00286735*_D995+
-0.002614587*_D996+
0.0039767408*_D997+
0.0256220092*_D998+
-0.005841091*_D999+
-0.004948138*_D1000+
0.0000388163*_D1001+
0.0047678386*_D1002+
-0.001408654*_D1003+
-0.011634183*_D1004+
-0.007323139*_D1005+
0.0035431185*_D1006+
0.0046343144*_D1007+
0.0327851331*_D1008+
0.0045683484*_D1009+
0.020266634*_D1010+
0.0034948299*_D1011+
0.0029005407*_D1012+
-0.0122774*_D1013+
0.0403731707*_D1014+
0.0006344536*_D1015+
-0.061269712*_D1016+
-0.003515532*_D1017+
-0.020272649*_D1018+
0.0143218179*_D1019+
0.037513538*_D1020+
0.0079427499*_D1021+
-0.001389356*_D1022+
0.0155270062*_D1023+
-0.008795651*_D1024+
-0.025532183*_D1025+
0.0003112567*_D1026+
0.0093767148*_D1027+
-0.012544603*_D1028+
0.0064145269*_D1029+
-0.000989961*_D1030+
0.0137993403*_D1031+
-0.005109981*_D1032+
0.0031606131*_D1033+
-0.009148418*_D1034+
0.0003495213*_D1035+
0.0042019041*_D1036+
-0.021941637*_D1037+
0.0095080646*_D1038+
0.0067852187*_D1039+
-0.005225446*_D1040+
-0.012218612*_D1041+
0.0002458558*_D1042+
0.0104184059*_D1043+
0.0096677921*_D1044+
-0.033414316*_D1045+
-0.001040202*_D1046+
-0.018693208*_D1047+
-0.024295392*_D1048+
0.0134774077*_D1049+
-0.001230362*_D1050+
-0.001175702*_D1051+
0.008097693*_D1052+
0.020757123*_D1053+
0.0046777081*_D1054+
0.010298762*_D1055+
-0.032641174*_D1056+
0.0052936826*_D1057+
-0.003805051*_D1058+
-0.016150218*_D1059+
0.0187205186*_D1060+
0.017023774*_D1061+
0.0037854748*_D1062+
-0.000051987*_D1063+
0.0256472652*_D1064+
-0.008732326*_D1065+
0.0206036689*_D1066+
0.0139480668*_D1067+
0.0071057883*_D1068+
0.0135156598*_D1069+
-0.010256944*_D1070+
-0.005092136*_D1071+
-0.002420856*_D1072+
0.0091739238*_D1073+
-0.144805553*_D1074+
-0.00165232*_D1075+
-0.018975982*_D1076+
0.0119862208*_D1077+
0.0170911063*_D1078+
0.0149525706*_D1079+
-0.013548337*_D1080+
0.0025726215*_D1081+
0.0062247919*_D1082+
0.0093314321*_D1083+
0.0263232044*_D1084+
0.0346430292*_D1085+
0.0099041456*_D1086+
0.0101405359*_D1087+
-0.011067747*_D1088+
0.0045285208*_D1089+
-0.012194141*_D1090+
0.0053984204*_D1091+
0.0317214946*_D1092+
-0.000745685*_D1093+
-0.006960228*_D1094+
0.0064092061*_D1095+
0.002077852*_D1096+
0.0188047888*_D1097+
0.0256071658*_D1098+
-0.00133483*_D1099+
0.0042840635*_D1100+
0.0044771475*_D1101+
-0.001526776*_D1102+
-0.012197891*_D1103+
-0.006104184*_D1104+
-0.027253389*_D1105+
-0.020949492*_D1106+
0.0060368306*_D1107+
-0.005820041*_D1108+
0.0091284279*_D1109+
0.003140987*_D1110+
0.01047303*_D1111+
-0.042985589*_D1112+
-0.006729914*_D1113+
-0.009502065*_D1114+
-0.048721279*_D1115+
-0.001109524*_D1116+
-0.001963162*_D1117+
0.0114914727*_D1118+
-0.000122263*_D1119+
-0.017018846*_D1120+
0.0079610401*_D1121+
-0.004311144*_D1122+
-0.087966606*_D1123+
-0.000087348*_D1124+
0.0267527742*_D1125+
0.0013165913*_D1126+
-0.137958309*_D1127+
0.0270237453*_D1128+
0.0056947005*_D1129+
0.007702753*_D1130+
0.0047573245*_D1131+
0.0207939692*_D1132+
0.0061925498*_D1133+
0.0226576534*_D1134+
-0.000714336*_D1135+
-0.000367539*_D1136+
0.0092950296*_D1137+
0.0071936078*_D1138+
0.0037933751*_D1139+
0.0205807497*_D1140+
-0.221497045*_D1141+
-0.001574454*_D1142+
-0.00492046*_D1143+
0.0087876072*_D1144+
0.0053600641*_D1145+
-0.002105109*_D1146+
-0.000477824*_D1147+
0.004210286*_D1148+
0.0003217771*_D1149+
-0.00031792*_D1150+
0.0039748236*_D1151+
0.0025562985*_D1152+
-0.009747304*_D1153+
0.005675228*_D1154+
0.0083781131*_D1155+
0.0009304357*_D1156+
0.0339685821*_D1157+
0.0066884754*_D1158+
-0.025402802*_D1159+
-0.033648402*_D1160+
-0.003769954*_D1161+
-0.005083782*_D1162+
0.0144709776*_D1163+
0.0338549951*_D1164+
-0.006905019*_D1165+
-0.005281052*_D1166+
0.0015723945*_D1167+
-0.01781712*_D1168+
0.0045311686*_D1169+
-0.00997241*_D1170+
0.0200612681*_D1171+
0.010758814*_D1172+
-0.048857296*_D1173+
-0.002277121*_D1174+
0.0004626243*_D1175+
0.0504526352*_D1176+
0.007210156*_D1177+
0.0198046287*_D1178+
0.0046603735*_D1179+
0.0036256161*_D1180+
0.0211223998*_D1181+
-0.008693019*_D1182+
-0.004733685*_D1183+
0.0031106822*_D1184+
-0.008004939*_D1185+
-0.00445563*_D1186+
0.0009447276*_D1187+
0.0082400255*_D1188+
0.003796028*_D1189+
-0.110599381*_D1190+
-0.008661922*_D1191+
0.0030416561*_D1192+
-0.001493712*_D1193+
0.0287505797*_D1194+
-0.001611071*_D1195+
-0.014979008*_D1196+
-0.081966253*_D1197+
0.0090729327*_D1198+
0.0270738729*_D1199+
0.0145400687*_D1200+
-0.001441124*_D1201+
-0.012517514*_D1202+
0.0243800527*_D1203+
-0.001280251*_D1204;
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
_D242
_D243
_D244
_D245
_D246
_D247
_D248
_D249
_D250
_D251
_D252
_D253
_D254
_D255
_D256
_D257
_D258
_D259
_D260
_D261
_D262
_D263
_D264
_D265
_D266
_D267
_D268
_D269
_D270
_D271
_D272
_D273
_D274
_D275
_D276
_D277
_D278
_D279
_D280
_D281
_D282
_D283
_D284
_D285
_D286
_D287
_D288
_D289
_D290
_D291
_D292
_D293
_D294
_D295
_D296
_D297
_D298
_D299
_D300
_D301
_D302
_D303
_D304
_D305
_D306
_D307
_D308
_D309
_D310
_D311
_D312
_D313
_D314
_D315
_D316
_D317
_D318
_D319
_D320
_D321
_D322
_D323
_D324
_D325
_D326
_D327
_D328
_D329
_D330
_D331
_D332
_D333
_D334
_D335
_D336
_D337
_D338
_D339
_D340
_D341
_D342
_D343
_D344
_D345
_D346
_D347
_D348
_D349
_D350
_D351
_D352
_D353
_D354
_D355
_D356
_D357
_D358
_D359
_D360
_D361
_D362
_D363
_D364
_D365
_D366
_D367
_D368
_D369
_D370
_D371
_D372
_D373
_D374
_D375
_D376
_D377
_D378
_D379
_D380
_D381
_D382
_D383
_D384
_D385
_D386
_D387
_D388
_D389
_D390
_D391
_D392
_D393
_D394
_D395
_D396
_D397
_D398
_D399
_D400
_D401
_D402
_D403
_D404
_D405
_D406
_D407
_D408
_D409
_D410
_D411
_D412
_D413
_D414
_D415
_D416
_D417
_D418
_D419
_D420
_D421
_D422
_D423
_D424
_D425
_D426
_D427
_D428
_D429
_D430
_D431
_D432
_D433
_D434
_D435
_D436
_D437
_D438
_D439
_D440
_D441
_D442
_D443
_D444
_D445
_D446
_D447
_D448
_D449
_D450
_D451
_D452
_D453
_D454
_D455
_D456
_D457
_D458
_D459
_D460
_D461
_D462
_D463
_D464
_D465
_D466
_D467
_D468
_D469
_D470
_D471
_D472
_D473
_D474
_D475
_D476
_D477
_D478
_D479
_D480
_D481
_D482
_D483
_D484
_D485
_D486
_D487
_D488
_D489
_D490
_D491
_D492
_D493
_D494
_D495
_D496
_D497
_D498
_D499
_D500
_D501
_D502
_D503
_D504
_D505
_D506
_D507
_D508
_D509
_D510
_D511
_D512
_D513
_D514
_D515
_D516
_D517
_D518
_D519
_D520
_D521
_D522
_D523
_D524
_D525
_D526
_D527
_D528
_D529
_D530
_D531
_D532
_D533
_D534
_D535
_D536
_D537
_D538
_D539
_D540
_D541
_D542
_D543
_D544
_D545
_D546
_D547
_D548
_D549
_D550
_D551
_D552
_D553
_D554
_D555
_D556
_D557
_D558
_D559
_D560
_D561
_D562
_D563
_D564
_D565
_D566
_D567
_D568
_D569
_D570
_D571
_D572
_D573
_D574
_D575
_D576
_D577
_D578
_D579
_D580
_D581
_D582
_D583
_D584
_D585
_D586
_D587
_D588
_D589
_D590
_D591
_D592
_D593
_D594
_D595
_D596
_D597
_D598
_D599
_D600
_D601
_D602
_D603
_D604
_D605
_D606
_D607
_D608
_D609
_D610
_D611
_D612
_D613
_D614
_D615
_D616
_D617
_D618
_D619
_D620
_D621
_D622
_D623
_D624
_D625
_D626
_D627
_D628
_D629
_D630
_D631
_D632
_D633
_D634
_D635
_D636
_D637
_D638
_D639
_D640
_D641
_D642
_D643
_D644
_D645
_D646
_D647
_D648
_D649
_D650
_D651
_D652
_D653
_D654
_D655
_D656
_D657
_D658
_D659
_D660
_D661
_D662
_D663
_D664
_D665
_D666
_D667
_D668
_D669
_D670
_D671
_D672
_D673
_D674
_D675
_D676
_D677
_D678
_D679
_D680
_D681
_D682
_D683
_D684
_D685
_D686
_D687
_D688
_D689
_D690
_D691
_D692
_D693
_D694
_D695
_D696
_D697
_D698
_D699
_D700
_D701
_D702
_D703
_D704
_D705
_D706
_D707
_D708
_D709
_D710
_D711
_D712
_D713
_D714
_D715
_D716
_D717
_D718
_D719
_D720
_D721
_D722
_D723
_D724
_D725
_D726
_D727
_D728
_D729
_D730
_D731
_D732
_D733
_D734
_D735
_D736
_D737
_D738
_D739
_D740
_D741
_D742
_D743
_D744
_D745
_D746
_D747
_D748
_D749
_D750
_D751
_D752
_D753
_D754
_D755
_D756
_D757
_D758
_D759
_D760
_D761
_D762
_D763
_D764
_D765
_D766
_D767
_D768
_D769
_D770
_D771
_D772
_D773
_D774
_D775
_D776
_D777
_D778
_D779
_D780
_D781
_D782
_D783
_D784
_D785
_D786
_D787
_D788
_D789
_D790
_D791
_D792
_D793
_D794
_D795
_D796
_D797
_D798
_D799
_D800
_D801
_D802
_D803
_D804
_D805
_D806
_D807
_D808
_D809
_D810
_D811
_D812
_D813
_D814
_D815
_D816
_D817
_D818
_D819
_D820
_D821
_D822
_D823
_D824
_D825
_D826
_D827
_D828
_D829
_D830
_D831
_D832
_D833
_D834
_D835
_D836
_D837
_D838
_D839
_D840
_D841
_D842
_D843
_D844
_D845
_D846
_D847
_D848
_D849
_D850
_D851
_D852
_D853
_D854
_D855
_D856
_D857
_D858
_D859
_D860
_D861
_D862
_D863
_D864
_D865
_D866
_D867
_D868
_D869
_D870
_D871
_D872
_D873
_D874
_D875
_D876
_D877
_D878
_D879
_D880
_D881
_D882
_D883
_D884
_D885
_D886
_D887
_D888
_D889
_D890
_D891
_D892
_D893
_D894
_D895
_D896
_D897
_D898
_D899
_D900
_D901
_D902
_D903
_D904
_D905
_D906
_D907
_D908
_D909
_D910
_D911
_D912
_D913
_D914
_D915
_D916
_D917
_D918
_D919
_D920
_D921
_D922
_D923
_D924
_D925
_D926
_D927
_D928
_D929
_D930
_D931
_D932
_D933
_D934
_D935
_D936
_D937
_D938
_D939
_D940
_D941
_D942
_D943
_D944
_D945
_D946
_D947
_D948
_D949
_D950
_D951
_D952
_D953
_D954
_D955
_D956
_D957
_D958
_D959
_D960
_D961
_D962
_D963
_D964
_D965
_D966
_D967
_D968
_D969
_D970
_D971
_D972
_D973
_D974
_D975
_D976
_D977
_D978
_D979
_D980
_D981
_D982
_D983
_D984
_D985
_D986
_D987
_D988
_D989
_D990
_D991
_D992
_D993
_D994
_D995
_D996
_D997
_D998
_D999
_D1000
_D1001
_D1002
_D1003
_D1004
_D1005
_D1006
_D1007
_D1008
_D1009
_D1010
_D1011
_D1012
_D1013
_D1014
_D1015
_D1016
_D1017
_D1018
_D1019
_D1020
_D1021
_D1022
_D1023
_D1024
_D1025
_D1026
_D1027
_D1028
_D1029
_D1030
_D1031
_D1032
_D1033
_D1034
_D1035
_D1036
_D1037
_D1038
_D1039
_D1040
_D1041
_D1042
_D1043
_D1044
_D1045
_D1046
_D1047
_D1048
_D1049
_D1050
_D1051
_D1052
_D1053
_D1054
_D1055
_D1056
_D1057
_D1058
_D1059
_D1060
_D1061
_D1062
_D1063
_D1064
_D1065
_D1066
_D1067
_D1068
_D1069
_D1070
_D1071
_D1072
_D1073
_D1074
_D1075
_D1076
_D1077
_D1078
_D1079
_D1080
_D1081
_D1082
_D1083
_D1084
_D1085
_D1086
_D1087
_D1088
_D1089
_D1090
_D1091
_D1092
_D1093
_D1094
_D1095
_D1096
_D1097
_D1098
_D1099
_D1100
_D1101
_D1102
_D1103
_D1104
_D1105
_D1106
_D1107
_D1108
_D1109
_D1110
_D1111
_D1112
_D1113
_D1114
_D1115
_D1116
_D1117
_D1118
_D1119
_D1120
_D1121
_D1122
_D1123
_D1124
_D1125
_D1126
_D1127
_D1128
_D1129
_D1130
_D1131
_D1132
_D1133
_D1134
_D1135
_D1136
_D1137
_D1138
_D1139
_D1140
_D1141
_D1142
_D1143
_D1144
_D1145
_D1146
_D1147
_D1148
_D1149
_D1150
_D1151
_D1152
_D1153
_D1154
_D1155
_D1156
_D1157
_D1158
_D1159
_D1160
_D1161
_D1162
_D1163
_D1164
_D1165
_D1166
_D1167
_D1168
_D1169
_D1170
_D1171
_D1172
_D1173
_D1174
_D1175
_D1176
_D1177
_D1178
_D1179
_D1180
_D1181
_D1182
_D1183
_D1184
_D1185
_D1186
_D1187
_D1188
_D1189
_D1190
_D1191
_D1192
_D1193
_D1194
_D1195
_D1196
_D1197
_D1198
_D1199
_D1200
_D1201
_D1202
_D1203
_D1204
;

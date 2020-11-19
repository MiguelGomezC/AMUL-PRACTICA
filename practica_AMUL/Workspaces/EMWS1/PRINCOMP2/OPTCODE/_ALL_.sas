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

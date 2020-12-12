*****************************************;
*** Begin Scoring Code from PROC DMVQ ***;
*****************************************;


*** Begin Class Look-up, Standardization, Replacement ;
drop _dm_bad; _dm_bad = 0;

*** Standardize PC_1 ;
drop T_PC_1 ;
if missing( PC_1 ) then T_PC_1 = .;
else T_PC_1 = (PC_1 - 0.03318655417595) * 15.2455507803493;

*** Standardize PC_10 ;
drop T_PC_10 ;
if missing( PC_10 ) then T_PC_10 = .;
else T_PC_10 = (PC_10 - 0.00180598335757) * 26.2885943947214;

*** Standardize PC_11 ;
drop T_PC_11 ;
if missing( PC_11 ) then T_PC_11 = .;
else T_PC_11 = (PC_11 - 0.00039402396105) * 26.9380594505906;

*** Standardize PC_12 ;
drop T_PC_12 ;
if missing( PC_12 ) then T_PC_12 = .;
else T_PC_12 = (PC_12 - 0.00235740769568) * 27.6533965483725;

*** Standardize PC_13 ;
drop T_PC_13 ;
if missing( PC_13 ) then T_PC_13 = .;
else T_PC_13 = (PC_13 - -0.00021858557335) * 28.0092731443424;

*** Standardize PC_14 ;
drop T_PC_14 ;
if missing( PC_14 ) then T_PC_14 = .;
else T_PC_14 = (PC_14 - 0.00007811443969) * 28.2884985540873;

*** Standardize PC_15 ;
drop T_PC_15 ;
if missing( PC_15 ) then T_PC_15 = .;
else T_PC_15 = (PC_15 - -0.00055492364217) * 28.5101404942049;

*** Standardize PC_16 ;
drop T_PC_16 ;
if missing( PC_16 ) then T_PC_16 = .;
else T_PC_16 = (PC_16 - 0.00145632265651) * 28.9395732981546;

*** Standardize PC_17 ;
drop T_PC_17 ;
if missing( PC_17 ) then T_PC_17 = .;
else T_PC_17 = (PC_17 - 0.00243600423981) * 29.4173957149439;

*** Standardize PC_18 ;
drop T_PC_18 ;
if missing( PC_18 ) then T_PC_18 = .;
else T_PC_18 = (PC_18 - -0.00014069832294) * 29.7560132338027;

*** Standardize PC_19 ;
drop T_PC_19 ;
if missing( PC_19 ) then T_PC_19 = .;
else T_PC_19 = (PC_19 - 0.00115709927046) * 29.9903255333019;

*** Standardize PC_2 ;
drop T_PC_2 ;
if missing( PC_2 ) then T_PC_2 = .;
else T_PC_2 = (PC_2 - 0.05473325942454) * 26.1754271468546;

*** Standardize PC_20 ;
drop T_PC_20 ;
if missing( PC_20 ) then T_PC_20 = .;
else T_PC_20 = (PC_20 - 0.00077669327732) * 30.3573128740427;

*** Standardize PC_3 ;
drop T_PC_3 ;
if missing( PC_3 ) then T_PC_3 = .;
else T_PC_3 = (PC_3 - 0.0080727347431) * 17.6572768381086;

*** Standardize PC_4 ;
drop T_PC_4 ;
if missing( PC_4 ) then T_PC_4 = .;
else T_PC_4 = (PC_4 - 0.00119227878951) * 19.0059033625974;

*** Standardize PC_5 ;
drop T_PC_5 ;
if missing( PC_5 ) then T_PC_5 = .;
else T_PC_5 = (PC_5 - 0.00677147298244) * 20.2894697299779;

*** Standardize PC_6 ;
drop T_PC_6 ;
if missing( PC_6 ) then T_PC_6 = .;
else T_PC_6 = (PC_6 - 0.00532096437585) * 21.1181468754015;

*** Standardize PC_7 ;
drop T_PC_7 ;
if missing( PC_7 ) then T_PC_7 = .;
else T_PC_7 = (PC_7 - 0.00342454535797) * 21.5967491364649;

*** Standardize PC_8 ;
drop T_PC_8 ;
if missing( PC_8 ) then T_PC_8 = .;
else T_PC_8 = (PC_8 - 0.00329851446281) * 23.6591862709302;

*** Standardize PC_9 ;
drop T_PC_9 ;
if missing( PC_9 ) then T_PC_9 = .;
else T_PC_9 = (PC_9 - 0.00291827138231) * 25.4860305464463;

*** End Class Look-up, Standardization, Replacement ;


*** Omitted Cases;
if _dm_bad then do;
   _SEGMENT_ = .; Distance = .;
   goto CLUS2vlex ;
end; *** omitted;

*** Compute Distances and Cluster Membership;
label _SEGMENT_ = 'Id de segmento' ;
label Distance = 'Distancia' ;
array CLUS2vads [5] _temporary_;
drop _vqclus _vqmvar _vqnvar;
_vqmvar = 0;
do _vqclus = 1 to 5; CLUS2vads [_vqclus] = 0; end;
if not missing( T_PC_1 ) then do;
   CLUS2vads [1] + ( T_PC_1 - 15.5264889083635 )**2;
   CLUS2vads [2] + ( T_PC_1 - -0.06914895539166 )**2;
   CLUS2vads [3] + ( T_PC_1 - 26.668151255032 )**2;
   CLUS2vads [4] + ( T_PC_1 - -0.02930917579958 )**2;
   CLUS2vads [5] + ( T_PC_1 - -0.04949094267249 )**2;
end;
else _vqmvar + 1;
if not missing( T_PC_10 ) then do;
   CLUS2vads [1] + ( T_PC_10 - -0.83153288785156 )**2;
   CLUS2vads [2] + ( T_PC_10 - -1.30850937726695 )**2;
   CLUS2vads [3] + ( T_PC_10 - -0.02204527098626 )**2;
   CLUS2vads [4] + ( T_PC_10 - 0.00806218185604 )**2;
   CLUS2vads [5] + ( T_PC_10 - 0.00241744888599 )**2;
end;
else _vqmvar + 1;
if not missing( T_PC_11 ) then do;
   CLUS2vads [1] + ( T_PC_11 - 0.60214525489265 )**2;
   CLUS2vads [2] + ( T_PC_11 - 0.19273009413518 )**2;
   CLUS2vads [3] + ( T_PC_11 - 0.01102224600697 )**2;
   CLUS2vads [4] + ( T_PC_11 - 0.24940449678634 )**2;
   CLUS2vads [5] + ( T_PC_11 - -0.10214894443003 )**2;
end;
else _vqmvar + 1;
if not missing( T_PC_12 ) then do;
   CLUS2vads [1] + ( T_PC_12 - 0.0823560436075 )**2;
   CLUS2vads [2] + ( T_PC_12 - -0.82986665077233 )**2;
   CLUS2vads [3] + ( T_PC_12 - -0.11057830967328 )**2;
   CLUS2vads [4] + ( T_PC_12 - -0.03758299072631 )**2;
   CLUS2vads [5] + ( T_PC_12 - 0.01734378994259 )**2;
end;
else _vqmvar + 1;
if not missing( T_PC_13 ) then do;
   CLUS2vads [1] + ( T_PC_13 - -0.01638102705868 )**2;
   CLUS2vads [2] + ( T_PC_13 - -13.0713049365347 )**2;
   CLUS2vads [3] + ( T_PC_13 - 0.02520698359054 )**2;
   CLUS2vads [4] + ( T_PC_13 - 0.09841457208024 )**2;
   CLUS2vads [5] + ( T_PC_13 - -0.00271400887534 )**2;
end;
else _vqmvar + 1;
if not missing( T_PC_14 ) then do;
   CLUS2vads [1] + ( T_PC_14 - -0.094565104893 )**2;
   CLUS2vads [2] + ( T_PC_14 - 5.42565236065123 )**2;
   CLUS2vads [3] + ( T_PC_14 - 0.2119418917834 )**2;
   CLUS2vads [4] + ( T_PC_14 - -0.06446884870929 )**2;
   CLUS2vads [5] + ( T_PC_14 - 0.01064306056881 )**2;
end;
else _vqmvar + 1;
if not missing( T_PC_15 ) then do;
   CLUS2vads [1] + ( T_PC_15 - -0.16965279509491 )**2;
   CLUS2vads [2] + ( T_PC_15 - -0.03971512558728 )**2;
   CLUS2vads [3] + ( T_PC_15 - 0.0538158943611 )**2;
   CLUS2vads [4] + ( T_PC_15 - 0.1480763161813 )**2;
   CLUS2vads [5] + ( T_PC_15 - -0.05902130629325 )**2;
end;
else _vqmvar + 1;
if not missing( T_PC_16 ) then do;
   CLUS2vads [1] + ( T_PC_16 - 0.01501814732573 )**2;
   CLUS2vads [2] + ( T_PC_16 - 1.37710815720913 )**2;
   CLUS2vads [3] + ( T_PC_16 - -0.24287955570695 )**2;
   CLUS2vads [4] + ( T_PC_16 - -0.36862297512128 )**2;
   CLUS2vads [5] + ( T_PC_16 - 0.14438727645957 )**2;
end;
else _vqmvar + 1;
if not missing( T_PC_17 ) then do;
   CLUS2vads [1] + ( T_PC_17 - 0.07968109065288 )**2;
   CLUS2vads [2] + ( T_PC_17 - -5.34242623571664 )**2;
   CLUS2vads [3] + ( T_PC_17 - -0.03338578591271 )**2;
   CLUS2vads [4] + ( T_PC_17 - -0.56580756509506 )**2;
   CLUS2vads [5] + ( T_PC_17 - 0.24216527416904 )**2;
end;
else _vqmvar + 1;
if not missing( T_PC_18 ) then do;
   CLUS2vads [1] + ( T_PC_18 - 0.25417990421366 )**2;
   CLUS2vads [2] + ( T_PC_18 - 0.71432338788043 )**2;
   CLUS2vads [3] + ( T_PC_18 - 0.01113217169417 )**2;
   CLUS2vads [4] + ( T_PC_18 - 0.22328738370922 )**2;
   CLUS2vads [5] + ( T_PC_18 - -0.09231023211958 )**2;
end;
else _vqmvar + 1;
if not missing( T_PC_19 ) then do;
   CLUS2vads [1] + ( T_PC_19 - 0.7911526982572 )**2;
   CLUS2vads [2] + ( T_PC_19 - -1.33644863594249 )**2;
   CLUS2vads [3] + ( T_PC_19 - 0.15072550354855 )**2;
   CLUS2vads [4] + ( T_PC_19 - 0.29606071033293 )**2;
   CLUS2vads [5] + ( T_PC_19 - -0.1171593105245 )**2;
end;
else _vqmvar + 1;
if not missing( T_PC_2 ) then do;
   CLUS2vads [1] + ( T_PC_2 - -12.0575599506491 )**2;
   CLUS2vads [2] + ( T_PC_2 - 0.53548331905232 )**2;
   CLUS2vads [3] + ( T_PC_2 - -26.5931672666907 )**2;
   CLUS2vads [4] + ( T_PC_2 - 0.15682325951724 )**2;
   CLUS2vads [5] + ( T_PC_2 - -0.01125268689556 )**2;
end;
else _vqmvar + 1;
if not missing( T_PC_20 ) then do;
   CLUS2vads [1] + ( T_PC_20 - 0.0857931667981 )**2;
   CLUS2vads [2] + ( T_PC_20 - -5.45992221406567 )**2;
   CLUS2vads [3] + ( T_PC_20 - -0.03574964321042 )**2;
   CLUS2vads [4] + ( T_PC_20 - 0.09877097115351 )**2;
   CLUS2vads [5] + ( T_PC_20 - -0.02447014761641 )**2;
end;
else _vqmvar + 1;
if not missing( T_PC_3 ) then do;
   CLUS2vads [1] + ( T_PC_3 - -0.23870680694226 )**2;
   CLUS2vads [2] + ( T_PC_3 - 0.26870647952433 )**2;
   CLUS2vads [3] + ( T_PC_3 - 1.01537534278583 )**2;
   CLUS2vads [4] + ( T_PC_3 - 0.10476342184508 )**2;
   CLUS2vads [5] + ( T_PC_3 - -0.04323179006447 )**2;
end;
else _vqmvar + 1;
if not missing( T_PC_4 ) then do;
   CLUS2vads [1] + ( T_PC_4 - -3.05792251941242 )**2;
   CLUS2vads [2] + ( T_PC_4 - 0.09477108048681 )**2;
   CLUS2vads [3] + ( T_PC_4 - 8.22204768794035 )**2;
   CLUS2vads [4] + ( T_PC_4 - -0.21299127170708 )**2;
   CLUS2vads [5] + ( T_PC_4 - 0.08474773313914 )**2;
end;
else _vqmvar + 1;
if not missing( T_PC_5 ) then do;
   CLUS2vads [1] + ( T_PC_5 - -14.1860080384831 )**2;
   CLUS2vads [2] + ( T_PC_5 - 1.32925442581598 )**2;
   CLUS2vads [3] + ( T_PC_5 - 18.7160264635441 )**2;
   CLUS2vads [4] + ( T_PC_5 - 0.08161881152368 )**2;
   CLUS2vads [5] + ( T_PC_5 - -0.02080865413131 )**2;
end;
else _vqmvar + 1;
if not missing( T_PC_6 ) then do;
   CLUS2vads [1] + ( T_PC_6 - 10.3374765452981 )**2;
   CLUS2vads [2] + ( T_PC_6 - 2.38765395718073 )**2;
   CLUS2vads [3] + ( T_PC_6 - -8.95011168807573 )**2;
   CLUS2vads [4] + ( T_PC_6 - -0.09518962692566 )**2;
   CLUS2vads [5] + ( T_PC_6 - 0.01565895708819 )**2;
end;
else _vqmvar + 1;
if not missing( T_PC_7 ) then do;
   CLUS2vads [1] + ( T_PC_7 - 0.7585850668802 )**2;
   CLUS2vads [2] + ( T_PC_7 - 1.58150017262765 )**2;
   CLUS2vads [3] + ( T_PC_7 - -0.73588701766305 )**2;
   CLUS2vads [4] + ( T_PC_7 - -0.34949193650128 )**2;
   CLUS2vads [5] + ( T_PC_7 - 0.1348451174614 )**2;
end;
else _vqmvar + 1;
if not missing( T_PC_8 ) then do;
   CLUS2vads [1] + ( T_PC_8 - 1.79365774666781 )**2;
   CLUS2vads [2] + ( T_PC_8 - -2.43703912812464 )**2;
   CLUS2vads [3] + ( T_PC_8 - -0.44482916059592 )**2;
   CLUS2vads [4] + ( T_PC_8 - 0.7783704780231 )**2;
   CLUS2vads [5] + ( T_PC_8 - -0.30959245651392 )**2;
end;
else _vqmvar + 1;
if not missing( T_PC_9 ) then do;
   CLUS2vads [1] + ( T_PC_9 - 0.54658033787144 )**2;
   CLUS2vads [2] + ( T_PC_9 - -2.66123840623839 )**2;
   CLUS2vads [3] + ( T_PC_9 - -0.18398138922751 )**2;
   CLUS2vads [4] + ( T_PC_9 - -0.26640848207139 )**2;
   CLUS2vads [5] + ( T_PC_9 - 0.11339659886421 )**2;
end;
else _vqmvar + 1;
_vqnvar = 20 - _vqmvar;
if _vqnvar <= 4.5474735088646E-11 then do;
   _SEGMENT_ = .; Distance = .;
end;
else do;
   _SEGMENT_ = 1; Distance = CLUS2vads [1];
   _vqfzdst = Distance * 0.99999999999988; drop _vqfzdst;
   do _vqclus = 2 to 5;
      if CLUS2vads [_vqclus] < _vqfzdst then do;
         _SEGMENT_ = _vqclus; Distance = CLUS2vads [_vqclus];
         _vqfzdst = Distance * 0.99999999999988;
      end;
   end;
   Distance = sqrt(Distance * (20 / _vqnvar));
end;
CLUS2vlex :;

***************************************;
*** End Scoring Code from PROC DMVQ ***;
***************************************;
*------------------------------------------------------------*;
* Clus2: Creating Segment Label;
*------------------------------------------------------------*;
length _SEGMENT_LABEL_ $80;
label _SEGMENT_LABEL_='Segment Description';
if _SEGMENT_ = 1 then _SEGMENT_LABEL_="Cluster1";
else
if _SEGMENT_ = 2 then _SEGMENT_LABEL_="Cluster2";
else
if _SEGMENT_ = 3 then _SEGMENT_LABEL_="Cluster3";
else
if _SEGMENT_ = 4 then _SEGMENT_LABEL_="Cluster4";
else
if _SEGMENT_ = 5 then _SEGMENT_LABEL_="Cluster5";

defchar(allah,-1,2000,6,-1);
%%backgroundimage:images/Allah.jpg,-133.518,-1296.25,1,0,0,1
%%beginparams
z1 = (334.009,30.436);
z2 = (586.936,58.8696);
z3 = (581.855,-39.2516);
z4 = (323.122,-68.9698);

%%beginpaths

fill
(0.902777,8.51857) .. tension 1.08559 and 1.40034 ..
(76.5317,138.325) .. tension 1.18822 and 1.66043 ..
(176.682,206.795) .. tension 1.20232 and 1.73144 ..
 {right}(242.348,333.425) .. tension 2.02267 and 0.75 ..
 {down}(252.777,205.024) .. tension 1.94044 and 0.951134 ..
 {right}z1 .. tension 1 and 1 ..
(404.619,64.5121) .. tension 0.791136 and 1.20485 ..
 {up}(423.828,109.836) .. tension 2.53865 and 1.23111 ..
 {up}(387.539,382.138) .. tension 2.02879 and 1.37353 ..
 {right}(421.047,422.371) .. tension 1.36839 and 1.37187 ..
(449.498,364.588) .. tension 1.48638 and 2.23839 ..
(495.624,119.556) .. tension 2.19128 and 0.75 ..
 {right}z2 .. tension 1 and 1.63689 ..
 {up}(598.337,77.002) .. tension 3.69782 and 1 ..
(557.985,173.344) .. tension 1.45202 and 2.04686 ..
 {up}(524.256,313.766) .. tension 1 and 1.69311 ..
 {right}(558.075,422.061) .. tension 1.23227 and 1.23227 ..
 {down}(580.625,392.569) .. tension 1 and 1 ..
(604.026,267.746) .. tension 1 and 0.941589 ..
 {down}(656.663,107.786) .. tension 1.4891 and 1.23831 ..
 {left}z3 .. tension 0.75 and 1.23383 ..
(453.64,23.2539) .. tension 1 and 1.09581 ..
 {left}(448.962,25.7639) .. tension 2.5296 and 1 ..
(423.241,-5.7866) .. tension 1.17827 and 1 ..
 {left}z4 .. tension 0.827491 and 1 ..
(216.724,5.64641) .. tension 1 and 2.37499 ..
 {left}(198.258,41.331) .. tension 2.65441 and 1 ..
(173.005,23.0092) .. tension 1.45947 and 0.75 ..
 {left}(74.0316,-17.145) .. tension 1 and 2.39869 ..
 {up} cycle
;
fill
(88.5417,81.216) .. tension 3.03923 and 2.38709 ..
(187.891,95.5336) .. tension 2.14764 and 3.13157 ..
 {left}(187.173,149.059) .. tension 3.58852 and 2.52398 ..
 {down} cycle
;

%%endpaths
%%beginbody

glyphs[allah].points[1] := z1;
glyphs[allah].points[2] := z2;
glyphs[allah].points[3] := z3;
glyphs[allah].points[4] := z4;

savepicture:=1;

enddefchar;
defchar(lamalef.isol,-1,680,6,-1);
%%backgroundimage:images/lam.alef.jpg,-72.9499,-1174.04,1,0,0,1
%%beginparams
z1 = (465,74);
z2 = (503,-14);

%%beginpaths

fill
(306.872,58.9436) .. tension 1.73784 and 1 ..
(461.833,265.416) .. tension 0.968917 and 3.33846 ..
 {up}(501.735,511.557) .. tension 1.78394 and 1.41973 ..
 {up}(494.099,558.248) .. tension 1 and 4.04886 ..
 {right}(561.499,674.49) .. tension 1 and 1 ..
(574.77,650.478) .. tension 1 and 1 ..
(578.258,576.024) .. tension 1 and 2.70359 ..
 {down}(619.012,534.281) .. tension 0.75 and 4.86442 ..
(561.288,459.637) .. tension 6.90433 and 2.12776 ..
(557.365,431.555) .. tension 0.75 and 1.26701 ..
(475.09,151.212) .. tension 0.93248 and 5.10177 ..
 {down}(427.442,69.2108) .. tension 3.36951 and 9.7044 ..
z1 .. tension 4.86204 and 0.75 ..
(443.974,118.095) .. tension 1 and 8.15346 ..
(313.146,301.624) .. tension 1.82294 and 3.44624 ..
 {left}(176.002,432.837) .. tension 1.51642 and 1.05099 ..
 {left}(158.622,425.259) .. tension 1.57491 and 1.18186 ..
 {up}(31.5104,527.297) .. tension 1 and 1.27517 ..
 {right}(62.6082,619.434) .. tension 4.23328 and 0.830346 ..
(254.565,474.044) .. tension 0.856461 and 3.75129 ..
 {down}(531.739,70.226) .. tension 1 and 6.48608 ..
z2 .. tension 27.3804 and 11.2752 ..
 {left}(297.271,-37.2622) .. tension 0.75 and 1.13828 ..
 {up}(230.93,8.14009) .. tension 2.01909 and 1.49069 ..
 {right}(259.577,66.8397) .. tension 1.24669 and 1.17281 ..
 {right} cycle
;

%%endpaths
%%beginbody
%charwd := xpart lrcorner currentpicture -x1 + rightbearing;
%currentpicture := currentpicture shifted (-x1,0);

%labels(1,2);


enddefchar;
defchar(behbeh,-1,-1,6,-1);
%%backgroundimage:images/beh.init_beh.jpg,-928.173,-1070.45,1,0,0,1
%%beginparams
z1 = (298.406,111.819);
z2 = (287.019,10.6207);

%%beginpaths

fill
(181.694,150.606) .. tension 2.22 and 0.75 ..
 {right}z1 .. tension 1 and 1.08873 ..
 {up}(305.227,125.159) .. tension 2.7423 and 1 ..
 {up}(287.461,206.666) .. tension 1 and 1.56913 ..
 {right}(315.967,265.172) .. tension 2.19457 and 1 ..
 {down}(366.516,172.118) .. tension 1 and 1.13994 ..
 {left}z2 .. tension 0.901215 and 7.29269 ..
 {left}(172.913,54.3294) .. tension 1.08647 and 1 ..
bldmv ( (142.026,43.0063), (10.3935,5.05091), (33.8863,4.45281) ) .. tension 1 and 1 ..
bldmv ( (55.2752,4.93602), (-11.3333,9.16667), (85.8089,-3.32754) ) leftjoin
bldmv ( (71.3822,103.592), (-12,3), (100.614,8.77701) ) .. tension 1 and 1 ..
bldmv ( (141.15,133.223), (14,9), (19.4026,-0.482255) ) .. tension 1 and 1.91014 ..
 {right} cycle
;

%%endpaths
enddefchar;
defchar(behinitheh,-1,-1,6,-1);
%%backgroundimage:images/behinitheh.jpg,-198,-892,1,0,0,1
%%beginparams
z1 = (145,43);
z2 = (178,-18);

%%beginpaths

fill
(189.359,211.625) .. tension 2.22 and 0.75 ..
 {down}(205,194) .. tension 1 and 2.33212 ..
 {down}(125.883,35.1355) .. tension 0.92639 and 1.44093 ..
 {right}(133.674,21.0047) .. tension 4.14829 and 1 ..
z1 .. tension 1 and 1 ..
(228.713,136.593) .. tension 1 and 1.56913 ..
 {right}(377.967,191.172) .. tension 2.19457 and 1 ..
 {down}(435.516,125.118) .. tension 1 and 1.40016 ..
 {left}(405,71) .. tension 0.901215 and 0.875003 ..
 {left}(350.913,96.3294) .. tension 1.08647 and 1.69809 ..
 {down}z2 .. tension 0.75 and 3.61019 ..
 {down}(194.679,-129.656) .. tension 1.06904 and 2.47521 ..
 {left}bldmv ( (120.026,-233.994), (10.3935,5.05091), (33.8863,4.45281) ) .. tension 1.85195 and 1.4335 ..
 {up}(60.6557,-55) .. tension 1 and 1 ..
 {up}(64.3208,-4.66041) .. tension 1 and 1 ..
 {left}(55,7) .. tension 1 and 1 ..
bldmv ( (16.884,0.58704), (-11.3333,9.16667), (85.8089,-3.32754) ) leftjoin
bldmv ( (60.3822,100.592), (-12,3), (100.614,8.77701) ) .. tension 1 and 1 ..
bldmv ( (104.15,123.223), (14,9), (19.4026,-0.482255) ) .. tension 1 and 1.91014 ..
 {right} cycle
;

%%endpaths
enddefchar;
defchar(behbeh.ii,-1,-1,6,-1);
%%backgroundimage:images/beh.init_beh.ii.jpg,-753.573,-1150.45,1,0,0,1
%%beginparams
z1 = (383,122);
z2 = (375,26);

%%beginpaths

fill
(257.294,171.606) .. tension 2.22 and 1.15732 ..
 {right}z1 .. tension 1 and 1.02098 ..
 {up}(434.827,144.159) .. tension 1.58768 and 1 ..
 {up}(395.061,218.666) .. tension 1 and 1.56913 ..
 {right}(428.567,295.172) .. tension 2.19457 and 1 ..
 {down}(494.116,179.118) .. tension 1 and 1 ..
(474.6,78) .. tension 1 and 1.13994 ..
 {left}z2 .. tension 0.901215 and 1 ..
(273.6,62) .. tension 1 and 1.35771 ..
 {left}(245.169,75.9992) .. tension 1.91622 and 1 ..
liii0 ( (196.626,46.0063), (27.3935,20.0509), (33.8863,12.4528) ) .. tension 1 and 1 ..
liii0 ( (109.875,7.93602), (-11.3333,9.16667), (46.8089,-6.32754) ) leftjoin
liii0 ( (125.982,106.592), (-12,3), (44.614,-5.22299) ) .. tension 1 and 1 ..
liii0 ( (208.75,145.223), (14,9), (11.4026,4.51774) ) .. tension 1 and 0.997106 ..
 {right} cycle
;

%%endpaths
enddefchar;
defchar(lammeem,-1,-1,6,-1);
%%backgroundimage:images/lam.init.meem.jpg,-1458,-982,1,0,0,1
%%beginparams
z1 = (176.741,153.596);
z2 = (245.421,172.681);

%%beginpaths

fill
(172.018,129.728) .. tension 2.22 and 0.75 ..
 {up}z1 .. tension 11.7187 and 12.8619 ..
(126.803,529.268) .. tension 2.7423 and 0.75 ..
 {up}(102.5,586.355) .. tension 1 and 2.96167 ..
 {right}(157.967,714.172) .. tension 0.866445 and 1 ..
 {down}(178,686) .. tension 1 and 1 ..
 {down}(174,640) .. tension 1 and 1 ..
(186.319,607.681) .. tension 1 and 1 ..
 {right}(208,602.894) .. tension 1 and 1 ..
 {down}(221.736,588.685) .. tension 1 and 2.66616 ..
 {down}(188.894,516.208) .. tension 8.28496 and 2.24897 ..
z2 .. tension 1 and 1.69393 ..
 {down}(346.744,78.0786) .. tension 1.80011 and 1.83257 ..
 {left}(310.649,11.5852) .. tension 1.19321 and 1.37018 ..
 {left}(212.168,51.8217) .. tension 1.08647 and 1 ..
bldmv ( (161.316,33.3612), (10.3935,5.05091), (33.8863,4.45281) ) .. tension 1 and 1 ..
bldmv ( (53.3462,3.00701), (-86.3333,-29.8333), (85.8089,-3.32754) ) leftjoin
bldmv ( (82.3822,100.592), (-50,-21), (108.137,7.0409) ) .. tension 1 and 1 ..
bldmv ( (147.419,115.563), (14,9), (24.6109,-2.21837) ) .. tension 1 and 1.91014 ..
 cycle
;

%%endpaths
enddefchar;
defchar(seenmeem,-1,-1,6,-1);
%%backgroundimage:images/seenmeem.init.jpg,-841,-940,1,0,0,1
%%beginparams
z1 = (145,162);
z2 = (212,215);

%%beginpaths

fill
(148.407,124.172) .. tension 2.22 and 0.75 ..
 {up}z1 .. tension 1.06769 and 1.30926 ..
 {right}(266.803,372.268) .. tension 1.3642 and 0.75 ..
 {right}(386,311) .. tension 0.790684 and 1.60042 ..
 {right}(499.833,436.5) .. tension 1 and 1 ..
 {down}(521,411.167) .. tension 1 and 1 ..
 {down}(520,369) .. tension 2.1367 and 0.862175 ..
 {right}(567.5,343.355) .. tension 1 and 1.28554 ..
 {up}(569.967,393.172) .. tension 0.866445 and 1.60216 ..
 {right}(608,469) .. tension 1.33513 and 1.33096 ..
 {down}(650.5,360.5) .. tension 1.8503 and 0.849583 ..
 {left}(557.667,242.5) .. tension 1 and 1.60004 ..
 {left}(484.319,268.681) .. tension 1 and 1 ..
(457,249) .. tension 1 and 1 ..
 {left}(360,216.894) .. tension 1 and 1 ..
(267,253) .. tension 1 and 2.26847 ..
 {left}(249.736,266.685) .. tension 1 and 2.66616 ..
 {down}z2 .. tension 0.938952 and 1.69393 ..
 {down}(366.883,72.523) .. tension 1.80011 and 0.860258 ..
 {left}(329.399,4.64076) .. tension 1.19321 and 2.37678 ..
 {left}(212.168,51.8217) .. tension 1.89682 and 1 ..
liii0 ( (93.7327,14.2223), (10.3935,5.05091), (74.8585,0.286143) ) .. tension 1 and 1 ..
liii0 ( (35.3462,2.00701), (-86.3333,-29.8333), (108.144,-1.5791) ) leftjoin
liii0 ( (82.3822,100.592), (-51.4468,-17.142), (69.2888,-0.661753) ) .. tension 1 and 1 ..
liii0 ( (117.889,107.67), (-0.949846,-1.12731), (37.1313,3.07623) ) .. tension 1 and 1.91014 ..
 cycle
;

%%endpaths
enddefchar;
defchar(hehmeem,-1,-1,6,-1);
%%backgroundimage:images/hehmeem.jpg,-53.0366,-1263.54,1,0,0,1
%%beginparams
z1 = (193,183);
z2 = (222,126);

%%beginpaths

fill
(8.34684,-113.128) .. tension 1.29274 and 1.06821 ..
(88.8747,25.0933) .. tension 1 and 4.0878 ..
 {up}(131.958,47.5655) .. tension 1 and 1 ..
 {left}(123.958,52.5655) .. tension 1 and 1 ..
 {left}(90.958,40.5655) .. tension 1 and 1 ..
 {up}(72.958,53.5655) .. tension 1.87074 and 1 ..
z1 .. tension 1 and 4.57836 ..
 {up}(268.547,227.013) .. tension 1 and 1 ..
 {up}(257.887,272.013) .. tension 1.4599 and 1 ..
(276.582,362.119) .. tension 1 and 4.84609 ..
 {up}(291.577,407.566) .. tension 2.48783 and 1 ..
(283.771,428.696) .. tension 1 and 1 ..
 {up}(281.958,459.566) .. tension 1 and 1 ..
 {right}(318.958,527.566) .. tension 1.32383 and 1 ..
(445.958,438.566) .. tension 1 and 1 ..
 {down}(574.958,275.566) .. tension 1 and 1 ..
 {left}(499.958,157.566) .. tension 1 and 1 ..
(386.641,180.728) .. tension 2.38874 and 2.05535 ..
 {left}(360.958,184.566) .. tension 1.64347 and 18.6024 ..
 {down}z2 .. tension 2.1722 and 1.84398 ..
(303.724,63.2815) .. tension 1 and 1 ..
 {down}(311.958,39.9058) .. tension 1 and 2.05207 ..
 {left}(268.795,-23.2925) .. tension 1 and 1 ..
 {left}(252.907,-21.2455) .. tension 1.94119 and 1.62561 ..
(84.4842,-53.3485) .. tension 1 and 2.11318 ..
 {down}(57.0413,-83.9905) .. tension 4.70475 and 2.25875 ..
 {down}(113.958,-417.434) .. tension 1 and 1.59444 ..
 {left}(86.1355,-530.845) .. tension 1 and 1 ..
 {up}(59.3722,-489.881) .. tension 1.40951 and 1.01394 ..
 {up} cycle
;
fill
(346.747,372.166) .. tension 1.44898 and 3.99326 ..
 {down}(309.547,313.366) .. tension 1 and 1 ..
 {right}(359.207,280.024) .. tension 1 and 1 ..
 {up}(383.207,302.824) .. tension 4.91807 and 1 ..
 {left} cycle
;
fill
(448.747,318.166) .. tension 1 and 1 ..
 {down}(431.947,283.366) .. tension 1.6986 and 1.30364 ..
 {right}(503.028,248.095) .. tension 1 and 1 ..
 {up}(511.147,259.366) .. tension 8.46171 and 2.01642 ..
 {left} cycle
;

%%endpaths
%%beginbody

savepicture:=1;
enddefchar;
defchar(lamseenmeem,-1,-1,6,-1);
%%backgroundimage:images/lamseenmeem.jpg,-448,-1085,1,0,0,1
%%beginparams
z1 = (82,181);
z11 = (587,296);
z2 = (134,183);
z22 = (594,198);

%%beginpaths

fill
z1 .. tension 2.22 and 0.75 ..
(124,272) .. tension 1.06769 and 1.30926 ..
 {right}(203.275,326.004) .. tension 1.67069 and 0.75 ..
 {right}(313,259.315) .. tension 0.958545 and 1 ..
(357.639,279.514) .. tension 1 and 0.960414 ..
 {right}(413.833,342.5) .. tension 1 and 1 ..
 {down}(430,321.167) .. tension 1 and 1 ..
 {down}(419,277) .. tension 2.1367 and 0.862175 ..
 {right}(460.5,263.355) .. tension 1.69843 and 1.28554 ..
(495.967,321.172) .. tension 0.866445 and 1.60216 ..
 {right}(528.421,358.315) .. tension 1.33513 and 1.33096 ..
 {down}(543.5,337.5) .. tension 1.8503 and 1 ..
 {down}(539,317) .. tension 1 and 1 ..
 {right}z11 .. tension 1 and 1 ..
 {up}(620,321) .. tension 4.1354 and 8.08847 ..
(590,590) .. tension 1 and 1 ..
 {up}(570,635) .. tension 1 and 1.91342 ..
 {right}(624,763) .. tension 1 and 1 ..
(654,684) .. tension 1 and 1 ..
 {down}(695,654) .. tension 1 and 1.63542 ..
 {down}(661,560) .. tension 1 and 1 ..
 {down}(688,317) .. tension 1.34043 and 0.810853 ..
 {left}z22 .. tension 1 and 1.60004 ..
 {left}(505.319,209.681) .. tension 1.48506 and 0.75 ..
 {left}(446,166) .. tension 1 and 1.72239 ..
 {left}(371,181.894) .. tension 1 and 1 ..
 {left}(291,161) .. tension 1 and 1 ..
(215.278,184.028) .. tension 1 and 3.18922 ..
 {left}(169.856,225.805) .. tension 1.47445 and 2.66616 ..
 {down}z2 .. tension 0.938952 and 1 ..
(211.227,112.269) .. tension 1 and 1.69393 ..
 {down}(266.883,65.523) .. tension 1.80011 and 1.17817 ..
 {left}(215.399,-9.35924) .. tension 2.24255 and 4.69557 ..
 {left}(123.168,38.8217) .. tension 1.89682 and 1 ..
liii0 ( (71.7327,16.2223), (10.3935,5.05091), (74.8585,0.286143) ) .. tension 1 and 1 ..
liii0 ( (35.3462,2.00701), (-86.3333,-29.8333), (108.144,-1.5791) ) leftjoin
liii0 ( (44.3822,101.592), (-51.4468,-17.142), (69.2888,-0.661753) ) .. tension 1 and 1 ..
liii0 ( (70.889,117.67), (-0.949846,-1.12731), (37.1313,3.07623) ) .. tension 2.16814 and 1.91014 ..
 cycle
;

%%endpaths
%%beginbody
tr_ := tr_ shifted (0,-140);
enddefchar;
defchar(lammeemfina,-1,-1,6,-1);
%%backgroundimage:images/lammeemfina.jpg,-20,-1088,1,0,0,1
%%beginparams
z1 = (176,77);
z2 = (201,27);

%%beginpaths

fill
(21.5042,-230.707) .. tension 1.29274 and 1.06821 ..
(74.6154,-98.4808) .. tension 1 and 4.0878 ..
 {up}(93.3932,-78.3234) .. tension 1 and 1 ..
 {left}(79.0136,-72.5919) .. tension 1 and 1 ..
 {up}(62.4858,-62.328) .. tension 1.33123 and 1 ..
z1 .. tension 1 and 1.33291 ..
 {up}(239.887,193.013) .. tension 2.00772 and 1 ..
(209.971,495.896) .. tension 1 and 1 ..
 {up}(208.894,556.315) .. tension 1 and 2.19834 ..
 {right}(241.958,616.566) .. tension 1.45054 and 1 ..
(267.222,570.881) .. tension 2.12084 and 3.53424 ..
(278.672,433.966) .. tension 1 and 3.20972 ..
liii1 ( (318.6,123.4), (34,-21), (0,0) ) setranchor
(344,0) rightjoinii
(322.208,3.99656) .. tension 1 and 1 ..
(253.488,80.9826) .. tension 2.38874 and 2.05535 ..
 {left}(248.958,87.566) .. tension 2.37338 and 3.14349 ..
 {down}z2 .. tension 2.1722 and 1.84398 ..
(295.83,-38.8805) .. tension 1 and 1 ..
 {down}(312.166,-63.9923) .. tension 1 and 2.05207 ..
 {left}(266.689,-135.293) .. tension 1 and 1 ..
 {left}(216.657,-130.351) .. tension 0.831197 and 1.62561 ..
(105.373,-151.719) .. tension 1 and 2.11318 ..
 {down}(80.0413,-178.99) .. tension 2.35944 and 1 ..
(104.347,-310) .. tension 1 and 2.25875 ..
 {down}(113.958,-460.434) .. tension 1 and 2.28108 ..
 {left}(80.9781,-535.739) .. tension 1.37692 and 1 ..
 {up}(61.3722,-467.881) .. tension 5.26424 and 2.82729 ..
 {up} cycle
;

%%endpaths
%%beginbody

savepicture:=1;
enddefchar;
beginchar(notdef,0,-1,-1,-1);
%%backgroundimage:images/nodef.png,-752.949,-1178.7,8,0,0,8

%%beginpaths

fill
(-42.2071,588.054) .. tension 1 and 1 ..
 {right}(165.312,781.92) .. tension 1 and 1 ..
 {down}(350.438,636.595) .. tension 1 and 1 ..
 {left}(279.936,518.4) .. tension 1 and 1 ..
 {up}(186.624,586.829) .. tension 0.93744 and 1.09623 ..
 {up}(256.666,697.075) .. tension 1 and 1 ..
 {left}(184.55,740.275) .. tension 1 and 1 ..
 {down}(78.7968,659.405) .. tension 1 and 1 ..
 {down}(201.898,363.101) .. tension 1 and 3.43742 ..
 {left}(168.269,223.776) .. tension 1.56096 and 1 ..
 {up}(151.046,269.088) .. tension 1 and 1 ..
 {up} cycle
;
fill
(73.6776,83.6076) .. tension 1 and 1 ..
(234.921,86.5935) .. tension 1 and 1 ..
 cycle
;

%%endpaths
%%beginbody
% glyphname:space
%%begincomponents
%%endcomponents
endchar;
beginchar(null,1,-1,-1,-1);
%%beginbody
charwd := 0;
endchar;
beginchar(linefeed,10,-1,-1,-1);
%%beginbody
charwd := 0;
endchar;
beginchar(zwj,8205,-1,-1,-1);
%%beginbody
%847
charwd := 0;
endchar;
beginchar(cgj,847,-1,-1,-1);
%%beginbody
%847
charwd := 0;
endchar;
defchar(space,32,-1,-1,-1);
%%beginbody


charwd := 200 + lefttatweel  *nuqta ;
enddefchar;
beginchar(space.ii,-1,-1,-1,-1);
%%beginbody
charwd := 0;
endchar;
beginchar(rubelhizb,1758,-1,-1,-1);
%%backgroundimage:images/hizb.jpg,-4049.19,-1130.17,1,0,0,1
%%beginparams
z1 = (834.667,495);
z2 = (409,1010);

%%beginpaths

controlledPath (0,6)(_pii)(
(683.667,611.5) {dir -21.0218} .. tension 0.943006 and 2.66474 ..
(779.778,537.606) .. tension 1 and 1.20533 ..
 {down}z1 ..
 {up} cycle
);
controlledPath (1,0)(_piii)(
(x2,886.498) .. tension 2.87631 and 3.09002 ..
 {down}(481.251,737.028) .. tension 1.84928 and 2.5898 ..
 {left}(458.096,677.376) .. tension 1.34783 and 0.75 ..
 {up}(448.901,716.146) .. tension 6.08006 and 1.52918 ..
 {left}(x2,797.1) .. tension 2.85131 ..
 {right} cycle
);
controlledPath (3,0)(_piv)(
(744.877,y1) {up} .. tension 3.58293 and 1.33316 ..
 {left}(664.38,570.457) .. tension 3.24976 and 1.83321 ..
 {down}(597.538,540.2) .. tension 1.10758 and 1 ..
 {right}(631.589,536.999) .. tension 1 and 1.61767 ..
 {down}(690,y1) --
 cycle
);
controlledPath (10,0)(_pi)(
z2 {right} .. tension 1.09798 and 1 ..
(443,963) .. tension 3.24976 and 3.31181 ..
 {dir -96}(517,762) --
 cycle
);

%%endpaths
%%beginbody
save _paths; path _paths[];

_paths0 := _pi;
_paths1 := _pii;

_paths2 := subpath(0,length _paths1 - 1) of _paths1;
points0 := point 2 of _paths2;

_paths3 := reverse _paths2 reflectedabout (z1, z1 + (10,0));

_paths4 :=  _paths2 .. controls postcontrol 0 of _paths3 and precontrol 1 of _paths3 .. subpath(1, length _paths3) of _paths3;


_paths5 := _paths4 shifted (point length _paths4 of _paths4 - point 0 of _paths4) rotatedaround (point length _paths4 of _paths4,-45);

_paths6 := _paths4 shifted -(point length _paths4 of _paths4 - point 0 of _paths4) rotatedaround (point 0 of _paths4,45);

_paths7 := subpath(0,1) of _paths0  .. controls postcontrol 1 of _paths0 and precontrol 2 of _paths0 .. point 0 of _paths6;

_paths8 :=  reverse _paths7 reflectedabout (z1, z1 + (10,0));

_paths10 :=  _paths7 & _paths6 & _paths4 & _paths5 .. _paths8;

fill _paths10 .. reverse _paths10 reflectedabout (z2, z2 + (0,10)) .. cycle ;

_paths11 := _piii; _paths12 := reverse subpath(0,length _paths11 - 1) of _paths11;

_paths13 :=  _paths12 .. reverse _paths12 reflectedabout (z2, z2 + (0,10)) .. cycle ; fill _paths13; fill reverse _paths13 reflectedabout (z1, z1 + (10,0));

_paths14 := _piv; _paths15 := subpath(0,length _paths14 - 1) of _paths14; _paths16 := _paths15 .. reverse _paths15 reflectedabout (z1, z1 + (10,0)) .. cycle;

z3 = (x2,y1);

fill _paths16;fill _paths16 rotatedaround (z3, 180);

fill _paths16 rotatedaround (z3, 45); fill _paths16 rotatedaround (z3, -45);
fill _paths16 rotatedaround (z3, 135); fill _paths16 rotatedaround (z3, -135);

fill fullcircle scaled 130  shifted z3;
fill fullcircle scaled 260  shifted z3;
currentpicture := currentpicture  shifted (0,-300) scaled 1 ;

endchar;
beginchar(placeofsajdah,1769,-1,-1,-1);
%%backgroundimage:images/sajda.jpg,-1086.5,-1089.55,1,0,0,1

%%beginpaths

fill
(216.976,57.5783) .. tension 1 and 1 ..
 {up}(239.326,92.239) .. tension 1 and 1 ..
 {up}(231.626,330.504) .. tension 10.3117 and 0.75 ..
 {up}(148.276,406.314) .. tension 1.03636 and 1.34025 ..
(307.999,562.339) .. tension 1 and 5.21582 ..
 {right}(335.697,626.688) .. tension 7.853 and 1 ..
(372.178,563.172) .. tension 1.23371 and 1.00181 ..
 {down}(539.931,417.245) .. tension 0.762728 and 6.87108 ..
 {down}(471.644,347.801) .. tension 1 and 1.34752 ..
 {down}(481.288,135.513) .. tension 0.916134 and 2.79655 ..
 {down}(521.656,81.2328) .. tension 12.0083 and 5.3958 ..
(365.1,62.441) .. tension 5.4814 and 11.064 ..
 {up} cycle
;
fill
(338.381,571.47) .. tension 7.79178 and 1 ..
(301.33,533.158) .. tension 1 and 1 ..
 {down}(167.583,403.485) .. tension 0.777617 and 3.94323 ..
 {down}(247.221,339.662) .. tension 1 and 1 ..
 {down}(256.03,116.042) .. tension 1 and 1.41754 ..
 {down}(251.419,71.0595) .. tension 13.6448 and 2.41969 ..
(369.571,74.3808) .. tension 2.18139 and 10.3562 ..
 {up}(481.315,90.3108) .. tension 0.75 and 1 ..
 {up}(463.543,131.637) .. tension 2.66531 and 1 ..
 {up}(453.64,353.733) .. tension 3.40012 and 0.851637 ..
 {up}(517.216,410.317) .. tension 1 and 1.00683 ..
(375.719,536.485) .. tension 1 and 3.10649 ..
 {left} cycle
;
fill
(220.441,402.636) .. tension 1.86077 and 1 ..
(287.454,462.159) .. tension 1 and 2.92388 ..
 {right}(339.698,505.529) .. tension 2.39921 and 1 ..
(394.901,465.787) .. tension 1 and 1.7426 ..
 {down}(469.415,413.041) .. tension 0.978867 and 2.43577 ..
 {down}(417.361,370.486) .. tension 1 and 1 ..
 {down}(432.577,141.494) .. tension 3.59482 and 0.933838 ..
(358.91,126.914) .. tension 1 and 6.52764 ..
 {up}(292.399,127.183) .. tension 1 and 1 ..
 {up}(278.803,362.248) .. tension 3.25519 and 1.12185 ..
 {up} cycle
;

%%endpaths
%%beginbody
leftbearing:=0;
rightbearing:=100;
endchar;
beginchar(endofaya,1757,-1,-1,-1);
%%backgroundimage:images/ayah.colored.jpg,-2634.97,-1083.45,1,0,0,1
%%beginparams
z1 = (407,1000);

%%beginverbatim

save _color; color _color[];
_color1 := (165.0/255,143.0/255,106.0/255); %dacc8f (yellow)
_color2:= (116.0/255,181.0/255,130.0/255); %bed0a6 (green)
_color3:= (56.0/255,52.0/255,49.0/255);  % (brown)
%%endverbatim

%%beginpaths

controlledPath (0,0)(_pi)(
z1 .. tension 1.34662 and 1 ..
(431.833,965) .. tension 2.17161 and 1 ..
(522.279,877.278) .. tension 1.73063 and 1 ..
(707.223,783.333) .. tension 0.75 and 2.66808 ..
(911.307,662.5) .. tension 1 and 1.46852 ..
 {down}(1004.73,585.491) .. tension 1.37528 and 1.56249 ..
(953.457,535.428) .. tension 1 and 0.817256 ..
 {left}(879.29,522.12) .. tension 1 and 1.76908 ..
 {left}(793.283,548.805) .. tension 1.51394 and 0.75 ..
 {left}(736.37,523.422) .. tension 2.44791 and 0.87884 ..
 {left}(550.43,610.154) .. tension 1 and 2.36011 ..
 {left}(x1,530) .. tension 1 and 1 ..
 {right} cycle
);
controlledPath (1,0)(_pii)(
(x1,590.834) .. tension 1.48291 and 1 ..
 {right}(554.452,653) .. tension 1 and 5.79299 ..
 {right}(737.326,565.851) .. tension 1 and 0.75 ..
 {right}(793.277,589.167) .. tension 1 and 1 ..
 {right}(886.501,557.798) .. tension 1 and 2.67019 ..
 {up}(961.333,587.833) .. tension 9.69283 and 3.11289 ..
(655.638,768.917) .. tension 1 and 1.38385 ..
(442.305,888) .. tension 1 and 2.77377 ..
(x1,930.166) .. tension 3.61131 and 3.89693 ..
 {right} cycle
);
controlledPath (2,0)(_piii)(
(572.025,763.374) .. tension 4.26468 and 1 ..
(638.488,732.237) .. tension 1 and 6.10119 ..
 {down}(728.965,667.182) .. tension 2.36638 and 1.96816 ..
 {left}(706.582,635.434) .. tension 4.5127 and 1 ..
(616.732,689.63) .. tension 1 and 4.54003 ..
 {up}(548.021,728.521) .. tension 2.1223 and 2.35586 ..
 {right} cycle
);

%%endpaths
%%beginbody

path _path[];

z.center2 =  (x1,y1 - 760);

picture _temppic;
_temppic := image(

_path1 := _pi;
_path2 := subpath(0,length _path1 -1) of _path1;
_path22 := _path2 .. (reverse _path2 reflectedabout (z1, z1 + (0,10))) .. cycle;
fill _path22 withcolor _color3;

_path3 := _pii;
_path4 := subpath(0,length _path3 -1 ) of _path3;
fill _path4 .. reverse _path4 reflectedabout (z1, z1 + (0,10)) .. cycle  withcolor _color1;

_path5 := _piii;
fill _path5 withcolor _color3;
fill _path5 reflectedabout (z1, z1 + (0,10)) withcolor _color3;


z.center =  (x1,ypart point 0 of _path5) + (0,-20);
fill fullcircle scaled 120  shifted z.center withcolor _color3;

def refaxe = (z.center2, z.center2 + (10,0)) enddef;

draw currentpicture reflectedabout refaxe;

save diag;

diag1 = 1190;
diag2 = 1120;

_path6 := (halfcircle rotated 90 )scaled diag1  shifted z.center2;
_path7 := reverse (halfcircle rotated 90) scaled diag2  shifted z.center2;

_path8 := (halfcircle rotated -90 )scaled diag1  shifted z.center2;
_path9 := reverse (halfcircle rotated -90) scaled diag2  shifted z.center2;



_path10 = mybuildcycle(_path6, _path22 reflectedabout refaxe,_path7,_path22);
_path11 = mybuildcycle(_path8,_path22 ,_path9,_path22 reflectedabout refaxe);


fill _path10 withcolor _color2;
fill _path11 withcolor _color2;

diag1 := 1020;
diag2 := 950;

_path6 := (halfcircle rotated 90 )scaled diag1  shifted z.center2;
_path7 := reverse (halfcircle rotated 90) scaled diag2  shifted z.center2;

_path8 := (halfcircle rotated -90 )scaled diag1  shifted z.center2;
_path9 := reverse (halfcircle rotated -90) scaled diag2  shifted z.center2;



_path10 := mybuildcycle(_path6, _path22 reflectedabout refaxe,_path7,_path22);
_path11 := mybuildcycle(_path8,_path22 ,_path9,_path22 reflectedabout refaxe);


fill _path10 withcolor _color2;
fill _path11 withcolor _color2;



);

draw _temppic;
currentpicture := currentpicture  scaled 0.78 shifted (0,76);




savepicture := 1;

if useColoredAya : coloredglyph:="endofaya.colored"; fi



endchar;
beginchar(endofaya.colored,-1,-1,5,-1);
%%backgroundimage:images/ayah.colored.jpg,-2634.97,-1083.45,1,0,0,1
%%beginparams
z1 = (407,1000);

%%beginverbatim

save _color; color _color[];
_color1 := (165.0/255,143.0/255,106.0/255); %dacc8f (yellow)
_color2:= (96.0/255,161.0/255,110.0/255); %bed0a6 (green)
_color3:= (56.0/255,52.0/255,49.0/255);  % (brown)
%%endverbatim

%%beginpaths

controlledPath (0,0)(_pi)(
z1 .. tension 1.34662 and 1 ..
(431.833,965) .. tension 2.17161 and 1 ..
(521.279,871.278) .. tension 1.73063 and 1 ..
(707.223,783.333) .. tension 0.75 and 2.66808 ..
(908.307,654.5) .. tension 1 and 1.46852 ..
 {down}(1004.73,585.491) .. tension 1.37528 and 1.56249 ..
(939.457,532.428) .. tension 1 and 0.817256 ..
 {left}(909.29,511.12) .. tension 1 and 1 ..
 {left}(867.308,520.411) .. tension 1 and 1.98337 ..
 {left}(789.329,492.546) .. tension 1.40592 and 1.76908 ..
 {left}(772.283,514.805) .. tension 1.51394 and 0.75 ..
 {left}(732.37,503.422) .. tension 2.44791 and 0.87884 ..
 {left}(551.43,604.154) .. tension 1 and 2.36011 ..
 {left}(x1,530) .. tension 1 and 1 ..
 {right} cycle
);
controlledPath (1,0)(_pii)(
(x1,590.834) .. tension 1.48291 and 1 ..
 {right}(551.452,656) .. tension 1 and 5.79299 ..
 {right}(737.326,565.851) .. tension 1 and 0.75 ..
 {right}(793.277,589.167) .. tension 1 and 1 ..
 {right}(856.501,572.798) .. tension 1 and 2.67019 ..
 {up}(924.333,581.833) .. tension 9.69283 and 1 ..
(655.638,768.917) .. tension 1 and 0.950567 ..
(442.305,888) .. tension 1 and 2.77377 ..
(x1,930.166) .. tension 3.61131 and 3.89693 ..
 {right} cycle
);
controlledPath (2,0)(_piii)(
(574.025,770.374) .. tension 4.26468 and 1 ..
(640.488,739.237) .. tension 1 and 6.10119 ..
 {down}(730.965,674.182) .. tension 2.36638 and 1.96816 ..
 {left}(699.582,633.434) .. tension 4.5127 and 1 ..
(612.732,679.63) .. tension 1 and 4.54003 ..
 {up}(539.021,725.521) .. tension 2.1223 and 2.35586 ..
 {right} cycle
);

%%endpaths
%%beginbody

path _path[];

z.center2 =  (x1,y1 - 760);

picture _temppic;
_temppic := image(

_path1 := _pi;
_path2 := subpath(0,length _path1 -1) of _path1;
_path22 := _path2 .. (reverse _path2 reflectedabout (z1, z1 + (0,10))) .. cycle;
fill _path22 withcolor _color3;

_path3 := _pii;
_path4 := subpath(0,length _path3 -1 ) of _path3;
fill _path4 .. reverse _path4 reflectedabout (z1, z1 + (0,10)) .. cycle  withcolor _color1;

_path5 := _piii;
fill _path5 withcolor _color3;
fill _path5 reflectedabout (z1, z1 + (0,10)) withcolor _color3;


z.center =  (x1,ypart point 0 of _path5) + (0,-20);
fill fullcircle scaled 140  shifted z.center withcolor _color3;

def refaxe = (z.center2, z.center2 + (10,0)) enddef;

draw currentpicture reflectedabout refaxe;

_path6 := (halfcircle rotated 90 )scaled 1170  shifted z.center2;
_path7 := reverse (halfcircle rotated 90) scaled 920  shifted z.center2;

_path8 := (halfcircle rotated -90 )scaled 1170  shifted z.center2;
_path9 := reverse (halfcircle rotated -90) scaled 920  shifted z.center2;

%fill _path6; fill _path7;

_path10 = mybuildcycle(_path6, _path22 reflectedabout refaxe,_path7,_path22);
_path11 = mybuildcycle(_path8,_path22 ,_path9,_path22 reflectedabout refaxe);


fill _path10 withcolor _color2;
fill _path11 withcolor _color2;


);

draw _temppic;
currentpicture := currentpicture  scaled 0.78 shifted (0,76);

savepicture := 1;
coloredglyph := "";

endchar;
defchar(endofaya.iii,-1,-1,-1,-1);
%%backgroundimage:images/aya2.JPG,-205.054,-919.225,1,0,0,1
%%beginparams
thickness_ := 20;
z1 = (441,727);
z1.n1 = (xpart.z1,-273);
z1.n2 = (xpart.z1,-249);
z1.n3 = (xpart.z1,-154);
z1.n4 = (xpart.z1,ypart.z1.n3 + thickness_);
z1.n5 = (xpart.z1,ypart.z1 - thickness_);
z2 = (440,786);
z3 = (882,282);

%%beginverbatim

%%endverbatim

%%beginpaths

fill
z1 ..
 {dir 0}(467,725) {dir 140.227} ..
 {up}z2 ..
 {right}(530,873) ..
 {down}(623,ypart.z2) ..
 {dir -133.736}(607,741) {dir -11.7662} .. tension 0.906888 and 1 ..
 {dir -38.019}(780,665) {dir 75.9387} .. tension 0.984617 and 1.1724 ..
 {dir 9.32696}(851,746) {dir -92.5571} .. tension 1.17576 and 1 ..
(897,613) .. tension 1 and 1.45857 ..
 {dir -58.1711}(987,523) {dir 34.7492} .. tension 0.760681 and 1.19379 ..
 {dir 6.52681}(1058,542) {dir -116.849} .. tension 0.920526 and 1 ..
 {down}(1029,413) .. tension 1 and 1 ..
(1036,262) .. tension 1 and 1 ..
 {left}(1003,246) .. tension 1 and 0.75 ..
 {dir 141.418}(973,258) {down} ..
 {left}z1.n1 .. tension 1 and 1 ..
 {right}z1.n2 ..
 {up}(953,257) .. tension 1.06633 and 0.764259 ..
 {dir 96.2847}(951,307) {dir -49.7743} ..
 {right}(999,269) ..
 {up}(1008,405) ..
 {dir 61.522}(1028,515) {dir 174.326} .. tension 0.972502 and 1.52367 ..
 {dir -99.1799}(938,419) {dir 90.999} .. tension 0.75354 and 1 ..
(937,471) .. tension 0.965318 and 1.04914 ..
 {dir 48.295}(968,513) {dir 124.83} .. tension 1.47369 and 1 ..
(878,601) .. tension 1 and 0.75 ..
 {dir 102.678}(833,710) {dir -156.685} .. tension 0.956759 and 4.83272 ..
 {dir -70.6238}(801,539) {left} .. tension 4.76661 and 1.27814 ..
 {dir 121.695}(780,565) .. tension 3.64246 and 1.01452 ..
 {dir 85.7017}(776,645) {dir 135.318} .. tension 1.57031 and 1.00182 ..
 {dir 173.721}(575,728) {dir 35.4839} ..
 {up}(602,ypart.z2) ..
 {left}(530,855) ..
 {down}(461,ypart.z2) .. tension 0.975908 and 0.772607 ..
(624,689) .. tension 1.33082 and 1 ..
(786,558) ..
 {down}z3 ..
 {left}z1.n3 ..
 {right}z1.n4 ..
 {up}(xpart.z3 - thickness_,ypart.z3) ..
 {left}z1.n5 ..
 {right} cycle
;

%%endpaths
%%beginbody

path _p[];

_p0 := pathpart currentpicture;

currentpicture := nullpicture;
_p1 := subpath (ypart (z1 intersectiontimes  _p0), ypart ( z1.n1 intersectiontimes  _p0)) of _p0;
fill _p1 .. reverse  (_p1 reflectedabout (z1,z1+(0,50))) .. cycle withcolor black;
_p1 := subpath (ypart (z1.n2 intersectiontimes  _p0), ypart ( z1.n3 intersectiontimes  _p0)) of _p0;
fill _p1 .. reverse  (_p1 reflectedabout (z1,z1+(0,50))) .. cycle withcolor white;
_p1 := subpath (ypart (z1.n4 intersectiontimes  _p0), ypart ( z1.n5 intersectiontimes  _p0)) of _p0;
fill _p1 .. reverse  (_p1 reflectedabout (z1,z1+(0,50))) .. cycle withcolor white;;
savepicture:=1;

currentpicture := currentpicture shifted (0,30) scaled 0.84;

enddefchar;
defchar(one_dot,-1,-1,-1,-1);
%%backgroundimage:images/one_dot.jpg,-1291.7,-624.115,1,0,0,1

%%beginpaths

fill
(-82.0567,44.0748) .. tension 1.46921 and 2.7974 ..
 {right}(-37.1214,116.969) .. tension 1.36793 and 3.58612 ..
 {down}(38.9892,73.0404) .. tension 0.919075 and 1.75531 ..
 {left}(-5.68558,1.42331) .. tension 1.10332 and 3.96234 ..
 {up} cycle
;

%%endpaths
%%beginbody

%currentpicture := nullpicture;

%save angle;numeric angle;
%angle := 65;



%fill (0,0)  {dir  190}  ..   {dir -190} (-penwidth,0) .. (-penwidth,penwidth) -- (0,penwidth) -- cycle;

%currentpicture := currentpicture rotated angle;


tr_ := identity shifted (0,-ypart llcorner currentpicture);

leftbearing:=0;
savepicture:=1;
enddefchar;
defchar(two_dots,-1,-1,-1,-1);
%%backgroundimage:images/two_dots.jpg,-1644.4,-675.794,1,0,0,1

%%beginpaths

fill
(221.345,41.4588) .. tension 2.01595 and 1.49947 ..
 {right}(277.142,108.37) .. tension 2.17451 and 3.64423 ..
 {right}(340.112,78.018) .. tension 3.75734 and 1.49184 ..
 {right}(388.977,125.502) .. tension 2.89959 and 2.38321 ..
 {down}(451.017,66.9315) .. tension 8.41937 and 3.02118 ..
 {left}(403.414,-0.536878) .. tension 2.54187 and 2.97311 ..
 {left}(346.207,31.7092) .. tension 3.14194 and 2.65824 ..
 {left}(296.514,-9.85648) .. tension 5.07412 and 2.39164 ..
 {up} cycle
;

%%endpaths
%%beginbody


%tr_ := identity shifted (0,-ypart llcorner currentpicture);

leftbearing:=0;
savepicture:=1;
enddefchar;
beginchar(onedotup,-1,-1,-1,-1);
%%beginbody
one_dot_(0,0);
endchar;
beginchar(onedotdown,-1,-1,-1,-1);
%%beginbody
one_dot_(0,0);
endchar;
beginchar(twodotsup,-1,-1,-1,-1);
%%beginbody
two_dots_(0,0);
endchar;
beginchar(twodotsdown,-1,-1,-1,-1);
%%beginbody
two_dots_(0,0);
endchar;
beginchar(three_dots,-1,-1,-1,-1);
%%backgroundimage:images/three_dots.jpg,-857.685,-808.843,1,0,0,1
%%beginparams
z1 = (344.041,110.882);
%%beginbody

two_dots_(0,0);
draw  image(one_dot_(0,0)) shifted z1;

leftbearing := 0;

tr_ := identity shifted (0,-ypart llcorner currentpicture);
endchar;
defchar(minikaf,-1,-1,-1,-1);
%%backgroundimage:images/minikaf.jpg,-138.535,-1088,1,0,0,1

%%beginpaths

fill
(125.213,257.558) .. tension 1.6784 and 1.4713 ..
 {right}(141.417,282.809) .. tension 0.79595 and 1 ..
(171.509,251.559) .. tension 1 and 1.33888 ..
 {right}(214.365,231.444) .. tension 1.09293 and 2.8036 ..
 {up}(268.654,257.857) .. tension 3.47947 and 0.912831 ..
 {up}(186.942,321.566) .. tension 1.42767 and 1.34502 ..
 {right}(322.305,485.91) .. tension 1 and 1.563 ..
 {down}(350.791,457.397) .. tension 1.52995 and 1.31644 ..
 {left}(303.482,390.239) .. tension 1.10481 and 1 ..
 {left}(276.635,404.088) .. tension 1.37215 and 1.6639 ..
 {down}(254.166,381.23) .. tension 1.54122 and 1.04835 ..
 {down}(352.371,310.779) .. tension 1.16642 and 0.928176 ..
 {left}(205.489,178.642) .. tension 0.868564 and 2.03546 ..
 {up} cycle
;

%%endpaths
%%beginbody

leftbearing:=0;

tr_ := identity shifted (0,-ypart llcorner currentpicture);
savepicture:=1;
enddefchar;
defchar(fathashape,-1,-1,-1,-1);
%%backgroundimage:images/fatha.jpg,-565.643,-207.389,1,0,0,1
%%beginparams
z1 = (-3.1983,454.645);

%%beginverbatim

lefttatweel := lefttatweel - 0.38 ;
minLeft := -2;
maxLeft := 5; 
x1 := nuqta * 7;

%%endverbatim

%%beginpaths

fill
bldmvi ( (-245.523,-4.25779), (0,0) ) .. tension 1.08991 and 1.01388 ..
 {up}bldmvi ( (-262.832,9.88077), (0,0) ) .. tension 0.993599 and 1.54427 ..
bldmvi ( (-247.803,57.9454), (9,5) ) .. tension bldmvi ( 10.8154, 6.2409 ) and 5.91049 ..
bldmvi ( (-227.089,79.1444), (446.537,209.467) ) .. tension 4.06677 and 26.8638 ..
 {right}bldmvi ( (-258.357,69.3808), (956.284,454.767) ) .. tension 1.32384 and 1 ..
 {down}bldmvi ( (-236.407,50.2358), z1 ) .. tension 0.75 and 2.19215 ..
bldmvi ( (-268.958,-6.99714), (955.376,454.356) ) .. tension 14.6732 and 1.55369 ..
bldmvi ( (-215.446,14.8191), (450.75,209.584) ) .. tension 4.27611 and 7.81667 ..
 {left} cycle
;

%%endpaths
%%beginbody


leftbearing := 0;
tr_ := identity shifted (0,-ypart llcorner currentpicture);
savepicture:=1;
enddefchar;
defchar(fatha,1614,-1,-1,-1);
%%beginbody
%fathashape_(lefttatweel+0.38,0);
fathashape_(lefttatweel,0);
savepicture:=1;
enddefchar;
defchar(kasra,1616,-1,-1,-1);
%%beginbody

fathashape_(lefttatweel,0);

enddefchar;
defchar(fathatan,1611,-1,-1,-1);
%%beginbody


picture _temppic;
_temppic := image(
fathashape_(lefttatweel,righttatweel);
);

draw _temppic;

draw _temppic shifted (0,120);



savepicture:=1;
enddefchar;
defchar(kasratanidgham,2290,-1,-1,-1);
%%beginbody

lefttatweel := lefttatweel - 0.5;
picture _temppic;
_temppic := image(
fathashape_(lefttatweel,righttatweel);
);

draw _temppic;

z.ul = ulcorner _temppic;
z.ur = urcorner _temppic;
z.lr = lrcorner _temppic;

draw _temppic shifted (1/3(x.ul - x.ur), -9/10(y.ur-y.lr));
tr_ := identity shifted (0,-ypart llcorner currentpicture);

enddefchar;
defchar(kasratan,1613,-1,-1,-1);
%%beginbody

fathatan_(lefttatweel,righttatweel);



enddefchar;
defchar(fathatanidgham,2288,-1,-1,-1);
%%backgroundimage:images/fathatanidgham.jpg,-522,-377,1,0,0,1
%%beginbody

lefttatweel := lefttatweel - 0.35;
picture _temppic;
_temppic := image(
fathashape_(lefttatweel,righttatweel);
);

draw _temppic;

z.ul = ulcorner _temppic;
z.ur = urcorner _temppic;
z.lr = lrcorner _temppic;

draw _temppic shifted (1.3/3(x.ul - x.ur), -0.90(y.ur-y.lr));

leftbearing := 0;
tr_ := identity shifted (0,-ypart llcorner currentpicture);
savepicture:=1;

enddefchar;
beginchar(damma,1615,-1,-1,-1);
%%backgroundimage:images/damma.jpg,-5083.53,-777.698,1,0,0,1

%%beginpaths

fill
(35.2927,107.784) {up} .. tension 1.81711 and 1 ..
(110.33,179.213) .. tension 1 and 3.16449 ..
 {up}(172.232,239.292) .. tension 9.34695 and 1 ..
 {up}(125.765,304.565) .. tension 1.25258 and 1.20107 ..
 {right}(219.839,421.912) .. tension 1.70126 and 0.861862 ..
 {down}(257.591,344.034) .. tension 1.70513 and 2.78751 ..
 {down}(252.721,295.733) .. tension 3.26562 and 1.29424 ..
 {down}(298.853,229.157) .. tension 1 and 1.63085 ..
 {left}(269.48,186.878) .. tension 1.73346 and 2.26225 ..
 {left}(222.333,213.598) .. tension 3.50563 and 1 ..
(213.97,204.778) .. tension 1.00116 and 2.37559 ..
 {left}(55.6557,97.4304) .. tension 1 and 1 ..
 cycle
;
fill
(180.304,329.12) .. tension 1.89258 and 1.78891 ..
 {right}(208.175,311.337) .. tension 2.58878 and 3.36972 ..
 {left}(196.972,341.607) .. tension 1.6707 ..
 {down} cycle
;

%%endpaths
%%beginbody
leftbearing := 0;
tr_ := identity shifted (0,-ypart llcorner currentpicture);
savepicture:=1;
endchar;
beginchar(dammatanidgham,2289,477,327,-2);
%%backgroundimage:images/dammatan_idgham.jpg,-2679.59,-741.94,1,0,0,1
%%beginbody

drawcomp(damma,identity scaled 0.9 rotated 5);
drawcomp(damma,identity shifted (120,-10));

leftbearing := 0;
rightbearing := 0;
currentpicture := currentpicture shifted (0,-ypart llcorner currentpicture);

endchar;
beginchar(dammatan,1612,-1,-1,-1);
%%backgroundimage:images/dammatan.jpg,-198.336,-518.239,1,0,0,1

%%beginpaths

fill
(66.0926,117.94) .. tension 1.19572 and 1 ..
 {up}(0.212963,191.458) .. tension 1.40674 and 1.21199 ..
 {right}(212.94,450.236) .. tension 1.43613 and 0.75 ..
 {down}(284.25,352.727) .. tension 1 and 1.53071 ..
 {left}(264.144,302.31) .. tension 1.57752 and 0.799644 ..
 {left}(194.991,379.606) .. tension 1.38547 and 1.81931 ..
 {down}(44.3148,219.718) .. tension 1.07796 and 0.997204 ..
 {down}(93.6713,160.255) .. tension 1.24169 and 1.7831 ..
 {left} cycle
;

%%endpaths
%%beginbody

draw damma.pic;

currentpicture := currentpicture shifted (0,-ypart llcorner currentpicture);
leftbearing := 0;
rightbearing := 0;

endchar;
beginchar(shadda,1617,-1,-1,-1);
%%backgroundimage:images/shadda.jpg,-2284,-808,1,0,0,1

%%beginpaths

fill
(21.8522,63.0193) {up} .. tension 1.51543 and 1.50006 ..
 {right}(54.6538,136.026) .. tension 1 and 1 ..
(67.3715,124.593) .. tension 1 and 1.4345 ..
 {right}(81.7527,92.8073) .. tension 0.834662 and 1.19094 ..
(100.303,114.206) .. tension 1 and 1.24873 ..
 {right}(128.826,162.48) .. tension 1.00745 and 1.10739 ..
(144.527,146.602) .. tension 0.85953 and 1 ..
 {right}(157.444,120.531) .. tension 1.19951 and 1.81482 ..
(172.488,151.646) .. tension 1 and 1.2156 ..
 {right}(204.629,191.716) .. tension 0.917097 and 1 ..
 {down}(220.504,161.509) .. tension 0.75 and 1.34885 ..
 {left}(119.78,45.8822) .. tension 4.47151 and 0.75 ..
 {left}(69.4379,16.4368) .. tension 1.33199 and 0.75 ..
 cycle
;

%%endpaths
%%beginbody

tr_ := identity shifted (0,-ypart llcorner currentpicture);
leftbearing := 0;


endchar;
beginchar(headkhah,1761,-1,-1,-1);
%%backgroundimage:images/sukun.jpg,-1381.32,-432.33,1,0,0,1

%%beginpaths

fill
(13.224,93.3958) {up} .. tension 1.5854 and 2.99841 ..
 {right}(104.004,164.041) .. tension 1.29281 and 2.96178 ..
 {down}(223.099,114.697) .. tension 1.10538 and 2.06803 ..
 {left}(66.1541,23.665) .. tension 1 and 1 ..
 {up}(32.0355,43.8536) .. tension 2.58885 and 2.50673 ..
 {up}(103.171,89.8967) .. tension 1.56576 and 2.71315 ..
 {left}(81.9029,96.5057) .. tension 1 and 1.94997 ..
 {left}(30.3859,76.9883) .. tension 1 and 1 ..
 cycle
;

%%endpaths
%%beginbody


tr_ := identity shifted (0,-ypart llcorner currentpicture);

leftbearing := 0;
savepicture:=1;
endchar;
beginchar(sukun,1618,-1,-1,-1);
%%beginbody

draw headkhah.pic;

leftbearing := 0;

endchar;
beginchar(maddahabove,1619,-1,-1,-1);
%%backgroundimage:images/maddahabove.jpg,-29.142,-969.858,1,0,0,1

%%beginpaths

fill
(10.3124,-9.38) {left} .. tension 0.75 and 1 ..
 {up}(0.614356,2.68402) .. tension 1.55029 and 2.02077 ..
 {right}(73.6755,106.065) .. tension 3.67232 and 0.75 ..
 {right}(163.081,85.3347) .. tension 0.75 and 3.72774 ..
 {right}(307.519,147.803) .. tension 1 and 1 ..
 {down}(321.071,136.342) .. tension 1.42218 and 1 ..
 {left}(137.225,12.7288) .. tension 0.75 and 2.76344 ..
 {left}(63.0995,29.3003) .. tension 2.21874 and 1.17659 ..
 cycle
;

%%endpaths
%%beginbody


tr_ := identity shifted (0,-ypart llcorner currentpicture);
leftbearing := 0;

endchar;
beginchar(smallalef,1648,-1,-1,-1);
%%backgroundimage:images/smallalef.jpg,-1916,-898.665,1,0,0,1

%%beginpaths

fill
(113.272,2.68133) .. tension 1.90502 and 0.75 ..
(97.5169,85.2275) .. tension 0.843904 and 2.20207 ..
 {up}(36.3998,195.336) .. tension 1.41235 and 1.21358 ..
 {right}(64.5211,246.776) .. tension 1.77775 and 1.05118 ..
 {down}(155.768,91.9537) .. tension 0.882432 and 1.47334 ..
 {left} cycle
;

%%endpaths
%%beginbody

tr_ := identity shifted (0,-ypart llcorner currentpicture);
leftbearing := 0;

savepicture:=1;
endchar;
beginchar(smallalef.joined,-1,-1,-1,-1);
%%beginbody
draw smallalef.pic;
leftbearing := 0;


endchar;
beginchar(smallalef.isol,-1,-1,-1,-1);
%%beginbody


draw smallalef.pic  shifted (0,150);



endchar;
beginchar(smallalef.replacement,-1,-1,-1,-1);
%%beginbody
draw smallalef.pic;
leftbearing := 0;
endchar;
beginchar(wasla,-1,-1,-1,-1);
%%backgroundimage:images/wasla.jpg,-2152,-311,1,0,0,1

%%beginpaths

fill
(18.8744,-2.79016) {left} .. tension 0.75 and 1 ..
 {up}(6.96798,12.1203) .. tension 1.71327 and 2.55661 ..
(100.228,105.542) .. tension 0.937351 and 1.19184 ..
(137.376,113.6) .. tension 4.12537 and 0.92527 ..
 {right}(254.991,205.443) .. tension 0.980342 and 1 ..
 {down}(309.981,155.709) .. tension 1.27113 and 1.05341 ..
(267.808,72.4285) .. tension 1.67088 and 1 ..
 {left}(145.21,18.7859) .. tension 0.75 and 1.40058 ..
 {left}(94.674,39.0656) .. tension 0.844428 and 1.92764 ..
 cycle
;
fill
(184.058,100.543) {down} .. tension 2.16927 and 0.75 ..
 {right}(190.368,96.1932) .. tension 7.59176 and 1.09046 ..
 {up}(240.332,123.258) .. tension 3.01504 and 1.01267 ..
 {left}(217.352,130.824) .. tension 1.73078 and 1.62295 ..
 cycle
;

%%endpaths
%%beginbody


tr_ := identity shifted (0,-ypart llcorner currentpicture);
leftbearing := 0;


endchar;
beginchar(meemiqlab,1762,-1,-1,-1);
%%backgroundimage:images/meemiqlab.jpg,-9,-1438,1,0,0,1

%%beginpaths

fill
(126.972,447.154) .. tension 1.69855 and 2.43993 ..
 {down}(206.489,362.969) .. tension 1 and 1 ..
(171.514,308.075) .. tension 2.62213 and 2.21235 ..
(91.0065,292.53) .. tension 0.902226 and 1.94588 ..
(68.8724,246.908) .. tension 5.89108 and 0.75 ..
 {down}(91.6434,96.6531) .. tension 1 and 1.52359 ..
 {left}(64.4589,25.5594) .. tension 1.53131 and 1 ..
 {up}(49.1979,68.9622) .. tension 1 and 1 ..
(40.7188,133.334) .. tension 1 and 1.06711 ..
 {up}(24.1207,249.815) .. tension 1 and 1.1013 ..
(44.2288,312.089) .. tension 1 and 1.91173 ..
 {up}(61.9717,339.577) .. tension 1.5443 and 1 ..
 {up}(55.6596,354.414) .. tension 1 and 1.67214 ..
 {right} cycle
;

%%endpaths
%%beginbody

leftbearing := 0;


tr_ := identity shifted (0,-ypart llcorner currentpicture);
savepicture:=1;
endchar;
beginchar(smalllowmeem,1773,-1,-1,-1);
%%beginbody

draw meemiqlab.pic;


tr_ := identity shifted (0,-ypart llcorner currentpicture);
leftbearing := 0;



endchar;
beginchar(smallwaw,1765,-1,-1,-1);
%%backgroundimage:images/smallwaw.jpg,-1330,-1108,1,0,0,1

%%beginpaths

fill
(-190.862,-14.2614) .. tension 0.91242 and 1.19701 ..
 {right}(-159.44,2.68663) .. tension 0.805986 and 3.24814 ..
 {up}(-55.8869,63.6326) .. tension 1 and 1 ..
 {left}(-58.6106,65.7504) .. tension 3.51137 and 0.983038 ..
 {left}(-73.4907,62.7765) .. tension 1.19681 and 0.894623 ..
 {up}(-119.162,120.216) .. tension 1.11908 and 1.94733 ..
 {right}(-62.715,196.112) .. tension 2.09946 and 0.907097 ..
 {down}(-4.49998,101.107) .. tension 1.28638 and 1.00925 ..
 {left}(-132.378,-42.1265) .. tension 1 and 2.82242 ..
 {up} cycle
;
fill
(-71.1948,131.43) .. tension 1.36971 and 1.34334 ..
 {down}(-77.3914,124.863) .. tension 0.994166 and 1 ..
 {right}(-70.1028,117.056) .. tension 1.29574 and 1.19944 ..
 {up}(-64.6036,125.512) .. tension 1.12113 and 1.74687 ..
 {left} cycle
;

%%endpaths
%%beginbody
savepicture:=1;
endchar;
beginchar(smallhighwaw,2291,-1,-1,-68);
%%beginbody

draw smallwaw.pic;


tr_ := identity shifted (0,-ypart llcorner currentpicture);
leftbearing := 0;

endchar;
defchar(smallyeh,1766,-1,-1,-1);
%%backgroundimage:images/smallyeh.jpg,-445,-1183,1,0,0,1

%%beginpaths

fill
(-351.762,69.3037) .. tension 1.48976 and 0.906448 ..
(-289.096,146.957) .. tension 1 and 1 ..
(-219.979,178.407) .. tension 1 and 1.01664 ..
 {right}(-159.408,227.404) .. tension 2.01433 and 1 ..
 {down}(-130.569,176.961) .. tension 1 and 1.29746 ..
 {left}(-148.413,134.909) .. tension 0.789225 and 1 ..
 {left}(-175.612,162.686) .. tension 2.18655 and 1 ..
(-238.948,115.909) .. tension 0.783049 and 2.29178 ..
 {down}(-291.065,92.0932) .. tension 4.99297 and 1 ..
 {right}(-143.96,77.5814) .. tension 1 and 1.4289 ..
 {right}(-53.2837,79.5635) .. tension 1 and 1 ..
 {down}(-39.8091,65.5603) .. tension 3.82839 and 1 ..
 {left}(-257.622,25.8854) .. tension 0.813862 and 1.67169 ..
 {up} cycle
;

%%endpaths
%%beginbody

enddefchar;
beginchar(smallhighyeh,1767,-1,-1,-1);
%%beginbody

smallyeh_(0,0);
leftbearing := 0;
rightbearing := 0;
currentpicture := currentpicture shifted (0,-ypart llcorner currentpicture);

endchar;
beginchar(smallhighroundedzero,1759,-1,-1,-1);
%%backgroundimage:images/smallhighroundedzero.jpg,3.44778,-460.991,1,0,0,1

%%beginpaths

fill
(34.1917,66.4706) .. tension 1.34736 and 1.57425 ..
 {right}(126.155,212.168) .. tension 0.976859 and 1 ..
 {down}(195.194,133.831) .. tension 1.53049 and 0.891469 ..
 {left}(87.4753,14.4676) .. tension 0.948643 and 1 ..
 {up} cycle
;
fill
(120.279,137.348) .. tension 0.89884 and 3.22329 ..
 {down}(90.1867,102.173) .. tension 1.2509 and 0.934632 ..
 {right}(105.828,88.2415) .. tension 0.891567 and 0.959127 ..
 {up}(135.103,111.197) .. tension 1.40535 and 0.988679 ..
 {left} cycle
;

%%endpaths
%%beginbody


tr_ := identity shifted (0,-ypart llcorner currentpicture);
leftbearing := 0;



endchar;
beginchar(rectangularzero,1760,-1,-1,-1);
%%backgroundimage:images/rectangularzero.jpg,-42.2738,-617.656,1,0,0,1

%%beginpaths

fill
(34.4869,99.6699) .. tension 0.919879 and 0.968557 ..
 {right}(129.244,212.76) .. tension 0.905663 and 1 ..
 {down}(224.976,104.035) .. tension 0.993144 and 0.908861 ..
 {left}(132.919,2.6765) .. tension 0.93535 and 1 ..
 {up} cycle
;
fill
(124.626,174.229) .. tension 1.12485 and 1 ..
 {down}(91.8821,100.24) .. tension 1 and 0.911308 ..
 {right}(134.136,37.4536) .. tension 1.14783 and 1 ..
 {up}(166.456,101.3) .. tension 1 and 1.10249 ..
 {left} cycle
;

%%endpaths
%%beginbody

tr_ := identity shifted (0,-ypart llcorner currentpicture);
leftbearing := 0;


endchar;
beginchar(roundedfilledhigh,1772,-1,-1,-1);
%%backgroundimage:images/roundedfilledhigh.jpg,-1994,-324,1,0,0,1
%%beginbody

fill fullcircle scaled 200;
tr_ := identity shifted (0,-ypart llcorner currentpicture);
leftbearing := 0;


savepicture:=1;
endchar;
beginchar(roundedfilledlow,1628,-1,-1,-1);
%%backgroundimage:images/lozengebelow.jpg,-1056,-1669,1,0,0,1
%%beginparams
z1 = (104.472,338.421);
z2 = (0.736111,160.63);

%%beginpaths

fill
z2 .. tension 7.9023 and 2.34237 ..
 {right}z1 .. tension 2.60725 and 8.09865 ..
 {down}(220.454,y2) .. tension 4.29417 and 4.83028 ..
 {left}(x1,-2.4213) .. tension 2.97641 and 9.19197 ..
 {up} cycle
;
fill
(175.255,y2) .. tension 3.53665 and 5.44671 ..
 {left}(x1,274.473) .. tension 3.59146 and 2.48763 ..
 {down}(49.2268,y2) .. tension 2.34958 and 4.04801 ..
 {right}(x1,66.6296) .. tension 3.88101 and 11.8111 ..
 {up} cycle
;

%%endpaths
%%beginbody
tr_ := identity shifted (0,-ypart llcorner currentpicture);
endchar;
beginchar(hamzaabove,1620,-1,-1,-1);
%%backgroundimage:images/hamzabove.jpg,-1947.32,-400.489,1,0,0,1

%%beginpaths

fill
(50.4629,34.6395) .. tension 1.94543 and 1.21693 ..
 {up}(9.97809,66.5629) .. tension 1.68319 and 1.75473 ..
 {right}(137.395,187.951) .. tension 1.32853 and 1.3809 ..
 {down}(197.562,138.25) .. tension 0.969619 and 1.45415 ..
 {left}(160.172,102.468) .. tension 0.948252 and 1.25853 ..
 {left}(103.287,118.945) .. tension 1.58683 and 1.32613 ..
 {down}(95.4731,109.515) .. tension 2.20344 and 0.75 ..
 {right}(170.673,82.971) .. tension 1 and 5.10949 ..
 {right}(232.713,94.654) .. tension 1 and 1.34611 ..
 {down}(253.198,75.0091) .. tension 1.69061 and 1 ..
(94.7661,-0.88478) .. tension 1 and 5.54159 ..
 {left}(41.2176,-24.3757) .. tension 1 and 1 ..
 {up}(31.5636,-14.3155) .. tension 0.75 and 2.84742 ..
 {up} cycle
;

%%endpaths
%%beginbody

leftbearing := 0;

tr_ := identity shifted (0,-ypart llcorner currentpicture);
savepicture:=1;
endchar;
beginchar(hamzabelow,1621,-1,-1,-1);
%%beginbody
draw hamzaabove.pic;
leftbearing := 0;

endchar;
beginchar(hamzaabove.joined,-1,-1,-1,-1);
%%beginbody

draw hamzaabove.pic;

leftbearing := 0;

endchar;
beginchar(hamzaabove.lamalef,-1,-1,-1,-1);
%%backgroundimage:images/hamza_lam_alef.jpg,-1325.02,-598.109,1,0,0,1

%%beginpaths

fill
(54.1552,11.2836) .. tension 4.05069 and 0.79596 ..
 {up}(21.6102,59.5859) .. tension 1.68319 and 1.75473 ..
 {right}(128.547,179.646) .. tension 1.32853 and 1.3809 ..
 {down}(174.257,141.926) .. tension 0.969619 and 1.83974 ..
 {left}(134.229,87.4194) .. tension 0.948252 and 1.51749 ..
(118.694,97.0532) .. tension 1.62132 and 0.990224 ..
 {left}(98.1531,105.229) .. tension 1.58683 and 1.32613 ..
 {down}(90.111,92.8803) .. tension 3.74267 and 0.75 ..
 {right}(147.931,68.6314) .. tension 1.7937 and 5.10949 ..
 {right}(219.666,86.7899) .. tension 1 and 1.34611 ..
 {down}(244.838,69.016) .. tension 0.983366 and 3.68956 ..
 {left}(194.912,25.6026) .. tension 13.6464 and 1 ..
(125.392,5.38524) .. tension 1 and 5.54159 ..
 {left}(60.9278,-32.3589) .. tension 1 and 1 ..
 {up}(45.6505,-14.3163) .. tension 0.75 and 0.882608 ..
 {up} cycle
;

%%endpaths
%%beginbody

leftbearing := 0;

tr_ := identity shifted (0,-ypart llcorner currentpicture);
savepicture:=1;
endchar;
beginchar(hamzaabove.small,-1,-1,-1,-1);
%%beginbody
draw hamzaabove.lamalef.pic;
leftbearing := 0;
endchar;
beginchar(waqf.lam,1753,-1,-1,-1);
%%backgroundimage:images/waqf_lam.jpg,-223.69,-421,1,0,0,1

%%beginpaths

fill
(-103.13,14.556) .. tension 1 and 1.33418 ..
 {right}(-90.4944,65.3024) .. tension 1 and 1 ..
 {right}(-52.8636,65.3024) .. tension 1.66252 and 6.98176 ..
 {up}(-19.0865,106.029) .. tension 2.19471 and 2.16115 ..
(-122.113,217.831) .. tension 1 and 1.46757 ..
 {left}(-142.716,216.436) .. tension 2.29986 and 1 ..
(-192.407,245.371) .. tension 1 and 1 ..
 {up}(-199.9,285.88) .. tension 1 and 1 ..
 {right}(-167.971,317.13) .. tension 1.24772 and 15.008 ..
 {right}(11.4543,160.301) .. tension 4.41418 and 1 ..
(26.6137,229.115) .. tension 1 and 1 ..
(37.7523,315.458) .. tension 1.35436 and 1.35436 ..
 {right}(66.4694,346.491) .. tension 2.44291 and 1 ..
(76.6745,332.323) .. tension 1 and 1 ..
(79.5635,297.603) .. tension 1 and 1 ..
 {down}(94.6287,259.615) .. tension 0.75 and 1.69254 ..
(66.8884,223.806) .. tension 2.73491 and 2.10659 ..
(51.5478,171.624) .. tension 1 and 4.73915 ..
 {down}(36.9369,109.343) .. tension 6.17732 and 0.899064 ..
 {down}(45.9553,50.8348) .. tension 0.75 and 0.75 ..
 {left}(-5.09471,0) .. tension 1 and 2.16338 ..
 {up} cycle
;

%%endpaths
%%beginbody


leftbearing := 0;
rightbearing := 0;

currentpicture := currentpicture shifted (0,-ypart llcorner currentpicture);
endchar;
beginchar(waqf.qaf,1751,-1,-1,-1);
%%backgroundimage:images/waqf.qaf.jpg,-25.3252,-583.271,1,0,0,1

%%beginpaths

fill
(15.8842,55.148) {up} .. tension 1.24719 and 1 ..
(74.7894,145.845) .. tension 0.75 and 2.54464 ..
 {up}(117.867,193.467) .. tension 2.47951 and 2.60219 ..
(111.757,247.383) .. tension 1.78333 and 1.26233 ..
 {up}(90.0445,334.778) .. tension 3.12678 and 0.75 ..
 {right}(112.078,360.789) .. tension 1.51643 and 1.36811 ..
(140.569,312.207) .. tension 1.40421 and 1.38637 ..
 {right}(213.456,156.06) .. tension 1 and 1.59292 ..
 {up}(232.064,161.798) .. tension 2.25361 and 0.75 ..
 {left}(227.027,165.153) .. tension 1.64758 and 1 ..
 {up}(187.403,201.181) .. tension 0.870181 and 1.4673 ..
 {right}(236.114,276.195) .. tension 1.88375 and 1.03083 ..
 {down}(308.158,180.56) .. tension 0.827197 and 1.38508 ..
 {left}(213.719,103.526) .. tension 0.75 and 5.07266 ..
 {left}(141.015,141.001) .. tension 7.9402 and 3.15898 ..
 {down}(65.24,79.4541) .. tension 0.812443 and 1 ..
 {right}(73.9993,69.056) .. tension 2.17311 and 1 ..
(177.903,84.3671) .. tension 1 and 7.0817 ..
 {right}(323.557,104.267) .. tension 0.915482 and 1.22131 ..
 {down}(352.673,85.2355) .. tension 1.4337 and 2.8957 ..
(330.765,57.3989) .. tension 8.56989 and 1.55508 ..
 {left}(40.1996,22.1972) .. tension 0.895201 and 1.3358 ..
 cycle
;
fill
(162.899,329.493) .. tension 0.821128 and 3.85973 ..
 {right}(189.102,359.072) .. tension 2.71049 and 0.75 ..
 {right}(207.259,357.415) .. tension 2.16889 and 0.876023 ..
 {right}(247.139,371.938) .. tension 1.08481 and 1.39936 ..
 {down}(278.186,348.376) .. tension 1.67243 and 0.751095 ..
 {left}(255.924,315.96) .. tension 1.0955 and 0.912023 ..
 {left}(224.241,319.039) .. tension 1.26372 and 0.983061 ..
 {left}(195.23,302.38) .. tension 1.30948 and 1.31763 ..
 {up} cycle
;

%%endpaths
%%beginbody

leftbearing := 0;

tr_ := identity shifted (0,-ypart llcorner currentpicture);




endchar;
beginchar(waqf.jeem,1754,287,1199,0);
%%backgroundimage:images/waqf.jeem.jpg,-203.864,-558.39,1,0,0,1

%%beginpaths

fill
(52.7022,263.698) {left} .. tension 0.75 and 1.30985 ..
 {up}(36.3401,277.059) .. tension 1.71013 and 1 ..
(62.5046,314.454) .. tension 0.94239 and 1 ..
 {right}(98.2271,331.16) .. tension 1.43533 and 8.55717 ..
(197.791,327.971) {right} .. tension 2.79461 and 2.79461 ..
 {right}(256.05,329.543) .. tension 1 and 1 ..
 {down}(281.984,309.78) .. tension 1.34385 and 2.29697 ..
(243.384,274.57) .. tension 7.05297 and 0.75 ..
(123.572,240.488) .. tension 1 and 1.05658 ..
 {down}(79.321,153.329) .. tension 0.759606 and 1.80754 ..
(131.323,85.1983) .. tension 1.60486 and 0.96405 ..
 {right}(293.572,73.4765) .. tension 1 and 1 ..
 {down}(316.144,57.4685) .. tension 2.59706 and 1.17328 ..
 {left}(176.949,19.9752) .. tension 0.881513 and 0.979019 ..
 {up}(32.954,134.562) .. tension 0.75 and 32.0185 ..
 {up}(81.6856,270.576) .. tension 1 and 1 ..
 {left}(77.3177,274.218) .. tension 2.13991 and 0.969572 ..
 cycle
;
fill
(138.339,171.256) {up} .. tension 0.768601 and 3.00849 ..
 {right}(174.38,206.701) .. tension 2.41423 and 1.74654 ..
 {down}(217.314,167.007) .. tension 1.02932 and 3.87913 ..
 {left}(191.955,135.247) .. tension 0.872659 and 2.41511 ..
 cycle
;

%%endpaths
%%beginbody
tr_ := identity shifted (-xpart llcorner currentpicture,-ypart llcorner currentpicture);
leftbearing := 0;


endchar;
beginchar(waqf.sad,1750,-1,-1,-1);
%%backgroundimage:images/waqf.sad.jpg,-46.4403,-438.675,1,0,0,1

%%beginpaths

fill
(10.7778,66.2609) {up} .. tension 1 and 1 ..
(22.9466,101.546) .. tension 0.85553 and 2.93269 ..
(97.5203,177.394) .. tension 1.68752 and 1 ..
(94.8253,223.472) .. tension 1 and 1 ..
 {up}(84.7446,336.039) .. tension 0.958643 and 1.51082 ..
 {right}(102.814,361.246) .. tension 2.48925 and 1 ..
(134.953,239.753) .. tension 1 and 1.36259 ..
 {right}(190.324,146.934) .. tension 0.75 and 1.99157 ..
 {right}(246.397,179.656) .. tension 1.4542 and 0.761481 ..
 {right}(289.429,163.597) .. tension 5.74358 and 1.14238 ..
 {right}(403.966,237.667) .. tension 0.987815 and 1 ..
 {down}(467.584,191.435) .. tension 1.23767 and 1.16528 ..
 {left}(341.113,100.773) .. tension 0.75 and 2.0234 ..
 {left}(245.53,120.456) .. tension 1.93451 and 1 ..
 {left}(190.237,97.7909) .. tension 0.75 and 1.52062 ..
(137.06,121.789) .. tension 1 and 1.17692 ..
 {left}(118.778,137.112) .. tension 3.70259 and 2.86571 ..
 {down}(51.2227,76.4045) .. tension 1.56021 and 1 ..
 {right}(72.2645,64.3863) .. tension 2.52275 and 1 ..
(221.927,70.5075) .. tension 2.20236 and 2.02512 ..
 {right}(430.678,94.7117) .. tension 1.039 and 1.02739 ..
 {down}(463.832,76.5466) .. tension 1.32678 and 1.06615 ..
(451.851,49.5109) .. tension 29.3902 and 2.30418 ..
 {left}(88.6134,11.9922) .. tension 1.18081 and 1 ..
 cycle
;
fill
(354.215,159.794) {down} .. tension 0.847784 and 0.854938 ..
 {right}(359.708,153.326) .. tension 1.45598 and 2.68172 ..
 {up}(415.745,178.195) .. tension 1.01914 and 1.4545 ..
 {left}(398.705,187.625) .. tension 1.51314 and 2.60168 ..
 cycle
;

%%endpaths
%%beginbody


tr_ := identity shifted (0,-ypart llcorner currentpicture);
leftbearing := 0;


endchar;
beginchar(waqf.smallhighthreedots,1755,-1,-1,-1);
%%backgroundimage:images/waqf.smallhighthreedots.jpg,-64,-296,1,0,0,1

%%beginpaths

fill
(-1,-129) .. tension 1 and 1 ..
 {right}(67,-60) .. tension 1 and 1 ..
 {down}(138,-125.604) .. tension 1 and 1 ..
 {up} cycle
;
fill
(84,2.17658) .. tension 1 and 1 ..
 {right}(154,74.1766) .. tension 1 and 1 ..
 {down}(226,8.17658) .. tension 1 and 1 ..
 {left}(156,-64.8234) .. tension 1.09836 and 1 ..
 cycle
;
fill
(182,-123.823) .. tension 1.02885 and 1 ..
 {right}(256,-51.8234) .. tension 1 and 1 ..
 {down}(329,-115.823) .. tension 1 and 1 ..
 {left}(251,-190.823) .. tension 1 and 1 ..
 {up} cycle
;

%%endpaths
%%beginbody


leftbearing := 0;

tr_ := identity shifted (0,-ypart llcorner currentpicture);
endchar;
beginchar(waqf.meem,1752,-1,-1,-1);
%%backgroundimage:images/waqf.meem.jpg,8.32626,-486.999,1,0,0,1

%%beginpaths

fill
(27.0393,34.1135) .. tension 2.6939 and 1.17262 ..
(182.25,170.573) .. tension 1 and 1 ..
(194.988,210.34) .. tension 4.7002 and 1.66052 ..
 {right}(276.346,328.302) .. tension 2.40446 and 1.16079 ..
 {down}(370.491,200.814) .. tension 0.75 and 1.50035 ..
 {left}(290.499,136.362) .. tension 1.42559 and 4.26431 ..
 {left}(249.562,142.969) .. tension 1.33811 and 1 ..
(232.025,129.079) .. tension 0.75 and 1.46117 ..
(202.348,82.4697) .. tension 1.94703 and 2.42739 ..
 {left}(89.8385,16.3638) .. tension 0.75 and 1.75864 ..
 {up} cycle
;

%%endpaths
%%beginbody

tr_ := identity shifted (0,-ypart llcorner currentpicture);
leftbearing := 0;
endchar;
beginchar(smallhighseen,1756,-1,-1,-1);
%%backgroundimage:images/smallhighseen.jpg,-998.843,-529.421,1,0,0,1

%%beginpaths

fill
(31.1214,209.025) .. tension 0.806708 and 2.48753 ..
 {right}(86.9985,310.523) .. tension 1 and 0.75 ..
 {down}(101.69,289.577) .. tension 0.928308 and 1 ..
 {down}(79.5718,233.363) .. tension 1.39509 and 1.06837 ..
 {right}(193.142,152.922) .. tension 1.50602 and 1.90125 ..
 {up}(309.414,214.571) .. tension 0.816419 and 2.3544 ..
 {up}(273.57,313.268) .. tension 1 and 1.57431 ..
 {right}(300.364,361.996) .. tension 1.49083 and 0.75 ..
 {right}(368.938,305.501) .. tension 0.75 and 1.08892 ..
(403.822,340.198) .. tension 1.55499 and 1.19812 ..
 {right}(445.022,379.549) .. tension 1.28054 and 1 ..
 {down}(460.836,366.645) .. tension 2.35846 and 1.27829 ..
 {right}(465.78,317.573) .. tension 2.83282 and 1 ..
(479.955,366.093) .. tension 1 and 1.41665 ..
 {right}(499.228,387.517) .. tension 1.91023 and 1 ..
 {down}(525.013,341.741) .. tension 1 and 0.999 ..
 {left}(472.045,246.753) .. tension 1 and 0.75 ..
 {left}(425.134,258.306) .. tension 1.3261 and 2.87373 ..
(356.26,232.427) .. tension 1.295 and 1 ..
(348.829,202.636) .. tension 1.01911 and 1.35297 ..
 {left}(173.381,87.474) .. tension 1.101 and 1 ..
 {up} cycle
;

%%endpaths
%%beginbody
tr_ := identity shifted (0,-ypart llcorner currentpicture);

leftbearing := 0;

savepicture:=1;
endchar;
beginchar(smalllowseen,1763,-1,-1,-1);
%%beginbody
draw smallhighseen.pic;
leftbearing := 0;


endchar;
beginchar(smallhighnoon,1768,-1,-1,-1);
%%backgroundimage:images/smallhighnoon.jpg,-1519.07,-1083.08,1,0,0,1

%%beginpaths

fill
(38.098,83.4298) .. tension 0.75 and 2.89397 ..
 {right}(99.6223,216.569) .. tension 1 and 1 ..
 {down}(118.082,195.123) .. tension 1 and 1 ..
 {down}(94.2323,127.508) .. tension 1 and 1 ..
 {right}(158.15,88.6836) .. tension 1.22788 and 1.80911 ..
 {up}(265.682,139.778) .. tension 1 and 2.17415 ..
 {up}(221.22,208.186) .. tension 1 and 1.33951 ..
 {right}(248.768,273.564) .. tension 2.57237 and 1 ..
 {down}(322.302,163.139) .. tension 0.75 and 2.17301 ..
 {left}(149.209,4.62963) .. tension 1 and 1.02896 ..
 {up} cycle
;
fill
(88.3058,343.445) .. tension 1 and 0.973624 ..
 {right}(128.973,406.273) .. tension 3.33203 and 1.38704 ..
 {down}(187.316,357.721) .. tension 1 and 1.29698 ..
 {left}(149.882,305.589) .. tension 3.51287 and 1.95394 ..
 {up} cycle
;

%%endpaths
%%beginbody



tr_ := identity shifted (0,-ypart llcorner currentpicture);

leftbearing := 0;


endchar;
defchar(noon.fina,-1,-1,-1,-1);
%%backgroundimage:images/noon.fina.jpg,38.3255,-1034.99,1,0,0,1

%%beginverbatim

righttatweel := righttatweel - 0.5;

%%endverbatim

%%beginpaths

fill
liii0 ( (248.642,-221.865), (0,0), (44,27) ) .. tension 0.826526 and 0.960362 ..
 {up}liii0 ( (75.4047,-53.972), (0,0), (78,-2) ) .. tension 1.35039 and 2.92755 ..
 {right}liii0 ( (162.52,100.373), (0,0), (78,-2) ) .. tension 0.75 and 1.12749 ..
 {down}liii0 ( (180.739,75.4229), (0,0), (78,-2) ) .. tension 5.01017 and 0.75 ..
 {down}liii0 ( (146.483,-14.7034), (0,0), (78,-2) ) .. tension 1.05712 and 0.75 ..
 {right}liii0 ( (287.8,-122.371), (0,0), (44,27) ) .. tension 1.26404 and 1.12703 ..
 {up}(474.188,-16.1554) .. tension 0.868291 and 2.41803 ..
 {up}(411.774,127.37) .. tension 6.32194 and 0.766362 ..
 {right}(449.841,195.363) .. tension 1.56573 and 1 ..
(476.389,172.917) .. tension 1 and 1.22255 ..
liii1 ( (506.617,125.999), (8.7213,-0.969033), (0,0) ) .. tension 1 and 2.84124 ..
liii1 ( (528.79,104.945), (27.9082,-6.78324), (-17.5712,-24.0202) ) setranchor
(621,0) rightjoinii
liii1 ( (530.058,2.56782), (2.31684,-0.434351), (-6.49804,-0.87773) ) .. tension 3.90213 and 1 ..
 {left}liii1 ( (528.675,2.96036), (0,0), (0,0) ) .. tension 1.13482 and 1.15751 ..
 {down}(525.869,-1.73479) .. tension 1.13331 and 0.956441 ..
(504.481,-97.4376) .. tension 0.985502 and 1.18217 ..
 {left} cycle
;

%%endpaths
%%beginbody


enddefchar;
defchar(hah.medi.afterbeh,-1,-1,-1,-1);
%%backgroundimage:images/behhah.jpg,-1110.93,-1207.74,1,0,0,1
%%beginparams
hah.medi.afterbeh.dir1 := 40;
z1 = (105,234);
z2 = (700,164);

%%beginpaths

fill
liii0 ( (246,37), (-23.6304,-9.15122), (59.812,14.7619) ) leftjoin
liii0 ( (238.667,124.639), (-4.64668,-2.49084), (-18.9551,-16.8222) ) .. tension 1 and 2.99041 ..
 {up}(268.389,140.5) .. tension 17.6157 and 1.40428 ..
 {left}(145.361,177.361) .. tension 0.75 and 1.21457 ..
 {left}(85.1389,150.027) .. tension 0.960003 and 1 ..
 {up}(62.4722,167.889) .. tension 1.74599 ..
 {dir hah.medi.afterbeh.dir1}z1 .. tension 1.41572 and 0.851218 ..
 {right}(193.139,270.75) .. tension 0.846363 and 2.17862 ..
(301.778,243.667) .. tension 1 and 1 ..
(437.361,203.806) .. tension 1 and 1 ..
 {right}(669.917,188.528) .. tension 1 ..
 {down}z2 .. tension 3.46819 ..
(624.889,85.6944) .. tension 3.84859 and 0.75 ..
 {left}(485,98.8333) .. tension 1 ..
 cycle
;

%%endpaths
%%beginbody


setCursiveAnchor(rtlcursive,z1, EntryAnchorRTL);
hah.medi.afterbeh.width1 := x2 -x1;

enddefchar;
defchar(hah.medi.afterbeh.beforeyeh,-1,-1,-1,-1);
%%backgroundimage:images/behhahyeh.jpg,-489.958,-1047.92,1,0,0,1
%%beginparams
z1 = (-57,37);
z2 = (124,312);
z3 = (719,242);

%%beginpaths

fill
z1 .. tension 1.12667 and 1 ..
(57.537,167.824) .. tension 1 and 5.12825 ..
 {up}(251.875,229.694) .. tension 2.28926 and 2.3731 ..
 {left}(163.477,259.708) .. tension 1 and 1 ..
 {left}(101.855,248.855) .. tension 0.836808 and 1.83749 ..
 {up}(89.9473,259.983) .. tension 2.21464 and 0.752501 ..
 {dir hah.medi.afterbeh.dir1}z2 .. tension 1.18822 and 0.860717 ..
 {right}(209.708,341.11) .. tension 0.75 and 1 ..
(400.861,298.111) .. tension 1 and 1.05101 ..
 {right}(698.288,267.598) .. tension 1 and 0.892547 ..
 {down}z3 .. tension 1.36745 and 7.49392 ..
 {left}(658.507,178.305) .. tension 8.36567 and 1 ..
 {left}(548.625,184.838) .. tension 0.834682 and 1.94836 ..
(158.06,121.419) .. tension 1 and 9.58569 ..
 {up} cycle
;

%%endpaths
%%beginbody
%%beginbody
leftbearing := 0;
rightbearing := -300;

setCursiveAnchor(ltrcursive,z1,ExitAnchorRTL);
setCursiveAnchor(rtlcursive,z2, EntryAnchorRTL);

hah.medi.afterbeh.beforeyeh.width1 := x3 -x2;
%show hah.medi.afterbeh.beforeyeh.width1,hah.medi.afterbeh.width1 ;

enddefchar;
beginchar(heh.fina.allah,-1,-1,-1,-1);
%%beginbody

allah_(0,0);

cutGlyph(z1,z4,false);

i_ := 0;
path p;
for item within allah.pic:
i_ := i_ + 1;
p := pathpart item;
exitif i_ = 2;
endfor

fill p;


tr_ := identity shifted ( xpart lrcorner currentpicture - x1,0);

endchar;
beginchar(lam.medi.allah,-1,-1,-1,-1);
%%beginbody


allah_(0,0);

cutGlyph(z2,z3,false);
cutGlyph(z1,z4,true);
leftbearing := 0;

tr_ := identity shifted( -x1,0);

charwd := x2 - x1;
endchar;
beginchar(lam.init.allah,-1,-1,-1,-1);
%%beginbody

allah_(0,0);

cutGlyph(z2,z3,true);
leftbearing := 0;

tr_ := identity shifted ( xpart llcorner currentpicture - x2,0);


endchar;
defchar(fehshape.init.allah,-1,-1,-1,-1);
%%backgroundimage:images/feh_allah.jpg,-171.949,-1127.18,1,0,0,1
%%beginparams
z10 = (805,110);
z11 = (765,15);

%%beginpaths

fill
z10 .. tension 0.75 and 2.33284 ..
 {up}(946.63,150.756) .. tension 1 and 2.28298 ..
 {left}(930.579,192.11) .. tension 5.01162 and 0.75 ..
 {left}(847.374,139.623) .. tension 0.839715 and 1 ..
 {up}(759.575,244.773) .. tension 1.33757 and 1.48421 ..
 {right}(856.343,394.156) .. tension 1.37672 and 1.2198 ..
 {down}(995.036,193.082) .. tension 0.75 and 1.09429 ..
 {left}z11 .. tension 2.02975 and 4.61652 ..
 {right} cycle
;
fill
(890.32,261.262) .. tension 2.1806 and 1.40252 ..
 {left}(844.944,300.299) .. tension 1.10268 and 1.30167 ..
 {down}(820.88,267.303) .. tension 1.05345 and 1 ..
 {right}(856.082,240.652) .. tension 1 and 1.71375 ..
 {up} cycle
;

%%endpaths
%%beginbody

leftanchor := z11;

enddefchar;
defchar(lam.medi.allah.afterfeh,-1,-1,-1,-1);
%%backgroundimage:images/feh_allah.jpg,-132,-1121,1,0,0,1

%%beginverbatim
allah_(0,0);
fehshape.init.allah_(0,0);

currentpicture := nullpicture;

%%endverbatim

%%beginpaths

fill
(564.827,449.577) .. tension 7.08611 and 3.06223 ..
 {right}(594.208,516.787) .. tension 2.26512 and 1 ..
(624.426,438.06) .. tension 1 and 1.55021 ..
(732.855,126) .. tension 1.88311 and 1 ..
 {right}z10 .. tension 2.41256 and 2.3573 ..
 {left}z11 .. tension 1 and 0.958431 ..
(676.9,55.3186) .. tension 2.33438 and 3.06072 ..
 {left}(661.62,67.0814) .. tension 4.47747 and 1 ..
(618.506,-28.5333) .. tension 1 and 1.25727 ..
 {left}z3 .. tension 2.47606 and 2.75155 ..
 {right}z2 .. tension 0.75 and 1.00463 ..
 {up}(614.417,84.2898) .. tension 0.968541 and 1 ..
(588.49,270.299) .. tension 1 and 2.32972 ..
 {up} cycle
;

%%endpaths
%%beginbody

rightanchor := z11;
leftanchor := z3;

enddefchar;
beginchar(hamza.isol,1569,-1,-1,-1);
%%backgroundimage:images/hamza.isol.jpg,-1023.13,-1080.52,1,0,0,1

%%beginpaths

fill
(61.7679,71.7568) .. tension 1.53875 and 1.8757 ..
 {right}(208.979,215.832) .. tension 1 and 1.57465 ..
 {down}(265.196,160.922) .. tension 2.86515 and 1.56875 ..
 {left}(222.15,114.642) .. tension 1.55216 and 2.09024 ..
 {left}(165.985,142.86) .. tension 1.07159 and 7.34378 ..
 {down}(145.05,123.735) .. tension 2.31243 and 2.40414 ..
 {right}(223.634,86.8183) .. tension 1.16475 and 1.03238 ..
 {right}(335.866,110.197) .. tension 1 and 1 ..
 {down}(354.442,89.3629) .. tension 2.13549 and 2.56704 ..
(320.833,46.4065) .. tension 2.43205 and 1 ..
(269.696,36.158) .. tension 1 and 11.0243 ..
 {left}(125.071,-25.4181) .. tension 0.75 and 1 ..
 {up}(108.219,-10.9028) .. tension 0.75 and 4.82517 ..
 {up}(120.048,17.1049) .. tension 12.9605 and 1.50368 ..
 {up} cycle
;

%%endpaths
%%beginbody

%currentpicture := currentpicture shifted (0,-ypart llcorner currentpicture);

endchar;
defchar(alef.isol,1575,-1,-1,-1);
%%backgroundimage:images/alef.isol.jpg,-1.91071,-1117.34,1,0,0,1

%%beginverbatim
%lefttatweel := lefttatweel - 1;

y33 := 20 *nuqta;

%%endverbatim

%%beginpaths

fill
(163.724,-0.694444) {left} .. tension 0.777756 and 1 ..
 {up}(142.732,25.6944) .. tension 1 and 1.22126 ..
 {up}(143.03,59.4726) --
(135.636,170.553) --
leii0 ( (94.7371,518.345), (-310.542,y33) ) .. tension 1.41886 ..
 {up}leii0 ( (91.578,557.96), (-310.542,y33) ) .. tension 3.38094 and 1.27776 ..
 {right}leii0 ( (133.635,642.798), (-310.542,y33) ) .. tension 0.75 and 2.79505 ..
leii0 ( (152.664,619.736), (-310.542,y33) ) --
(200.696,204.57) .. tension 1 ..
(204.981,149.228) {down} .. tension 1.00275 and 2.69468 ..
 {left} cycle
;

%%endpaths
%%beginbody
leftbearing := leftbearing + 0;

enddefchar;
defchar(alef.isol.ii,-1,-1,-1,-1);
%%beginbody

alef.isol_(-0.5,0);
enddefchar;
defchar(alef.fina,-1,-1,-1,-1);
%%backgroundimage:images/alef.fina.jpg,-560.917,-1136.39,1,0,0,1
%%beginparams
rightVerticalRatio := 5;

%%beginverbatim

save _tatweel; numeric _tatweel;
_tatweel := 20 * nuqta;

%%endverbatim

%%beginpaths

fill
leii0 ( (91.9722,613.556), (-211.408,_tatweel) ) .. tension 1.29322 and 2.09511 ..
 {right}leii0 ( (128.5,669.806), (-211.408,_tatweel) ) .. tension 1.2503 and 2.76737 ..
leii0 ( (160.648,616.491), (-211.408,_tatweel) ) ..
leii0 ( (174,517), (-211.408,_tatweel) ) --
(200.157,156.315) .. tension 1 and 1 ..
liii1 ( (235.583,107.278), (1.44676,-10.6096), (-32.2319,-15.7969) ) setranchor
(271,0) rightjoinii
liii1 ( (186.028,26), (29.4174,-13.9853), (0.279082,-36.8388) ) .. tension atleast 1 ..
liii1 ( (158.139,58.6944), (0,0), (9.48878,-28.1872) ) ..
(139,121) --
leii0 ( (114.032,493.449), (-211.408,_tatweel) ) .. tension 1 and 1 ..
leii0 ( (103,569), (-211.408,_tatweel) ) .. tension 1 and 14.433 ..
 {up} cycle
;

%%endpaths
%%beginbody

enddefchar;
defchar(alef.fina.afterkaf,-1,-1,-1,-1);
%%beginbody
alef.fina_(lefttatweel,righttatweel+0.3);
enddefchar;
defchar(lam.medi.laf,-1,-1,-1,-1);
%%backgroundimage:images/lam.alef.fina.jpg,-2615.79,-1061.89,1,0,0,1
%%beginparams
rightVerticalRatio := 5;
z.mark = (628,187);

%%beginverbatim



%%endverbatim

%%beginpaths

fill
(318.464,-38.7518) {up} .. tension atleast 0.980748 ..
(347.913,-15.1582) .. tension 20.0142 and 1 ..
(565.917,71.7593) .. tension 1.16279 and 1.73871 ..
 {up}(688.103,363.522) .. tension 1.5751 and 0.75 ..
 {up}(686.837,492.54) .. tension 0.94098 and 2.75568 ..
 {right}(723.799,649.403) .. tension 2.11993 and 1 ..
(747.146,593.056) .. tension 1 and 1 ..
(756.889,472.222) .. tension 1 and 9.28107 ..
(800.028,165.098) ..
liii1 ( (856.959,102.773), (155.768,-131.173), (-73.3025,1.44676) ) setranchor
(882,0) rightjoinii
liii1 ( (850.63,1.19341), (213.638,-158.179), (-76.196,-0.964508) ) ..
liii1 ( (779.644,34.5564), (6.26929,-14.9498), (-3.37577,-4.82253) ) ..
(753.844,75.0065) ..
(728.936,226.542) .. tension 1 and 4.3304 ..
 {left}(723.459,247.792) .. tension 1.12905 and 1 ..
(718.024,240.253) .. tension 0.826673 and 1.09605 ..
(551.997,-17.6784) .. tension 1.09781 and 2.66853 ..
 {left}(332.256,-57.5569) .. tension atleast 1 ..
 cycle
;

%%endpaths
%%beginbody


leftbearing := -300;

%labels(1,mark);
setCursiveAnchor(ltrcursive,z.mark, ExitAnchorRTL);

enddefchar;
defchar(lam.medi.laf.afterkaf,-1,-1,-1,-1);
%%beginbody

lam.medi.laf_(lefttatweel,righttatweel+0.2);


enddefchar;
defchar(alef.fina.laf,-1,-1,-1,-1);
%%backgroundimage:images/lam.alef.fina.jpg,-2688.41,-1063.8,1,0,0,1
%%beginparams
z11 = (552,187);

%%beginverbatim

%%endverbatim

%%beginpaths

fill
(309.567,449.801) {left} .. tension 3.27976 and 1 ..
 {left}(290.71,435.85) .. tension 1 and 2.26506 ..
(226.276,454.857) ..
 {up}(182.306,563.288) .. tension 3.38468 and 1.01066 ..
 {right}(201.707,600.434) .. tension 1.14974 and 1 ..
(305.354,560.659) .. tension 1.04396 and 1.33341 ..
(437.343,466.31) .. tension 1 and 1 ..
(540.393,334.408) .. tension 1 and 0.931615 ..
 {down}(572.697,226.98) .. tension 1.1497 and 1.41495 ..
 {left}z11 .. tension 0.957142 and 1.44203 ..
(536.948,202.465) .. tension 6.24245 and 0.861182 ..
(420.953,376.44) .. tension 1.73238 and 2.78471 ..
 cycle
;

%%endpaths
%%beginbody



setCursiveAnchor(ltrcursive,z11, EntryAnchorRTL);

enddefchar;
beginchar(lam.init.lamalef,-1,-1,-1,-1);
%%beginbody

lamalef.isol_(lefttatweel,righttatweel);

cutGlyph(z1,z2,false);

setCursiveAnchor(ltrcursive,z1, ExitAnchorRTL);

leftbearing := 0;

endchar;
beginchar(alef.fina.lamalef,-1,-1,-1,-1);
%%beginbody

lamalef.isol_(lefttatweel,righttatweel);

cutGlyph(z1,z2,true);

setCursiveAnchor(ltrcursive,z1, EntryAnchorRTL);


rightbearing := -250;

endchar;
defchar(behshape.isol,-1,-1,-1,-1);
%%backgroundimage:images/beh.isol.jpg,-40.8598,-987.44,1,0,0,1

%%beginverbatim
%lefttatweel := lefttatweel - 1;

minA0 := -2;
maxA0 := 2;

x33 := - minA0 *nuqta;
x34 := - maxA0 *nuqta;

%%endverbatim

%%beginpaths

fill
liii0 ( (10.7138,119.804), (x34,0), (x33,0) ) .. tension 1.47376 and 2.37253 ..
 {right}liii0 ( (76.2594,239.73), (x34,0), (x33,0) ) .. tension 0.75 and 2.19563 ..
 {down}liii0 ( (87.915,218.42), (x34,0), (x33,0) ) .. tension 2.87221 and 0.75 ..
 {down}liii0 ( (76.5194,162.938), (x34,0), (x33,0) ) ..
liii0 ( (96.714,123), (x34,0), (x33,0) ) .. tension 1 and 1.21559 ..
 {right}liii0 ( (255.069,78.9174), (-164.4,-18), (196.8,24) ) .. tension 1 and 7.36562 ..
 {up}(606.631,141.141) .. tension 1.46476 and 7.70909 ..
 {up}(548.693,238.217) .. tension 1.41144 and 17.3247 ..
 {right}(583.825,314.289) .. tension 5.16974 and 0.867889 ..
 {down}(673.075,168.598) .. tension 2.54178 and 0.849674 ..
(660.826,114.668) .. tension 1 and 1 ..
(516.714,18) .. tension 1 and 1 ..
 {left}liii0 ( (234.992,-15.325), (-164.4,-18), (196.8,24) ) .. tension 1 and 1 ..
liii0 ( (33.314,59.84), (x34,0), (x33,-6) ) ..
 {up} cycle
;

%%endpaths
%%beginbody

enddefchar;
defchar(behshape.init,-1,-1,-1,-1);
%%backgroundimage:images/behshape.init.2.jpg,-950,-1088.83,1,0,0,1
%%beginparams
leftVerticalRatio := 10;
z1 = bldmv ( (141,456), (-17.3083,-9.28014), (-17.3199,-18.0564) );

%%beginverbatim


%%endverbatim

%%beginpaths

fill
bldmv ( (124,6), (52.6917,10.7199), (44.7621,-1.49811) ) leftjoin
bldmv ( (128.418,103.837), (6.80976,-11.4876), (56.3361,4.10979) ) .. tension 0.96304 and 2.2848 ..
 {up}(197.674,135.302) .. tension 0.850657 and 1.2957 ..
 {up}liii0 ( (133,239), (0,0), (25,-36) ) .. tension 1 and 1.79715 ..
 {right}liii0 ( (171,311), (0,0), (25,-36) ) .. tension 1.69959 and 1 ..
 {down}(260,157) .. tension 1.35341 and 1 ..
liii0 ( (212,39), (0,0), (0.421296,-8.412) ) .. tension 1 and 1 ..
 cycle
;

%%endpaths
enddefchar;
defchar(behshape.init.ii,-1,-1,-1,-1);
%%backgroundimage:images/behshape.init.jpg,-1974,-1222.83,1,0,0,1
%%beginparams
leftVerticalRatio := 10;
z1 = bldmv ( (41,455), (-17.3083,-9.28014), (-17.3199,-18.0564) );

%%beginverbatim


%%endverbatim

%%beginpaths

fill
bldmv ( (67,4), (-17.3083,-9.28014), (9.48895,-7.60459) ) leftjoin
bldmv ( (82.4184,102.837), (-4.19024,-4.48763), (10.4889,-7.25595) ) .. tension 0.96304 and 1.10972 ..
 {up}(92.6743,118.302) .. tension 0.850657 and 1.78806 ..
 {up}(50,189) .. tension 1 and 3.33785 ..
 {right}(84,266) .. tension 3.03159 and 1 ..
 {down}(155,132) .. tension 0.870917 and 1 ..
(135,47) .. tension 1 and 1 ..
 cycle
;

%%endpaths
enddefchar;
defchar(behshape.init.beforereh,-1,-1,-1,-1);
%%backgroundimage:images/behreh.jpg,-449,-942,1,0,0,1
%%beginparams
z.mark1 = liii0 ( (79,-61), (1.2,-6), (82.2698,-2.87449) );

%%beginverbatim


save ljoinvector;pair ljoinvector;ljoinvector := (0,lineheight);


%%endverbatim

%%beginpaths

fill
liii0 ( (48.1574,3.5787), (1.2,-6), (82.2698,-2.87449) ) leftjoin
liii0 ( (85.418,105.837), (0,0), (15.6,-9.6) ) .. tension 0.96304 and 1.22672 ..
 {up}(120.674,133.302) .. tension 1.16337 and 1.2957 ..
 {up}(75,228) .. tension 1 and 1.39684 ..
 {right}(99,294) .. tension 2.67584 and 1 ..
 {down}(179,144) .. tension 1.15949 and 1 ..
liii0 ( (110.796,22.5833), (0,0), (14.4,-15.6) ) .. tension 1 and 1 ..
 cycle
;

%%endpaths
%%beginbody


setCursiveAnchor(rtlcursive,leftanchor+ljoinvector, ExitAnchorRTL);



defAnchor(lowmarkafterwawandreh.dots.l2_2_twodotsdown   ,z.mark1,MarkAnchor);


pair leftanchor;


enddefchar;
defchar(behshape.init.beforebeh,-1,-1,-1,-1);
%%beginbody


behbeh.ii_(lefttatweel,righttatweel);

cutGlyph(z1,z2,true);

leftanchor := z2;


enddefchar;
defchar(behshape.init.beforeheh,-1,-1,-1,-1);
%%beginbody


behinitheh_(lefttatweel,righttatweel);

cutGlyph(z1,z2,true);

leftanchor := z2;


enddefchar;
defchar(behshape.init.beforeyeh,-1,-1,-1,-1);
%%backgroundimage:images/yehshape.fina.ii.jpg,-397.77,-1025.62,1,0,0,1
%%beginparams
z1 = (12,122);

%%beginpaths

fill
(54.7236,367.512) .. tension 1.04084 and 2.91058 ..
 {right}(91.0086,454.703) .. tension 7.32515 and 0.897121 ..
 {down}(209.006,272.398) .. tension 1.19641 and 5.04785 ..
 {up}z1 .. tension 1.56861 and 1 ..
(53.8966,186.776) .. tension 1 and 1.62328 ..
 {up}(146.549,240.318) .. tension 1.84368 and 8.51774 ..
 {up} cycle
;

%%endpaths
%%beginbody
leftbearing:=0;
rightbearing := 50;
setCursiveAnchor(ltrcursive,z1,ExitAnchorRTL);
enddefchar;
defchar(behshape.init.beforeseen,-1,-1,-1,-1);
%%backgroundimage:images/behbeforeseen.4.jpg,-2080,-1109,1,0,0,1
%%beginparams
leftVerticalRatio := 6;
z1 = (193,20);

%%beginverbatim


lefttatweel := lefttatweel - 0.5;


%%endverbatim

%%beginpaths

fill
z1 ..
(149.838,5.54376) leftjoin
(144.441,100.966) .. tension 1 and 1.35344 ..
 {up}(171.877,114.977) .. tension 2.16429 and 1.93469 ..
(119.66,245.471) .. tension 1 and 1 ..
(88.5184,277.182) .. tension 1 and 1.46208 ..
(72.3968,283.116) .. tension 1 and 1.46844 ..
 {up}(52.7645,320.231) .. tension 0.91899 and 1.74988 ..
 {right}(85.0017,410.426) .. tension 1.89227 and 2.10862 ..
(227.297,132.521) {down} .. tension 0.75 and 1.58927 ..
 cycle
;

%%endpaths
%%beginbody


enddefchar;
defchar(behshape.init.beforeseen.iv,-1,-1,-1,-1);
%%backgroundimage:images/behbeforeseen.3.jpg,-977.06,-931.698,1,0,0,1
%%beginparams
leftVerticalRatio := 6;
z1 = (196,26);

%%beginverbatim


lefttatweel := lefttatweel - 0.5;


%%endverbatim

%%beginpaths

fill
z1 ..
(142.893,6.93265) leftjoin
(150.667,105.753) .. tension 1 and 1 ..
 {up}(193.814,133.457) .. tension 2.16429 and 1.93469 ..
(125.08,280.728) .. tension 1 and 1.46208 ..
(94.0432,296.466) .. tension 1 and 0.75 ..
 {up}(69.7367,327.454) .. tension 0.91899 and 1.34948 ..
 {right}(118.141,445.676) .. tension 2.38317 and 1.70367 ..
(254.38,173.493) {down} .. tension 0.75 and 1.59291 ..
 cycle
;

%%endpaths
%%beginbody


enddefchar;
defchar(behshape.init.beforeseen.ii,-1,-1,-1,-1);
%%backgroundimage:images/behbeforeseen.jpg,-1057.82,-1108.29,1,0,0,1
%%beginparams
leftVerticalRatio := 6;
z1 = (58.5196,25.9416);

%%beginverbatim


lefttatweel := lefttatweel - 0.5;


%%endverbatim

%%beginpaths

fill
z1 ..
(-21.0544,-1.33146) link
(35.4349,103.178) .. tension 1 and 1 ..
 {up}(41.7206,110.466) .. tension 1.4166 and 1 ..
(26.4632,146.872) .. tension 1 and 1.46208 ..
(-25.7724,215.012) .. tension 1 and 1.08205 ..
 {up}(-53.0141,253.079) .. tension 0.91899 and 1.34948 ..
 {right}(-23.7299,334.518) .. tension 3.73236 and 1.70708 ..
(98.3142,127.391) {down} .. tension 0.75 and 1.59291 ..
 cycle
;

%%endpaths
%%beginbody


enddefchar;
defchar(behshape.init.beforeseen.iii,-1,-1,-1,-1);
%%backgroundimage:images/behbeforeseen.2.jpg,-1331.06,-993.698,1,0,0,1
%%beginparams
leftVerticalRatio := 6;
z1 = (195,34);

%%beginverbatim


lefttatweel := lefttatweel - 0.5;


%%endverbatim

%%beginpaths

fill
z1 ..
(118.893,3.93265) leftjoin
(147.667,108.753) .. tension 1 and 1 ..
 {up}(165.814,129.457) .. tension 2.16429 and 1.93469 ..
(99.08,258.728) .. tension 1 and 1.46208 ..
(72.0432,273.466) .. tension 1 and 0.75 ..
 {up}(36.7367,343.454) .. tension 0.91899 and 1.34948 ..
 {right}(69.1412,416.676) .. tension 2.38317 and 2.45577 ..
(227.38,150.493) {down} .. tension 0.75 and 1.59291 ..
 cycle
;

%%endpaths
%%beginbody


enddefchar;
defchar(behshape.init.beforenoon,-1,-1,-1,-1);
%%backgroundimage:images/behbeforenoon.jpg,-552.029,-1107.14,1,0,0,1
%%beginparams
leftVerticalRatio := 20;

%%beginverbatim

pair _temp;
_temp := ljoinvector;
ljoinvector := (0,lineheight);


%%endverbatim

%%beginpaths

fill
liii0 ( (94.6057,5.07482), (-55.7662,-20.5887), (13.5743,-5.74875) ) leftjoin
liii0 ( (114.64,108.37), (-23.739,-13.6895), (14.4241,-0.905509) ) .. tension 1 and 2.14514 ..
 {up}(121.68,118.375) .. tension 1 and 1.78806 ..
 {up}(85.2941,198.356) .. tension 1 and 1.35475 ..
 {right}(114.905,274.427) .. tension 2.01788 and 1 ..
 {down}(194.773,137.098) .. tension 1 and 1.14234 ..
liii0 ( (169.995,39.8287), (-24,-13), (0,0) ) .. tension 1 and 1 ..
 cycle
;

%%endpaths
%%beginbody


ljoinvector := _temp;


setCursiveAnchor(ltrcursive,leftanchor + (10,0), ExitAnchorRTL);
enddefchar;
defchar(behshape.init.beforehah,-1,-1,-1,-1);
%%backgroundimage:images/behhah.jpg,-1169,-1217,1,0,0,1
%%beginparams
z1 = (48,245);

%%beginpaths

fill
(158.198,190.182) --
z1 {dir hah.medi.afterbeh.dir1} .. tension 0.829382 and 1.40438 ..
(274.389,339.521) .. tension 0.75 and 2.43732 ..
 {right}(466.63,491.681) .. tension 1.66956 and 1.37271 ..
 {down}(548.365,367.585) .. tension 1 and 1.53909 ..
 {left}(508.292,295.357) .. tension 0.998578 and 1.55771 ..
(474.577,350.879) .. tension 1.47542 and 2.46085 ..
 {left}(452.396,390.179) .. tension 4.4689 and 1 ..
(266.407,236.713) .. tension 1.31313 and 10.2151 ..
 {left} cycle
;

%%endpaths
%%beginbody


leftbearing:=-200;
rightbearing := hah.medi.afterbeh.width1 - currentwidth;

setCursiveAnchor(rtlcursive,z1, ExitAnchorRTL);

enddefchar;
defchar(behshape.medi,-1,-1,-1,-1);
%%backgroundimage:images/behshape.medi.jpg,-545,-1199,1,0,0,1

%%beginpaths

fillc
liii0 ( (165,170), (8,22), (0,0) ) {right} .. tension 1.79471 and 1 ..
liii1 ( (199,149), (17.7908,6.46424), (-18.7783,0.242692) ) setranchor
(300,0) rightjoinii
liii0 ( (142,71), (13,1), (0,0) ) leftjoin
liii0 ( (96,122), (-100,2), (26.1019,-18.7847) ) ..
liii0 ( (134,155), (-27,10), (0,0) ) .. tension 1 and 1 ..
 cycle
;

%%endpaths
%%beginbody

%z.rt.rbearing = (332.902,0.659722);
show leftanchor;
show rightanchor;
enddefchar;
defchar(behshape.medi.afterbeh,-1,-1,-1,-1);
%%beginbody


behbeh.ii_(lefttatweel,righttatweel);

cutGlyph(z1,z2,false);

rightanchor := z2;
enddefchar;
defchar(behshape.medi.afterlam,-1,-1,-1,-1);
%%beginbody


behbeh.ii_(lefttatweel,righttatweel);

cutGlyph(z1,z2,false);

rightanchor := z2;
enddefchar;
defchar(behshape.medi.expa,-1,-1,-1,-1);
%%backgroundimage:images/behmediexpa.jpg,-2199.73,-1118.75,1,0,0,1
%%beginparams
z.mark1 = (83,297);

%%beginverbatim

%%endverbatim

%%beginpaths

fill
liii0 ( (175.47,31.8269), (-8.70735,-1.67449), (3.87613,0) ) leftjoin
liii0 ( (135.497,112.213), (-36.016,-17.2757), (23.7778,-4.57592) ) .. tension 0.932615 and 1.60814 ..
liii0 ( (153.426,129.695), (-19,-18), (11.3818,-0.622857) ) .. tension 1 and 1.18468 ..
liii0 ( (172.802,158.965), (17,27), (3,1) ) .. tension 1 and 0.862104 ..
 {right}liii0 ( (201.837,180), (8,10), (0,0) ) .. tension 0.75 and 1.72888 ..
liii0 ( (232,146), (5,10), (0,0) ) .. tension 5.00355 and 3.4906 ..
 {down}brdmvi ( (227.198,117.376), (0,0) ) .. tension 0.856594 and 1 ..
liii1 ( (248.971,103), (0,0), (-9.26929,-3.14198) ) setranchor
liii1 ( (346,0), (-1.68009,1.4977), (-2.43527,0.644556) ) rightjoinii
liii1 ( (182.156,31.7593), (-2.13187,1.16284), (0,0) ) ..
 {left}(178.399,33.2557) .. tension 1.6631 and 1 ..
 cycle
;

%%endpaths
%%beginbody
%labels(1,2,3,4);




x.mark1 := x.mark1 - lefttatweel * nuqta * 0.1;

defAnchor(onedotup,z.mark1,MarkAnchor);
defAnchor(topmark,z.mark1 - (800,0),MarkAnchor);

enddefchar;
defchar(behshape.medi.expa.ii,-1,-1,6,-1);
%%backgroundimage:images/sad.init.jpg,-1102.43,-1135.94,1,0,0,1
%%beginparams
z.onedotup = (156.203,403.222);

%%beginverbatim

%%endverbatim

%%beginpaths

fill
liii0 ( (87,134), (-11,16), (62.5656,20.7724) ) .. tension 1 and 1.33378 ..
 {right}liii0 ( (148,172), (4.59276,8.83971), (0,0) ) .. tension 1.18515 and 0.927257 ..
liii1 ( (206,144), (3,1), (0,0) ) .. tension 0.856594 and 1 ..
liii1 ( (299,104), (33,17), (-18,-5) ) setranchor
liii1 ( (349.27,-1.46295), (-1.68009,1.4977), (-2.43527,0.644556) ) rightjoinii
(274,4) .. tension 1 and 1 ..
(149,64) .. tension 1 and 1 ..
 {left}(131,74) .. tension 1 and 1 ..
liii0 ( (115,67), (-3.85802,1.92901), (13.0208,-5.78704) ) .. tension 1 ..
liii0 ( (37,6), (-41.4738,21.7014), (84.8765,-7.71605) ) leftjoin
bldmv ( (44,104), (-143,-14), (108.125,2.64506) ) .. tension 0.932615 and 1.60814 ..
 cycle
;

%%endpaths
%%beginbody

z.topmark = z.onedotup - (200,0);



%x.mark1 := x.mark1 - lefttatweel * nuqta * 0.1;

setMarkAnchor(onedotup,z.onedotup);
setMarkAnchor(topmark,z.topmark);

enddefchar;
defchar(behshape.medi.beforeseen,-1,-1,-1,-1);
%%backgroundimage:images/beh.medi.between.jpg,-1851.75,-1080.43,1,0,0,1
%%beginparams
leftVerticalRatio := 10;
rightVerticalRatio := 10;

%%beginverbatim

%righttatweel := righttatweel; % - 0.3;
%lefttatweel := lefttatweel;% - 0.3;



%%endverbatim

%%beginpaths

fill
(185.456,298.633) .. tension 1 and 2.56646 ..
liii1 ( (252.996,127.402), (0,0), (-34.7222,-16.8789) ) setranchor
liii1 ( (300,3.6), (23.1638,-4.18622), (3.16292,-26.6058) ) rightjoinii
liii0 ( (193.135,58.5895), (-0.279082,-19.2566), (0,0) ) ..
liii0 ( (185.647,58.5329), (-2.27917,-19.1171), (3.87965,-2.99245) ) leftjoin
liii0 ( (151.192,116.154), (0,0), (4.18627,-3.72109) ) .. tension 1 and 1.70271 ..
 {up}(161.411,135.464) .. tension 1.7264 and 1 ..
 {up}(120.742,277.804) .. tension 1 and 1.08728 ..
 {right}(152.335,354.41) .. tension 1.98947 and 1 ..
 cycle
;

%%endpaths
%%beginbody
%labels(1,2,3,4);


enddefchar;
defchar(behshape.medi.beforereh,-1,-1,-1,-1);
%%backgroundimage:images/beh_rah.jpg,-407.482,-1115.83,1,0,0,1
%%beginparams
leftVerticalRatio := 12;
leftVerticalRatioNeg := 40;
z1 = (319,-100);

%%beginverbatim


save ljoinvector;pair ljoinvector;ljoinvector := (0,lineheight);


%%endverbatim

%%beginpaths

fill
(129.433,213.989) .. tension 2.5981 and 0.844976 ..
 {right}(151.061,241.555) .. tension 1.64058 and 1 ..
(184.089,179.9) .. tension 1 and 1 ..
brdmv ( (207.633,83.305), (51.9092,-60.2816), (0,0) ) .. tension 1 and 1 ..
brdmv ( (252.6,23.711), (153.154,-81.823), (-17.3611,-31.7592) ) setranchor
brdmv ( z1, (0,0), (0,0) ) rightjoinii
brdmv ( (257.4,-89.889), (132,-68.4), (-99.2273,18.8621) ) .. tension 1 and 1 ..
(197.2,-46.422) .. tension 1 and 2.26527 ..
 {curl1}(140.789,93.406) ..
liii0 ( (119.606,58.45), (-248,-40), (-26.2,-71) ) leftjoin
liii0 ( (109.4,169.111), (-278.4,-60), (-25.2,-81.6) ) .. tension 1 and 3.59506 ..
 cycle
;

%%endpaths
%%beginbody



setCursiveAnchor(rtlcursive,leftanchor+ljoinvector, ExitAnchorRTL);

tr_ := tr_ shifted (0,-y1);



pair leftanchor;


enddefchar;
defchar(behshape.medi.beforenoon,-1,-1,-1,-1);
%%backgroundimage:images/behshape.medi.beforenoon.jpg,-518.712,-781.967,1,0,0,1
%%beginparams
leftVerticalRatio := 12;
leftVerticalRatioNeg := 40;
z1 = (280,-171);

%%beginverbatim


save ljoinvector;pair ljoinvector;ljoinvector := (0,lineheight);


%%endverbatim

%%beginpaths

fill
(154.895,210.341) .. tension 1.09324 and 1 ..
(182.623,168.781) .. tension 1 and 1 ..
liii1 ( (202.648,50.9782), (10.6096,0), (0,0) ) .. tension 1 and 1 ..
liii1 ( (237.897,-50.1186), (154.012,-73.894), (-29.5177,-15.8865) ) setranchor
liii1 ( z1, (0,0), (0,0) ) rightjoinii
liii1 ( (213.359,-155.557), (140.965,-64.329), (-69.2273,43.8621) ) .. tension 1 and 1 ..
(133.787,56.457) .. tension 1 and 2.8403 ..
 {left}(128.745,69.1631) .. tension 34.3488 and 1 ..
liii0 ( (123.417,63.9643), (-5.30478,3.85802), (0,0) ) leftjoin
liii0 ( (76.7667,123.078), (-18.6801,18.3611), (70.6372,56.285) ) .. tension 1 and 1.49919 ..
 {right} cycle
;

%%endpaths
%%beginbody

z.mark2 = leftanchor;

pair leftanchor;

tr_ := identity shifted (0,-ypart rightanchor);

setCursiveAnchor(ltrcursive,z.mark2, ExitAnchorRTL);





enddefchar;
defchar(behshape.medi.beforeyeh,-1,-1,-1,-1);
%%backgroundimage:images/behshape.medi.beforeyeh.jpg,-3,-1041,1,0,0,1
%%beginparams
z1 = (585,behshape_medi_beforeyeh_y);
z3 = (86,39); % z2

%%beginverbatim

z2 = z1 + z3;

pair behshape.medi.beforeyeh.p[];

behshape.medi.beforeyeh.p1 := z3;

%(497.525,1.20559)
%%endverbatim

%%beginpaths

fill
(450.674,82.0053) .. tension 1 and 1 ..
 {right}(575,173) .. tension 1 and 1 ..
liii1 ( (608,150), (39.4676,2.15869), (0,0) ) .. tension 1 and 1.48115 ..
liii1 ( (674.6,106.711), (200.556,-23.0662), (-50.978,-6.96483) ) setranchor
(721,0) rightjoinii
liii1 ( (633.196,11.785), (77.4019,13.785), (-33.7944,-14.7568) ) .. tension 1 ..
liii1 ( (544.463,77.6085), (7.00939,0.794367), (0,0) ) .. tension 1 and 0.75 ..
 {left}(535.2,82.1775) .. tension 3.1021 and 3.80249 ..
 {down}(460.473,17.8989) .. tension 2.29314 and 1 ..
(512.196,-17.6075) .. tension 1.27816 and 0.915002 ..
 {down}z2 --
z1 {up} .. tension 5.20073 and 1.17598 ..
 {up}(396,-43) .. tension 1 and 1 ..
 cycle
;

%%endpaths
%%beginbody


setCursiveAnchor(ltrcursive,z1,ExitAnchorRTL);


enddefchar;
defchar(behshape.fina,-1,-1,-1,-1);
%%backgroundimage:images/beh.fina.jpg,47.0425,-1195.96,1,0,0,1

%%beginverbatim

minA0 := -2;
maxA0 := 2;

x33 := - minA0 *nuqta;
x34 := - maxA0 *nuqta;


%%endverbatim

%%beginpaths

fill
liii0 ( (48.9701,132.538), (x34,0), (x33,0) ) .. tension 1.27714 and 1.53631 ..
 {right}liii0 ( (134.31,264.378), (x34,0), (x33,0) ) .. tension 0.971742 and 1.1457 ..
 {down}liii0 ( (151.802,239.75), (x34,0), (x33,0) ) .. tension 1.31378 and 0.75 ..
 {down}liii0 ( (122.995,169.996), (x34,0), (x33,0) ) .. tension 1.83538 and 1 ..
liii0 ( (127.313,149.411), (x34,0), (x33,0) ) .. tension 1.9942 and 0.823294 ..
 {right}liii0 ( liii0 ( (352.71,58.1988), (0,0), (0,0) ), (-181,-38), (167,42) ) .. tension 1 and 2.05571 ..
liii0 ( (646.942,130.981), (-5,1), (0,0) ) .. tension 1.46476 and 1 ..
(667.056,168.056) .. tension 1 and 0.977921 ..
 {right}(715.453,198.913) .. tension 1.03362 and 1.43805 ..
 {down}(728.295,178.074) .. tension bldmvi ( 1.39725, 0 ) and 1 ..
 {down}(718.813,139.08) .. tension 1 and 1 ..
liii1 ( (727.819,114.133), (2.34429,1.67449), (0,0) ) .. tension 1 and 1 ..
liii1 ( (745.453,102.946), (14.4006,-2.67918), (-13.3959,-18.4194) ) setranchor
(758,0) rightjoinii
liii1 ( (734.922,3.55362), (65.9749,2.34429), (-44.2065,-16.7449) ) .. tension 1 and 1 ..
liii1 ( (681.475,64.9113), (-1.67449,3.68388), (0,0) ) .. tension 1 and 1 ..
 {left}(675.97,70.8131) .. tension 14.6137 and 1 ..
liii0 ( (640.853,42.0353), (-7,-4), (0,0) ) .. tension 1.73736 and 0.75 ..
 {left}liii0 ( liii0 ( (317.834,-34.2764), (0,0), (0,0) ), (-181,-38), (167,42) ) .. tension 0.892193 and 1.23953 ..
liii0 ( (57.1411,93.4344), (x34,0), (x33,0) ) .. tension 1 and 1.20242 ..
 {up} cycle
;

%%endpaths
%%beginbody

enddefchar;
defchar(seen.sinna.beforereh,-1,-1,-1,-1);
%%backgroundimage:images/seen_medi_reh_fina.jpg,-1087.26,-1100.94,1,0,0,1
%%beginparams
rightVerticalRatio := 10;
rightVerticalRatioNeg := 18;
z.seenreh = (-43,59);

%%beginverbatim


%%endverbatim

%%beginpaths

fill
(-21.7349,35.203) .. tension 0.75 and 2.31353 ..
 {up}z.seenreh .. tension 0.759215 and 2.22631 ..
(-9.95215,125.289) .. tension 22.4214 and 1 ..
(74.4769,147.569) .. tension 1 and 22.4214 ..
 {right}(193.803,167.688) .. tension 0.75 and 5.74099 ..
 {down}(209.735,150.022) .. tension 1 and 1 ..
(210.143,125.695) .. tension 1 and 1 ..
liii1 ( (251.224,98.924), (150.154,-75.823), (-47.3611,-5.7592) ) setranchor
(265.508,-0.599) rightjoinii
(173.559,19.1964) .. tension 1 and 1.64006 ..
 {left}(112.653,59.4919) .. tension 4.18621 and 1 ..
 {left} cycle
;

%%endpaths
%%beginbody
leftbearing := 0;
enddefchar;
defchar(seen.twosinnas,-1,-1,-1,-1);
%%backgroundimage:images/seenyeh.jpg,-1229.01,-1064.75,1,0,0,1

%%beginverbatim


%%endverbatim

%%beginpaths

fill
(173.775,240.86) .. tension 1 and 1 ..
 {down}(193.244,228.056) .. tension 1 and 1 ..
 {down}(189.272,150.444) .. tension 1.39649 and 4.74066 ..
 {right}(259.008,121.443) .. tension 1 and 1 ..
 {up}(273.438,135) .. tension 1.5485 and 1 ..
 {up}(248.966,207.083) .. tension 1 and 2.09057 ..
 {right}(282.81,287.58) .. tension 2.05765 and 1 ..
 {down}(337,146) .. tension 1 and 1.17685 ..
 {left}(254.881,20.7508) .. tension 1.0268 and 1 ..
(165.208,43.365) .. tension 1 and 1.73227 ..
 {left}(147.888,52.5314) .. tension 1.90339 and 1 ..
liii0 ( (142.839,49.5954), (-1.84008,0.295826), (4.67368,-0.128379) ) .. tension 0.796059 and 0.75 ..
liii0 ( (39.8471,2.41813), (-9.53901,7.14821), (75.5679,-3.8588) ) leftjoin
liii0 ( (92.6655,109.492), (0,0), (29.9155,-8.84131) ) .. tension 1 and 1 ..
(122.163,132.735) .. tension 3.26881 and 1.41751 ..
 {right} cycle
;

%%endpaths
%%beginbody


enddefchar;
beginchar(seen.isol,1587,-1,-1,-1);
%%backgroundimage:images/seen.isol.jpg,-24.2994,-1334.74,1,0,0,1

%%beginpaths

fill
(67.8054,-37.4794) .. tension 0.75 and 4.64597 ..
 {right}(163.163,175.121) .. tension 0.75 and 1.92446 ..
 {down}(179.472,154.583) .. tension 3.50408 and 1.02765 ..
 {down}(138.217,29.9262) .. tension 1.07129 and 0.939778 ..
 {right}(259.464,-80.8718) .. tension 1 and 2.02046 ..
 {up}(507.844,15.1756) .. tension 1.67752 and 1 ..
(488.253,101.972) .. tension 0.75 and 4.17877 ..
 {up}(427.955,198.892) .. tension 1 and 1.12112 ..
 {right}(469.025,270.518) .. tension 1.48344 and 1 ..
(549.054,179.059) .. tension 1 and 1 ..
 {right}(629.55,162.02) .. tension 1 and 1 ..
(701.972,185) .. tension 1 and 0.893335 ..
(727.666,252.631) .. tension 1 and 1.46586 ..
 {right}(763.348,281.384) .. tension 1.31024 and 1 ..
 {down}(788.985,255.239) .. tension 3.37634 and 1.22922 ..
 {down}(780.398,210.434) .. tension 1.12777 and 1.70605 ..
(802.603,193.606) .. tension 1 and 1 ..
 {right}(851.096,188.947) .. tension 1 and 2.32204 ..
 {up}(861.976,206.196) .. tension 2.94078 and 1 ..
 {up}(846.41,257.431) .. tension 3.66057 and 1.14153 ..
 {right}(878.165,326.267) .. tension 1.43736 and 1 ..
 {down}(920.748,226.736) .. tension 0.75 and 1.56684 ..
 {left}(838.646,86.9267) .. tension 0.75 and 3.53983 ..
 {left}(736.213,113.366) .. tension 3.8992 and 0.75 ..
(652.158,67.7143) .. tension 1.75101 and 3.13541 ..
 {left}(574.792,71.879) .. tension 7.19868 and 1 ..
 {down}(568.384,68.9622) .. tension 0.75 and 1.13545 ..
 {left}(263.592,-180.82) .. tension 0.919648 and 1.14905 ..
 {up} cycle
;

%%endpaths
%%beginbody
savepicture:=1;
endchar;
defchar(seen.init,-1,-1,-1,-1);
%%backgroundimage:images/seen.init.jpg,-995.808,-1004.18,1,0,0,1
%%beginparams
leftVerticalRatio := 10;

%%beginverbatim



%lefttatweel := lefttatweel - 0.5;


%%endverbatim

%%beginpaths

fill
(133.965,154.765) .. tension 1 and 1.50971 ..
 {right}(177.917,199.333) .. tension 1.0342 and 0.957132 ..
 {down}(196,185.056) .. tension 1 and 1 ..
 {down}(181.833,120.417) .. tension 2.55542 and 1 ..
 {right}(225.367,106.78) .. tension 1 and 1.74241 ..
(291.508,124.437) .. tension 2.7341 and 1.20851 ..
 {right}(354.139,241.972) .. tension 1.31024 and 1 ..
 {down}(374,224.167) .. tension 2.29611 and 0.75 ..
 {down}(361.068,163.664) .. tension 2.23839 and 1.70605 ..
 {right}(422.02,138.397) .. tension 1 and 0.864209 ..
 {up}(437.778,150.333) .. tension 2.94078 and 1 ..
 {up}(427.157,189.921) .. tension 3.66057 and 1.10996 ..
 {right}(466.028,272.722) .. tension 1.26511 and 1 ..
 {down}(498.083,217.861) .. tension 1.56 and 1.11789 ..
 {left}(419.639,45.1389) .. tension 0.75 and 2.52485 ..
 {left}(318.972,69.0556) .. tension 3.90611 and 0.75 ..
 {left}(220.222,19.7222) .. tension 0.75 and 2.94203 ..
 {left}(146.306,53.7222) .. tension 3.29783 and 0.75 ..
bldmv ( (129.031,43.2508), (0,0), (8.68056,-8.68056) ) leftjoin
bldmv ( (102.213,111.367), (-37.7765,-9.64506), (35.0437,20.0135) ) .. tension 0.919648 and 1.14905 ..
 cycle
;

%%endpaths
%%beginbody

enddefchar;
defchar(seen.init.beforeyeh,-1,-1,-1,-1);
%%backgroundimage:images/seenyeh.jpg,-1231,-1065,1,0,0,1
%%beginbody


seen.twosinnas_(0,0);

picture pic_;pic_ := image(behshape.medi.beforeyeh_(0,-0.2));
draw pic_ shifted (leftanchor-rightanchor);

setCursiveAnchor(ltrcursive,z1  shifted (leftanchor-rightanchor),ExitAnchorRTL);



pair leftanchor, rightanchor;



enddefchar;
defchar(seen.init.beforereh,-1,-1,-1,-1);
%%beginbody


seen.twosinnas_(0,0);

picture pic_;pic_ := image(seen.sinna.beforereh_(0,0));
draw pic_ shifted (leftanchor-rightanchor);

setCursiveAnchor(rtcursii,z.seenreh  shifted (leftanchor-rightanchor),ExitAnchorRTL);

pair leftanchor, rightanchor;

enddefchar;
defchar(seen.init.beforemeem,-1,-1,-1,-1);
%%beginbody


seenmeem_(lefttatweel-0.2,righttatweel);

cutGlyph(z1,z2,true);

leftanchor := z2;


enddefchar;
defchar(seen.medi,-1,-1,-1,-1);
%%backgroundimage:images/seen.medi.jpg,-1009.12,-1169.72,1,0,0,1
%%beginparams
leftVerticalRatio := 10;
rightVerticalRatio := 10;
z.mark1 = (57,254);

%%beginverbatim


%righttatweel := righttatweel - 0.5;
%lefttatweel := lefttatweel - 0.5;

%%endverbatim

%%beginpaths

fill
(104.859,111.75) .. tension 1 and 0.924762 ..
 {right}(145.499,156.895) .. tension 1 and 1 ..
 {down}(158.611,141.778) .. tension 0.75 and 1.74398 ..
 {down}(150.713,112.113) .. tension 0.830106 and 0.75 ..
 {right}(170.569,88.7858) .. tension 1.08033 and 1.08543 ..
(226.194,99.361) .. tension 1 and 0.983952 ..
 {right}(303,172) .. tension 1 and 1 ..
 {down}(314.833,152.083) .. tension 1 and 2.64995 ..
 {down}(305.854,122.556) .. tension 0.75 and 0.75 ..
 {right}(331.417,99.694) .. tension 1.0078 and 0.988916 ..
 {right}(424,191) .. tension 1 and 1 ..
 {down}(437.917,174.167) .. tension 1 and 1 ..
 {down}(430.083,135.806) .. tension 1 and 1.7669 ..
liii1 ( (453.042,102.861), (0,0), (-74.3474,-3.6169) ) setranchor
(462,0) rightjoinii
(386.139,51.3333) {left} .. tension 12.1099 and 0.75 ..
 {left}(300.333,11.6944) .. tension 1.33775 and 1.26325 ..
 {left}(244.972,28.8611) .. tension 2.18145 and 1 ..
 {left}(143.833,-2.30556) .. tension 0.75 and 1 ..
 {left}(87.7478,10.9992) .. tension 1 and 4.68961 ..
 {left}liii0 ( (36.7808,2.66589), (-44.4444,-12.5), (79.5718,0.803755) ) leftjoin
liii0 ( (55.8534,99.1187), (-8.33333,-14.5833), (78.3661,2.81314) ) .. tension 1 and 1.69521 ..
 cycle
;

%%endpaths
%%beginbody

setMarkAnchor(smallhighwaw,z.mark1);
enddefchar;
defchar(seen.medi.betweenlammeem,-1,-1,-1,-1);
%%beginbody


lamseenmeem_(0,0);

cutGlyph(z1,z2,true);
cutGlyph(z11,z22,false);


leftanchor := z2;
rightanchor := z22;

enddefchar;
defchar(seen.medi.afterbeh,-1,-1,-1,-1);
%%backgroundimage:images/behbeforeseen.4.jpg,-1638.52,-1135.28,1,0,0,1
%%beginparams
leftVerticalRatio := 10;
rightVerticalRatio := 10;
z.mark1 = (87,277);

%%beginverbatim


%righttatweel := righttatweel - 0.5;
%lefttatweel := lefttatweel - 0.5;

%%endverbatim

%%beginpaths

fill
(103.644,132.468) .. tension 1 and 0.924762 ..
 {right}(144.11,178.423) .. tension 1 and 1 ..
 {down}(164.167,153.584) .. tension 0.75 and 2.50213 ..
 {down}(144.251,103.471) .. tension 2.79834 and 0.75 ..
 {right}(214.087,93.0489) .. tension 1.08033 and 1.08543 ..
(268.497,108.929) .. tension 1.50755 and 0.941043 ..
 {right}(332.803,183.053) .. tension 1 and 1 ..
 {down}(353.028,162.5) .. tension 1 and 2.64995 ..
 {down}(330.7,113.451) .. tension 1.36817 and 0.75 ..
 {right}(362.88,101.314) .. tension 1.0078 and 1.42494 ..
 {right}(461.519,203.152) .. tension 1 and 1 ..
 {down}(479.545,180.609) .. tension 1 and 1.7669 ..
liii1 ( (470.866,135.885), (0,0), (-2.97394,-20.978) ) setranchor
(529,22) rightjoinii
liii1 ( (427.671,53.8602), (0,0), (0,0) ) .. tension 1.10912 and 1 ..
 {left}(421.528,57.6389) .. tension 2.05721 and 0.75 ..
 {left}(338.527,11.6944) .. tension 1.33775 and 2.64002 ..
 {left}(267.483,28.2052) .. tension 2.5191 and 0.75 ..
 {left}(205.773,5.23687) .. tension 0.75 and 2.42182 ..
 {left}(94.7504,29.3248) .. tension 2.03941 and 4.68961 ..
 {left}liii0 ( (55.8973,9.62962), (-45.8912,-5.74846), (52.0834,0.321533) ) leftjoin
liii0 ( (55.8534,99.1187), (-12.6736,-5.90274), (73.0613,6.67116) ) .. tension 1 and 1.69521 ..
 cycle
;

%%endpaths
%%beginbody

setMarkAnchor(smallhighwaw,z.mark1);
enddefchar;
defchar(seen.medi.afterbeh.i,-1,-1,-1,-1);
%%backgroundimage:images/behbeforeseen.2.jpg,-805.824,-1036.28,1,0,0,1
%%beginparams
leftVerticalRatio := 10;
rightVerticalRatio := 10;
z.mark1 = (87,277);

%%beginverbatim


%righttatweel := righttatweel - 0.5;
%lefttatweel := lefttatweel - 0.5;

%%endverbatim

%%beginpaths

fill
(108.505,129.304) .. tension 1 and 0.924762 ..
 {right}(146.193,168.006) .. tension 1 and 1 ..
 {down}(164.167,144.556) .. tension 0.75 and 1.74398 ..
 {down}(165.991,101.002) .. tension 0.830106 and 0.75 ..
 {right}(182.837,83.3267) .. tension 1.08033 and 1.08543 ..
(298.358,117.262) .. tension 1 and 0.983952 ..
 {right}(364.053,194.164) .. tension 1 and 1 ..
 {down}(382.889,175.694) .. tension 1 and 2.64995 ..
 {down}(385.561,129.423) .. tension 1.36817 and 0.75 ..
 {right}(413.574,107.564) .. tension 1.0078 and 1.42494 ..
 {right}(501.102,213.569) .. tension 1 and 1 ..
 {down}(517.739,192.415) .. tension 1 and 1.7669 ..
liii1 ( (525.033,160.191), (0,0), (-74.3474,-3.6169) ) setranchor
(594.694,43.2777) rightjoinii
(489.341,63.2546) .. tension 1.10912 and 1 ..
 {left}(478.472,67.3611) .. tension 2.05721 and 0.75 ..
 {left}(382.277,5.4444) .. tension 1.33775 and 1.26325 ..
 {left}(302.9,27.5108) .. tension 2.18145 and 1 ..
 {left}(188.412,-9.34646) .. tension 0.75 and 2.42182 ..
 {left}(87.806,27.2415) .. tension 1 and 4.68961 ..
 {left}liii0 ( (51.7306,8.93518), (-45.8912,-5.74846), (98.8619,26.3632) ) leftjoin
liii0 ( (55.8534,99.1187), (-12.6736,-5.90274), (78.3661,2.81314) ) .. tension 1 and 1.69521 ..
 cycle
;

%%endpaths
%%beginbody

setMarkAnchor(smallhighwaw,z.mark1);
enddefchar;
defchar(seen.medi.afterbeh.ii,-1,-1,-1,-1);
%%backgroundimage:images/behbeforeseen.jpg,-561.824,-1137.28,1,0,0,1
%%beginparams
leftVerticalRatio := 10;
rightVerticalRatio := 10;
z.mark1 = (87,277);

%%beginverbatim


%righttatweel := righttatweel - 0.5;
%lefttatweel := lefttatweel - 0.5;

%%endverbatim

%%beginpaths

fill
(109.199,122.36) .. tension 1 and 0.924762 ..
 {right}(145.499,156.895) .. tension 1 and 1 ..
 {down}(158.611,141.778) .. tension 0.75 and 1.74398 ..
 {down}(150.713,112.113) .. tension 0.830106 and 0.75 ..
 {right}(182.143,85.41) .. tension 1.08033 and 1.08543 ..
(242.108,101.29) .. tension 1 and 0.983952 ..
 {right}(301.553,170.553) .. tension 1 and 1 ..
 {down}(314.833,152.083) .. tension 1 and 2.64995 ..
 {down}(307.783,114.84) .. tension 1.36817 and 0.75 ..
 {right}(330.935,105.481) .. tension 1.0078 and 0.988916 ..
 {right}(412.908,182.319) .. tension 1 and 1 ..
 {down}(425.378,167.415) .. tension 1 and 1.7669 ..
liii1 ( (429.894,141.441), (0,0), (-74.3474,-3.6169) ) setranchor
(462,30) rightjoinii
(385.174,54.2268) {left} .. tension 12.1099 and 0.75 ..
 {left}(300.333,11.6944) .. tension 1.33775 and 1.26325 ..
 {left}(252.206,24.0386) .. tension 2.18145 and 1 ..
 {left}(187.718,1.07021) .. tension 0.75 and 1 ..
 {left}(106.556,29.3248) .. tension 1 and 4.68961 ..
 {left}liii0 ( (51.7306,8.93518), (-45.8912,-5.74846), (98.8619,26.3632) ) leftjoin
liii0 ( (55.8534,99.1187), (-12.6736,-5.90274), (78.3661,2.81314) ) .. tension 1 and 1.69521 ..
 cycle
;

%%endpaths
%%beginbody

setMarkAnchor(smallhighwaw,z.mark1);
enddefchar;
defchar(seen.twosinnas.medi,-1,-1,-1,-1);
%%backgroundimage:images/seen.fina.jpg,-641.29,-971.927,1,0,0,1

%%beginpaths

fill
(99.769,128.939) .. tension 1.8894 and 0.929081 ..
 {right}(156.293,185.503) .. tension 1 and 1 ..
 {down}(174.228,156.778) .. tension 0.75 and 1.74398 ..
 {down}(164.713,114.113) .. tension 1.24723 and 0.75 ..
 {right}(194.909,98.41) .. tension 0.794023 and 1.08543 ..
(247.893,145.869) .. tension 1 and 0.983952 ..
 {right}(304.553,195.553) .. tension 1.13182 and 1 ..
 {down}(315.972,180.556) .. tension 1 and 1 ..
 {down}(313.412,159.134) .. tension 1 and 1 ..
liii1 ( (318.866,126.736), (0,0), (-11.033,-14.0827) ) .. tension 1 and 1.7669 ..
liii1 ( (340.899,106.705), (0,0), (-52.7371,-9.09775) ) setranchor
(363,0) rightjoinii
liii1 ( (342.945,1.44715), (10.4941,11.6997), (-91.8644,-1.16284) ) .. tension 1 and 1 ..
liii1 ( (261.397,45.8453), (2.38274,-0.401878), (-0.58142,-0.58142) ) .. tension 1 and 2.31708 ..
 {left}(260.333,46.6944) .. tension 7.07496 and 0.75 ..
 {left}(167.718,-4.92979) .. tension 0.75 and 1.72421 ..
 {left}(99.556,28.3248) .. tension 1 and 4.68961 ..
 {left}liii0 ( (31.7306,4.93518), (-45.8912,-5.74846), (98.8619,26.3632) ) leftjoin
liii0 ( (57.8534,103.119), (-12.6736,-5.90274), (78.3661,2.81314) ) .. tension 1 and 1.69521 ..
 cycle
;

%%endpaths
enddefchar;
defchar(seen.medi.beforeyeh,-1,-1,-1,-1);
%%beginbody




seen.twosinnas.medi_(0,righttatweel);

pair shift_;
picture pic_;

pic_ := image(
save rightanchor;pair rightanchor;clearxy;
behshape.medi.beforeyeh_(0,-0.3);
shift_ := leftanchor - rightanchor;
setCursiveAnchor(ltrcursive,z1  shifted shift_,ExitAnchorRTL);
);

draw pic_ shifted shift_;


pair leftacnhor;

enddefchar;
defchar(seen.medi.beforereh,-1,-1,-1,-1);
%%backgroundimage:images/seen_medi_reh_fina.jpg,-1190,-1098,1,0,0,1
%%beginparams
z.mark1 = (57,254);
z1 = (-143,57);

%%beginverbatim


%righttatweel := righttatweel - 0.5;
%lefttatweel := lefttatweel - 0.5;

%%endverbatim

%%beginpaths

fill
(86.499,163.895) .. tension 1 and 1 ..
 {down}(109.611,140.778) .. tension 0.75 and 1.74398 ..
(108.713,115.113) .. tension 1.7809 and 0.75 ..
 {right}(173.569,90.7858) .. tension 1.08033 and 1.08543 ..
(222.194,101.361) .. tension 1 and 0.983952 ..
 {right}(297,170) .. tension 1 and 1 ..
 {down}(309.833,148.083) .. tension 1 and 2.64995 ..
 {down}(297.854,112.556) .. tension 1.02376 and 0.75 ..
 {right}(326.417,97.694) .. tension 1.0078 and 0.988916 ..
 {right}(426,198) .. tension 1 and 1 ..
 {down}(437.917,174.167) .. tension 1 and 1 ..
 {down}(430.083,135.806) .. tension 1 and 1.7669 ..
liii1 ( (453.042,102.861), (0,0), (-74.3474,-3.6169) ) setranchor
(462,0) rightjoinii
(386.139,51.3333) {left} .. tension 12.1099 and 0.75 ..
 {left}(294.333,0.6944) .. tension 1.33775 and 1.26325 ..
 {left}(230.972,10.8611) .. tension 2.18145 and 1 ..
 {left}(168.833,-7.3056) .. tension 0.75 and 1 ..
(46,35) .. tension 1 and 1.95831 ..
 {left}(8.7478,56.9992) .. tension 1 and 1 ..
 {left}(-106,30) .. tension 1 and 1 ..
 {up}z1 .. tension 1 and 1 ..
(-107,124) .. tension 1.62408 and 4.68961 ..
 cycle
;

%%endpaths
%%beginbody

setMarkAnchor(smallhighwaw,z.mark1);
setCursiveAnchor(rtcursii,z1, ExitAnchorRTL);
enddefchar;
defchar(seen.fina,-1,-1,-1,-1);
%%backgroundimage:images/seen.fina.jpg,-643,-973,1,0,0,1
%%beginbody




seen.twosinnas.medi_(0,righttatweel);

pair shift_;
picture pic_;

pic_ := image(
save rightanchor;pair rightanchor;clearxy;
noon.fina_(0,0);
shift_ := leftanchor - rightanchor;
%setCursiveAnchor(rtlcursive,z.seenreh shifted shift_, ExitAnchorRTL);
);

draw pic_ shifted shift_;


pair leftanchor;


enddefchar;
defchar(lam.isol,1604,-1,-1,-1);
%%backgroundimage:images/lam.isol.jpg,-108.107,-1338.3,1,0,0,1

%%beginpaths

fill
liii0 ( (-26.6111,22.25), (0,0), (135,10) ) .. tension 1 and 4.94198 ..
 {right}liii0 ( (69.141,198.715), (0,0), (135,10) ) .. tension 0.927469 and 1 ..
 {down}liii0 ( (80.9723,184.743), (0,0), (135,10) ) .. tension 0.987321 and 1 ..
 {down}liii0 ( (41.457,80.295), (0,0), (135,10) ) .. tension 0.947674 and 1.03981 ..
 {right}liii0 ( (213.917,-52.4722), (0,0), (135,10) ) .. tension 1.18638 and 1.55246 ..
 {up}(411.384,36.8413) .. tension 1.07128 and 18.2673 ..
(383.019,295.642) .. tension 16.3689 and 16.3689 ..
(362.958,538.329) .. tension 2.62357 and 0.75 ..
 {up}(337.224,603.952) .. tension 1 and 2.05753 ..
 {right}(404.588,722.2) .. tension 1.56454 and 1 ..
(431.603,633.692) .. tension 0.937294 and 1.26279 ..
 {down}(459.627,619.629) .. tension 0.75 and 9.76203 ..
(438.57,521.706) {down} .. tension 1.12252 and 1.59686 ..
 {down}(472.806,99.972) .. tension 0.793905 and 1.16165 ..
 {left}liii0 ( (196.62,-151.426), (0,0), (135,10) ) .. tension 1.04764 and 0.892519 ..
 {up} cycle
;

%%endpaths
enddefchar;
defchar(lam.init,-1,-1,-1,-1);
%%backgroundimage:images/lam_init.jpg,-1489.61,-1177.49,1,0,0,1

%%beginverbatim

%%endverbatim

%%beginpaths

fill
liii0 ( (136.322,14.5227), (-50.8333,-18.3333), (1.38889,-6.25) ) leftjoin
liii0 ( (121.135,106.489), (-38.3333,-19.1667), (9.02778,-6.25) ) .. tension 1 and 2.44099 ..
 {up}(144.037,122.47) .. tension 4.77354 and 27.4297 ..
(108.17,467.236) .. tension 3.1828 and 0.75 ..
 {up}(75.2981,546.938) .. tension 1.43236 and 1.57926 ..
 {right}(122.209,659.873) .. tension 1.85207 and 1.33449 ..
(155.846,566.001) .. tension 1.34175 and 1 ..
(180.28,547.04) .. tension 1 and 0.75 ..
 {down}(196,520) .. tension 0.75 and 9.59187 ..
(171.216,454.559) .. tension 14.0434 and 2.26495 ..
 {down}(200,180) .. tension 1 and 1 ..
(188.113,73.7067) .. tension 1 and 1 ..
 cycle
;

%%endpaths
%%beginbody

enddefchar;
defchar(lam.init.beforeseenmeem,-1,-1,-1,-1);
%%beginbody


lamseenmeem_(0,0);


cutGlyph(z11,z22,true);

leftanchor := z22;


enddefchar;
defchar(lam.init.beforebeh,-1,-1,-1,-1);
%%backgroundimage:images/lambeh.jpg,-1080,-1111,1,0,0,1

%%beginverbatim

behbeh.ii_(0,0);

save p,time,points; path p; numeric time[]; pair points[];

p := pathpart currentpicture;


(time1,whatever) = p intersectiontimes z1;
(time2,whatever) = p intersectiontimes z2;

points1 := direction time1 of p;
points2 := direction time2 of p;


currentpicture:=nullpicture;
%%endverbatim

%%beginpaths

fill
(411.816,651.578) .. tension 1.49749 and 1.2429 ..
(440.019,570) .. tension 1 and 0.75 ..
 {down}(483.019,538) .. tension 0.75 and 1 ..
 {down}(449,445) .. tension 1.23001 and 1 ..
 {down}(491.019,159) .. tension 1 and 1.55111 ..
(457.788,53.1055) .. tension 1 and 0.75 ..
 {points2}z2 .. tension 1.35764 and 1 ..
 {up}(361.807,78.0436) .. tension 1 and 1.46955 ..
 {points1}z1 .. tension 0.75 and 0.75 ..
 {up}(431.01,151.3) .. tension 1.7631 and 1 ..
(408.019,295) .. tension 1 and 3.38685 ..
(380.019,497) .. tension 1 and 0.75 ..
 {up}(362.861,535.622) .. tension 3.03106 and 2.6677 ..
 {right} cycle
;

%%endpaths
%%beginbody
leftanchor:=z2;

enddefchar;
defchar(lam.init.beforemeem,-1,-1,-1,-1);
%%beginbody


lammeem_(lefttatweel,righttatweel);

cutGlyph(z1,z2,true);

leftanchor := z2;

rightbearing := 100;


enddefchar;
defchar(lam.init.beforeyeh,-1,-1,-1,-1);
%%backgroundimage:images/lam_yeh.jpg,-354.839,-1297.84,1,0,0,1
%%beginparams
z1 = (15,91);

%%beginpaths

fill
(89.8889,76.1944) .. tension 1 and 4.35593 ..
 {up}z1 .. tension 0.931123 and 1.29763 ..
(54.7725,151.839) .. tension 1.74542 and 1.28017 ..
 {up}(155.446,211.977) .. tension 4.13979 and 12.9449 ..
(105.423,598.676) .. tension 3.29886 and 1 ..
 {up}(85.3024,658.858) .. tension 1.75176 and 1.27974 ..
 {right}(146.635,770.213) .. tension 0.812326 and 1 ..
 {down}(164.462,752.333) .. tension 1 and 1 ..
 {down}(163.767,718.028) .. tension 0.75 and 0.75 ..
 {down}(207,664) .. tension 1 and 1.50717 ..
 {down}(175.338,587.479) .. tension 2.63614 and 1.12218 ..
 {down}(219,249) .. tension 1.68905 and 1.53 ..
 {left} cycle
;

%%endpaths
%%beginbody

leftbearing := 0;
rightbearing:=70;


setCursiveAnchor(ltrcursive,z1,ExitAnchorRTL);

enddefchar;
defchar(lam.init.lam_hah,-1,-1,-1,-1);
%%backgroundimage:images/lam_hah.jpg,-611.5,-941.167,1,0,0,1
%%beginparams
z1 = (55,115);

%%beginverbatim
%%backgroundimage:images/lam.init_hah.jpg,-1632,-1020,1,0,0,1
%%backgroundimage:images/behhah.jpg,-1665.24,-1053.77,1,0,0,1
%%endverbatim

%%beginpaths

fill
z1 {dir hah.medi.afterbeh.dir1} .. tension 0.75 and 5.48651 ..
 {up}(308,193) .. tension 4.6939 and 6.8484 ..
(285,452) .. tension 1.66263 and 0.966451 ..
 {up}(255,509) .. tension 1.88324 and 1.51207 ..
 {right}(325,636) .. tension 1.46575 and 4.45854 ..
(349.843,556.366) .. tension 1.77368 and 1.77368 ..
 {down}(388,527) .. tension 1.17354 and 4.55519 ..
 {down}(354,446) .. tension 4.87812 and 4.96004 ..
 {down}(375.106,214.102) .. tension 0.75 and 3.30683 ..
 {left}(193.685,85.111) .. tension 0.75 and 6.48872 ..
 {up} cycle
;

%%endpaths
%%beginbody

rightbearing := hah.medi.afterbeh.width1 - currentwidth;
leftbearing := -150;



setCursiveAnchor(rtlcursive,z1, ExitAnchorRTL);



enddefchar;
defchar(lam.init.beforehahyeh,-1,-1,-1,-1);
%%beginbody

lam.init.lam_hah_(0,0);
setCursiveAnchor(rtlcursive,z1 , ExitAnchorRTL);

enddefchar;
defchar(lam.init.beforedal,-1,-1,-1,-1);
%%backgroundimage:images/lam_dal.jpg,-1216,-1296,1,0,0,1

%%beginpaths

fill
(42.3354,6.40162) leftjoin
(40.6862,100.586) .. tension 1 and 1.06519 ..
 {up}(63.405,131.557) .. tension 25.9148 and 27.8321 ..
(-1.601,587.033) .. tension 3.1828 and 0.75 ..
 {up}(-17.8944,657.19) .. tension 2.23645 and 2.45866 ..
 {right}(43.6682,773.558) .. tension 2.19039 and 1.33449 ..
(67.522,685.977) .. tension 1.34175 and 0.75 ..
 {down}(97.917,655.509) .. tension 0.75 and 1 ..
(77,605) .. tension 1 and 4.0387 ..
(73.251,558.555) .. tension 14.0434 and 3.47891 ..
 {down}(122.865,181.952) .. tension 1.30231 and 1.04836 ..
 cycle
;

%%endpaths
%%beginbody

tr_ := tr_ shifted (0,-70);


enddefchar;
defchar(lam.medi,-1,-1,-1,-1);
%%backgroundimage:images/lam.medi.jpg,-828.26,-1134.07,1,0,0,1
%%beginparams
leftVerticalRatio := 10;
rightVerticalRatio := 10;

%%beginverbatim

%minRight:=-0.5;

%%endverbatim

%%beginpaths

fill
(125,146.833) .. tension 3.49539 and 13.4898 ..
 {up}(80.6111,612.361) .. tension 1.60026 and 2.03022 ..
 {right}(123.472,673.194) .. tension 2.8206 and 1 ..
(157.639,559.028) .. tension 1.34051 and 2.89286 ..
liii1 ( (206.25,144.444), (-3.15069,63.5609), (-32.6388,95.1388) ) .. tension 0.81295 and 7.85072 ..
liii1 ( (270.601,101.406), (-30.2855,53.0318), (-127.655,29.199) ) setranchor
(276,0) rightjoinii
liii0 ( (146.111,74.7222), (0,-14), (0,0) ) leftjoin
liii0 ( (95.9444,114.889), (7.20961,17.21), (8.56626,-21.9777) ) .. tension 1 and 1.51257 ..
 {up} cycle
;

%%endpaths
enddefchar;
defchar(lam.medi.afterkaf,-1,-1,-1,-1);
%%beginbody


lam.medi_(lefttatweel,0);
enddefchar;
defchar(lam.medi.beforeheh,-1,-1,-1,-1);
%%backgroundimage:images/lam_heh.jpg,-478,-1306.33,1,0,0,1
%%beginparams
leftVerticalRatio := 10;
rightVerticalRatio := 10;

%%beginverbatim

%minRight:=-0.5;

%%endverbatim

%%beginpaths

fill
(54.3112,180.097) .. tension 3.49539 and 1 ..
(38.0912,370.743) .. tension 3.43687 and 13.4898 ..
 {up}(3.05614,666.666) .. tension 1.60026 and 2.03022 ..
 {right}(49.7619,777.557) .. tension 8.67219 and 1 ..
 {down}(58.3333,762.5) .. tension 12.9006 and bldmvi ( 0.75, 20 ) ..
liii1 ( (146.185,248.51), (15.9722,-31.6666), (-22.3099,-21.9263) ) setranchor
(209,98) rightjoinii
(120.485,127.727) .. tension 1 and 0.812571 ..
 {left}(118.171,129.728) .. tension 1 and 1 ..
(114.966,125.524) .. tension 1 and 1 ..
(76.7415,32.871) leftjoin
bldmv ( (40.6536,107.79), (7.20961,17.21), (4.88393,-21.3963) ) .. tension 1 and 1.51257 ..
 {up} cycle
;

%%endpaths
%%beginbody

tr_ := tr_ shifted (0,-98);

enddefchar;
defchar(lam.medi.beforeyeh,-1,-1,-1,-1);
%%backgroundimage:images/lam.medi_yeh.fina.jpg,-428.768,-1088.41,1,0,0,1
%%beginparams
leftVerticalRatio := 10;
rightVerticalRatio := 10;
z1 = (-26,-67);

%%beginverbatim

%minRight:=-0.5;

%%endverbatim

%%beginpaths

fill
(52,107) .. tension 3.49539 and 1 ..
(39,265) .. tension 3.43687 and 13.4898 ..
 {up}(3,525) .. tension 1.60026 and 2.03022 ..
 {right}(45,593) .. tension 4.01859 and 10.129 ..
(103,361) .. tension bldmvi ( 3.07376, 20 ) and bldmvi ( 3.07376, 20 ) ..
brdmv ( (143,171), (19.2129,-32.361), (-8.06265,-40.3772) ) setranchor
(210,0) rightjoinii
(103.023,56.0699) .. tension 1.54833 and 1 ..
 {left}(97.6046,58.4418) .. tension 9.5986 and 1.05538 ..
(77,-14) .. tension 1 and 1 ..
 {left}(-3,-82) .. tension 0.914444 and 1 ..
z1 {up} .. tension 4.40627 and 0.883604 ..
 {up} cycle
;

%%endpaths
%%beginbody
leftbearing := 0;



setCursiveAnchor(ltrcursive,z1,ExitAnchorRTL);
enddefchar;
defchar(lam.medi.beforemeem,-1,-1,-1,-1);
%%beginbody


lammeemfina_(lefttatweel,righttatweel);

cutGlyph(z1,z2,true);

leftanchor := z2;

enddefchar;
defchar(lam.fina,-1,-1,-1,-1);
%%backgroundimage:images/lam.fina.jpg,-49.788,-1121.24,1,0,0,1

%%beginverbatim

rightVerticalRatio := 5;

%%endverbatim

%%beginpaths

fill
liii0 ( (13.1252,-38.0431), (0,0), (112.32,17.28) ) .. tension 1 and 3.93398 ..
 {right}liii0 ( (121.44,133.48), (0,0), (112.32,17.28) ) .. tension 1 and 1 ..
 {down}liii0 ( (133.44,115.68), (0,0), (112.32,17.28) ) .. tension 1.11576 and 1 ..
 {down}liii0 ( (84.84,4.48), (0,0), (112.32,17.28) ) .. tension 0.943093 and 0.873211 ..
 {right}liii0 ( (255.84,-114.52), (0,0), (106.32,27.28) ) .. tension 1.15616 and 1 ..
(442.24,-36.72) .. tension 1 and 1.10935 ..
 {up}(451.64,38.68) .. tension 18.5463 and 0.929979 ..
 {up}(401.04,595.68) .. tension 2.27481 and 1.77686 ..
 {right}(447.84,683.88) .. tension 5.30238 and 0.817189 ..
(490.84,400.563) .. tension 1 and 3.36986 ..
liii1 ( (529,185), (8,3), (19,-106) ) .. tension 1 and 3.46159 ..
liii1 ( (593.84,115.48), (68.3611,-29.1065), (-63.2826,-14.964) ) setranchor
(651.84,-0.0548639) rightjoinii
liii1 ( (593,7.99997), (0,0), (-72.3737,-8.18748) ) .. tension 1 and 1 ..
liii1 ( (525.611,52.2458), (0,0), (-2.28688,-47.924) ) .. tension 1 and 1.52021 ..
 {left}liii1 ( (522.292,54.7718), (0,0), (-1.86054,-47.6764) ) .. tension 4.59064 and 1 ..
 {down}(518.755,9.42815) .. tension 1.07609 and 0.825991 ..
 {left}liii0 ( (236.18,-222.456), (0,0), (106.32,27.28) ) .. tension 0.894257 and 1.0463 ..
 {up} cycle
;

%%endpaths
enddefchar;
defchar(lam.fina.afterkaf,-1,-1,-1,-1);
%%beginbody

lam.fina_(lefttatweel,righttatweel);

enddefchar;
beginchar(meem.isol,1605,-1,-1,-1);
%%backgroundimage:images/meem.isol.jpg,18.7019,-1009.58,1,0,0,1

%%beginpaths

fill
(87.544,-124.704) .. tension 1.50777 and 1 ..
(190.544,-75.704) .. tension 1.21063 and 5.15247 ..
 {up}(415.544,59.296) .. tension 0.75 and 0.75 ..
 {up}(403.544,105.296) .. tension 1.48381 and 1.74829 ..
 {right}(558.544,273.296) .. tension 1.58938 and 1.79756 ..
 {down}(642.544,104.296) .. tension 1.29763 and 2.34269 ..
 {left}(591.544,4.296) .. tension 0.75 and 7.33664 ..
 {left}(462.544,27.296) .. tension 17.0416 and 0.75 ..
(365.544,-75.704) .. tension 1.33087 and 2.90555 ..
 {left}(115.544,-147.704) .. tension 1 and 1 ..
 {up} cycle
;
fill
(488.544,140.768) .. tension 2.30897 and 1 ..
 {right}(542.544,111.379) .. tension 1 and 1 ..
 {up}(554.544,120.296) .. tension 3.44741 and 2.20122 ..
 {left}(528.544,172.296) .. tension 0.932393 and 5.78647 ..
 {down} cycle
;

%%endpaths
%%beginbody

endchar;
beginchar(meem.isol.ii,-1,-1,-1,-1);
%%backgroundimage:images/meem.isol.ii.jpg,62.6775,-883.17,1,0,0,1

%%beginpaths

fill
(200.961,144.527) {up} .. tension 1.20071 and 1.56488 ..
 {right}(296.406,281.388) .. tension 1.72972 and 4.43436 ..
 {down}(465.294,126.749) .. tension 1 and 4.50003 ..
 {left}(428.168,45.6832) .. tension 8.09822 and 2.6964 ..
 {left}(314.128,47.0266) .. tension 2.70682 and 1.68562 ..
 {down}(197.461,4.8599) .. tension 2.96404 and 2.65115 ..
 {down}(245.017,-386.501) .. tension 1 and 1.60465 ..
 {left}(219.1,-461.973) .. tension 0.993256 and 1.65815 ..
(196.156,-426.251) .. tension 1.63032 and 2.73205 ..
 {up}(140.517,-41.8345) .. tension 0.881308 and 1.54535 ..
(222.461,120.888) .. tension 1 and 4.78345 ..
 {up}(312.322,154.638) .. tension 2.18133 and 1 ..
 {left}(274.961,176.999) .. tension 0.966248 and 2.84235 ..
 {left}(218.304,131.186) .. tension 1.03949 and 1 ..
 cycle
;

%%endpaths
%%beginbody

endchar;
defchar(meem.init,-1,-1,-1,-1);
%%backgroundimage:images/meem.init.jpg,-619.04,-879.59,1,0,0,1

%%beginverbatim



%%endverbatim

%%beginpaths

fill
liii0 ( (127.681,163.153), (0,0), (5.78704,-6.94444) ) .. tension 1 ..
(189.213,231.847) .. tension 1 and 1.53351 ..
 {right}(268,284) .. tension 1.72407 and 4.58374 ..
 {down}(343,98) .. tension 0.900979 and 3.07538 ..
 {left}(292.106,1.4213) .. tension 0.790113 and 1.39505 ..
(185,23) .. tension 1 and 3.31851 ..
 {left}(131,51) .. tension bldmvi ( 1.80517, 3.2 ) and 1 ..
liii0 ( (101,35), (-123,-49), (47.2685,15.8565) ) leftjoin
liii0 ( bldmvi ( (97,121), (-9.00828,-8.97162) ), (20,27), (3.56481,-33.537) ) .. tension atleast 3.56302 ..
 cycle
;
fill
(249,128.736) .. tension 6.08809 and 1.12262 ..
 {left}(227,177) .. tension 1.83136 and 2.48927 ..
(193,143.472) {down} .. tension 9.88547 and 1 ..
 {right}(242,117) .. tension 1 and 2.04959 ..
 {up} cycle
;

%%endpaths
%%beginbody



%labels(1,2);
enddefchar;
defchar(meem.init.beforeyeh,-1,-1,-1,-1);
%%backgroundimage:images/meem_yeh.jpg,-575.588,-1047.4,1,0,0,1
%%beginparams
z1 = (-104,46);

%%beginverbatim



%%endverbatim

%%beginpaths

fill
(-89.4213,37.9491) .. tension 0.75 and 1.45354 ..
 {up}z1 .. tension 1.80482 and 1 ..
(69,223.949) .. tension 4.14884 and 2.2277 ..
 {up}(106,243) .. tension 1.83772 and 1 ..
(104,267) .. tension 1 and 1.41817 ..
 {right}(188,399) .. tension 1.5804 and 1.83398 ..
 {down}(302,307) .. tension 0.75 and 5.01752 ..
(141,166) .. tension 3.26099 and 1 ..
(-47,68) .. tension 1 and 0.928218 ..
 {left} cycle
;

%%endpaths
%%beginbody
leftbearing := 0;

setCursiveAnchor(ltrcursive,z1,ExitAnchorRTL);
enddefchar;
defchar(meem.init.beforehah,-1,-1,-1,-1);
%%backgroundimage:images/meemhah.jpg,-996,-1058,1,0,0,1
%%beginparams
z1 = (-105,-12);

%%beginverbatim


%%endverbatim

%%beginpaths

fill
z1 {dir hah.medi.afterbeh.dir1} .. tension 0.75 and 1 ..
(88,110) .. tension 1 and 8.96799 ..
(187.639,151.518) .. tension 1.66615 and 1 ..
 {up}(194,184) .. tension 1.3562 and 1.13485 ..
 {right}(257,278) .. tension 1.5804 and 1.29193 ..
 {down}(380,188) .. tension 0.75 and 2.66095 ..
(321.37,107.873) .. tension 9.72324 and 1 ..
(101,33) .. tension 1 and 10.7688 ..
 {left}(-71.7809,-51.6451) .. tension 1 and 1.62707 ..
 {up} cycle
;

%%endpaths
%%beginbody

tr_ := tr_ shifted (0,140 );
leftbearing := -200 ;
rightbearing := 150;
setCursiveAnchor(rtlcursive,z1, ExitAnchorRTL);
enddefchar;
defchar(meem.medi,-1,-1,-1,-1);
%%backgroundimage:images/meem.medi.jpg,-441.36,-1216.44,1,0,0,1
%%beginparams
leftVerticalRatio := 10;
rightVerticalRatio := 10;

%%beginverbatim





%%endverbatim

%%beginpaths

fill
(214.8,235.269) .. tension 1.22114 and 3.27133 ..
liii1 ( (269.8,200), (37,-32), (-1,-9) ) .. tension 1.58165 and 1.58165 ..
liii1 ( (347.8,112), (14,9), (-17.1574,-17.213) ) setranchor
liii1 ( (418.494,-0.578704), (0,0), (0,0) ) rightjoinii
liii1 ( (340.953,8.95833), (0,0), (-18.787,-12.6389) ) {curl1} .. tension 3.23319 and 0.75 ..
 {left}(298.383,-21.1481) .. tension 0.75 and 2.79227 ..
(187.069,-4.67593) .. tension 1 and 1.6801 ..
 {curl1}liii0 ( (114.8,63.0556), (0,0), (1.2,-42) ) leftjoin
liii0 ( (106.8,159), (0,0), (8.4,-71.4) ) .. tension 1 and 0.906587 ..
 {right} cycle
;
fill
(172.795,127.38) .. tension 1.25647 and 2.25403 ..
 {right}(220.805,87.7454) .. tension 1 and 1.55588 ..
 {up}(225.175,104.319) .. tension 2.64134 and 2.19686 ..
 {left}(197.323,153.694) .. tension 1.14289 and 1.43118 ..
 {down} cycle
;

%%endpaths
%%beginbody

enddefchar;
defchar(meem.medi.afterhah,-1,-1,-1,-1);
%%backgroundimage:images/hah_meem.jpg,-788.17,-988.95,1,0,0,1
%%beginparams
hahmeem.dir.1 := 10;
z1 = (172,217);

%%beginverbatim

%%endverbatim

%%beginpaths

fill
(313,111) .. tension 1.11778 and 1.02193 ..
 {left}(239.5,-20.9445) .. tension 1.59086 and 1 ..
(120.139,18.0556) .. tension 1 and 4.74416 ..
 {left}liii0 ( (90.7536,58.626), (0,0), (14.0657,-31.3465) ) .. tension 3.66689 and 1 ..
liii0 ( (86.8225,53.5887), (0,0), (4.42065,-55.4591) ) .. tension 1 and 1.15466 ..
liii0 ( (23.7241,2.83156), (3,-25), (101.768,-0.86765) ) leftjoin
liii0 ( (76,121), (-26,-13), (38.6357,-11.3371) ) .. tension 1.12755 and 0.994056 ..
 {dir hahmeem.dir.1}z1 .. tension 1.24711 and 1.10448 ..
 {down} cycle
;
fill
(251,86) {curl1} .. tension 2.36269 and 0.75 ..
 {left}(190.167,136.583) .. tension 1.52875 and 1.48793 ..
(152.806,120.472) {down} .. tension 4.02244 and 2.70395 ..
 {up} cycle
;

%%endpaths
%%beginbody


setCursiveAnchor(rtlcursive,z1,EntryAnchorRTL);
enddefchar;
defchar(meem.medi.afterlam,-1,-1,-1,-1);
%%beginbody


lammeem_(lefttatweel,righttatweel);

cutGlyph(z1,z2,false);

rightanchor := z2;
enddefchar;
defchar(meem.medi.afterseen,-1,-1,-1,-1);
%%beginbody


seenmeem_(lefttatweel-0.2,righttatweel);

cutGlyph(z1,z2,false);

rightanchor := z2;
enddefchar;
defchar(meem.medi.afteralefseen,-1,-1,-1,-1);
%%beginbody


lamseenmeem_(lefttatweel,righttatweel);

cutGlyph(z1,z2,false);

rightanchor := z2;
enddefchar;
defchar(meem.medi.beforeyeh,-1,-1,-1,-1);
%%backgroundimage:images/meem.medi_yeh.jpg,-523.035,-1103,1,0,0,1
%%beginparams
z1 = liii0 ( (-94,-44), (0,0), (284,110) );

%%beginverbatim







%%endverbatim

%%beginpaths

fill
liii0 ( (26.6389,-33.0463), (0,0), (279,123) ) .. tension 1 and 1 ..
 {left}liii0 ( (-86.838,-48.4722), (0,0), (284,110) ) .. tension 1.24663 and 0.818793 ..
 {up}z1 .. tension atleast 1.31847 ..
liii0 ( (-15.9676,26.5139), (0,0), (292,101) ) .. tension 2.43688 and 0.75 ..
(211.783,120.19) .. tension 0.75 and 1.43202 ..
 {right}(366.275,219.049) .. tension 2.82523 and 1.58165 ..
(424,158) .. tension 1.21643 and 1.01257 ..
liii1 ( (494.264,108.944), (0,0), (-27.7577,-14.3643) ) setranchor
(539,0) rightjoinii
liii1 ( (501.361,4.32408), (0,0), (-31.907,-11.2986) ) .. tension 2.63339 and 1.98563 ..
 {left}liii1 ( (488.796,8.10185), (0,0), (-23.7108,-19.2901) ) .. tension 3.04766 and 2.93508 ..
 {left}(444.949,-32.3611) .. tension 1 and 2.79227 ..
(265.449,1.26389) .. tension 1 and 7.97154 ..
 {left}(229.537,67.6759) .. tension 17.2745 and 0.75 ..
 cycle
;
fill
(296.111,106.583) .. tension 2.2313 and 5.66398 ..
 {up}(381.421,67.0093) .. tension 2.5696 and 2.04303 ..
 {left}(336.157,136.741) .. tension 1.68596 and 1.0871 ..
 {down} cycle
;

%%endpaths
%%beginbody
leftbearing := 0 ;
setCursiveAnchor(ltrcursive,z1,ExitAnchorRTL);

enddefchar;
defchar(meem.fina,-1,-1,-1,-1);
%%backgroundimage:images/meem.fina.jpg,-285,-1191,1,0,0,1
%%beginparams
z.mark1 = (218,-159);

%%beginpaths

fill
(158,18) .. tension 0.75 and 1 ..
 {up}(159,77) .. tension 1.12059 and 1.61706 ..
 {right}(277,215) .. tension 2.84357 and 1 ..
(291.37,190.63) .. tension 1 and 1 ..
liii1 ( (398.046,107.333), (99,-37), (-57.8704,-10.4167) ) setranchor
(442,0) rightjoinii
liii1 ( (414.38,3.93056), (0,0), (-62.8323,-10.8311) ) .. tension 1.3164 and 2.59749 ..
 {left}liii1 ( (394,10), (0,0), (-11.7214,-27.9081) ) .. tension 2.54964 and 1.8568 ..
 {left}(350,-37) .. tension 0.75 and 1 ..
(232.602,-25.463) .. tension 1 and 8.9894 ..
 {left}(200.315,-11.9491) .. tension 5.41352 and 5.43489 ..
(129,-77) .. tension 0.989106 and 18.3373 ..
 {left}(-70,-120) .. tension 1 and 1 ..
 {up}(-88,-101) .. tension 2.77906 and 1 ..
(-2,-57) .. tension 1.73988 and 6.20895 ..
 {up} cycle
;
fill
(234,124) .. tension 1.23804 and 1.74187 ..
 {down}(218,98) .. tension 6.28125 and 2.6024 ..
 {up}(275,68) .. tension 1.82811 and 3.01664 ..
 {left} cycle
;

%%endpaths
%%beginbody
%%beginbody


setMarkAnchor(buttonmark,z.mark1);

enddefchar;
defchar(meem.fina.afterheh,-1,-1,-1,-1);
%%backgroundimage:images/kaf_meem.jpg,-614,-1096,1,0,0,1
%%beginparams
z2 = (-111,99);

%%beginverbatim

%%endverbatim

%%beginpaths

fill
(-531,-250) .. tension 2.3795 and 1 ..
(-372,-188) .. tension 1.34427 and 4.24422 ..
 {up}(-186,-88) .. tension 2.44071 and 1 ..
 {up}(-194,-26) .. tension 0.830462 and 1.43668 ..
z2 {dir 35} .. tension 0.847258 and 0.847258 ..
 {right}(-58,114) .. tension 1.58938 and 1.03381 ..
 {down}(55,-32) .. tension 1.49551 and 1.0177 ..
 {left}(-29,-171) .. tension 1 and 4.52521 ..
 {left}(-143,-138) .. tension 5.04666 and 0.75 ..
(-186,-187) .. tension 1.33087 and 1.32657 ..
 {left}(-512,-266) .. tension 1 and 1 ..
 {up} cycle
;
fill
(-115.162,-7.10185) .. tension 2.7762 and 0.991189 ..
 {right}(-41.9444,-52.3657) .. tension 1 and 1 ..
 {up}(-30.8935,-40.5787) .. tension 1.43117 and 1.05068 ..
 {left}(-103.472,5.375) .. tension 0.799344 and 0.75 ..
 {down} cycle
;

%%endpaths
%%beginbody
setCursiveAnchor(hehmeem,z2, EntryAnchorRTL);


enddefchar;
defchar(meem.fina.afterheh.ii,-1,-1,-1,-1);
%%beginbody


hehmeem_(0,0);

cutGlyph(z1,z2,false);

rightanchor := z2;

enddefchar;
defchar(meem.fina.afterlam,-1,-1,-1,-1);
%%beginbody


lammeemfina_(leftatweel,righttatweel);

cutGlyph(z1,z2,false);

rightanchor := z2;

enddefchar;
defchar(meem.fina.afterkaf,-1,-1,-1,-1);
%%backgroundimage:images/kaf.medi_meem.jpg,-1405.69,-1150.92,1,0,0,1
%%beginparams
z1 = (216,99);

%%beginpaths

fill
(-207,-205.6) .. tension 2.3795 and 1 ..
(-180,-176) .. tension 2.10533 and 4.24422 ..
 {up}(64.8,-55.6) .. tension 2.44071 and 1 ..
 {up}(54.4,18.4) .. tension 0.977125 and 1.53964 ..
 {right}(176,157.2) .. tension 1.13889 and 1.03381 ..
 {down}(269.8,37.6) .. tension 1.49551 and 1.0177 ..
 {left}(187,-96.6) .. tension 0.75 and 2.17286 ..
 {left}(124.6,-84) .. tension 1.58995 and 0.75 ..
(62.4,-151) .. tension 1.33087 and 2.1233 ..
 {left}(-176,-226.4) .. tension 1 and 1 ..
 {up} cycle
;
fill
(123.187,40.8555) .. tension 2.7762 and 0.991189 ..
 {right}(184.856,5.2343) .. tension 1.16789 and 1 ..
 {up}(197.106,24.2213) .. tension 1.43117 and 1.05068 ..
 {left}(143.643,62.3963) .. tension 1.24458 and 0.98443 ..
 {down} cycle
;

%%endpaths
%%beginbody

setCursiveAnchor(kafmeem,z1, EntryAnchorRTL);


enddefchar;
defchar(meem.fina.ii,-1,-1,-1,-1);
%%backgroundimage:images/meem.fina.ii.jpg,67.0556,-1012.52,1,0,0,1

%%beginverbatim

%%endverbatim

%%beginpaths

fill
(80,-50) .. tension 2.06223 and 1 ..
(178,126) .. tension 0.75 and 3.21269 ..
(278,156) .. tension 1.34941 and 1.34941 ..
 {right}(312,186) .. tension 1.32087 and 1 ..
(397,109) setranchor
(473,0) rightjoinii
(425,5) {curl1} .. tension 5.56372 and 1.45592 ..
 {left}(337,-113) .. tension 1.35902 and 1 ..
(272,-27) .. tension 1 and 2.68212 ..
(268,38) .. tension 1 and 1.14715 ..
 {left}(242,52) .. tension 1.47039 and 1.94979 ..
 {down}(145,8) .. tension 10000 and 1.35851 ..
 {down}(186,-433) .. tension 1.84582 and 1.35324 ..
 {left}(147,-491) .. tension 1.33936 and 1 ..
(128,-448) .. tension 0.75 and 1 ..
(112,-256) .. tension 1 and 2.30836 ..
 {up} cycle
;

%%endpaths
%%beginbody

enddefchar;
defchar(noon.isol,-1,-1,-1,-1);
%%backgroundimage:images/noon_isol2.jpg,-27,-1208,1,0,0,1
%%beginparams
z.mark1 = liii0 ( (180,335), (0,0), (70,20) );

%%beginpaths

fill
liii0 ( (226.197,-130.532), (0,0), (42,22) ) .. tension 0.826526 and 0.960362 ..
 {up}liii0 ( (50.1825,33.1947), (0,0), (69,-6) ) .. tension 1.35039 and 1.76007 ..
 {right}liii0 ( (140.075,205.595), (0,0), (69,-6) ) .. tension 0.75 and 1.12749 ..
 {down}liii0 ( (157.6,183.423), (0,0), (69,-6) ) .. tension 1.80193 and 0.75 ..
 {down}liii0 ( (117.788,53.0188), (0,0), (69,-6) ) .. tension 1.30132 and 0.75 ..
 {right}liii0 ( (256.328,-31.0368), (0,0), (42,22) ) .. tension 1.32488 and 2.26811 ..
 {up}(465.819,50.3505) .. tension 0.893232 and 3.17992 ..
 {up}(392.801,253.426) .. tension 6.32194 and 1.6036 ..
 {right}(430.175,317.252) .. tension 4.75112 and 0.805273 ..
 {down}(521.266,97.8854) .. tension 1.13331 and 0.956441 ..
(486.897,-23.4651) .. tension 0.985502 and 1.18217 ..
 {left} cycle
;

%%endpaths
%%beginbody

defAnchor(onedotup,z.mark1,MarkAnchor);
enddefchar;
defchar(noon.fina.afterbeh,-1,-1,-1,-1);
%%backgroundimage:images/behbeforenoon.jpg,-74,-1233,1,0,0,1
%%beginparams
z2 = (475,155);

%%beginverbatim



%%endverbatim
%%beginbody
noon.isol_(lefttatweel,rightatweel);

setCursiveAnchor(ltrcursive,z2, EntryAnchorRTL);

tr_ := tr_ shifted (0,-100);
enddefchar;
defchar(qaf.isol,-1,-1,-1,-1);
%%backgroundimage:images/qaf.isol.jpg,25,-1026,1,0,0,1
%%beginparams
z1 = (324.079,-114.63);
z11 = (446,432);
z2 = z1 + joinvector;

%%beginpaths

fill
(149.231,23.2639) .. tension 0.75 and 5.5838 ..
 {right}(229.287,197.287) .. tension 1 and 1 ..
 {down}(244.917,176.236) .. tension 1.24527 and 1 ..
 {down}(215.963,79.8981) .. tension 1 and 1 ..
 {right}z2 .. tension 1.08626 and 1.6787 ..
 {up}(549,88.2546) .. tension 1 and 2.26133 ..
 {left}(531.472,134.009) .. tension 33.0823 and 0.75 ..
 {left}(475,103) .. tension 1 and 1 ..
 {up}(393,195) .. tension 1 and 1.97716 ..
 {right}(478,353) .. tension 1.57954 and 1.68112 ..
 {down}(606.315,135.421) .. tension 0.957641 and 1.02927 ..
(577,0) .. tension 1.28094 and 1.01553 ..
 {left}z1 .. tension 0.805762 and 1.37055 ..
 {up} cycle
;
fill
(470.046,250.218) .. tension 1.00346 and 2.4594 ..
 {down}(452.62,229.843) .. tension 1.59598 and 0.837748 ..
 {right}(480.884,203.579) .. tension 1 and 2.1614 ..
 {up}(494.787,224.736) .. tension 2.69079 and 1 ..
 {left} cycle
;

%%endpaths
%%beginbody



setMarkAnchor(twodotsup,z11);

savepicture:=1;
enddefchar;
defchar(qaf.fina,-1,-1,-1,-1);
%%backgroundimage:images/qaf.fina.jpg,-41.3958,-1085.23,1,0,0,1
%%beginparams
rightanchor := (520,-1);
z11 = (400,301);

%%beginverbatim

minA0 := -2;
maxA0 := 2;

x33 := - minA0 *nuqta;
x34 := - maxA0 *nuqta;


%%endverbatim

%%beginpaths

fill
liii0 ( (23.231,-38.7361), (x34,0), (x33,0) ) .. tension 0.75 and 5.5838 ..
 {right}liii0 ( (137.287,174.287), (x34,0), (x33,0) ) .. tension 1 and 1 ..
 {down}liii0 ( (147.917,155.236), (x34,0), (x33,0) ) .. tension 1.24527 and 1 ..
 {down}liii0 ( (94.963,2.8981), (x34,0), (x33,0) ) .. tension 1 and 1 ..
 {right}liii0 ( (261,-133), (x34,0), (x33,71) ) .. tension 1.08626 and 2.37807 ..
 {up}(552,-32.7454) .. tension 1 and 0.75 ..
 {left}rightanchor .. tension 0.952023 and 0.8744 ..
 {up}(393,78) .. tension 1 and 1.97716 ..
 {right}(501,248) .. tension 1.57954 and 2.03807 ..
 {down}(622.472,27.4719) .. tension 0.976677 and 1.02927 ..
(589,-104) .. tension 1.28094 and 1.01553 ..
 {left}liii0 ( (250,-235), (x34,0), (x33,71) ) .. tension 0.805762 and 1.37055 ..
 {up} cycle
;
fill
(489.569,136.38) .. tension 1.00346 and 2.4594 ..
 {down}(477.351,121.792) .. tension 1.59598 and 0.837748 ..
 {right}(491.727,106.523) .. tension 1 and 2.1614 ..
 {up}(503.893,119.579) .. tension 2.69079 and 1 ..
 {left} cycle
;

%%endpaths
%%beginbody

setMarkAnchor(twodotsup,z11);
enddefchar;
defchar(qaf.fina.expa,-1,-1,-1,-1);
%%backgroundimage:images/qaf.fina.expa.jpg,-805,-1050,1,0,0,1
%%beginparams
rightanchor := (532,-3);
z.two_dots = (390,383);
z1 = (-219,36);

%%beginverbatim




save tatweel; numeric tatweel;

maxA0 := 20;
minA0 := 0;
tatweel := maxA0*nuqta;

%%endverbatim

%%beginpaths

fill
leii0 ( z1, (-tatweel,-27.96) ) .. tension 1.23926 and 0.75 ..
 {right}leii0 ( (-209,52), (-tatweel,-10.8333) ) .. tension 2.23807 and 1 ..
leii0 ( (-170,19), (-tatweel,-8.48667) ) .. tension 1 and leii0 ( 1, 0.1 ) ..
 {right}leii0 ( (207.912,-131.088), (-1592.46,-344.353) ) .. tension 1 and 1 ..
leii0 ( (475.368,-74.016), (-46.656,-24.192) ) .. tension 1 and leii0 ( 2.01266, -0.1 ) ..
 {up}(543.477,-14.875) .. tension 0.86298 and 1.36676 ..
 {left}rightanchor .. tension 0.75 and 0.835569 ..
 {up}(364,99) .. tension 0.839744 and 3.40173 ..
 {right}(477,247) .. tension 1.02111 and 1.61702 ..
(615.2,39.3389) .. tension 0.75 and 1.281 ..
leii0 ( (526.44,-139.656), (-45.6104,-26.562) ) .. tension 1.6893 and 0.75 ..
 {left}leii0 ( (195.032,-223.488), (-1592.46,-344.353) ) .. tension leii0 ( 1.07207, 0.1 ) and 0.873173 ..
leii0 ( (-137.2,-115.4), (-tatweel,2.12597) ) .. tension 0.873173 and 0.873173 ..
leii0 ( (-204.32,-14.44), (-tatweel,-13.3333) ) .. tension 4.05368 and 2.19145 ..
 {up} cycle
;
fill
(501,107.306) .. tension 1.3519 and 1.73363 ..
 {left}(456.794,155.178) .. tension 1 and 1 ..
 {down}(436.2,130.8) .. tension 1 and 1 ..
 {right}(484.011,98.2111) .. tension 1 and 1 ..
 {up} cycle
;

%%endpaths
%%beginbody
setMarkAnchor(twodotsup,z.two_dots);


enddefchar;
defchar(qaf.isol.expa,-1,-1,-1,-1);
%%backgroundimage:images/qaf.fina.expa.jpg,-806.912,-1051.8,1,0,0,1
%%beginparams
z.mark1 = bldmvi ( (430,-237), (-55,-83) );
%%beginbody

qaf.fina.expa_(lefttatweel,righttatweel);



tr_ := tr_ shifted (0,100);

defAnchor(lowmarks,z.mark1,MarkAnchor);
defAnchor(lowmarkafterwawandreh.lowmarks.l4_kasra   ,z.mark1,MarkAnchor);

pair rightanchor;

enddefchar;
defchar(feh.isol,-1,-1,-1,-1);
%%backgroundimage:images/feh.isol.jpg,11,-1125.27,1,0,0,1
%%beginparams
z11 = leii0 ( (506,476), (0,0) );

%%beginverbatim

minA0 := -2;
maxA0 := 20;

x33 := - minA0 *nuqta;
x34 := - maxA0 *nuqta;


%%endverbatim

%%beginpaths

fill
liii0 ( (39.1667,137.5), (x34,0), (x33,0) ) .. tension 1.47376 and 2.37253 ..
 {right}liii0 ( (132.833,290.667), (x34,0), (x33,0) ) .. tension 0.75 and 2.19563 ..
 {down}liii0 ( (142,270.5), (x34,0), (x33,0) ) .. tension 2.87221 and 0.75 ..
 {down}liii0 ( (111.473,164.222), (x34,0), (x33,0) ) .. tension liii0 ( 1.20675, 0.75, 0 ) and 1.03433 ..
 {right}liii0 ( liii0 ( (343.306,65.3889), (-1913.25,-111.451), (162,36) ), (0,0), (0,0) ) .. tension 0.75 and 8.00014 ..
 {up}(681.6,148) .. tension 0.75 and 2.56 ..
 {left}(659.239,194.528) .. tension 8.22865 and 0.75 ..
 {left}(587.711,156.611) .. tension 1.62568 and 0.832524 ..
 {up}(490.6,250) .. tension 1.41144 and 1.49627 ..
 {right}(595.6,416) .. tension 2.56964 and 0.867889 ..
 {down}(732.6,172) .. tension 2.54178 and 0.849674 ..
(685.704,59.3899) .. tension liii0 ( 2.67069, 0.75, 0 ) and 0.75 ..
 {left}liii0 ( liii0 ( (308.778,-30.6389), (-1913.25,-111.451), (162,36) ), (0,0), (0,0) ) .. tension 0.888303 and liii0 ( 0.985011, 0.75, 0 ) ..
 {up} cycle
;
fill
(614.933,281.778) .. tension 1.95936 and 1 ..
 {left}(582.322,310.306) .. tension 2.13457 and 1 ..
 {down}(569.628,288.611) .. tension 1 and 1 ..
 {right}(589.461,265) .. tension 1 and 1 ..
 cycle
;

%%endpaths
%%beginbody

setMarkAnchor(onedotsup,z11);


enddefchar;
defchar(feh.isol.expa,-1,-1,-1,-1);
%%backgroundimage:images/feh.isol.expa.jpg,-412,-1108,1,0,0,1
%%beginparams
z1 = (406,-27);
z11 = (518,495);

%%beginverbatim
z2 = z1  + joinvector;

x.tat := -20* nuqta;
x.tat.min := nuqta;

lefttatweel := lefttatweel + 1.5;
%%endverbatim

%%beginpaths

fill
bldmv ( (27.36,142.24), (x.tat,0), (x.tat.min,0) ) .. tension 1.27714 and 0.75 ..
 {right}bldmv ( (51.2,163.2), (x.tat,0), (x.tat.min,0) ) .. tension 1.60971 and 1.1457 ..
bldmv ( (82.88,149.32), (x.tat,8), (x.tat.min,0) ) .. tension 1.31378 and 0.75 ..
bldmv ( (138,121), (x.tat,20), (x.tat.min,0) ) .. tension bldmvi ( 1.83538, 0.05 ) and 0.75 ..
 {right}bldmvi ( z2, (-489,-26) ) .. tension 0.75 and bldmvi ( 4.17939, 1.3 ) ..
 {up}(671,155) .. tension 1.46476 and 1.5825 ..
 {left}(652,196) .. tension 2.45775 and 0.75 ..
 {left}(573,153) .. tension 1.51896 and 1.05766 ..
 {up}(476,244) .. tension 0.75 and 3.67346 ..
 {right}(591,411) .. tension 2.02057 and 0.75 ..
 {down}(733.56,173.8) .. tension bldmvi ( 1.08501, 0.65 ) and 0.75 ..
 {left}bldmvi ( z1, (-489,-26) ) .. tension bldmvi ( 0.75, 0.05 ) and 1 ..
bldmv ( (79.0128,64.16), (x.tat,28), (x.tat.min,0) ) .. tension 1 and 1 ..
 {up} cycle
;
fill
(610,282) .. tension 1.95936 and 1 ..
 {left}(578,306) .. tension 2.13457 and 1 ..
 {down}(556,285) .. tension 1 and 1 ..
 {right}(588,264) .. tension 1 and 1 ..
 {up} cycle
;

%%endpaths
%%beginbody

setMarkAnchor(onedotsup,z11);




enddefchar;
defchar(fehshape.init,-1,-1,-1,-1);
%%backgroundimage:images/qaf.init.jpg,-2215.16,-1182.66,1,0,0,1

%%beginverbatim

%%endverbatim

%%beginpaths

fill
liii0 ( (128.339,7.3741), (-4.62963,-7.9954), (64.9352,-1.94444) ) leftjoin
liii0 ( (203.397,119.521), (-5.00463,-5.68519), (23.1574,0.944444) ) .. tension 1 and 2.17887 ..
 {up}(236.723,141.639) .. tension 0.75 and 1.94537 ..
 {left}(228.112,163.963) .. tension 5.38414 and 0.75 ..
 {left}(156.829,131.69) .. tension 0.786927 and 2.08491 ..
 {up}(86.0122,221.596) .. tension 0.962383 and 1.94228 ..
 {right}(173.617,372.93) .. tension 2.86485 and 1.2293 ..
 {down}(300,162) .. tension 0.959834 and 1 ..
liii0 ( (229.288,39.1737), (0,0), (-10,-21) ) .. tension 1 and 1.63088 ..
 cycle
;
fill
(147.063,245.785) .. tension 0.873175 and 2.02774 ..
 {right}(179.61,225.125) .. tension 1 and 2.05693 ..
 {up}(189.823,239.09) .. tension 2.16369 and 1.13985 ..
 {left}(158.915,273.033) .. tension 1.60243 and 1.41932 ..
 {down} cycle
;

%%endpaths
%%beginbody

enddefchar;
defchar(fehshape.init.beforehah,-1,-1,-1,-1);
%%backgroundimage:images/feh_hah.jpg,-1703.34,-1010.59,1,0,0,1
%%beginparams
z1 = (-188,34);

%%beginverbatim
%%backgroundimage:images/behhah.jpg,-1665.24,-1053.77,1,0,0,1
%%backgroundimage:images/feh_hah.jpg,-2070,-1005,1,0,0,1

%%endverbatim

%%beginpaths

fill
(-150.982,18.6598) .. tension 1 and 2.77061 ..
 {up}(-191,26) .. tension 0.75 and 1.07128 ..
z1 {dir hah.medi.afterbeh.dir1} .. tension 0.75 and 1.52477 ..
(-29.5249,100.055) .. tension 1.12532 and 2.2447 ..
 {up}(136.624,175.624) .. tension 3.75901 and 1.32491 ..
 {left}(124.116,197.093) .. tension 4.28107 and 0.75 ..
 {left}(61,157) .. tension 0.831576 and 2.08491 ..
 {up}(-34,249) .. tension 0.90666 and 2.70287 ..
 {right}(67,412) .. tension 1.69552 and 0.924395 ..
 {down}(188,206) .. tension 0.75 and 1.36164 ..
 {left} cycle
;
fill
(40,283) .. tension 1 and 1.46882 ..
 {right}(70,257) .. tension 1.38247 and 1.19098 ..
 {up}(91,268) .. tension 2.96303 and 1.10769 ..
 {left}(64,311) .. tension 1.60243 and 1 ..
 {down} cycle
;

%%endpaths
%%beginbody

rightbearing := hah.medi.afterbeh.width1 - currentwidth;
leftbearing := -150;

setCursiveAnchor(rtlcursive,z1, ExitAnchorRTL);

%show currentwidth;

enddefchar;
defchar(fehshape.init.beforeyeh,-1,-1,-1,-1);
%%backgroundimage:images/fehyeh.jpg,-405.204,-807.179,1,0,0,1
%%beginparams
z1 = (7,101);

%%beginpaths

fill
(20.268,344.267) .. tension 0.895824 and 2.08468 ..
 {right}(117.947,497.911) .. tension 1.76956 and 1.83281 ..
 {down}(229,302) .. tension 1.08046 and 1.08046 ..
(106.736,96) .. tension 3.74249 and 1.37974 ..
 {left}(65,87) .. tension 0.75 and 2.50453 ..
 {up}z1 .. tension 1.7336 and 1.92586 ..
(92.6749,173.938) .. tension 3.33363 and 1.11485 ..
 {up}(177.518,254.062) .. tension 1.40417 and 1.38954 ..
 {left}(164.494,288.211) .. tension 4.91627 and 0.753809 ..
 {left}(88.1638,257.48) .. tension 1 and 1.29391 ..
 {up} cycle
;
fill
(82.3673,377.95) .. tension 0.915561 and 1.38577 ..
 {right}(103.971,355.74) .. tension 1 and 1.44268 ..
 {up}(122.271,374.211) .. tension 5.6761 and 1.4191 ..
 {left}(100.079,395.48) .. tension 1.36248 and 1.24129 ..
 {down} cycle
;

%%endpaths
%%beginbody
leftbearing := 0;
rightbearing:= 60;


setCursiveAnchor(ltrcursive,z1,ExitAnchorRTL);
enddefchar;
defchar(fehshape.medi,-1,-1,-1,-1);
%%backgroundimage:images/feh.medi.jpg,-1960.45,-1219.69,1,0,0,1
%%beginparams
z1 = (216,347);
z2 = (190,250);

%%beginverbatim

%lefttatweel := lefttatweel - 0.5;
%righttatweel := righttatweel - 0.5;

%%endverbatim

%%beginpaths

fill
liii0 ( (36.0459,2.41677), (0,0), (98.46,-3.21502) ) leftjoin
liii0 ( (89.4723,106.889), (0,0), (68.5747,-4.80954) ) .. tension 1 and 1 ..
liii0 ( (188.055,151.972), (0,0), (12,4.2338) ) .. tension 0.780713 and 2.11326 ..
 {up}(225.249,193.667) .. tension 1.2515 and 1.5005 ..
 {left}z2 .. tension 4.37336 and 4.30722 ..
 {right}z1 .. tension 2.71544 and 1 ..
 {down}(282.777,228.167) .. tension 1.00284 and 1 ..
liii0 ( (222.13,96.7399), (0,0), (-11.2847,-34.7222) ) .. tension 1 and 1 ..
 cycle
;
fill
(70.9444,162.806) .. tension 1 and 2.2705 ..
 {right}z1 .. tension 5.38976 and 5.98541 ..
 {left}z2 .. tension 1 and 5.65574 ..
 {down}(128.666,192.334) .. tension 1.28385 and 1.89317 ..
liii1 ( (197.07,129.044), (0,0), (-11.8164,-0.632737) ) .. tension 1 and 1 ..
liii1 ( (281.223,103.425), (0,0), (-76.3936,-0.0950338) ) setranchor
(327.166,1.66667) rightjoinii
liii1 ( (253.059,9.94202), (0,0), (-44.4637,-10.8989) ) .. tension 1 and 1 ..
liii1 ( (133.622,65.1042), (0,0), (19.7724,-46.2963) ) .. tension 1 and 1 ..
 {up} cycle
;

%%endpaths
enddefchar;
defchar(fehshape.medi.beforeyeh,-1,-1,-1,-1);
%%backgroundimage:images/qaf_yeh.jpg,-434.447,-1258.87,1,0,0,1
%%beginparams
z1 = (291,358);
z2 = (266,260);
z3 = (-37,-51);

%%beginverbatim







%%endverbatim

%%beginpaths

fill
(196,40) .. tension 1 and 3.86999 ..
 {left}(-16,-60) .. tension 0.942277 and 1.68028 ..
 {up}z3 .. tension atleast 1.43841 ..
(71,56) .. tension 1 and atleast 1.42999 ..
(255,146) .. tension 3.13837 and 2.11505 ..
 {up}(299,191) .. tension 2.27443 and 1.11578 ..
 {left}z2 .. tension 4.71418 and 7.77195 ..
 {right}z1 .. tension 1.59002 and 0.911201 ..
 {down}(358,236) .. tension 0.811284 and 3.17615 ..
(313,114) .. tension 1 and 1 ..
 cycle
;
fill
liii1 ( (149,97), (7,-1), (39,-60) ) .. tension 1 and 1 ..
 {up}(141,150) .. tension 1 and 1 ..
(184,274) .. tension 1 and 1.58196 ..
 {right}z1 .. tension 2.54056 and 5.6745 ..
 {left}z2 .. tension 1.65835 and 3.60061 ..
 {down}(195,189) .. tension 1.93649 and 1 ..
liii1 ( (217,150), (0,0), (-8,13) ) .. tension 1 and 1 ..
liii1 ( (315,106), (0,0), (1,-14) ) setranchor
(391,0) rightjoinii
liii1 ( (220,31), (103,-32), (35,-35) ) ..
 cycle
;

%%endpaths
%%beginbody


setCursiveAnchor(ltrcursive,z3,ExitAnchorRTL);
enddefchar;
defchar(feh.fina,-1,-1,-1,-1);
%%backgroundimage:images/feh.fina.jpg,37.9816,-1111.26,1,0,0,1
%%beginparams
z11 = (674,448);

%%beginverbatim

minA0 := -2;
maxA0 := 20;

x33 := - minA0 *nuqta;
x34 := - maxA0 *nuqta;


%%endverbatim

%%beginpaths

fill
liii0 ( (54.3056,125.083), (x34,0), (x33,0) ) .. tension 1 and 2.6991 ..
 {right}liii0 ( (136.444,292.583), (x34,0), (x33,0) ) .. tension 1 and 0.75 ..
 {down}liii0 ( (154,272.111), (x34,0), (x33,0) ) .. tension 1.49403 and 1 ..
 {down}liii0 ( (124,184), (x34,0), (x33,0) ) .. tension 1.14364 and 1 ..
liii0 ( (164,116), (97.0912 + x34,-40.5563), (x33,0) ) .. tension 1 and 1.49652 ..
 {right}liii0 ( (365.556,75.8333), (-1563.41,-113.515), (163.814,20.736) ) .. tension 0.75 and 7.23208 ..
liii0 ( (577.861,103.361), (0,0), (0,0) ) .. tension 1 and 2.40003 ..
 {up}(646.222,130.167) .. tension 2.05893 and 0.804611 ..
 {up}(634,167) .. tension 1.01951 and 2.04602 ..
 {right}(786,378) .. tension 1.95949 and 1 ..
 {down}(863.681,202.142) .. tension 0.75 and 4.96348 ..
 {down}(826.356,124.611) .. tension 1 and 1 ..
(827.534,114.776) .. tension 1 and 1.42885 ..
liii1 ( (845.609,103.028), (0,0), (-42.1971,12.0563) ) setranchor
(876.077,-1.44676) rightjoinii
liii1 ( (788.666,7.20871), (0,0), (-10.8507,-10.4488) ) .. tension 2.527 and 1 ..
liii1 ( (698.907,45.141), (0,0), (1.20563,-1.20563) ) .. tension 1 and 0.989287 ..
 {left}(695.774,46.4284) .. tension 3.63682 and 2.527 ..
liii0 ( (678.472,37.5), (0,0), (0,0) ) .. tension 8.82087 and 0.913307 ..
 {left}liii0 ( (371,-29), (-1563.41,-113.515), (163.814,20.736) ) .. tension 0.878883 and 1 ..
liii0 ( (61,88), (-2647.78,-88.971), (296.525,-37.3248) ) .. tension 1 and 0.75 ..
 {up} cycle
;
fill
(790.883,196.277) .. tension 1 and 1.53763 ..
 {left}(759.536,262.828) .. tension 1.85201 and 2.93024 ..
 {down}(700.219,203.993) .. tension 1 and 2.06107 ..
 {right}(731.566,155.768) .. tension 1 and 2.57121 ..
 {up} cycle
;

%%endpaths
%%beginbody
setMarkAnchor(onedotup,z11);
enddefchar;
defchar(feh.fina.expa,-1,-1,-1,-1);
%%backgroundimage:images/feh.isol.expa.jpg,-589.167,-1168.33,1,0,0,1
%%beginparams
z11 = (674,448);

%%beginverbatim

minA0 := -3;
maxA0 := 20;

x33 := - minA0 *nuqta;
x34 := - maxA0 *nuqta;

params0 := params0 - 3;


%%endverbatim

%%beginpaths

fill
liii0 ( (-513.194,191.75), (x34,0), (x33,0) ) .. tension 1 and 0.75 ..
 {right}liii0 ( (-498.001,211.75), (x34,0), (x33,0) ) .. tension 1 and 0.75 ..
liii0 ( (-468.5,197.111), (x34,0), (x33,0) ) .. tension 1.49403 and 1 ..
liii0 ( (-421.834,157.195), (x34,0), (x33,0) ) .. tension 1.14364 and 1 ..
liii0 ( (-237.836,85.4256), (97.0912 + x34,-40.5563), (x33,0) ) .. tension 1 and 1.49652 ..
 {right}liii0 ( (132.276,55.6733), (-1563.41,-113.515), (177.814,19.736) ) .. tension 0.75 and 7.23208 ..
liii0 ( (577.861,107.528), (-8,-2), (0,0) ) .. tension 1 and 2.40003 ..
 {up}(635.389,132.667) .. tension 2.05893 and 0.804611 ..
 {up}(634,167) .. tension 1.01951 and 2.04602 ..
 {right}(802.667,368.833) .. tension 1.95949 and 1 ..
 {down}(864.514,234.642) .. tension 0.75 and 4.96348 ..
 {down}(809.689,119.611) .. tension 0.75 and 1 ..
(815.867,108.943) .. tension 1 and 1.42885 ..
liii1 ( (849.776,99.6947), (0,-6), (-51.8422,-0.964533) ) setranchor
(876.077,-1.44676) rightjoinii
liii1 ( (788.666,7.20871), (2,6), (-10.8507,-10.4488) ) .. tension 2.527 and 1 ..
liii1 ( (697.329,47.8677), (1,0), (0.241124,-4.5814) ) .. tension 1 and 0.989287 ..
 {left}(688.274,51.5171) .. tension 0.75 and 0.75 ..
liii0 ( (683.065,50.9802), (-37,-10), (0,0) ) .. tension 8.82087 and 1 ..
liii0 ( (641.529,38.1355), (-274.383,-43.0154), (0,0) ) .. tension 1 and 0.913307 ..
 {left}liii0 ( (99.147,-34.9933), (-1563.41,-113.515), (177.814,19.736) ) .. tension 1 and 1 ..
liii0 ( (-252.306,1.27778), (x34,0), (x33,0) ) .. tension 1 and 1 ..
liii0 ( (-436.075,85.1222), (x34,0), (x33,0) ) .. tension 1 and 1 ..
liii0 ( (-504.578,160.852), (x34,0), (x33,0) ) .. tension 1 and 0.75 ..
 {up} cycle
;
fill
(804.083,205.877) .. tension 1 and 1.53763 ..
 {left}(770.336,274.828) .. tension 1.85201 and 2.93024 ..
 {down}(691.819,203.993) .. tension 1 and 2.06107 ..
 {right}(723.166,161.768) .. tension 1 and 2.57121 ..
 {up} cycle
;

%%endpaths
%%beginbody
setMarkAnchor(onedotsup,z11);



enddefchar;
defchar(hah.isol,1581,-1,-1,-1);
%%backgroundimage:images/hah.fina.jpg,-4,-1285,1,0,0,1
%%beginparams
z1 = (590,332);
z2 = (835,-303);

%%beginpaths

fill
(69,-98) .. tension 1.27262 and 1.06096 ..
(139,130) .. tension 1 and 6.99314 ..
 {up}(254,253) .. tension 5.32831 and 1.84291 ..
(186,263) .. tension 0.991028 and 2.38331 ..
 {left}(83,179) .. tension 1 and 1 ..
 {up}(66,196) .. tension 2.51385 and 1.01762 ..
 {right}(213,360) .. tension 8.88517 and 0.75 ..
 {right}(443,341) .. tension 0.75 and 4.05516 ..
 {right}(568,353) .. tension 1.12316 and 1.49744 ..
 {down}z1 .. tension 1 and 1.37031 ..
(545,256) {curl1} .. tension 1.52654 and 1 ..
(392,221) .. tension 0.825647 and 0.911834 ..
 {down}(138,-75) .. tension 0.836227 and 0.917339 ..
 {right}(541,-310) .. tension 0.75 and 2.58661 ..
 {right}(809,-286) .. tension 1 and 0.75 ..
 {down}z2 .. tension 2.12628 and 2.31635 ..
(744,-344) .. tension 3.02226 and 0.902831 ..
 {left}(439,-409) .. tension 0.75 and 0.908676 ..
 {up} cycle
;

%%endpaths
%%beginbody
rightbearing := rightbearing - (x2-x1);
tr_ := tr_ shifted (0,-80);
enddefchar;
defchar(hah.init,-1,-1,-1,-1);
%%backgroundimage:images/hah.init.jpg,-618,-1056,1,0,0,1

%%beginverbatim





%%endverbatim

%%beginpaths

fill
liii0 ( (72.4722,6.61111), (51,12.5887), (78.8935,-3.87889) ) leftjoin
liii0 ( (123.132,107.405), (-4.64668,-2.49084), (-20.8225,-15.8225) ) .. tension 1 and 4.25478 ..
 {up}(202.111,137.056) .. tension 8.36088 and 1.40428 ..
 {left}(124.611,181.111) .. tension 1.07708 and 1.85268 ..
 {left}(34.2778,136.194) .. tension 0.75 and 1 ..
 {up}(11.3333,164.639) .. tension 1.74599 ..
(48.8056,227.861) .. tension 1.6654 ..
 {right}(147,286) .. tension 1.58498 and 0.888096 ..
(284.572,219.414) .. tension 1 and 1 ..
 {right}(520.944,173.333) .. tension 0.9286 ..
 {down}(538.012,148.804) .. tension 3.46819 ..
(503.528,82.9167) .. tension 3.84859 and 0.75 ..
 {left}(365.389,80.3056) .. tension 1 ..
(245.717,59.6065) .. tension 1 and 1 ..
 cycle
;

%%endpaths
enddefchar;
defchar(hah.init.ii,-1,-1,-1,-1);
%%backgroundimage:images/jeem_mad.jpg,-1952.33,-1206.33,1,0,0,1
%%beginparams
leftVerticalRatio := 20;
leftVerticalRatioNeg := 10;

%%beginverbatim





%%endverbatim

%%beginpaths

fill
bldmv ( (50,3), (-9,27), (76,13) ) leftjoin
bldmv ( (114,111), (-4.64668,-2.49084), (-16,-11) ) .. tension 1 and 0.874431 ..
 {up}(142,133) .. tension 3.06216 and 1.40428 ..
 {left}(61,176) .. tension 0.958701 and 1.85268 ..
 {left}(-56,81) .. tension 0.75 and 1 ..
 {up}(-79,95) .. tension 1.62788 and 1.59311 ..
 {right}(79,276) .. tension 1.6058 and 0.75 ..
 {right}(408,167) .. tension 1 and 1 ..
 {right}(472,165) .. tension 1 and 1 ..
 {down}(487,145) .. tension 1.34262 ..
 {left}(432,65) .. tension 3.84859 and 0.75 ..
 {left}(327,74) .. tension 1 ..
(213,56) .. tension 1 and 1 ..
 cycle
;

%%endpaths
enddefchar;
defchar(hah.init.beforemeem,-1,-1,-1,-1);
%%backgroundimage:images/hah_meem.jpg,-905,-926,1,0,0,1
%%beginparams
z1 = (54,155);

%%beginpaths

fill
(45,144) .. tension 0.75 and 1.85096 ..
 {dir hahmeem.dir.1}z1 .. tension 5.96621 and 5.25836 ..
 {up}(212,199.722) .. tension 8.26438 and 1 ..
 {left}(152.028,238.333) .. tension 0.75 and 2.23585 ..
 {left}(45.3889,215.611) .. tension 1 and 1 ..
 {up}(34,227) .. tension 2.40221 and 1.09667 ..
 {right}(190,338) .. tension 3.45516 and 1 ..
(272.972,285.833) .. tension 1 and 1.98627 ..
 {right}(590.278,172.111) .. tension 1 and 1 ..
 {down}(601,155) .. tension 3.34991 and 0.954998 ..
 {left}(546.139,92.4167) .. tension 1.63495 and 1 ..
 {left}(322.417,118.806) .. tension 0.75 and 5.13197 ..
 {left}(73.6667,100.417) .. tension 1.33992 and 1.42598 ..
 {up} cycle
;

%%endpaths
%%beginbody
leftbearing := -170;
setCursiveAnchor(rtlcursive,z1,ExitAnchorRTL);
enddefchar;
defchar(hah.init.beforeyeh,-1,-1,-1,-1);
%%backgroundimage:images/hah_yeh.jpg,-476.44,-1245.36,1,0,0,1
%%beginparams
z1 = (-29,38);

%%beginpaths

fill
z1 .. tension 1.85673 and 1.2212 ..
(154.56,220.4) .. tension 1 and 16.001 ..
 {up}(236.56,252.4) .. tension 3.74612 and 1.45979 ..
 {left}(161.56,283.4) .. tension 1.27414 and 2.23585 ..
 {left}(45.56,257.4) .. tension 1 and 1 ..
 {up}(34.5066,272.94) .. tension 2.40221 and 1.57588 ..
 {right}(157.782,401.094) .. tension 2.04653 and 1 ..
(299.56,351.4) .. tension 1 and 1.77346 ..
(582.726,303.095) .. tension 1 and 0.948517 ..
 {down}(614,283) .. tension 0.993369 and 1.8585 ..
(579.171,215.789) .. tension 2.95911 and 1 ..
(412.282,200.733) .. tension 0.833531 and 1.99657 ..
(59.7822,83.2056) .. tension 1 and 4.41281 ..
 {left}(-16.94,26.15) .. tension 0.75 and 1.09718 ..
 {up} cycle
;

%%endpaths
%%beginbody
leftanchor := z1;
setCursiveAnchor(ltrcursive,z1,ExitAnchorRTL);
enddefchar;
defchar(hah.medi,-1,-1,-1,-1);
%%backgroundimage:images/hah.medi.jpg,-1136.94,-1061.52,1,0,0,1

%%beginverbatim


%%endverbatim

%%beginpaths

fill
liii0 ( (40.3913,2.61188), (-35.3177,-10.0676), (135.317,-0.503086) ) leftjoin
liii0 ( (168.42,128.275), (-4.64668,-2.49084), (-28.3819,-37.6659) ) .. tension 1 and 4.80221 ..
 {up}(205.422,152.559) .. tension 6.36554 and 1.40428 ..
 {left}(119.985,176.828) .. tension 0.903287 and 0.75 ..
 {left}(36.7222,162.022) .. tension 0.871629 and 1 ..
 {up}(13.0934,178.444) .. tension 1.74599 ..
(52.5,239.194) .. tension 1.6654 ..
 {right}(133.028,280.722) .. tension 0.996926 and 0.75 ..
(268.255,239.023) .. tension 0.75 and 0.75 ..
 {right}(436.611,219.361) .. tension 1 ..
 {down}(491.638,198.417) .. tension 1.42837 ..
(441.31,123.772) .. tension 3.84859 and 0.75 ..
 {left}(399.444,122.444) .. tension 1 ..
liii0 ( (193.056,56.9446), (0,0), (107.542,12.0563) ) .. tension 1 and 1 ..
 cycle
;
fill
(430.361,144.084) {dir -102.958} .. tension 2.59379 and 1 ..
 {down}(427.048,115.424) .. tension 2.52088 and 0.75 ..
liii1 ( (450.796,99.8778), (152,-56), (-42.4468,4.41127) ) setranchor
(488,0) rightjoinii
liii1 ( (425.852,3.66203), (83.1026,-46.7662), (-39.3048,-3.68056) ) .. tension 1 and 1 ..
liii1 ( (384.22,19.946), (22.6659,-21.7014), (-0.964506,-10.1273) ) .. tension 1 and 0.75 ..
 {up}liii1 ( (369.417,52), (2.89352,25.0772), (0,0) ) .. tension 1 and 1.12165 ..
 {dir 82.9203}(380.345,140.641) --
 cycle
;

%%endpaths
%%beginbody
%hah.init_(lefttatweel,0);
%tr_ := tr_ shifted (0,-ypart rightanchor);
%%beginbody

enddefchar;
defchar(hah.medi.ii,-1,-1,-1,-1);
%%backgroundimage:images/hah.medi_mad.jpg,-378.616,-1003.47,1,0,0,1

%%beginverbatim




%%endverbatim

%%beginpaths

fill
bldmv ( (59.5,5.72222), (-9,27), (76,13) ) leftjoin
bldmv ( (103.5,109.972), (-4.64668,-2.49084), (36,4) ) .. tension 1 and 1.18789 ..
 {up}(134,136) .. tension 5.70423 and 1.40428 ..
 {left}(50,159) .. tension 0.934291 and 3.77863 ..
 {left}(-39,68) .. tension 0.75 and 1 ..
 {up}(-48,88) .. tension 1.29442 ..
 {right}(78,245) .. tension 2.51655 and 0.75 ..
 {right}(339,198) .. tension 0.75 and 0.75 ..
 {right}(400,201) .. tension 0.75 ..
 {down}(425.014,179.646) .. tension 1.91912 and 2.17211 ..
(393.014,108.995) .. tension 2.95349 and 0.75 ..
 {left}(347,115) .. tension 0.75 ..
(147.222,39.7778) .. tension 1 and 1 ..
 cycle
;
fill
(391,150) {dir -70.3462} .. tension 1.23656 and 0.75 ..
 {down}(387.307,111.052) .. tension 0.75 and 1.03074 ..
liii1 ( (402.246,99.6604), (8,-21), (-41,2) ) setranchor
(421,0) rightjoinii
liii1 ( (361,10.6944), (15.5,-8.69444), (-51,3) ) .. tension 1 and 1.09132 ..
 {up}(319,64) .. tension 0.75 and 2.0338 ..
 {dir 56.31}(337,148) --
 cycle
;

%%endpaths
%%beginbody

enddefchar;
defchar(hah.medi.aftersad,-1,-1,-1,-1);
%%backgroundimage:images/sadhah.jpg,-745.472,-1138.92,1,0,0,1
%%beginparams
hah.medi.aftersad.dir := 47;
z1 = (63,205);

%%beginverbatim


 
lefttatweel := lefttatweel + 0;


%%endverbatim

%%beginpaths

fill
bldmv ( (168.222,26.5833), (-23.6304,-9.15122), (59.812,14.7619) ) leftjoin
bldmv ( (122,104.5), (-4.64668,-2.49084), (-38.9551,-11.8222) ) .. tension 1 and 2.99041 ..
 {up}(140.611,115.5) .. tension 17.6157 and 1.40428 ..
 {left}(75.9167,135.694) .. tension 0.75 and 1.21457 ..
 {left}(42.0833,130.583) .. tension 0.75 and 1 ..
 {up}(24.2778,144.972) .. tension 1.74599 ..
z1 {dir hah.medi.aftersad.dir} .. tension 1.00104 ..
(205.944,202) .. tension 1.17333 and 5.05432 ..
(472.778,153.111) .. tension 1 and 1 ..
 {down}(543.5,122.917) .. tension 3.46819 ..
(495.027,66.9444) .. tension 3.84859 and 0.75 ..
 {left}(341.25,72.4444) .. tension 1.18467 ..
 cycle
;

%%endpaths
%%beginbody


setCursiveAnchor(rtlcursive,z1, EntryAnchorRTL);

enddefchar;
defchar(hah.medi.afterfeh,-1,-1,-1,-1);
%%beginbody

hah.medi.afterbeh_(lefttatweel,righttatweel);

enddefchar;
defchar(hah.medi.lam_hah,-1,-1,-1,-1);
%%beginbody


hah.medi.afterbeh_(lefttatweel,righttatweel);
enddefchar;
defchar(hah.medi.aftermeem,-1,-1,-1,-1);
%%beginbody


hah.medi.afterbeh_(lefttatweel,righttatweel);

enddefchar;
defchar(hah.medi.afterlam.beforeyeh,-1,-1,-1,-1);
%%beginbody

hah.medi.afterbeh.beforeyeh_(0,0);
enddefchar;
defchar(hah.medi.beforeyeh,-1,-1,-1,-1);
%%backgroundimage:images/hah.medi_yeh.jpg,-501.72,-1018.12,1,0,0,1

%%beginverbatim



%%endverbatim

%%beginpaths

fill
(500.28,235.12) --
(551.28,228.12) {dir -111.801} .. tension 1.11555 and 1.25692 ..
 {down}(524.28,143.12) .. tension 1.45023 and 0.75 ..
brdmv ( (557.28,108.12), (154,-67), (-41,2) ) setranchor
(613,0) rightjoinii
liii1 ( (509.28,13.12), (124,-56), (-34,5) ) ..
 {up}(461.28,90.12) .. tension 1 and 1.27072 ..
 {dir 71.1139} cycle
;

%%endpaths
%%beginbody


save pic_,ppp_;picture pic_;path ppp_[];
pic_ := image(hah.init.beforeyeh_(lefttatweel,righttatweel));
ppp_1:= pathpart currentpicture;
ppp_2:= pathpart pic_;
ppp_3:=smoothjoin(10,ppp_2, ppp_1);
currentpicture := nullpicture;fill  ppp_3;

%hah.init.beforeyeh_(lefttatweel,righttatweel);

setCursiveAnchor(ltrcursive,z1,ExitAnchorRTL);
enddefchar;
defchar(hah.fina,-1,-1,-1,-1);
%%backgroundimage:images/hah.fina.jpg,-6,-1286,1,0,0,1

%%beginverbatim


%%endverbatim

%%beginpaths

fill
(495,291) {dir -117.329} .. tension 0.801974 and 1 ..
 {down}(464,185) .. tension 1 and 0.75 ..
liii1 ( (543,134), (5,-20), (-58,-5) ) setranchor
(611,29) rightjoinii
liii1 ( (466,48), (181,-54), (-34,5) ) ..
 {up}(411,140) .. tension 1 and 1.45995 ..
 {dir 68.7611}(431,267) --
 cycle
;

%%endpaths
%%beginbody
hah.isol_(0,0);
tr_ := tr_ shifted (0,-ypart tr_ -29);
enddefchar;
defchar(dal.isol,1583,-1,-1,-1);
%%backgroundimage:images/dal.isol.2.jpg,-644.238,-1246.88,1,0,0,1

%%beginpaths

fill
liii0 ( (64.7644,78.9411), (0,0), (0,0) ) .. tension 1 and 1.83466 ..
 {right}liii0 ( (85.6255,117.247), (0,0), (6,4) ) .. tension 1.03809 and 1 ..
 {right}liii0 ( (155.987,110.524), (0,0), (2,9) ) .. tension 1 and 4.13212 ..
 {up}liii0 ( (329.209,159.774), (0,0), (-58,-5) ) .. tension 2.45993 and 1 ..
liii0 ( (211.987,303.83), (0,0), (-14,-40) ) .. tension 1 and 1.61495 ..
 {up}liii0 ( (178.709,324.858), (0,0), (-21,-33) ) .. tension 3.32475 and 0.82863 ..
 {right}liii0 ( (215.82,398.469), (0,0), (-29,-32) ) .. tension 1.47023 and 1.19247 ..
 {down}liii0 ( (382.348,178.83), (0,0), (-48,-4) ) .. tension 0.849554 and 1.9499 ..
liii0 ( (345.931,61.6911), (0,0), (-40,2) ) .. tension 2.10594 and 1 ..
 {left}liii0 ( (110.209,13.3855), (0,0), (0,0) ) .. tension 0.7731 and 1 ..
 {up} cycle
;

%%endpaths
%%beginbody

%%backgroundimage:images/dal.isol.min.jpg,-896.6,-998,1,0,0,1

enddefchar;
defchar(dal.fina,-1,-1,-1,-1);
%%backgroundimage:images/dal.fina.jpg,-94.16,-930.94,1,0,0,1
%%beginparams
rightVerticalRatio := 5;

%%beginverbatim

%%endverbatim

%%beginpaths

fill
liii0 ( (2,55), (0,0), (53,1) ) .. tension 1 and 1.70332 ..
 {right}liii0 ( (40,137), (0,0), (53,1) ) .. tension 10.1249 and 0.75 ..
 {right}liii0 ( (119,97), (0,0), (53,1) ) .. tension 0.82644 and 2.24209 ..
 {up}(335,192) .. tension 3.53511 and 1 ..
 {up}liii0 ( (297.991,417.981), (0,0), (3,-32) ) .. tension 1 and 1.0512 ..
 {right}liii0 ( (326.776,490.402), (0,0), (3,-32) ) .. tension 1.48976 and 1 ..
liii0 ( liii1 ( (357.269,431.48), (0,0), (7.2,-28.8) ), (0,0), (3,-32) ) .. tension 1 and 1 ..
liii1 ( (396.867,238.948), (-5.58184,23.2886), (-3.24059,10.0935) ) .. tension 1 and 1 ..
liii1 ( (452.906,127.315), (54.9769,-30.8642), (-27.9707,-19.2901) ) .. tension 1 and 2.74748 ..
liii1 ( (474.312,110.642), (122.562,-61.1136), (-44.0198,-22.1386) ) setranchor
(516,0) rightjoinii
liii1 ( (446.683,13.3926), (89.98,-50.7559), (-44.3673,-19.7724) ) .. tension 1.73439 and 1 ..
liii1 ( (365.619,109.953), (0,0.482253), (2.89352,-3.37577) ) .. tension 1 and 1 ..
 {left}(361,115) .. tension 1 and 1 ..
(355.234,110.823) .. tension 1 and 0.75 ..
 {left}liii0 ( (102,-5), (0,0), (53,1) ) .. tension 0.885773 and 1 ..
 {up} cycle
;

%%endpaths
%%beginbody
%show rightanchor;
enddefchar;
defchar(dal.fina.afterlam,-1,-1,-1,-1);
%%backgroundimage:images/lam_dal.jpg,-672.11,-1289.17,1,0,0,1
%%beginparams
rightVerticalRatio := 5;

%%beginverbatim

%%endverbatim

%%beginpaths

fill
(63.75,83.8333) .. tension 1 and 1.08587 ..
 {right}(113.333,149.833) .. tension 1.47707 and 0.75 ..
 {right}(161.723,126.861) .. tension 1 and 2.00438 ..
 {up}(377,209.167) .. tension 2.43722 and 1.09782 ..
 {up}(344.833,376.167) .. tension 1 and 2.12738 ..
 {right}(378.667,461) .. tension 3.33374 and 8.32259 ..
brdmv ( (430.389,290.722), (10,-32), (63,-256) ) setranchor
(548,0) rightjoinii
(404.977,114.074) .. tension 1.83275 and 0.919683 ..
 {left}(400.884,118.279) .. tension 1 and 1 ..
(392.96,114.596) .. tension 1 and 0.75 ..
 {left}(146.833,26.6667) .. tension 0.885773 and 1 ..
 {up} cycle
;

%%endpaths
%%beginbody

tr_ := tr_ shifted (0,-70);
enddefchar;
defchar(reh.isol.iii,-1,-1,-1,-1);
%%backgroundimage:images/reh.isol.ii.jpg,-1292,-1232,1,0,0,1

%%beginpaths

fill
(243,220) .. tension 1 and 1.39102 ..
 {right}(274,291) .. tension 1.98804 and 0.890725 ..
 {down}(401.421,108.579) .. tension 1.45921 and 1.0543 ..
 {left}(164,-177) .. tension 1 and 3.35548 ..
 {up}(-40.157,-143.894) .. tension 0.75 and 1 ..
 {right}(-18,-125) .. tension 1.98119 and 0.75 ..
 {right}(32,-125) .. tension 0.985421 and 1 ..
(213.843,-74) .. tension 1 and 1.9215 ..
 {up}(346,97) .. tension 1.40789 and 2.63004 ..
 {up} cycle
;

%%endpaths
%%beginbody

tr_:= tr_ shifted (0,-50);
enddefchar;
defchar(reh.isol.ii,-1,-1,-1,-1);
%%backgroundimage:images/reh.isol.jpg,-1038,-1050,1,0,0,1

%%beginpaths

fill
(210,193) .. tension 1 and 1.39102 ..
 {right}(242,276) .. tension 1.98804 and 1.0291 ..
 {down}(355.421,95.5787) .. tension 1.83058 and 0.832764 ..
 {left}(79,-201) .. tension 1 and 3.35548 ..
 {up}(-105.157,-143.894) .. tension 1.45545 and 1 ..
 {right}(-68,-119) .. tension 1.98119 and 0.75 ..
 {right}(29,-136) .. tension 0.985421 and 2.49963 ..
 {up}(292,75) .. tension 0.862309 and 2.63004 ..
 {up} cycle
;

%%endpaths
%%beginbody


enddefchar;
defchar(reh.isol,1585,-1,-1,-1);
%%backgroundimage:images/reh.isol.iii.jpg,-1300,-1117,1,0,0,1

%%beginpaths

fill
(261,193) .. tension 1 and 1.39102 ..
 {right}(294,263) .. tension 2.71223 and 0.890725 ..
 {down}(400.421,106.579) .. tension 1.45921 and 1.24159 ..
 {left}(149,-200) .. tension 1 and 3.44671 ..
 {up}(-45.157,-165.894) .. tension 0.941623 and 1 ..
 {right}(-3.53241,-136.035) .. tension 1.98119 and 0.75 ..
 {right}(44,-138) .. tension 0.985421 and 1 ..
(207.843,-84) .. tension 1 and 1.9215 ..
 {up}(342,85) .. tension 1.40789 and 2.63004 ..
 {up} cycle
;

%%endpaths
%%beginbody


enddefchar;
defchar(reh.fina,-1,-1,-1,-1);
%%backgroundimage:images/reh.fina.2.jpg,-1149,-1123.19,1,0,0,1

%%beginverbatim

%%endverbatim

%%beginpaths

fill
(-78.5,-199.5) .. tension 1 and 1 ..
 {right}(-59.1667,-186) .. tension 2.92944 and 0.75 ..
 {right}(40.6666,-196.667) .. tension 1.20626 and 1 ..
(221.882,-123.325) .. tension 1 and 1.96358 ..
 {up}(314.863,19.1761) .. tension 2.88036 and 0.914551 ..
 {up}liii1 ( (264.461,98.215), (0,0), (90,-91) ) .. tension 1 and 1.64347 ..
 {right}liii1 ( (295.069,181.539), (0,0), (90,-91) ) .. tension 0.976552 and 1 ..
liii1 ( (322.814,168.353), (0,0), (90,-91) ) .. tension 1.22707 and 1.22707 ..
liii1 ( (417.798,106.729), (14.6518,-8.83759), (-73.7847,8.68056) ) setranchor
(471,0) rightjoinii
liii1 ( (435.341,1.90815), (0.417345,0.208672), (-84.9128,-1.64962) ) .. tension 1.3584 and 1 ..
liii1 ( (393.608,13.0209), (-4.65136,1.55045), (-16.1172,-20.5476) ) .. tension 1 and 0.812666 ..
 {left}liii1 ( (384.373,15.2462), (0,0), (-5.30931,-23.0626) ) .. tension 3.87743 and 1 ..
(369.833,-24.667) .. tension 1 and 1 ..
 {left}(114.167,-260.5) .. tension 1.46627 and 1.87503 ..
 {up} cycle
;

%%endpaths
%%beginbody

enddefchar;
defchar(reh.fina.ii,-1,-1,-1,-1);
%%backgroundimage:images/reh.fina.jpg,-145.402,-1153.07,1,0,0,1

%%beginverbatim

%%endverbatim

%%beginpaths

fill
(-78.5,-199.5) .. tension 1 and 1 ..
 {right}(-59.1667,-186) .. tension 2.92944 and 0.75 ..
 {right}(40.6666,-196.667) .. tension 1.20626 and 1 ..
(235.882,-100.325) .. tension 1 and 1.96358 ..
 {up}(280.863,0.176054) .. tension 2.88036 and 0.914551 ..
 {up}(232.461,57.215) .. tension 1 and 1.64347 ..
 {right}(269.069,125.539) .. tension 1.77596 and 1 ..
(295.814,111.353) .. tension 1.22707 and 1.22707 ..
liii1 ( (333.798,98.7287), (14.6518,-8.83759), (0,0) ) setranchor
(334,0) rightjoinii
liii1 ( (333.888,0.218038), (0.417345,0.208672), (0,0) ) .. tension 1.3584 and 1 ..
 {left}(333.749,0.515546) .. tension 16.2133 and 1 ..
(297.833,-114.667) .. tension 1 and 1 ..
 {left}(114.167,-260.5) .. tension 1.46627 and 1.87503 ..
 {up} cycle
;

%%endpaths
%%beginbody

enddefchar;
defchar(reh.fina.afterbehshape,-1,-1,-1,-1);
%%backgroundimage:images/beh_rah.jpg,-225,-1190,1,0,0,1
%%beginparams
z1 = (217,221);

%%beginverbatim

y1 := 100 + lineheight;

%%endverbatim

%%beginpaths

fill
z1 .. tension 1.84563 and 1.28405 ..
 {down}(248.163,119.63) .. tension 1.50289 and 1.22737 ..
 {left}(-6,-198) .. tension 0.762382 and 5.05349 ..
 {up}(-194,-163) .. tension 0.794459 and 1 ..
 {right}(-164,-137) .. tension 2.46275 and 0.75 ..
 {right}(-100,-139) .. tension 1.0688 and 1 ..
(128,-21) .. tension 1 and 1.52002 ..
 {up}(192.756,81.863) .. tension 1.89688 and 1.89688 ..
(167.262,106.444) .. tension 0.880897 and 0.880897 ..
(144.153,143.172) .. tension 0.880897 and 1.59875 ..
 {right}(183.646,198.316) {right} .. tension 0.880897 and 0.880897 ..
 {right} cycle
;

%%endpaths
%%beginbody



setCursiveAnchor(rtlcursive,z1, EntryAnchorRTL);
enddefchar;
defchar(reh.fina.afterseen,-1,-1,-1,-1);
%%backgroundimage:images/seen_medi_reh_fina.jpg,-830,-1091,1,0,0,1
%%beginparams
z1 = (216,54);

%%beginverbatim

%%endverbatim

%%beginpaths

fill
(293,50) {down} .. tension 1.32466 and 1 ..
 {left}(58.7538,-240.875) .. tension 1.21194 and 3.91214 ..
 {up}(-108,-188) .. tension 1 and 1 ..
 {right}(-79.532,-162.361) .. tension 1.45913 and 0.75 ..
 {right}(-2.18815,-172.946) .. tension 0.849669 and 3.85828 ..
(232.37,-4.10343) {up} .. tension 1.95613 and 0.75 ..
 {up}z1 --
 cycle
;

%%endpaths
%%beginbody

setCursiveAnchor(rtcursii,z1, EntryAnchorRTL);

enddefchar;
defchar(waw.fina,-1,-1,-1,-1);
%%backgroundimage:images/waw.fina.jpg,-598.898,-1124.5,1,0,0,1
%%beginparams
z.mark1 = (321,0);

%%beginpaths

fill
(-45.7222,-184.722) .. tension 1 and 0.75 ..
 {right}(-16.7777,-164.722) .. tension 1.3102 and 0.75 ..
 {right}(53.8889,-169) .. tension 2.79522 and 0.825582 ..
(273.611,-54.1389) .. tension 1 and 2.66942 ..
 {up}(304.818,-0.173696) .. tension 3.89413 and 0.873373 ..
(291.145,1.78584) .. tension 1 and 1.0634 ..
 {up}(168.093,79.2277) .. tension 0.997936 and 1.93819 ..
 {right}(276.326,230.997) .. tension 2.58977 and 0.820856 ..
 {down}(376.917,60.1944) .. tension 1.01953 and 1.56329 ..
 {left}(124,-231.556) .. tension 0.871319 and 3.32248 ..
 {up} cycle
;
fill
(253.425,133.289) .. tension 1 and 3.84864 ..
 {down}(238.204,117.474) .. tension 1 and 2.43661 ..
 {right}(276.086,99.1182) .. tension 4.32986 and 0.75 ..
 {up}(278.719,107.421) .. tension 2.43662 and 1.07348 ..
 {left} cycle
;

%%endpaths
%%beginbody



rightanchor := z.mark1;
enddefchar;
beginchar(waw.isol,1608,-1,-1,-1);
%%backgroundimage:images/waw.isol.jpg,-718,-1070,1,0,0,1
%%beginparams
z1 = (-41,-171);
z2 = (203,127);

%%beginpaths

fill
z1 .. tension 1 and 0.75 ..
 {right}(-16.4444,-147.639) .. tension 1.3102 and 0.75 ..
 {right}(30.6111,-147.056) .. tension 1.39503 and 0.825582 ..
(294.778,-34.2778) .. tension 1 and 2.66942 ..
 {up}(348.316,64.3537) .. tension 1 and 1.80856 ..
 {left}(345,69) .. tension 6.67317 and 0.873373 ..
 {left}(279.213,32.2083) .. tension 1 and 1.37007 ..
 {up}z2 .. tension 0.997936 and 1.93819 ..
 {right}(288.102,271.801) .. tension 2.58977 and 0.820856 ..
 {down}(396,87) .. tension 1.01953 and 1.23913 ..
 {left}(147,-200) .. tension 0.887877 and 4.85883 ..
 {up} cycle
;
fill
(278.061,174.897) .. tension 1 and 3.84864 ..
 {down}(258.419,150.642) .. tension 1 and 2.43661 ..
 {right}(286.656,126.66) .. tension 4.32986 and 0.75 ..
 {up}(313,143) .. tension 2.43662 and 2.10073 ..
 {left} cycle
;

%%endpaths
%%beginbody

endchar;
beginchar(waw.isol.ii,-1,-1,-1,-1);
%%backgroundimage:images/waw.isol.ii.jpg,-695,-1086,1,0,0,1
%%beginparams
z1 = (-76,-156);
z2 = (182,185);

%%beginpaths

fill
z1 .. tension 1 and 1.16555 ..
 {right}(-49.2777,-129.306) .. tension 1.3102 and 0.75 ..
 {right}(46.9444,-137.056) .. tension 1.39503 and 0.825582 ..
(292.778,-4.27778) .. tension 1 and 9.37891 ..
 {up}(354.755,97.5687) .. tension 1 and 1.80856 ..
 {left}(352.243,102.617) .. tension 6.67317 and 0.75 ..
 {left}(281.368,70.7538) .. tension 0.979631 and 0.855043 ..
 {up}z2 .. tension 1.26805 and 1.93819 ..
 {right}(281.102,342.801) .. tension 2.58977 and 0.820856 ..
 {down}(412,112) .. tension 1.30749 and 1.56329 ..
 {left}(162.611,-200) .. tension 0.94535 and 4.85883 ..
 {up} cycle
;
fill
(277.061,236.897) .. tension 1 and 3.84864 ..
 {down}(249.419,204.642) .. tension 1 and 2.43661 ..
 {right}(279.656,179.66) .. tension 1.08692 and 0.75 ..
 {up}(312,203) .. tension 2.43662 and 1.02099 ..
 {left} cycle
;

%%endpaths
%%beginbody

endchar;
beginchar(heh.isol,1607,-1,-1,-1);
%%backgroundimage:images/heh.isol.jpg,-116,-1183,1,0,0,1

%%beginpaths

fill
(55,97) .. tension 1.20527 and 0.776444 ..
(80,191) .. tension 0.75 and 2.86287 ..
 {up}(114.535,252.023) .. tension 2.06497 and 0.906864 ..
 {up}(114,279) .. tension 8.33879 and 0.83234 ..
 {right}(169.139,353.837) .. tension 1.37019 and 1 ..
(177.624,347.411) .. tension 7.01791 and 0.75 ..
 {down}(295.376,194.539) .. tension 0.897732 and 1.13669 ..
 {left}(147,11) .. tension 1.13472 and 1 ..
 {up} cycle
;
fill
(162,220) .. tension 1.76058 and 2.14107 ..
 {down}(130,161) .. tension 1 and 1.12065 ..
 {right}(169,115) .. tension 2.03587 and 0.967137 ..
 {up}(229,148) .. tension 1.36077 and 2.63017 ..
 {left} cycle
;

%%endpaths
endchar;
defchar(heh.shape.i,-1,-1,6,-1);
%%backgroundimage:images/heh.init.2.jpg,-413.266,-1016.32,1,0,0,1
%%beginparams
z.heh.shape.i1 = (234.083,45.4444);

%%beginverbatim

%%endverbatim

%%beginpaths

fill
z.heh.shape.i1 .. tension 1 and 1 ..
 {up}(68.5278,138.139) .. tension 1 and 8.238 ..
 {up}(118.139,260.444) .. tension 4.43789 and 0.75 ..
(117.639,308.222) .. tension 1 and 1.0381 ..
 {right}(164.139,375.528) .. tension 6.81772 and 1.11113 ..
 {down}(382.528,161.917) .. tension 0.817531 and 1.6186 ..
 {left}(325.917,26.75) .. tension 1.65052 and 2.92974 ..
 cycle
;
fill
(174.556,231.972) .. tension 2.25893 and 1.14592 ..
 {down}(123.778,169.306) .. tension 1.45447 and 1 ..
 {right}(185.194,139.139) .. tension 0.868507 and 1.46318 ..
 {up}(214,156.417) .. tension 1.47077 and 1.34136 ..
 {left} cycle
;
fill
(268,198.639) .. tension 3.33504 and 3.54194 ..
 {down}(259,138.861) .. tension 2.68771 and 3.64835 ..
 {right}(325.795,115.572) .. tension 1.4814 and 0.967274 ..
 {up}(339.028,134.389) .. tension 2.80955 and 5.69699 ..
 {left} cycle
;

%%endpaths
%%beginbody
leftbearing := 0;
tr_ := identity shifted (0,-ypart llcorner currentpicture);
savepicture:=1;
enddefchar;
defchar(heh.init,-1,-1,-1,-1);
%%backgroundimage:images/heh.init.2.jpg,-400.092,-1009.47,1,0,0,1
%%beginparams
z1 = (82,18);

%%beginverbatim



%%endverbatim

%%beginpaths

fill
(159,121) --
(224,57) leftjoin
(116,100) .. tension 1 and 1 ..
 cycle
;

%%endpaths
%%beginbody
draw heh.shape.i.pic shifted z1;
enddefchar;
defchar(heh.init.beforemeem,-1,-1,-1,-1);
%%backgroundimage:images/heh.medi_meemii.fina.jpg,-414,-1081,1,0,0,1
%%beginparams
z1 = (126,143);
z2 = (-21,132);

%%beginverbatim



%%endverbatim

%%beginpaths

fill
(195,260) --
(247,203) .. tension 1 and 11.6854 ..
(-9,93) {left} .. tension 1.23304 and 0.838429 ..
 {up}(-30,109) .. tension 1 and 1 ..
z2 {dir 35} .. tension 0.976189 and 2.63787 ..
 cycle
;

%%endpaths
%%beginbody
%%endpaths
%%beginbody
draw heh.shape.i.pic shifted z1;




setCursiveAnchor(hehmeem,z2, ExitAnchorRTL);
leftbearing :=0;
rightbearing  := -0;


enddefchar;
defchar(heh.init.beforemeem.ii,-1,-1,-1,-1);
%%beginbody


hehmeem_(0,0);


cutGlyph(z1,z2,true);

i_ := 0;
path p;
for item within hehmeem.pic:
i_ := i_ + 1;
p := pathpart item;
if i_ > 1 : fill p; fi
endfor

leftanchor := z2;

enddefchar;
defchar(heh.init.beforeyeh,-1,-1,-1,-1);
%%backgroundimage:images/heh_yeh.jpg,-532,-937,1,0,0,1
%%beginparams
z1 = (128,169);
z2 = (-73,83);

%%beginverbatim



%%endverbatim

%%beginpaths

fill
(165,265) --
(265,214) .. tension 1 and 3.46401 ..
(43,110) .. tension 1.23547 and 3.74703 ..
(-49,68) {left} .. tension 0.75 and 2.16223 ..
 {up}z2 .. tension 1 and 1 ..
(-43,133) .. tension 1 and 2.63787 ..
 cycle
;

%%endpaths
%%beginbody
%%endpaths
%%beginbody
draw heh.shape.i.pic shifted z1;

setCursiveAnchor(ltrcursive,z2,ExitAnchorRTL);
enddefchar;
defchar(heh.medi,-1,-1,-1,-1);
%%backgroundimage:images/heh.medi.jpg,-499.565,-1073.94,1,0,0,1
%%beginparams
z.mark1 = (190,-299);
z1 = (263,98);

%%beginverbatim




%%endverbatim

%%beginpaths

fill
(102.137,124.878) .. tension 7.50675 and 1 ..
(119.802,179) .. tension 1 and 1.85792 ..
 {right}(255.889,342.194) .. tension 1.73641 and 1 ..
 {down}(304,245.25) .. tension 0.75 and 1.05939 ..
z1 .. tension 1 and 1 ..
(288.707,32.6111) .. tension 0.780826 and 1 ..
 {down}(322.028,-62.2778) .. tension 0.75 and 1.68374 ..
 {left}(242.166,-197.194) .. tension 1 and 1 ..
(102.632,-98.4179) .. tension 0.75 and 1.93281 ..
(81.998,-42.2658) .. tension 1.66612 and 1 ..
(72.338,-29.8997) .. tension 1 and 1 ..
(54.4946,-19.7724) .. tension 1 and 1.77726 ..
(51.9062,-2.69796) leftjoin
bldmv ( (86.2685,106.273), (0,0), (7,0) ) ..
 cycle
;
fill
(228.471,229.967) .. tension 2.53146 and 2.05652 ..
 {down}(162.778,133.405) .. tension 1 and 0.854179 ..
 {right}(172.471,122.424) .. tension 2.48174 and 1.57982 ..
 {up}(247.846,189.367) .. tension 1.31239 and 1.63357 ..
 {left} cycle
;
fill
(177.389,-23.6667) .. tension 2.49334 and 1 ..
 {down}(160.75,-37.1667) .. tension 1 and 1.14127 ..
 {right}(234.917,-87.6944) .. tension 1.1486 and 1 ..
 {up}(258.889,-79.1389) .. tension 2.69517 and 2.47355 ..
 {left} cycle
;

%%endpaths
%%beginbody

%%beginbody


z1 = rightanchor + joinvector;

setMarkAnchor(buttonmark,z.mark1);



enddefchar;
defchar(heh.medi.beforeyeh,-1,-1,-1,-1);
%%backgroundimage:images/hehmediyeh.jpg,-404,-925,1,0,0,1
%%beginparams
z.shift1 = (-10,-30);

%%beginverbatim



%%endverbatim

%%beginpaths

fill
(374.366,180.421) {dir -98.0306} .. tension 0.81848 and 1 ..
 {down}(366,127) .. tension 2.45031 and 0.75 ..
liii1 ( (413.523,102.315), (30.2,-12.6), (-67.4074,1.89352) ) setranchor
(451,-1) rightjoinii
liii1 ( (344,24), (77.8,-31.2), (-4.49074,-23.9444) ) ..
 {up}(313,69) .. tension 1 and 1.33998 ..
 {dir 73.3007}(333,184) --
 cycle
;

%%endpaths
%%beginbody

save pic_; picture pic_;pic_:= image(heh.init.beforeyeh_(0,0));
draw pic_ shifted z.shift1 ;
setCursiveAnchor(ltrcursive,z2 shifted z.shift1,ExitAnchorRTL);
enddefchar;
defchar(heh.medi.afterbehinit,-1,-1,-1,-1);
%%beginbody


behinitheh_(lefttatweel,righttatweel);

cutGlyph(z1,z2,false);

rightanchor := z2;
enddefchar;
defchar(heh.fina,-1,-1,-1,-1);
%%backgroundimage:images/heh.fina.jpg,-108.071,-1394.97,1,0,0,1
%%beginparams
rightVerticalRatio := 5;

%%beginverbatim




%%endverbatim

%%beginpaths

fill
(82.9167,99.4444) .. tension 1.57845 and 1 ..
(186.528,239.972) .. tension 1 and 8.57661 ..
 {up}(282.111,311.694) .. tension 0.910087 and 1.26952 ..
 {right}(308.194,456.556) .. tension 2.11676 and 1 ..
(361.861,271.778) .. tension 1 and 1 ..
brdmv ( (405,140), (57.8,-1.6), (-20.4167,-39.9907) ) setranchor
(474,0) rightjoinii
liii1 ( (331.167,87.1944), (173,-91.8), (-8,-9) ) .. tension 2.2753 and 2.04588 ..
 {dir liii1 ( 97.9622, 30, 0 )}(318.028,117.222) {dir -127.036} .. tension 0.975786 and 1 ..
(297.126,93.2659) .. tension 1.13506 and 0.75 ..
 {left}(194.417,49.5) .. tension 1 and 1.93603 ..
 {up} cycle
;
fill
(224.278,148.694) .. tension 1 and 0.853767 ..
 {up}(303.778,205.278) .. tension 2.96855 and 1.61784 ..
 {left}(291.506,229.492) .. tension 15.7102 and 4.57455 ..
 {down}(190.077,168.306) .. tension 1.68523 and 0.75 ..
 {right} cycle
;

%%endpaths
enddefchar;
defchar(heh.fina.afterlam,-1,-1,-1,-1);
%%backgroundimage:images/lam_heh.jpg,-18,-1208,1,0,0,1

%%beginverbatim

%%endverbatim

%%beginpaths

fill
(42.6852,65.8935) .. tension 2.28203 and 1 ..
(151.417,208.838) .. tension 1 and 3.11386 ..
(248,255) .. tension 1 and 8.57661 ..
 {up}(261.894,298.94) .. tension 0.910087 and 0.98982 ..
 {right}(294,377) .. tension 1.3808 and 1 ..
(349,212) .. tension 1 and 1 ..
brdmv ( (383,80), (194,-54), (9,-124) ) setranchor
(463,-98) rightjoinii
brdmv ( (306.375,53.2963), (213,-87), (-19,-16) ) .. tension 2.2753 and 4.07079 ..
 {left}(295,79) .. tension 1.45146 and 1 ..
(277.57,68.377) .. tension 1.13506 and 0.75 ..
 {left}(156,23) .. tension 1 and 2.69002 ..
 {up} cycle
;
fill
(206,115) .. tension 1 and 1 ..
 {up}(282,162) .. tension 0.75 and 1.22506 ..
 {left}(265.315,175.685) .. tension 2.97533 and 3.12731 ..
 {down}(166,133) .. tension 1.68523 and 1 ..
 {right} cycle
;

%%endpaths
%%beginbody


enddefchar;
defchar(sad.shape.i,-1,1,-1,-1);
%%backgroundimage:images/sad.init.jpg,-1055.01,-1136.22,1,0,0,1
%%beginparams
z.buttonmark = (502,-89);
z1 = (389.833,-0.694444);

%%beginverbatim

z2 = z1 + joinvector;
%%endverbatim

%%beginpaths

fill
(240.314,90.2756) .. tension 5.94666 and 1.70972 ..
 {right}(561.778,285.889) .. tension 1.61352 and 1 ..
 {down}(683.778,204.833) .. tension 1 and 1 ..
(605.667,64.4167) .. tension 1.72016 and 0.7597 ..
 {left}z1 .. tension 0.75 and 3.66495 ..
 {left}(270.472,18.6389) .. tension 3.46903 and 2.00876 ..
 {left}(199.889,-91.3333) .. tension 1 and 1 ..
 {up}(183.639,-46.0833) .. tension 2.77619 and 1 ..
(206.056,16.4722) .. tension 1 and 2.63618 ..
 cycle
;
fill
(529.889,191.639) .. tension 1.56433 and 9.27478 ..
 {down}(367.418,106.155) .. tension 2.37013 and 0.75 ..
 {right}z2 .. tension 0.810088 and 2.84522 ..
 {up}(602.444,160.528) .. tension 3.386 and 1 ..
 {left} cycle
;

%%endpaths
%%beginbody

leftbearing := 0;

setMarkAnchor(buttonmark,z.buttonmark);
enddefchar;
defchar(sad.shape.ii,-1,1,-1,-1);
%%backgroundimage:images/sad.isol.jpg,-321.579,-1097.01,1,0,0,1
%%beginparams
z.buttonmark = (501,-79);
z1 = (398,0);

%%beginverbatim

z2 = z1 + joinvector;
%%endverbatim

%%beginpaths

fill
(554,299) .. tension 1.46961 and 1 ..
 {down}(675,210) .. tension 1 and 1 ..
(589,56) .. tension 1.72016 and 0.7597 ..
 {left}z1 .. tension 0.75 and 1.98253 ..
 {up}(253,39) --
(252,92) .. tension 4.0054 and 2.17119 ..
 {right} cycle
;
fill
(516,196) .. tension 1.56433 and 13.2272 ..
 {down}(387,112) .. tension 1.79471 and 1.04441 ..
 {right}z2 .. tension 1.13526 and 1.39285 ..
 {up}(587,168) .. tension 2.80169 and 1 ..
 {left} cycle
;

%%endpaths
%%beginbody



setMarkAnchor(buttonmark,z.buttonmark);
enddefchar;
defchar(sad.isol,1589,-1,-1,-1);
%%backgroundimage:images/sad.isol.jpg,-321.836,-1098.44,1,0,0,1
%%beginbody
%%beginbody




sad.shape.ii_(0,0);


pair shift_;
picture pic_;

pic_ := image(
save rightanchor;pair rightanchor;
noon.fina_(0,0.5);
show rightanchor,z1;
shift_ := z1 - rightanchor;
%setCursiveAnchor(rtlcursive,z.seenreh shifted shift_, ExitAnchorRTL);
);

draw pic_ shifted shift_;


pair leftanchor;

enddefchar;
defchar(sad.init,-1,-1,-1,-1);
%%backgroundimage:images/sad.init.jpg,-1802.54,-1013.82,1,0,0,1

%%beginverbatim

%%beginparams


%%endverbatim
%%beginbody

behshape.medi.expa.ii_(lefttatweel,0);

pair shift_;
picture pic_;

pic_ := image(
sad.shape.i_(0,0);
shift_ :=  rightanchor - z1;
);


draw pic_ shifted shift_;



setMarkAnchor(onedotup,z.onedotup + (200,0));
setMarkAnchor(topmark,z.onedotup + (200,0));

pair rightanchor;

enddefchar;
defchar(sad.init.beforehah,-1,-1,-1,-1);
%%backgroundimage:images/sad_hah.jpg,-751,-989,1,0,0,1
%%beginparams
z1 = (62,198);

%%beginverbatim



%%endverbatim

%%beginpaths

fill
(57.6014,187.907) .. tension 1 and 1 ..
z1 {dir hah.medi.aftersad.dir} .. tension 2.03971 and 1 ..
(251.523,294.634) .. tension 1 and 1 ..
 {right}(302.671,333.315) .. tension 1 and 1 ..
 {right}(379.101,284.315) .. tension 4.64307 and 1.2547 ..
 {right}(601.388,428.315) .. tension 1 and 1.22205 ..
 {down}(720.832,349) .. tension 1 and 1 ..
 {left}(432.798,173) .. tension 1.01779 and 1 ..
(296,224) .. tension 1 and 3.55297 ..
 {left}(279.692,239) .. tension 2.73382 and 1 ..
(197.824,177.662) .. tension 1 and 5.35692 ..
 {up} cycle
;
fill
(636.481,304.398) .. tension 2.75033 and 1 ..
 {left}(576.875,339.699) .. tension 1.75161 and 4.08069 ..
 {down}(461.713,269.676) .. tension 1 and 1 ..
 {right}(477.338,264.467) .. tension 1 and 5.98766 ..
 {up} cycle
;

%%endpaths
%%beginbody
setCursiveAnchor(rtlcursive,z1, ExitAnchorRTL);

enddefchar;
defchar(sad.init.beforereh,-1,-1,-1,-1);
%%backgroundimage:images/sadreh.jpg,-557.18,-991.1,1,0,0,1
%%beginparams
z1 = (-81,54);

%%beginpaths

fill
z1 .. tension 1.23871 and 3.98312 ..
(-55.6106,130.623) .. tension 6.76506 and 2.503 ..
 {right}(147.802,183.415) .. tension 1 and 1 ..
 {down}(167.016,160.1) .. tension 1 and 1 ..
 {down}(166.942,131.1) .. tension 1 and 1 ..
 {right}(210.016,101.1) .. tension 1.71656 and 1 ..
 {right}(455.297,247.1) .. tension 1 and 1 ..
 {down}(590.64,171.1) .. tension 1 and 1 ..
 {left}(313.395,-24.9) .. tension 1 and 1 ..
 {left}(198.504,-17.9) .. tension 2.93381 and 1 ..
 {left}(139.091,-89.9) .. tension 1 and 1 ..
 {up}(120.03,-75.9) .. tension 1 and 1 ..
 {up}(141.996,9.4148) .. tension 3.78729 and 2.35571 ..
 {left}(101.02,76.1) .. tension 1 and 1.57616 ..
 {left}(-39.3692,35.5815) .. tension 1 and 1 ..
 {up} cycle
;
fill
(432.25,151.733) .. tension 1.11066 and 6.69681 ..
 {down}(310.537,82.613) .. tension 1 and 1 ..
 {right}(336.61,73.2133) .. tension 1 and 3.98836 ..
 {up}(502.284,126.647) .. tension 1.9665 and 0.820059 ..
 {left} cycle
;

%%endpaths
%%beginbody

setCursiveAnchor(rtcursii,z1, ExitAnchorRTL);


enddefchar;
defchar(sad.init.beforeyeh,-1,-1,-1,-1);
%%beginbody
sad.shape.ii_(0,0);


pair shift_;
picture pic_;

pic_ := image(
pair tmp_p_;
tmp_p_ = z1;
save rightanchor;pair rightanchor;clearxy;
behshape.medi.beforeyeh_(0,0.5);
show rightanchor;
shift_ := tmp_p_  - rightanchor;
setCursiveAnchor(ltrcursive,z1  shifted shift_,ExitAnchorRTL);
);

draw pic_ shifted shift_;

pair leftanchor, rightanchor;


enddefchar;
defchar(sad.medi,-1,-1,-1,-1);
%%backgroundimage:images/sad.medi.jpg,-1051,-1187,1,0,0,1
%%beginparams
z10 = (643,0);

%%beginverbatim


%%endverbatim

%%beginpaths

fill
(578,116) setranchor
z10 rightjoinii
(447,25) --
 cycle
;

%%endpaths
%%beginbody

begingroup;
clearxy;save rightanchor; pair rightanchor;
sad.init_(lefttatweel,0);
endgroup;



enddefchar;
defchar(sad.medi.beforereh,-1,-1,-1,-1);
%%beginparams
z10 = (590,0);

%%beginpaths

fill
(533,111) setranchor
z10 rightjoinii
(431,9) --
 cycle
;

%%endpaths
%%beginbody

begingroup;
clearxy;pair rightanchor;
sad.init.beforereh_(lefttatweel,0);
endgroup;

rightanchor := z10;

enddefchar;
defchar(sad.medi.beforeyeh,-1,-1,-1,-1);
%%beginparams
z10 = (680,-1);

%%beginpaths

fill
(531,108) setranchor
z10 rightjoinii
(409,40) --
 cycle
;

%%endpaths
%%beginbody

begingroup;
pair rightanchor;
sad.init.beforeyeh_(lefttatweel,0);
endgroup;

rightanchor := z10;

enddefchar;
defchar(sad.fina,-1,-1,-1,-1);
%%beginparams
z10 = (680,1);

%%beginpaths

fill
(574,111) setranchor
z10 rightjoinii
(470,21) --
 cycle
;

%%endpaths
%%beginbody

begingroup
pair rightanchor;clearxy;
sad.isol_(lefttatweel,righttatweel);
endgroup;


rightanchor := z10;

enddefchar;
defchar(ain.isol,1593,-1,-1,-1);
%%backgroundimage:images/ain.isol.jpg,-90.4213,-988.523,1,0,0,1
%%beginparams
z1 = (393,267);
z2 = (685,-367);

%%beginpaths

fill
(7,-201) .. tension 0.75 and 11.6447 ..
 {up}(90,95) .. tension 7.16777 and 1 ..
 {up}(8,193) .. tension 1.22521 and 1.04238 ..
 {right}(182,416) .. tension 1.04504 and 2.88745 ..
 {down}(307,340) .. tension 1 and 1 ..
 {left}(282,315) .. tension 2.71859 and 1 ..
 {left}(211,329) .. tension 0.897398 and 2.61311 ..
 {down}(82,256) .. tension 1.44872 and 1.24232 ..
 {right}(172,187) .. tension 2.83586 and 1.90905 ..
 {right}(372,288) .. tension 1 and 1 ..
 {down}z1 .. tension 1 and 1 ..
(371,214) .. tension 3.12995 and 1 ..
(177,80) .. tension 0.913232 and 1.11189 ..
 {down}(80,-168) .. tension 0.791555 and 1.45552 ..
 {right}(386,-358) .. tension 1.04248 and 2.76463 ..
 {right}(666,-344) .. tension 0.850486 and 1 ..
 {down}z2 .. tension 2.33905 and 1 ..
(528,-411) .. tension 1.42387 and 0.75 ..
 {left}(309,-457) .. tension 0.818379 and 0.881882 ..
 {up} cycle
;

%%endpaths
%%beginbody
rightbearing := rightbearing - (x2-x1);
enddefchar;
defchar(ain.init,-1,-1,-1,-1);
%%backgroundimage:images/ain.init.jpg,-856.73,-1049.73,1,0,0,1
%%beginparams
leftVerticalRatioNeg := 10;

%%beginverbatim



%%endverbatim

%%beginpaths

fill
(147,53.9444) .. tension 1.24055 and 1 ..
 {up}(55.6111,165.5) .. tension 1.73998 and 1.11379 ..
 {right}(206.528,357.722) .. tension 0.901607 and 4.12173 ..
 {down}(354.833,277.361) .. tension 0.789926 and 1.11772 ..
 {left}(327.194,252.583) .. tension 4.45537 and 0.75 ..
 {left}(221.167,279.556) .. tension 1.23636 and 1.9472 ..
 {down}(127.944,206.25) .. tension 1.80938 and 1 ..
 {right}(301.722,108.944) --
 cycle
;
fill
(348.139,171.444) .. tension 1 and 6.06567 ..
 {right}(408.75,201.556) .. tension 1 and 1 ..
 {down}(425.639,186.083) .. tension 1.38046 and 1 ..
(393.674,126.458) .. tension 1 and 0.75 ..
(344.778,92.2222) ..
(110.778,9.61111) leftjoin
(212.417,119.306) ..
 cycle
;

%%endpaths
%%beginbody

enddefchar;
defchar(ain.init.beforeyeh,-1,-1,-1,-1);
%%backgroundimage:images/ain_yeh.jpg,-446.319,-1001.21,1,0,0,1
%%beginparams
z1 = (2,-4);

%%beginpaths

fill
(7.8507,29.749) .. tension 1 and 6.56868 ..
 {up}(138.017,149.082) .. tension 2.33663 and 0.89894 ..
 {up}(105.851,225.249) .. tension 1.86893 and 1.05577 ..
 {right}(265.851,425.249) .. tension 1.12744 and 3.97061 ..
 {down}(407.184,356.249) .. tension 1.27169 and 0.864138 ..
 {left}(383.517,328.416) .. tension 3.04845 and 1 ..
 {left}(336.184,341.916) .. tension 1.27133 and 2.35477 ..
 {down}(184.517,276.249) .. tension 1.55055 and 1 ..
(259.103,205) .. tension 1.28686 and 1.10548 ..
 {right}(485.684,275.249) .. tension 1 and 1 ..
 {down}(499,252) .. tension 1.81594 and 1.21257 ..
(446.517,181.583) .. tension 2.65581 and 1.98466 ..
(101.833,35.5) .. tension 3.96756 and 2.31048 ..
(9.01077,-9.01771) {left} .. tension 1 and 1 ..
 {up}z1 .. tension 1 and 1 ..
 cycle
;

%%endpaths
%%beginbody
leftbearing := 0;

setCursiveAnchor(ltrcursive,z1,ExitAnchorRTL);

enddefchar;
defchar(ain.init.finjani,-1,-1,-1,-1);
%%backgroundimage:images/ain.init.finjani.jpg,-1260.23,-1082.86,1,0,0,1
%%beginparams
leftanchor = (17,0);

%%beginpaths

fill
(-20.0973,146.722) .. tension 1.35023 and 1.20085 ..
 {right}(147.861,348.251) .. tension 1 and 1.86341 ..
 {down}(281.972,267.111) .. tension 1.78319 and 0.932964 ..
 {left}(261.334,246.167) .. tension 1.92488 and 1 ..
 {left}(183.111,271) .. tension 1 and 3.03694 ..
 {down}(56.2057,191.552) .. tension 1.26398 and 2.17791 ..
 {right}(137.556,110.472) .. tension 1.30309 and 1 ..
(292.055,175.139) .. tension 1 and 1 ..
 {right}(335.806,198.75) .. tension 1 and 1 ..
 {down}(350,185) .. tension 1 and 1.89368 ..
 {left}leftanchor .. tension 6.53841 and 0.75 ..
 {up} cycle
;

%%endpaths
enddefchar;
defchar(ain.medi,-1,-1,-1,-1);
%%backgroundimage:images/ain.medi.jpg,-771.295,-898.5,1,0,0,1
%%beginparams
z1 = (50,141);
z2 = (314,183);

%%beginverbatim

%%endverbatim

%%beginpaths

fill
bldmv ( (40.1443,1.53241), (-12.0355,5.83719), (77.3171,-1.46142) ) leftjoin
bldmv ( (110,106), (-13,8), (41.5177,4.84336) ) .. tension 1 and 7.17275 ..
 {right}(238,220) .. tension 1.57103 and 1.20848 ..
 {down}z2 .. tension 1.63683 and 1.12253 ..
 cycle
;
fill
brdmv ( (85.7184,150.204), (6,15), (0,0) ) .. tension 1 and 1 ..
 {left}z1 .. tension 6.14884 and 2.56634 ..
 {right}(122,250) .. tension 10000 and 3.53521 ..
(144,236) .. tension 1 and 1 ..
brdmv ( (251.255,133.518), (19,15), (0,0) ) setranchor
(336,0) rightjoinii
brdmv ( (161.192,76.5031), (63,30), (-27,12) ) .. tension 1 and 1.7415 ..
 {left} cycle
;
fill
z1 .. tension 0.75 and 1.48739 ..
 {up}(33.7662,155.568) .. tension 1.52712 and 1.01546 ..
(97.3048,244.355) .. tension 1.28267 and 0.75 ..
 {right}(183.411,264.568) .. tension 1 and 1 ..
(273.163,246.639) .. tension 1 and 1 ..
 {down}z2 .. tension 1.60809 and 1.60897 ..
 {left}(116.967,179.453) .. tension 1.59872 and 0.75 ..
 {left} cycle
;

%%endpaths
%%beginbody
show rightanchor;
enddefchar;
defchar(ain.medi.beforeyeh,-1,-1,-1,-1);
%%backgroundimage:images/ain.medi_yeh.jpg,-514,-1101,1,0,0,1
%%beginparams
z1 = (45,151);
z2 = (320,195);
z3 = (-114,-33);

%%beginverbatim


%%endverbatim

%%beginpaths

fill
(127.588,46.2068) .. tension 1 and 3.59054 ..
(-86.3256,-44.4113) {left} .. tension 1 and 1.04235 ..
 {up}z3 .. tension 1.73365 and 1 ..
(100.887,107.542) .. tension 1 and 6.06965 ..
 {right}(298.622,214.559) .. tension 1.57103 and 1.20848 ..
 {down}z2 .. tension 1.57758 and 1.12253 ..
 cycle
;
fill
liii1 ( (142.142,134.29), (-7.50309,1.97917), (0,0) ) .. tension 1 and 1 ..
 {left}(75.7531,164.448) .. tension 1 and 1 ..
 {left}z1 .. tension 6.14884 and 2.56634 ..
 {right}(122,250) .. tension 0.75 and 3.53521 ..
(171.488,236.964) .. tension 1 and 1 ..
liii1 ( (257.524,133.035), (35.3966,11.142), (-13.0208,-8.1983) ) setranchor
(336,-1) rightjoinii
liii1 ( (200.737,74.5741), (129.069,-42.338), (-27,12) ) ..
 cycle
;
fill
z1 .. tension 0.75 and 1.48739 ..
 {up}(31.8372,166.177) .. tension 2.78235 and 1.01546 ..
(92.9645,251.106) .. tension 1.28267 and 0.75 ..
 {right}(195.468,290.61) .. tension 1 and 1 ..
(275.574,267.376) .. tension 1 and 1 ..
 {down}z2 .. tension 3.20657 and 1.60809 ..
(200.772,140.027) {left} .. tension 1.60897 and 1.60897 ..
 {left}(98.159,189.098) .. tension 1.59872 and 14.3981 ..
 {left} cycle
;

%%endpaths
%%beginbody
leftbearing := 0;

setCursiveAnchor(ltrcursive,z3,ExitAnchorRTL);
enddefchar;
defchar(ain.fina,-1,-1,-1,-1);
%%backgroundimage:images/ain.fina.jpg,-9.4405,-1152.47,1,0,0,1

%%beginverbatim

%%endverbatim

%%beginpaths

fill
(421,-488) .. tension 0.75 and 0.786982 ..
 {up}(84,-193) .. tension 0.75 and 10.8788 ..
 {up}(202.624,126.482) .. tension 2.67669 and 1.53137 ..
 {left}(165.142,143.482) .. tension 0.75 and 1 ..
 {left}(129,132) .. tension 1 and 2.46877 ..
 {up}(120,140.823) .. tension 1.41534 and 1 ..
 {right}(279,274) .. tension 1 and 1.38908 ..
 {down}(392,187) .. tension 0.75 and 3.32415 ..
 {down}brdmv ( (351,117), (14,12), (0,0) ) setranchor
(397,0) rightjoinii
(263,68) {left} .. tension 3.2448 and 0.893446 ..
 {down}(148,-188) .. tension 1 and 0.785103 ..
 {right}(473,-397) .. tension 1 and 4.60106 ..
 {right}(731,-389) .. tension 0.75 and 1 ..
 {down}(743.579,-405.157) .. tension 2.46331 and 1.41541 ..
 {left} cycle
;

%%endpaths
%%beginbody

enddefchar;
defchar(tah.isol,1591,-1,-1,-1);
%%backgroundimage:images/tah.isol.jpg,-14.6301,-803.99,1,0,0,1
%%beginparams
z.mark1 = (708,511);
z1 = (392,-19);

%%beginverbatim


z2 = z1 + joinvector;

%%endverbatim

%%beginpaths

fill
(0,88) .. tension 0.755917 and 1.15117 ..
 {right}(18.0555,111.805) .. tension 1.98294 and 1.53548 ..
(67.0834,97.7223) .. tension 0.846072 and 1.21526 ..
 {right}(265.611,68.6944) .. tension 10.1696 and 1.90969 ..
 {right}(606.553,281.34) .. tension 0.761717 and 2.54062 ..
 {down}(731,197) .. tension 1.12803 and 1.32194 ..
 {left}z1 .. tension 0.912587 and 0.912587 ..
(107,14) .. tension 3.10445 and 3.10445 ..
 {up} cycle
;
fill
(563.908,196.213) .. tension 1.98843 and 6.56415 ..
 {down}(401.941,85.311) .. tension 1.5517 and 1 ..
 {right}z2 .. tension 0.946512 and 4.02426 ..
 {up}(654.39,157.376) .. tension 1.55556 and 1 ..
 {left} cycle
;
fill
(320,90) .. tension 18.59 and 1 ..
 {up}(345,190) .. tension 1 and 13.5922 ..
 {up}(306,569) .. tension 2.4198 and 1 ..
 {up}(281,631) .. tension 2.4704 and 2.32184 ..
 {right}(334,747) .. tension 1.01926 and 1 ..
 {down}(354,733) .. tension 1.76904 and 1 ..
(380,646) .. tension 0.75 and 1.00822 ..
 {down}(393,625) .. tension 1.4526 and 2.55197 ..
 {down}(365,554) .. tension 3.81741 and 1 ..
 {down}(397,272) .. tension 1 and 1.64557 ..
(383,127) --
 cycle
;

%%endpaths
%%beginbody

setMarkAnchor(topmark,z.mark1);
enddefchar;
defchar(tah.init,-1,-1,-1,-1);
%%backgroundimage:images/tah.medi.jpg,-945,-1262,1,0,0,1

%%beginverbatim


%%endverbatim

%%beginpaths

fill
bldmv ( (119,10.5), (5,-4), (0,0) ) leftjoin
bldmv ( (201,113.333), (0,0), (0,0) ) ..
bldmv ( (316.333,153.167), (22,24), (0,0) ) .. tension 0.75 and 4.68442 ..
 {up}bldmv ( (344.333,178.5), (7,26), (0,0) ) .. tension 3.42809 and 1 ..
 {left}bldmv ( (266.333,206.167), (22,24), (0,0) ) .. tension 2.16079 and 1 ..
bldmv ( (129.333,91.6667), (-25,-22), (0,0) ) --
bldmv ( (29.6667,78.3333), (-20,-29), (0,0) ) .. tension 3.97137 and bldmvi ( 1.8993, -0.2 ) ..
 {right}bldmv ( (305,297.5), (22,24), (0,0) ) .. tension 0.75 and 1.9428 ..
 {down}bldmv ( (429.167,236), (22,24), (0,0) ) .. tension 0.974792 and 0.906953 ..
 cycle
;
fill
(121.667,132.5) .. tension 1.15287 and 2.27615 ..
 {up}(127.833,224.667) .. tension 2.89756 and 1.54613 ..
(112.833,378.167) .. tension 1.36479 and 6.42089 ..
(97.6667,523) .. tension 1.76189 and 1.89014 ..
 {up}(80.3333,561.833) .. tension 2.4704 and 1.84469 ..
 {right}(137.5,678) .. tension 1.01926 and 1 ..
(154.833,652.333) .. tension 1.76904 and 1 ..
(166.667,610.333) .. tension 0.75 and 1.49954 ..
 {down}(192.167,582.333) .. tension 0.75 and 1.82087 ..
 {down}(166,494) .. tension 8.031 and 11.2299 ..
 {down}(186.5,265.5) .. tension 1.64526 and 7.76985 ..
(178.333,159.667) --
 cycle
;

%%endpaths
enddefchar;
defchar(tah.init.beforeyeh,-1,-1,-1,-1);
%%backgroundimage:images/tah.medi_yeh.jpg,-345,-975,1,0,0,1
%%beginparams
z1 = (54,-73);

%%beginverbatim



%%endverbatim

%%beginpaths

fill
z1 .. tension 1.15287 and 1.43568 ..
(293,133) .. tension 1.46675 and 0.956207 ..
 {up}(305,212) .. tension 2.89756 and 1.54613 ..
(289,315) .. tension 1.36479 and 6.42089 ..
(262,546) .. tension 1.76189 and 0.946846 ..
 {up}(240,599) .. tension 2.4704 and 2.09498 ..
 {right}(295,695) .. tension 1.01926 and 0.866448 ..
 {down}(315,680) .. tension 1.76904 and 1 ..
(323,634) .. tension 0.917007 and 1.37458 ..
 {down}(356,606) .. tension 1.48383 and 1.76249 ..
 {down}(332,538) .. tension 8.031 and 1.52358 ..
(362,297) .. tension 0.858378 and 5.05602 ..
 {right}(379,212) .. tension 2.43725 and 1 ..
 {right}(498,267) .. tension 1.23312 and 1.56905 ..
 {down}(609,203) .. tension 0.951904 and 1 ..
(329.319,2.58873) .. tension 1 and 1 ..
(163,-30) .. tension 1 and 1.69552 ..
 {left}(75,-82) .. tension 1 and 1 ..
 {up} cycle
;
fill
(537,151) .. tension 3.64677 and 1 ..
 {left}(456,187) .. tension 1.8062 and 3.98117 ..
 {down}(335.823,104.305) .. tension 1 and 1 ..
 {right}(345.305,99.6806) .. tension 1 and 5.24972 ..
 {up} cycle
;

%%endpaths
%%beginbody

setCursiveAnchor(ltrcursive,z1,ExitAnchorRTL);

enddefchar;
defchar(tah.medi,-1,-1,-1,-1);
%%backgroundimage:images/tah.medi.jpg,-946,-1260,1,0,0,1

%%beginverbatim

%%endverbatim

%%beginpaths

fill
(194,92) setranchor
(226,0) rightjoinii
(123,9) .. tension 2.50796 and 3.06571 ..
 cycle
;

%%endpaths
%%beginbody

tah.init_(lefttatweel,righttatweel);




enddefchar;
defchar(tah.medi.beforeyeh,-1,-1,-1,-1);
%%backgroundimage:images/tah.medi_yeh.jpg,-345,-975,1,0,0,1

%%beginverbatim



%%endverbatim

%%beginpaths

fill
(355,32) link
(409.619,1.0682) .. tension atleast 1 ..
 cycle
;

%%endpaths
%%beginbody


draw image(tah.init.beforeyeh_(lefttatweel,righttatweel);) shifted (0,-5);

enddefchar;
defchar(tah.fina,-1,-1,-1,-1);
%%backgroundimage:images/tah.fina.jpg,45.6,-1202.8,1,0,0,1
%%beginparams
z.mark1 = (710,530);

%%beginverbatim
z2 = z1 + joinvector;
%%endverbatim

%%beginpaths

fill
(99.4,102.8) .. tension 0.755917 and 1.15117 ..
 {right}(118.122,132.438) .. tension 1.98294 and 1.53548 ..
(233.483,113.522) .. tension 0.846072 and 1.21526 ..
 {right}(317.844,103.494) .. tension 10.1696 and 1 ..
 {up}(397.733,180.3) .. tension 1 and 1 ..
 {up}(371.067,571.133) .. tension 1 and 1 ..
 {up}(344.4,642.8) .. tension 1 and 2.20941 ..
 {right}(408.567,760.3) .. tension 1 and 1 ..
(431.067,696.967) .. tension 1 and 1 ..
 {down}(469.4,645.3) .. tension 0.75 and 1 ..
 {down}(439.4,574.467) .. tension 13.3091 and 23.8107 ..
 {right}(472.733,226.133) .. tension 3.73923 and 1 ..
(495.233,251.967) .. tension 1 and 1.90969 ..
 {right}(591.286,309.14) .. tension 0.963056 and 1.87563 ..
 {down}(735.4,223.8) .. tension 0.75 and 41.6093 ..
(673.831,98) setranchor
(658,0) rightjoinii
(623.496,2.77505) .. tension 2.93746 and 2.43707 ..
 {left}(583.043,7.55441) .. tension 4.87334 and 1 ..
 {left}(397.327,-0.114817) .. tension 1 and 1 ..
(270.667,9.16667) .. tension 1 and 0.912587 ..
(151.3,67.6333) .. tension 3.10445 and 2.31214 ..
 {up} cycle
;
fill
(573.808,219.013) .. tension 2.40726 and 4.31127 ..
 {down}(441.841,118.944) .. tension 1.5517 and 1 ..
 {right}(460.4,111.467) .. tension 0.979354 and 5.51176 ..
 {up}(637.79,176.176) .. tension 1.55556 and 1.90161 ..
 {left} cycle
;

%%endpaths
%%beginbody



enddefchar;
defchar(yeh.shape.i,-1,-1,6,-1);
%%backgroundimage:images/yeh.isol.jpg,-48,-1134,1,0,0,1
%%beginparams
z.yeh.shape.i.1 = (540,99);

%%beginverbatim

z.yeh.shape.i.2 = z.yeh.shape.i.1 + behshape.medi.beforeyeh.p1 ;

minA0 := -2;
maxA0 := 2;

x33 := -minA0 *nuqta;
x34 := -maxA0 *nuqta;

%%endverbatim

%%beginpaths

fill
z.yeh.shape.i.1 .. tension 1.84145 and 1 ..
(508.639,105.518) .. tension 1 and 1 ..
 {up}liii0 ( (361,205), (0,0), (0,0) ) .. tension 1 and 2.19609 ..
 {right}liii0 ( (583.305,519.894), (0,0), (-36,-113) ) .. tension 1.08196 and 9.18809 ..
 {down}liii0 ( (648,452), (0,0), (-36,-113) ) .. tension 1.24106 and 2.58028 ..
 {left}liii0 ( (617,374), (0,0), (-36,-113) ) .. tension 0.862877 and 1 ..
 {left}liii0 ( (558,418), (0,0), (-36,-113) ) .. tension 2.15632 and 1.89965 ..
 {down}liii0 ( (419,266), (0,0), (0,0) ) .. tension 1 and 1 ..
 {right}(517,199) .. tension 0.882164 and 1 ..
 {right}(573,202) .. tension 1.2704 and 1.15802 ..
 {down}z.yeh.shape.i.2 .. tension 4.33099 and 3.90181 ..
 {up} cycle
;

%%endpaths
%%beginbody
leftbearing := 0;
enddefchar;
defchar(yeh.shape.ii,-1,-1,6,-1);
%%backgroundimage:images/yeh.fina.jpg,52.1667,-840.22,1,0,0,1
%%beginparams
z.yeh.shape.ii.1 = (602,-122);

%%beginverbatim

z.yeh.shape.ii.2= z.yeh.shape.ii.1 + behshape.medi.beforeyeh.p1;



%%endverbatim

%%beginpaths

fill
z.yeh.shape.ii.1 .. tension 4.3658 and 1.86562 ..
 {up}(438,-66) .. tension 1 and 2.19609 ..
(548,54) link
(732,0) .. tension 0.833804 and 4.78479 ..
(701,0) .. tension 1.24106 and 4.62838 ..
 {down}(535,-19) .. tension 3.47862 and 1.50959 ..
 {down}z.yeh.shape.ii.2 .. tension 4.81083 and 4.00538 ..
 {up} cycle
;

%%endpaths
%%beginbody
leftbearing := 0;
enddefchar;
defchar(yehshape.fina.ii,-1,-1,-1,-1);
%%backgroundimage:images/yehshape.fina.ii.jpg,-60,-932,1,0,0,1
%%beginparams
z1 = (349,30);
z4 = (98,68); % z3
z5 = (524,-22);

%%beginverbatim

z2 = z5 + behshape.medi.beforeyeh.p1;
z3 = z1 + z4;

minA0 := -2;
maxA0 := 2;

x33 := -minA0 *nuqta;
x34 := -maxA0 *nuqta;

%%endverbatim

%%beginpaths

fill
liii0 ( (22,-35), (x34,0), (x33,0) ) .. tension 1.15253 and 2.73859 ..
 {right}liii0 ( (133.417,186.083), (x34,0), (x33,0) ) .. tension 1 and 1 ..
 {down}liii0 ( (149.547,168.464), (x34,0), (x33,0) ) .. tension 2.78482 and 1 ..
 {down}liii0 ( (89.3198,30.6297), (x34,0), (x33,0) ) .. tension 1 and 0.915494 ..
 {right}liii0 ( (268.641,-110.034), (115 + x34,6), (-139 + x33,66) ) .. tension 1.09661 and 6.40317 ..
 {up}z5 .. tension 1.03121 and 1 ..
(510.025,-6.82217) .. tension 2.35499 and 2.16529 ..
 {up}z1 .. tension 10.1756 and 1.97052 ..
 {right}z3 .. tension 1.39519 and 1.43919 ..
(576.398,76.023) .. tension 1 and 1 ..
 {down}z2 .. tension 1.40985 and 1.14232 ..
 {left}liii0 ( (255,-205), (115 + x34,6), (-139 + x33,66) ) .. tension 0.907684 and 1 ..
 {up} cycle
;

%%endpaths
%%beginbody
rightbearing := x1 - x2;
setCursiveAnchor(ltrcursive,z1,EntryAnchorRTL);
tr_ := tr_ shifted(0,0 -y1);
%show rightbearing;
enddefchar;
defchar(yehshape.fina.afterbeh,-1,-1,-1,-1);
%%beginbody


yehshape.fina.ii_(lefttatweel,righttatweel);

cutGlyph(z5,z2,false);


setCursiveAnchor(ltrcursive,z5,EntryAnchorRTL);

show y5;

tr_ := tr_ shifted(0,behshape_medi_beforeyeh_y-y5 - ypart tr_);

enddefchar;
defchar(alefmaksura.isol,1609,-1,-1,-1);
%%backgroundimage:images/yeh.isol.jpg,-63,-1017,1,0,0,1
%%beginbody
yehshape.fina.afterbeh_(lefttatweel,righttatweel);

pair shift_;
picture pic_;

pic_ := image(
yeh.shape.i_(lefttatweel,righttatweel);
shift_ := z5 - z.yeh.shape.i.1;
);

draw pic_ shifted shift_;
rightbearing := 0;

tr_ := tr_ shifted(0,y1- ypart tr_);

enddefchar;
defchar(yehshape.isol,1610,-1,-1,-1);
%%beginbody
alefmaksura.isol_(lefttatweel,righttatweel);

enddefchar;
beginchar(yehshape.fina,-1,-1,-1,-1);
%%backgroundimage:images/yeh.fina.jpg,75,-1047,1,0,0,1
%%beginbody
yehshape.fina.afterbeh_(0,0);

pair shift_;
picture pic_;

pic_ := image(
yeh.shape.ii_(0,righttatweel);
shift_ := z5 - z.yeh.shape.ii.1;
);

draw pic_ shifted shift_;
rightanchor := rightanchor shifted shift_;;


tr_ := tr_ shifted (0, -ypart rightanchor -ypart tr_);

endchar;
defchar(kaf.isol,1603,-1,-1,-1);
%%backgroundimage:images/kaf.isol.jpg,-25.352,-1139.87,1,0,0,1

%%beginpaths

fill
(58,34.8889) .. tension 1.17418 and 3.62471 ..
 {right}(93.5556,94.1944) .. tension 2.13621 and 0.75 ..
 {right}(249.667,80.5) .. tension 1.3288 and 7.2236 ..
 {dir 46.8482}(556.611,126.389) .. tension 8.8998 and 5.58424 ..
 {up}(520.222,537.333) .. tension 1 and 0.75 ..
 {up}(499.528,618.194) .. tension 1.36139 and 1.97686 ..
 {right}(561,735) .. tension 1.25053 and 1 ..
(581.25,660.028) .. tension 1 and 1 ..
 {down}(616.111,619.583) .. tension 4.95188 and 4.95188 ..
 {down}(594,533) .. tension 13.1647 and 9.07035 ..
 {down}(627.639,169.444) .. tension 2.3187 and 1.16671 ..
 {dir -138.495}(570.25,25.25) .. tension 6.29314 and 1 ..
 {left}(136.778,-22.7778) .. tension 1 and 1 ..
 {up} cycle
;
fill
(157.778,241.523) .. tension 1.6784 and 0.75 ..
 {right}(178.935,260.102) .. tension 4.85985 and 3.35779 ..
 {up}(289.343,252.907) .. tension 4.18107 and 1.23565 ..
 {up}(230.074,302.644) .. tension 1 and 2.9092 ..
 {right}(360.907,477.481) .. tension 1 and 2.20322 ..
 {down}(426.199,437.704) .. tension 2.69063 and 1.8647 ..
 {left}(375.13,367.477) .. tension 1 and 1 ..
 {left}(328.255,377.315) .. tension 1 and 4.81582 ..
 {down}(318.171,371.907) .. tension 1.77838 and 0.864728 ..
 {down}(390.755,297.653) .. tension 1.06986 and 1.99314 ..
 {left}(288.176,180.273) .. tension 1 and 2.03546 ..
 {up} cycle
;

%%endpaths
%%beginbody

enddefchar;
defchar(kaf.init,-1,-1,-1,-1);
%%backgroundimage:images/kaf.init.jpg,-1318.59,-1096.9,1,0,0,1
%%beginparams
z1 = (354,167);

%%beginverbatim

if not known x.kafpos : x.kafpos := 0; fi
if not known y.kafpos : y.kafpos := 0; fi
if not known x.kafpos2 : x.kafpos2 := 0; fi
if not known y.kafpos2 : y.kafpos2 := 0; fi

%%endverbatim

%%beginpaths

fill
((536.061,870) + z.kafpos) {right} .. tension 0.75 and 1 ..
 {down}((546.461,851.6) + z.kafpos) .. tension 1 and 2.54535 ..
((517.461,784.8) + z.kafpos) .. tension 9.18768 and 3.67959 ..
 {down}(84.2608,558.6) .. tension 6.25338 and 0.946181 ..
 {down}z1 .. tension 0.857029 and 1 ..
bldmv ( (273.061,19.4), (0,0), (2,-8) ) leftjoin
bldmv ( (252.061,117.4), (0,0), (15,-4) ) .. tension 1 and 1 ..
 {up}(300.461,153.4) .. tension 1.67402 and 5.60646 ..
(264.861,229) .. tension 2.28057 and 3.04053 ..
(93.0608,408.8) .. tension 2.52601 and 1.16312 ..
 {up}(3.6608,472.2) .. tension 1 and 1.21903 ..
((93.2608,678.6) + z.kafpos2) .. tension 1.59171 and 6.74681 ..
 cycle
;

%%endpaths
%%beginbody

rightbearing := -(xpart (urcorner currentpicture) - x1); 

enddefchar;
defchar(kaf.init.short,-1,-1,-1,-1);
%%backgroundimage:images/kaf.init.short.jpg,-1685.06,-1275.27,1,0,0,1
%%beginparams
z1 = (372,168);

%%beginverbatim

if not known x.kafpos : x.kafpos := 0; fi
if not known y.kafpos : y.kafpos := 0; fi
if not known x.kafpos2 : x.kafpos2 := 0; fi
if not known y.kafpos2 : y.kafpos2 := 0; fi

%%endverbatim

%%beginpaths

fill
((450.936,844.272) + z.kafpos) {right} .. tension 0.75 and 1 ..
 {down}((470.336,826.872) + z.kafpos) .. tension 1 and 2.54535 ..
((436.336,750.072) + z.kafpos) .. tension 9.18768 and 3.67959 ..
 {down}(89.136,566.872) .. tension 6.25338 and 0.946181 ..
 {down}z1 .. tension 0.857029 and 1 ..
bldmv ( (278.936,17.672), (0,0), (2,-8) ) leftjoin
bldmv ( (257.936,115.672), (0,0), (13,-6) ) .. tension 1 and 1 ..
 {up}(306.336,151.672) .. tension 1.67402 and 5.60646 ..
(270.736,227.272) .. tension 2.28057 and 1.87672 ..
 {left}(117.936,404.272) .. tension 1 and 0.75 ..
 {left}(89.936,400.072) .. tension 2.52601 and 1.16312 ..
 {up}(3.536,483.472) .. tension 1 and 1.21903 ..
((99.136,676.872) + z.kafpos2) .. tension 1.59171 and 6.74681 ..
 cycle
;

%%endpaths
%%beginbody

rightbearing := -(xpart (urcorner currentpicture) - x1); 

enddefchar;
defchar(kaf.init.ii,-1,-1,-1,-1);
%%backgroundimage:images/kaf.init.ii.jpg,-990.048,-1097.4,1,0,0,1
%%beginparams
leftVerticalRatio := 10;
leftVerticalRatioNeg := 10;

%%beginverbatim



numeric _tatweel;
_tatweel := 20 * nuqta;
%%endverbatim

%%beginpaths

fill
(1354.56,93.64) .. tension 5.45274 and 4.79831 ..
bldmv ( (403.84,8.44), (103,-49), (95,10) ) leftjoin
bldmv ( (432.56,106.52), (47,-49), (72,11) ) .. tension 1 and 1 ..
(923.52,132.36) .. tension 1 and 9.74258 ..
 {up}(1325.6,187.4) .. tension 1.79167 and 1.32758 ..
 {left}(1203.88,246.32) .. tension 6.7667 and 1 ..
 {left}(415.32,192.96) .. tension 1.31763 and 1.99842 ..
 {up}(21.8,274.24) .. tension 1.47306 and 1.21903 ..
(157.68,461.64) .. tension 1.59171 and 1.88264 ..
 {right}(541.88,655.08) .. tension 1.99444 and 6.32225 ..
 {left}(532.68,571.32) .. tension 5.20633 and 1 ..
(254.52,435.8) .. tension 1 and 2.98033 ..
 {down}(127.56,337.44) .. tension 4.01491 and 0.75 ..
 {right}(507.72,285.48) .. tension 0.75 and 4.14509 ..
 {right}(1260.44,339.52) .. tension 0.984281 and 0.892759 ..
 {down}(1405.04,200.08) .. tension 1.45818 and 3.11302 ..
 cycle
;

%%endpaths
%%beginbody



enddefchar;
defchar(kaf.init.iii,-1,-1,-1,-1);
%%beginbody

z.kafpos = (-200,100);
z.kafpos2 = (-20,-0);
kaf.init_(lefttatweel,righttatweel);

%rightbearing := 50; 

enddefchar;
defchar(kaf.init.beforelam,-1,-1,-1,-1);
%%backgroundimage:images/kaf_lam.jpg,-587.97,-1124.07,1,0,0,1
%%beginparams
z1 = (187,152);
z4 = (-83,385);

%%beginverbatim

if not known x.kafpos : x.kafpos := 0; fi
if not known y.kafpos : y.kafpos := 0; fi

%%endverbatim

%%beginpaths

fill
((287.454,708.058) + z.kafpos) {right} .. tension 0.75 and 1 ..
 {down}((303,688) + z.kafpos) .. tension 1 and 2.54535 ..
((275.454,617.058) + z.kafpos) .. tension 9.18768 and 7.21443 ..
 {down}z4 .. tension 4.53226 and 0.75 ..
 {down}z1 .. tension 0.857029 and 1 ..
bldmv ( (114.03,23.0736), (0,0), (2,-8) ) leftjoin
bldmv ( (89.03,117.074), (0,0), (11,-5) ) .. tension 1 and 1 ..
 {up}(119.03,162.074) .. tension 2.40403 and 6.04181 ..
(-139.97,295.074) .. tension 2.28057 and 0.75 ..
 {up}(-161.97,383.074) .. tension 2.70088 and 111.847 ..
 cycle
;

%%endpaths
%%beginbody

rightbearing := -(xpart (urcorner currentpicture) - x1); 



enddefchar;
defchar(kaf.init.beforelam.ii,-1,-1,-1,-1);
%%backgroundimage:images/kaf_lam.jpg,-611,-1125,1,0,0,1
%%beginparams
z1 = (162,151);
z4 = (-102,362);

%%beginverbatim

if not known x.kafpos : x.kafpos := 0; fi
if not known y.kafpos : y.kafpos := 0; fi

%%endverbatim

%%beginpaths

fill
((245,741) + z.kafpos) {right} .. tension 0.75 and 1 ..
 {down}((255,725) + z.kafpos) .. tension 1 and 2.54535 ..
((232,649) + z.kafpos) .. tension 9.18768 and 6.92449 ..
 {down}z4 .. tension 8.85555 and 0.75 ..
 {down}z1 .. tension 0.857029 and 1 ..
bldmv ( (85,21), (0,0), (2,-8) ) leftjoin
bldmv ( (82,108), (0,0), (11,-5) ) .. tension 1 and 1 ..
 {up}(102,140) .. tension 1.67402 and 6.04181 ..
(-152,273) .. tension 2.28057 and 0.75 ..
 {up}(-173,347) .. tension 2.43753 and 111.847 ..
 cycle
;

%%endpaths
%%beginbody
rightbearing := -(xpart (urcorner currentpicture) - x1); 

enddefchar;
defchar(kaf.init.beforeyeh,-1,-1,-1,-1);
%%backgroundimage:images/Kaf_yeh.jpg,-266.884,-1153.86,1,0,0,1
%%beginparams
z1 = (90,102);
z4 = (369,282);

%%beginpaths

fill
(111.206,93) .. tension 1 and 1.07557 ..
 {up}z1 .. tension 1.02975 and 1.75682 ..
(117.728,164) .. tension 2.01597 and 2.50777 ..
 {up}(322,252) .. tension 1.73184 and 14.3601 ..
 {left}(119,491) .. tension 1.09635 and 0.75 ..
 {up}(3.728,567.12) .. tension 1 and 1.21903 ..
(59,714) .. tension 1.59171 and 0.910654 ..
(317,897) .. tension 1.8592 and 5.60943 ..
 {right}(593.144,1028.06) .. tension 1.51067 and 1 ..
 {down}(611,1002) .. tension 0.75 and 1.37147 ..
 {dir -126.569}(579.512,943.144) .. tension 6.92833 and 1 ..
(386,846) .. tension 0.913449 and 3.47361 ..
 {down}(90,642) .. tension 9.18768 and 1 ..
(179,567) .. tension 6.25338 and 0.840434 ..
 {down}z4 .. tension 0.75 and 1 ..
(218.915,111.589) .. tension 1 and 4.90153 ..
 {left} cycle
;

%%endpaths
%%beginbody
leftbearing := 0;

setCursiveAnchor(ltrcursive,z1,ExitAnchorRTL);

rightbearing := -(xpart (urcorner currentpicture) - x4); 

enddefchar;
defchar(kaf.medi,-1,-1,-1,-1);
%%backgroundimage:images/kaf.medi.jpg,-715.979,-1274.04,1,0,0,1
%%beginparams
z4 = (253,185);

%%beginverbatim

minRight := -2;

%%endverbatim

%%beginpaths

fill
z4 .. tension 3.46395 and 0.75 ..
 {down}(251.12,139.44) .. tension 0.857029 and 1 ..
liii0 ( (147.32,4.84), (0,0), (19.6283,-3.48286) ) leftjoin
liii0 ( bldmv ( (149.931,101.831), (0,0), (28,-7) ), (-20,-13.3333), (4.73506,6.7668) ) .. tension 1 and 1 ..
liii0 ( (182.762,109.391), (0,0), (12.2623,4.63371) ) .. tension 1 and 1 ..
 {up}(198.32,132.44) .. tension 1.67402 and 1 ..
(19.92,384.24) .. tension 1 and 1 ..
 {up}(1.92,419.04) .. tension 1 and 1 ..
(59.52,555.84) .. tension 1.60753 and 98.3508 ..
 {right}(506.12,761.36) .. tension 2.28057 and 1 ..
 {down}(523.92,739.16) .. tension 2.75009 and 1 ..
(492.72,674.36) .. tension 3.63093 and 1.02895 ..
(150.72,524.64) .. tension 1 and 4.81907 ..
 {down}(76.32,471.84) .. tension 7.68803 and 1 ..
(275.52,279.84) .. tension 1 and 2.41734 ..
liii1 ( (520.32,116.24), (35.4167,35.4167), (-25.0556,-14.7222) ) setranchor
(632,0) rightjoinii
liii1 ( (510.364,16.7789), (66.4396,16.9571), (-29.6111,-13.9444) ) .. tension 1.59828 and 1 ..
(266.366,175.842) .. tension 1 and 2.19798 ..
 {left} cycle
;

%%endpaths
enddefchar;
defchar(kaf.medi.beforemeem,-1,-1,-1,-1);
%%backgroundimage:images/kaf.medi_meem.jpg,-1405.69,-1150.92,1,0,0,1
%%beginparams
z1 = (216,99);

%%beginverbatim

minRight := -2;

%%endverbatim

%%beginpaths

fill
(352.927,230.553) .. tension 3.27123 and 1 ..
 {down}(352.54,164.534) .. tension 0.857029 and 4.27751 ..
 {left}(252,31) ..
 {up}z1 .. tension 1 and 1 ..
 {up}(301.167,169.667) .. tension 2.89649 and 6.04181 ..
(96.1667,466.5) .. tension 2.28057 and 1.02477 ..
 {up}(82.5867,526.08) .. tension 1.59828 and 1 ..
(167.667,660.833) .. tension 2.344 and 3.00262 ..
 {right}(663.1,885.027) .. tension 0.75 and 1 ..
 {down}(674.333,857.5) .. tension 1 and 1.50854 ..
(634.833,788.333) .. tension 4.28162 and 1.47466 ..
(153.5,555.333) .. tension 1 and 0.830341 ..
 {down}(146,540) .. tension 4.78817 and 1 ..
(417.667,281.667) .. tension 1 and 2.29765 ..
(600.68,116.8) setranchor
(675,0) rightjoinii
(633.833,4.1667) .. tension 1 and 1 ..
(500,101) .. tension 1 and 1 ..
(372.087,218.907) .. tension 1 and 2.14762 ..
 {left} cycle
;

%%endpaths
%%beginbody

setCursiveAnchor(kafmeem,z1, ExitAnchorRTL);

enddefchar;
defchar(kaf.medi.beforeyeh,-1,-1,-1,-1);
%%backgroundimage:images/kaf.medi_yeh.jpg,-508,-1085,1,0,0,1
%%beginparams
z1 = (33,31);
z4 = (46,494);

%%beginverbatim


%%endverbatim

%%beginpaths

fill
(51,603) .. tension 1.68637 and 24.1761 ..
 {right}(647,911) .. tension 0.75 and 1 ..
 {down}(673,884) .. tension 1 and 2.54535 ..
(635,818) .. tension 9.18768 and 4.3056 ..
 {down}z4 .. tension 8.85555 and 0.96314 ..
liii1 ( (210,361), (0,0), (-2.37037,-2.9537) ) .. tension 1 and 1 ..
liii1 ( (426,198), (41,2), (-17.4861,-27.0185) ) ..
liii1 ( (618,103), (333,-59), (-95.8148,-0.476852) ) setranchor
(675,0) rightjoinii
liii1 ( (547,20), (476,-103), (-48.2639,-12.6759) ) ..
liii1 ( (317.023,164.25), (0,0), (-12,-4) ) .. tension 1 and 6.08207 ..
 {left}(266,202) .. tension 7.68687 and 1 ..
(241,84) ..
 {left}(72,11) ..
 {up}z1 .. tension 1.06436 and 1 ..
(64,75) .. tension 1.4581 and 1.33773 ..
 {up}(207,146) .. tension 1.22547 and 6.04181 ..
(27,375) .. tension 2.28057 and 0.75 ..
 {up}(-34,467) .. tension 1.59828 and 1.21903 ..
 cycle
;

%%endpaths
%%beginbody


leftbearing:= 0;

setCursiveAnchor(ltrcursive,z1,ExitAnchorRTL);

enddefchar;
defchar(kaf.medi.beforelam,-1,-1,-1,-1);
%%backgroundimage:images/kaf.medi_lam.jpg,-1983.94,-1116.17,1,0,0,1

%%beginverbatim



kaf.init.beforelam_(lefttatweel,0);



picture pic_;
pic_ :=  currentpicture;
currentpicture:=nullpicture;

pair dir_;

dir_ := diratpoint z4 of (pathpart pic_);


%%endverbatim

%%beginpaths

fill
z4 {down} .. tension 1 and 1 ..
(-75,377.518) .. tension 1 and 1 ..
liii1 ( (201.662,252.046), (3,17), (-1,-5) ) ..
brdmv ( (438.056,107.611), (328,-31), (-83,-2) ) setranchor
(499,0) rightjoinii
brdmv ( (409,9), (487,-72), (-61,-7) ) ..
liii1 ( (129.778,199.694), (-8,4), (0,0) ) .. tension 1 and 1 ..
(-92.9167,373.306) .. tension 1 and 1 ..
 cycle
;

%%endpaths
%%beginbody

addto currentpicture also pic_;
enddefchar;
defchar(kaf.medi.beforelam.ii,-1,-1,-1,-1);
%%beginbody

z.kafpos = (-120,120);
kaf.medi.beforelam_(lefttatweel,righttatweel);
enddefchar;
defchar(kaf.fina,-1,-1,-1,-1);
%%backgroundimage:images/kaf.fina.jpg,-26.3056,-1261,1,0,0,1
%%beginparams
rightVerticalRatio := 5;

%%beginverbatim



%%endverbatim

%%beginpaths

fill
liii0 ( (-1,169), (0,0), (103,5) ) .. tension 0.951748 and 3.9031 ..
 {right}liii0 ( (104,341), (0,0), (103,5) ) .. tension 1 and 1 ..
 {down}liii0 ( (114,318), (0,0), (103,5) ) .. tension 1.4295 and 1.62263 ..
 {down}liii0 ( (74,233), (0,0), (103,5) ) .. tension 0.918805 and 0.914803 ..
 {right}liii0 ( (281,82), (0,0), (103,5) ) .. tension 0.810168 and 3.22513 ..
 {up}(642,195) .. tension 5.82038 and 2.64594 ..
 {up}(589,611) .. tension 2.30568 and 2.10163 ..
 {right}(633,677) .. tension 2.70961 and 1.87371 ..
(676,517) .. tension 1 and brdmvi ( 2.38173, 2 ) ..
liii1 ( (728,147), (-3,17), (0,0) ) setranchor
(776,2) rightjoinii
(653,107) {dir -127.628} .. tension 3.58671 and 1 ..
(601,63) .. tension 1.31527 and 1 ..
 {left}liii0 ( (269,-20), (0,0), (103,5) ) .. tension 0.75 and 0.963844 ..
 {up} cycle
;
fill
liii0 ( (241,255), (0,0), (53,1) ) .. tension 1.6784 and 1.33888 ..
 {right}liii0 ( (257,278), (0,0), (53,1) ) .. tension 4.85985 and 0.75 ..
 {right}liii0 ( (320,258), (0,0), (53,1) ) .. tension 1.49002 and 3.05366 ..
 {up}liii0 ( (360,274), (0,0), (53,1) ) .. tension 2.28459 and 0.896193 ..
 {up}liii0 ( (300,326), (0,0), (53,1) ) .. tension 1.25921 and 2.02954 ..
 {right}liii0 ( (423,492), (0,0), (53,1) ) .. tension 1 and 2.20322 ..
 {down}liii0 ( (473,454), (0,0), (53,1) ) .. tension 2.69063 and 1.03732 ..
 {left}liii0 ( (424,388), (0,0), (53,1) ) .. tension 2.46845 and 1.44632 ..
 {down}liii0 ( (390,387), (0,0), (53,1) ) .. tension 1.47561 and 0.948091 ..
 {down}liii0 ( (457,325), (0,0), (53,1) ) .. tension 1.16642 and 1.25532 ..
 {left}liii0 ( (344,193), (0,0), (53,1) ) .. tension 1 and 2.03546 ..
 {up} cycle
;

%%endpaths
enddefchar;
defchar(kaf.fina.afterlam,-1,-1,-1,-1);
%%backgroundimage:images/lam_kaf.fina.jpg,-31.8,-1074.6,1,0,0,1
%%beginparams
rightVerticalRatio := 5;
z11 = liii0 ( (231,161), (0,0), (51,-3) );

%%beginverbatim



%%endverbatim

%%beginpaths

fill
liii0 ( (-1,161), (0,0), (118,10) ) .. tension 0.951748 and 8.89073 ..
 {right}liii0 ( (92,329), (0,0), (118,10) ) .. tension 1 and 1 ..
 {down}liii0 ( (105,307), (0,0), (118,10) ) .. tension 1 and 1.62263 ..
 {down}liii0 ( (65,205), (0,0), (118,10) ) .. tension 1 and 0.914803 ..
 {right}liii0 ( (266,54), (0,0), (120,23) ) .. tension 0.810168 and 5.1145 ..
 {up}(632,181) .. tension 5.82038 and 2.64594 ..
 {up}(578,643) .. tension 2.30568 and 1.45846 ..
 {right}(613,681) .. tension 1.96034 and 1.87371 ..
(653,575) .. tension 1 and brdmvi ( 9.90405, 2 ) ..
(708,122) setranchor
(786,-98) rightjoinii
(660,27) .. tension 1.10904 and 10.4274 ..
 {left}(644,91) .. tension 4.93952 and 1 ..
(616,70) .. tension 1.31527 and 1 ..
 {left}liii0 ( (256,-42), (0,0), (120,23) ) .. tension 0.75 and 1.24482 ..
 {up} cycle
;

%%endpaths
%%beginbody
draw minikaf.pic  shifted z11;
enddefchar;
defchar(kaf.medi.ii,-1,-1,-1,-1);
%%backgroundimage:images/kaf.medi.ii.jpg,-1494.04,-1047.56,1,0,0,1

%%beginverbatim
%lefttatweel := lefttatweel + 1;
%%endverbatim

%%beginpaths

fill
(1243.02,118.728) .. tension 7.77603 and 0.75 ..
(371.984,9.488) leftjoin
(408.864,108.8) .. tension 1 and 2.24587 ..
(1092.56,180.36) .. tension 1 and 3.85067 ..
 {up}(1212.42,220.128) .. tension 1.40892 and 1.32758 ..
 {left}(1120.42,259.928) .. tension 6.7667 and 1 ..
 {left}(236.616,202.128) .. tension 1.31763 and 1.89524 ..
 {up}(14.936,248.128) .. tension 1.29972 and 1.21903 ..
(191.616,477.528) .. tension 1.59171 and 1.88264 ..
 {right}(500.216,620.328) .. tension 1.25813 and 3.49094 ..
 {left}(473.016,524.328) .. tension 5.20633 and 1 ..
(281.016,444.728) .. tension 1 and 7.15252 ..
 {down}(102.216,311.328) .. tension 5.18308 and 0.75 ..
 {right}(422.816,293.728) .. tension 1.02656 and 4.14509 ..
 {right}(1186.22,351.728) .. tension 1.40423 and 1.28104 ..
 {down}(1308.62,246.128) .. tension 1.45818 and 2.68873 ..
 cycle
;
fill
liii1 ( (1239.52,151.395), (-1,11), (0,0) ) .. tension 1.31123 and 1 ..
liii1 ( (1303.52,101.395), (29,18), (-86,-1) ) setranchor
(1329,0) rightjoinii
liii1 ( (1264.69,9.8947), (60,18), (-40,-14) ) .. tension 1 and 1.64216 ..
liii1 ( (1174.85,135.561), (-28,-19), (0,0) ) --
 cycle
;

%%endpaths
%%beginbody



%show leftanchor;
%show rightanchor;


enddefchar;
beginchar(zeroindic,1632,-1,-1,-1);
%%backgroundimage:images/20.jpg,-636.648,-1098.51,1,0,0,1

%%beginpaths

fill
(103.319,331.787) .. tension 1.54346 and 1.26206 ..
 {right}(160.472,401.681) .. tension 1 and 2.89367 ..
 {down}(227.944,344.792) .. tension 2.19377 and 1.92329 ..
 {left}(177,283) .. tension 1.05601 and 4.53746 ..
 {up} cycle
;

%%endpaths
%%beginbody

leftbearing := 0;
rightbearing := 0;
currentpicture := currentpicture scaled digitscale;

tr_ := tr_ shifted (0,-ypart llcorner currentpicture + 95) ;

savepicture:=1;

endchar;
beginchar(oneindic,1633,-1,-1,-1);
%%backgroundimage:images/174.jpg,-425,-1308,1,0,0,1

%%beginpaths

fill
(-38,377) .. tension 1.39326 and 1.86104 ..
 {right}(-3,460) .. tension 3.47588 and 1 ..
(109,261) .. tension 1 and 1 ..
 {down}(130,134) .. tension 1 and 1.18531 ..
 {left}(98,84) .. tension 1.32991 and 1.29754 ..
(72,137) .. tension 2.36163 and 1.16067 ..
(29,251) .. tension 1 and 9.19243 ..
 {up} cycle
;

%%endpaths
%%beginbody

leftbearing := 0;
rightbearing := 0;
currentpicture := currentpicture scaled digitscale;
tr_ := tr_ shifted (0,-ypart llcorner currentpicture);
savepicture:=1;
endchar;
beginchar(twoindic,1634,-1,-1,-1);
%%backgroundimage:images/20.jpg,-484.279,-909.51,1,0,0,1

%%beginpaths

fill
(-4,260) .. tension 1.20585 and 0.888633 ..
 {right}(113,391) .. tension 1.60936 and 3.07857 ..
 {down}(201.472,354.898) .. tension 1.17789 and 2.06047 ..
(177,296) .. tension 2.9275 and 2.91666 ..
 {down}(70,293) .. tension 5.45053 and 0.75 ..
 {down}(117,75) .. tension 1 and 1.63383 ..
 {left}(82,-1) .. tension 1.46656 and 1 ..
(62,53) .. tension 1 and 1 ..
(27,177) .. tension 1 and 1.4341 ..
 {up} cycle
;

%%endpaths
%%beginbody


leftbearing := 0;
rightbearing := 0;
currentpicture := currentpicture scaled digitscale;
tr_ := tr_ shifted (0,-ypart llcorner currentpicture);
savepicture:=1;
endchar;
beginchar(threeindic,1635,-1,-1,-1);
%%backgroundimage:images/34.jpg,-262.361,-1084.98,1,0,0,1

%%beginpaths

fill
(4.98592,315.33) .. tension 1.5355 and 1.09037 ..
 {right}(37,389) .. tension 1.83967 and 1 ..
 {right}(119,328) .. tension 0.960338 and 1 ..
 {right}(172.656,388.34) .. tension 0.950102 and 1 ..
 {right}(214,349) .. tension 1.02439 and 1.09518 ..
 {right}(263.986,400.014) .. tension 0.90042 and 4.43896 ..
 {down}(285,356) .. tension 1.84503 and 1.1337 ..
 {left}(210.67,253.33) .. tension 0.75 and 0.75 ..
 {left}(174,255) .. tension 1.46964 and 1.36218 ..
 {down}(141,219) .. tension 4.36232 and 0.75 ..
 {down}(165,81) .. tension 1 and 1.96399 ..
 {left}(142.051,3.47222) .. tension 2.23212 and 1 ..
(73.5454,190.099) .. tension 1.42322 and 2.84503 ..
 {up} cycle
;

%%endpaths
%%beginbody

leftbearing := 0;
rightbearing := 0;
currentpicture := currentpicture scaled digitscale;
tr_ := tr_ shifted (0,-ypart llcorner currentpicture);
savepicture:=1;
endchar;
beginchar(fourindic,1636,-1,-1,-1);
%%backgroundimage:images/34.jpg,-598.742,-1043.07,1,0,0,1

%%beginpaths

fill
(-9,216) .. tension 1 and 2.25695 ..
 {right}(111,371) .. tension 0.75 and 1 ..
 {down}(120,359) .. tension 1.58017 and 1.57133 ..
(104,310) .. tension 1.70276 and 1.98762 ..
 {down}(61.1065,263.949) .. tension 1.85734 and 0.920646 ..
 {down}(127,196) .. tension 1 and 5.37804 ..
 {down}(84.9444,96.4676) .. tension 1.60697 and 1 ..
 {right}(111,78.1528) .. tension 0.75 and 2.78999 ..
 {right}(201,100.995) .. tension 1 and 1 ..
 {down}(212.315,89.2083) .. tension 2.15303 and 1 ..
 {left}(77,-6) .. tension 1 and 1 ..
 {up}(11.5594,37.3953) .. tension 0.773543 and 2.80244 ..
 {up}(49,149) .. tension 4.41748 and 0.75 ..
 {up} cycle
;

%%endpaths
%%beginbody


rightbearing := 0;
currentpicture := currentpicture scaled digitscale;
tr_ := tr_ shifted (0,-ypart llcorner currentpicture + 0) ;
savepicture:=1;
endchar;
beginchar(fiveindic,1637,-1,-1,-1);
%%backgroundimage:images/56.jpg,-495,-794,1,0,0,1

%%beginpaths

fill
(13,-106) .. tension 1 and 1.65755 ..
 {right}(126,129) .. tension 1.55619 and 1 ..
 {down}(221,-27) .. tension 1 and 1 ..
 {left}(92,-185) .. tension 1 and 1.30033 ..
 {up} cycle
;
fill
(67,-45) .. tension 1 and 1 ..
 {right}(108,-94) .. tension 0.75 and 1.43855 ..
 {up}(164,-53) .. tension 0.905422 and 3.42169 ..
 {left}(119,30) .. tension 1.64627 and 2.24769 ..
 {down} cycle
;

%%endpaths
%%beginbody

leftbearing := 0;
rightbearing := 0;
currentpicture := currentpicture scaled digitscale;
tr_ := tr_ shifted (0,-ypart llcorner currentpicture + 30) ;
savepicture:=1;
endchar;
beginchar(sixindic,1638,-1,-1,-1);
%%backgroundimage:images/56.jpg,-771,-1002,1,0,0,1

%%beginpaths

fill
(-53.2083,343.093) .. tension 1 and 4.26327 ..
 {right}(-35.8426,367.042) .. tension 1.64843 and 0.75 ..
 {right}(16.3148,355.093) .. tension 1 and 1 ..
 {right}(104,362) .. tension 1.58667 and 1 ..
(147,251) .. tension 1 and 2.50743 ..
(179.807,135.596) .. tension 1 and 2.62445 ..
 {down}(211.736,77) .. tension 1 and 1.22033 ..
 {left}(173,6) .. tension 1.68202 and 1.52788 ..
(113.843,106.736) .. tension 1 and 5.93465 ..
(78.4213,262.944) .. tension 5.36488 and 1 ..
(-34.4676,275.991) .. tension 0.972535 and 0.942157 ..
 {up} cycle
;

%%endpaths
%%beginbody

leftbearing := 0;
rightbearing := 0;
currentpicture := currentpicture scaled digitscale;
tr_ := tr_ shifted (0,-ypart llcorner currentpicture + 0) ;
savepicture:=1;
endchar;
beginchar(eightindic,1640,-1,-1,-1);
%%backgroundimage:images/89,-418,-1130,1,0,0,1

%%beginpaths

fill
(22,1) .. tension 1.64548 and 1 ..
 {up}(-12.787,78.1019) .. tension 8.11406 and 0.831549 ..
(105.213,335.208) .. tension 1 and 1.26138 ..
 {right}(129.421,377.046) .. tension 0.902747 and 3.44194 ..
(152.523,345.894) .. tension 0.75 and 8.23757 ..
 {down}(264.698,78.5582) .. tension 1 and 1.51709 ..
 {left}(225,2) .. tension 1.88835 and 6.60726 ..
 {left}(124.747,183.295) .. tension 6.33268 and 2.23267 ..
 {left} cycle
;

%%endpaths
%%beginbody


leftbearing := 0;
rightbearing := 0;
currentpicture := currentpicture scaled digitscale;
tr_ := tr_ shifted (0,-ypart llcorner currentpicture + 0) ;
savepicture:=1;
endchar;
beginchar(sevenindic,1639,-1,-1,-1);
%%backgroundimage:images/174.jpg,-567.05,-1203.22,1,0,0,1

%%beginpaths

fill
(-18.4167,294.472) .. tension 1 and 1.4916 ..
 {right}(17.1389,361.528) .. tension 5.01019 and 1.44149 ..
(114.718,222.463) .. tension 1 and 3.08361 ..
 {right}(137.472,181.333) .. tension 8.78231 and 2.5059 ..
 {right}(221.722,381.056) .. tension 2.11447 and 0.997834 ..
 {down}(259.972,288.306) .. tension 8.0593 and 0.75 ..
(189,126.556) .. tension 1 and 2.01149 ..
 {left}(142.139,-5) .. tension 2.17417 and 1 ..
(84.8611,117.25) .. tension 1 and 3.85191 ..
 {up} cycle
;

%%endpaths
%%beginbody

leftbearing := 0;
rightbearing := 0;
currentpicture := currentpicture scaled digitscale;
tr_ := tr_ shifted (0,-ypart llcorner currentpicture + 0) ;
savepicture:=1;
endchar;
beginchar(nineindic,1641,-1,-1,-1);
%%backgroundimage:images/89.jpg,-733,-1124.04,1,0,0,1

%%beginpaths

fill
(-24,260) .. tension 1 and 1.39223 ..
 {right}(67,397) .. tension 1.02157 and 1.13319 ..
(154.741,204.194) .. tension 0.762016 and 1.28183 ..
 {down}(195,59) .. tension 0.859162 and 1.53123 ..
 {left}(171.981,1) .. tension 1.60201 and 5.25577 ..
 {dir 145.008}(98,184) .. tension 3.13221 and 1.10818 ..
(-7,207) .. tension 1 and 2.41462 ..
 {up} cycle
;
fill
(44.1019,290.731) .. tension 1.85915 and 0.75 ..
 {right}(64.1574,278.727) .. tension 0.75 and 1.52871 ..
 {up}(74.0556,292.468) .. tension 0.956518 and 1.1647 ..
 {left}(59,302) .. tension 0.75 and 2.62157 ..
 {down} cycle
;

%%endpaths
%%beginbody

leftbearing := 0;
rightbearing := 0;
currentpicture := currentpicture scaled digitscale;
tr_ := tr_ shifted (0,-ypart llcorner currentpicture + 0) ;
savepicture:=1;
endchar;
beginchar(tatweel,1600,250,104,0);
%%beginbody
% glyphname:tatweel
%%begincomponents
%%endcomponents
fill (0.0,0.0)
 .. controls (-20.0,0.0) and (-20.0,0.0) .. (-20.0,52.0)
 .. controls (-20.0,lineheight) and (-20.0,lineheight) .. (0.0,lineheight)
 .. controls (78.0,lineheight) and (172.0,lineheight) .. (250.0,lineheight)
 .. controls (270.0,lineheight) and (270.0,lineheight) .. (270.0,52.0)
 .. controls (270.0,0.0) and (270.0,0.0) .. (250.0,0.0)
 .. controls (172.0,0.0) and (78.0,0.0) .. cycle;
endchar;
defchar(behshape.isol.expa,-1,-1,-1,-1);
%%backgroundimage:images/beh.isol.expa.jpg,-672,-982.6,1,0,0,1

%%beginverbatim

maxA0 := 20;
minA0 := -2;

x.tat := -maxA0* nuqta;
x.tat.min :=  -minA0* nuqta;;


%%endverbatim

%%beginpaths

fill
liii0 ( (-80.1867,130.047), (x.tat,0), (x.tat.min,0) ) .. tension 1.27714 and 0.75 ..
 {right}liii0 ( (-65.52,151.102), (x.tat,0), (x.tat.min,0) ) .. tension 1.60971 and 1.1457 ..
liii0 ( (-31.5033,132.958), (x.tat,0), (x.tat.min,0) ) .. tension 1.31378 and 0.75 ..
liii0 ( (42.3689,94.2244), (x.tat,0), (x.tat.min,0) ) .. tension 1.5729 and 0.75 ..
 {right}liii0 ( liii0 ( (326.914,49.6284), (0,0), (0,0) ), (-1378.76,-109.846), (146,21) ) .. tension 1.12876 and liii0 ( 5.06347, 3.4538, 0 ) ..
 {up}(673,141) .. tension 1.46476 and 3.02424 ..
 {up}(604,227) .. tension 0.75 and 5.44882 ..
 {right}(639,297) .. tension 2.5475 and 0.857184 ..
 {down}(730,148) .. tension liii0 ( 1.56259, 1.55237, 0 ) and liii0 ( 0.88315, 0.75, 0 ) ..
 {left}liii0 ( liii0 ( (309.186,-41.4327), (0,0), (0,0) ), (-1378.76,-109.846), (146,21) ) .. tension 0.75 and liii0 ( 1.08768, 0.5, 0 ) ..
liii0 ( (-29.1729,68.2394), (x.tat,0), (x.tat.min,0) ) .. tension 1 and 2.29291 ..
 {up} cycle
;

%%endpaths
enddefchar;
defchar(behshape.fina.expa,-1,-1,-1,-1);
%%backgroundimage:images/beh.fina.expa.jpg,-805.366,-1212.14,1,0,0,1

%%beginverbatim

maxA0 := 20;
minA0 := -2;

x.tat := -maxA0* nuqta;
x.tat.min :=  -minA0* nuqta;;


%%endverbatim

%%beginpaths

fill
liii0 ( (-80.1867,130.047), (x.tat,0), (x.tat.min,0) ) .. tension 1.27714 and 0.75 ..
 {right}liii0 ( (-65.52,151.102), (x.tat,0), (x.tat.min,0) ) .. tension 1.60971 and 1.1457 ..
liii0 ( (-31.5033,132.958), (x.tat,0), (x.tat.min,0) ) .. tension 1.31378 and 0.75 ..
liii0 ( (42.3689,94.2244), (x.tat,0), (x.tat.min,0) ) .. tension 1.5729 and 0.75 ..
 {right}liii0 ( liii0 ( (314.472,30.966), (0,0), (0,0) ), (-1378.76,-109.846), (146,21) ) .. tension 1.12876 and 2.46739 ..
liii0 ( (651.812,107.572), (-32.2486,28.6654), (0,0) ) .. tension 1.33061 and 0.851285 ..
(684.144,196.76) .. tension 0.75 and 1.29286 ..
 {right}(716.76,214.92) .. tension 0.785759 and 0.857184 ..
 {down}(734.823,198.154) .. tension liii0 ( 3.53997, 1.55237, 0 ) and 0.886456 ..
liii0 ( (656.37,12.8064), (-39.415,28.6654), (0,0) ) .. tension 1.79622 and liii0 ( 0.75, 3.02215, 0 ) ..
 {left}liii0 ( liii0 ( (296.744,-62.1687), (0,0), (0,0) ), (-1378.76,-109.846), (146,21) ) .. tension 0.75 and liii0 ( 1.08768, 0.5, 0 ) ..
liii0 ( (-29.1729,68.2394), (x.tat,0), (x.tat.min,0) ) .. tension 1 and 2.29291 ..
 {up} cycle
;
fill
(656.2,97.38) --
(698.833,153) setranchor
brdmv ( (787,0), (-17.3031,6.1398), (-11.4423,-10.326) ) rightjoinii
brdmv ( (696,37), (-17.3031,8.37245), (-20,-30) ) .. tension 0.75 and 2.13785 ..
 cycle
;

%%endpaths
%%beginbody


enddefchar;
defchar(kaf.fina.expa,-1,-1,-1,-1);
%%backgroundimage:images/kaf.fina.expa.jpg,-1163.09,-1200.58,1,0,0,1
%%beginparams
rightVerticalRatio := 5;
z11 = leii0 ( (-296,201), (-1193,16) );

%%beginverbatim
%%beginverbatim

maxA0 := 20;
minA0 := -2;

x.tat := -maxA0* nuqta;
x.tat.min :=  -minA0* nuqta;;


params0 := params0 + 1;


%%endverbatim

%%beginpaths

fill
(83.4,608.88) .. tension 1 and 2.09511 ..
 {right}(130.2,679.68) .. tension 2.81995 and 2.76737 ..
(164.4,544.4) .. tension 1.51205 and 2.71461 ..
liii1 ( (204.4,179.6), (21,-56), (0,0) ) .. tension 1 and 1 ..
liii1 ( (246,101.6), (397,-338), (-72.1389,1.77778) ) setranchor
(255,0) rightjoinii
liii1 ( (181.8,19), (490,-386), (-11.6667,-16.6667) ) .. tension 1 and 1 ..
(138,108) .. tension 2.00581 and 1 ..
(106,390) .. tension 1 and 5.69625 ..
 {up} cycle
;
fill
liii0 ( (-535.75,138.805), (x.tat,0), (x.tat.min,0) ) .. tension 1.27714 and 0.75 ..
 {right}liii0 ( (-516.851,162.904), (x.tat,0), (x.tat.min,0) ) .. tension 1.45412 and 1.1457 ..
liii0 ( (-482.561,155.083), (x.tat,0), (x.tat.min,0) ) .. tension 1.31378 and 0.75 ..
liii0 ( (-428.756,134.555), (x.tat,0), (x.tat.min,0) ) .. tension 1.83538 and 0.75 ..
 {right}liii0 ( (-167.054,95.17), (-1479.14,-176.292), (0,0) ) .. tension 1.60953 and 1.37771 ..
liii0 ( (128.099,204.984), (-62.978,-4.13798), (0,0) ) .. tension 0.96689 and 2.09318 ..
(154.589,263.716) --
(172.965,161.355) .. tension 2.166 and 1.054 ..
liii0 ( (126.125,105.053), (-108.702,-21.0816), (0,0) ) .. tension 1.1819 and 1.1819 ..
 {left}liii0 ( (-182.722,-7.1504), (-1479.14,-176.292), (0,0) ) .. tension 1.11805 and liii0 ( 1, 0.1, 0 ) ..
liii0 ( (-482.094,81.4111), (x.tat,0), (x.tat.min,0) ) .. tension 1 and 1 ..
liii0 ( (-522.133,112.989), (x.tat,0), (x.tat.min,0) ) .. tension 1 and 2.03734 ..
 {up} cycle
;

%%endpaths
%%beginbody

draw minikaf.pic  shifted z11;
enddefchar;
defchar(kaf.fina.afterlam.expa,-1,-1,-1,-1);
%%backgroundimage:images/kaf.fina.expa.jpg,-1163.09,-1200.58,1,0,0,1
%%beginparams
rightVerticalRatio := 5;
z11 = leii0 ( (-296,201), (-1193,16) );

%%beginverbatim
%%beginverbatim

maxA0 := 20;
minA0 := -2;

x.tat := -maxA0* nuqta;
x.tat.min :=  -minA0* nuqta;;


params0 := params0 + 1;


%%endverbatim

%%beginpaths

fill
(83.4,608.88) .. tension 1 and 2.09511 ..
 {right}(130.2,679.68) .. tension 2.81995 and 2.76737 ..
(164.4,544.4) .. tension 1.51205 and 2.71461 ..
liii1 ( (204.4,180.6), (21,-56), (0,0) ) .. tension 1 and 1.03794 ..
liii1 ( (278.833,6.1), (438,-290), (-72.1389,1.77778) ) setranchor
(285,-98.8333) rightjoinii
liii1 ( (167.633,11.5), (490,-386), (-11.6667,-16.6667) ) .. tension 1 and 1 ..
(138,108) .. tension 2.00581 and 1 ..
(106,390) .. tension 1 and 5.69625 ..
 {up} cycle
;
fill
liii0 ( (-535.75,138.805), (x.tat,0), (x.tat.min,0) ) .. tension 1.27714 and 0.75 ..
 {right}liii0 ( (-516.851,162.904), (x.tat,0), (x.tat.min,0) ) .. tension 1.45412 and 1.1457 ..
liii0 ( (-482.561,155.083), (x.tat,0), (x.tat.min,0) ) .. tension 1.31378 and 0.75 ..
liii0 ( (-428.756,134.555), (x.tat,0), (x.tat.min,0) ) .. tension 1.83538 and 0.75 ..
 {right}liii0 ( (-167.054,95.17), (-1479.14,-176.292), (0,0) ) .. tension 1.60953 and 1.37771 ..
liii0 ( (128.099,204.984), (-62.978,-4.13798), (0,0) ) .. tension 0.96689 and 2.09318 ..
(154.589,263.716) --
(172.965,161.355) .. tension 2.166 and 1.054 ..
liii0 ( (126.125,105.053), (-108.702,-21.0816), (0,0) ) .. tension 1.1819 and 1.1819 ..
 {left}liii0 ( (-182.722,-7.1504), (-1479.14,-176.292), (0,0) ) .. tension 1.11805 and liii0 ( 1, 0.1, 0 ) ..
liii0 ( (-482.094,81.4111), (x.tat,0), (x.tat.min,0) ) .. tension 1 and 1 ..
liii0 ( (-522.133,112.989), (x.tat,0), (x.tat.min,0) ) .. tension 1 and 2.03734 ..
 {up} cycle
;

%%endpaths
%%beginbody

draw minikaf.pic  shifted z11;
enddefchar;
defchar(noonshape.expa,-1,-1,6,-1);
%%backgroundimage:images/noon.expa.jpg,-434.054,-1035.77,1,0,0,1
%%beginparams
z1 = (1107,198);
z11 = (738,162);

%%beginverbatim

minLeft := 0;
maxLeft := 20;
tatweel_ := -maxLeft * nuqta;

%%backgroundimage:images/noon.expa.jpg,-2383.2,-902.88,1,0,0,1
%%backgroundimage:images/noon.fina.expa.min.jpg,199,-784,1,0,0,1
%%endverbatim

%%beginpaths

fill
leii0 ( (265.356,128.646), (tatweel_,0) ) .. tension 1 and 1 ..
 {right}leii0 ( (280.845,145.127), (tatweel_,0) ) .. tension 1.39521 and 1 ..
leii0 ( (339.293,113.483), (tatweel_,8.95795) ) .. tension 1 and 1 ..
leii0 ( (438.345,53.1086), (tatweel_,14.9299) ) .. tension 1 and 1 ..
 {right}leii0 ( (728.367,-10.2562), (-1653.59,-267.234) ) .. tension 1 and 1 ..
leii0 ( (955.153,59.2531), (-106.04,-45.2355) ) .. tension 3.35294 and 1.88028 ..
 {up}(1043.76,153.214) .. tension 1.5255 and 2.16809 ..
 {up}(979.276,273.969) .. tension 1 and 1.93214 ..
 {right}(1020.07,335.72) .. tension 2.73895 and 1 ..
 {down}z1 .. tension 1 and 1 ..
leii0 ( (997.096,-8.1877), (-133.818,-69.1064) ) .. tension 1 and 1 ..
 {left}leii0 ( (694.141,-104.162), (-1653.59,-267.234) ) .. tension 1 and 1 ..
leii0 ( (401.652,-16.4812), (tatweel_,20.9019) ) .. tension 1 and 1 ..
leii0 ( (272.866,111.652), (tatweel_,0) ) .. tension 3.50509 and 0.913094 ..
 {up} cycle
;

%%endpaths
%%beginbody





x11 := x11 - lefttatweel *  nuqta / 2;

defAnchor(onedotup,z11,MarkAnchor);

setCursiveAnchor(rtlcursive,(15,26.0528)+ z1, EntryAnchorRTL);


enddefchar;
defchar(noonshape.fina.expa,-1,-1,6,-1);
%%beginparams
z4 = (645,42);

%%beginverbatim

%%endverbatim

%%beginpaths

fill
brdmvi ( (585.92,138.84), (0,0) ) setranchor
(659,0) rightjoinii
brdmvi ( (596,41), (0,0) ) --
 cycle
;

%%endpaths
%%beginbody

save pic_,ppp_;picture pic_;path ppp_[];
pic_ := image(noonshape.expa_(lefttatweel,0));
ppp_1:= pathpart currentpicture;
ppp_2:= pathpart pic_ shifted (z4 - z1);
ppp_3:=smoothjoin(15,ppp_2,ppp_1);

%draw pic_ shifted (z4 - z1);
currentpicture := nullpicture;fill  ppp_3;

enddefchar;
defchar(noon.isol.expa,-1,-1,-1,-1);
%%beginbody

noonshape.expa_(lefttatweel,righttatweel);

enddefchar;
defchar(noon.fina.expa.afterbeh,-1,-1,-1,-1);
%%beginparams
z.mark1 = (1071,187);
%%beginbody



noon.isol.expa_(lefttatweel,0);


setCursiveAnchor(ltrcursive,z.mark1, EntryAnchorRTL);

tr_ := tr_ shifted (0,-100);


enddefchar;
defchar(noon.fina.expa,-1,-1,-1,-1);
%%beginbody

noonshape.fina.expa_(lefttatweel,righttatweel);



enddefchar;
defchar(noon.fina.basmala,-1,-1,-1,-1);
%%beginparams
z.t.1 = bldmvi ( (255,210), (410,10) );
%%beginbody

noon.fina.expa_(lefttatweel,righttatweel);


picture q;
q := currentpicture;
a := 0;
currentpicture := nullpicture;



pair p_;

for item within q:
  if filled item :
	p := pathpart item;
  if a = 2 : 
    p_ = point 0 of p;
    fill p shifted (z.t.1 ); 
  else :
    if filled item : fill p; fi;    
  fi
  a := a + 1;
    
  fi;
 
endfor


enddefchar;
defchar(sad.isol.expa,-1,-1,-1,-1);
%%beginbody




sad.shape.ii_(0,0);


pair shift_;
picture pic_;

pic_ := image(
pair tt__;
tt__ := z1;
save rightanchor;pair rightanchor;clearxy;
noonshape.fina.expa_(lefttatweel,0.5);
show rightanchor,z1;
shift_ := tt__ - rightanchor;
);

draw pic_ shifted shift_;


pair leftanchor;


enddefchar;
defchar(sad.fina.expa,-1,-1,-1,-1);
%%beginparams
z10 = (672,0);

%%beginpaths

fill
(577,107) setranchor
z10 rightjoinii
(463,13) --
 cycle
;

%%endpaths
%%beginbody

begingroup
pair rightanchor;clearxy;
sad.isol.expa_(lefttatweel,righttatweel);
endgroup;


rightanchor := z10;

enddefchar;
defchar(yehshape.fina.ii.expa,-1,-1,-1,-1);
%%backgroundimage:images/yehexpa.jpg,-1050.22,-670.564,1,0,0,1
%%beginparams
z1 = (346,30);
z5 = (542,-18);

%%beginverbatim

minA0 := 0;
maxA0 := 5.1;
tatweel_ := -maxA0 * nuqta;
z2 = z5 + behshape.medi.beforeyeh.p1 ;

%%endverbatim

%%beginpaths

fill
leii0 ( (-241.863,56.7294), (tatweel_,0) ) .. tension 1.15253 and 0.75 ..
 {right}leii0 ( (-226.813,85.9514), (tatweel_,2.4) ) .. tension 8.86649 and 0.75 ..
leii0 ( (-28.5889,-68.2989), (tatweel_,2.4) ) .. tension 1.50093 and 1 ..
 {right}leii0 ( (179.321,-128.86), (-364.98,-53.68) ) .. tension 1 and leii0 ( 4.89967, 0.2 ) ..
 {up}z5 .. tension 3.33775 and 2.54305 ..
 {up}z1 .. tension 1 and 1 ..
 {right}(440.137,100.454) .. tension 1 and 1.03375 ..
 {down}z2 .. tension leii0 ( 1.63545, 0.15 ) and 1 ..
 {left}leii0 ( (169.618,-230.842), (-385.86,-55.84) ) .. tension 1 and 1.23984 ..
leii0 ( (-63.2372,-168.548), (tatweel_,6) ) .. tension 1 and 1.78941 ..
 {up} cycle
;

%%endpaths
%%beginbody
rightbearing := x1 - x2;
setCursiveAnchor(ltrcursive,z1,EntryAnchorRTL);
tr_ := tr_ shifted(0,0 -y1);
enddefchar;
defchar(yehshape.fina.afterbeh.expa,-1,-1,-1,-1);
%%beginbody


yehshape.fina.ii.expa_(lefttatweel,righttatweel);

cutGlyph(z5,z2,false);

tr_ := tr_ shifted(0,behshape_medi_beforeyeh_y-y5- ypart tr_);


setCursiveAnchor(ltrcursive,z5,EntryAnchorRTL);
enddefchar;
defchar(alefmaksura.isol.expa,-1,-1,-1,-1);
%%beginbody

%%beginbody
yehshape.fina.afterbeh.expa_(lefttatweel,0);

pair shift_;
picture pic_;

pic_ := image(
yeh.shape.i_(0,0);
shift_ := z5 - z.yeh.shape.i.1;
);

draw pic_ shifted shift_;
rightbearing := 0;
tr_ := tr_ shifted(0,y1- ypart tr_);

enddefchar;
defchar(yehshape.isol.expa,-1,-1,-1,-1);
%%beginbody
alefmaksura.isol.expa_(lefttatweel,0);
enddefchar;
defchar(yehshape.fina.expa,-1,-1,-1,-1);
%%beginbody

%%beginbody
yehshape.fina.afterbeh.expa_(lefttatweel,0);

pair shift_;
picture pic_;

pic_ := image(
yeh.shape.ii_(0,righttatweel);
shift_ := z5 - z.yeh.shape.ii.1;
);

draw pic_ shifted shift_;
rightanchor := rightanchor shifted shift_;;
rightbearing := 0;

tr_ := tr_ shifted (0, -ypart rightanchor -ypart tr_);



enddefchar;
defchar(seen.isol.expa,-1,-1,-1,-1);
%%backgroundimage:images/seen.isol.expa.jpg,-1464,-1157,1,0,0,1
%%beginparams
z.mark1 = bldmvi ( (227,-114), (-55,-83) );
%%beginbody

seen.twosinnas_(0,0);

pair shift_;
picture pic_;

pic_ := image(
save rightanchor;pair rightanchor;clearxy;
noonshape.fina.expa_(lefttatweel,-0.1);
shift_ := leftanchor - rightanchor;
);

draw pic_ shifted shift_;

defAnchor(lowmarks,z.mark1,MarkAnchor);
defAnchor(lowmarkafterwawandreh.lowmarks.l4_kasra   ,z.mark1,MarkAnchor);

pair leftanchor;

enddefchar;
defchar(seen.fina.expa,-1,-1,-1,-1);
%%beginparams
z.mark1 = bldmvi ( (106,344), (-277,6) );
%%beginbody

%%beginbody

seen.twosinnas.medi_(0,righttatweel);

pair shift_;
picture pic_;

pic_ := image(
save rightanchor;pair rightanchor;clearxy;
noonshape.fina.expa_(lefttatweel,-0.3);
shift_ := leftanchor - rightanchor;
);

draw pic_ shifted shift_;

pair leftanchor;



defAnchor(defaultmarkposition_topmarks   ,z.mark1,MarkAnchor);

enddefchar;
defchar(meem.fina.basmala,-1,-1,-1,-1);
%%backgroundimage:images/bism.jpg,-4549.31,-1127.73,1.18,0,0,1.18
%%beginparams
rightVerticalRatio := 10;
z.mark1 = (175,-175);

%%beginverbatim

righttatweel := righttatweel - 0.0;



%%endverbatim

%%beginpaths

fill
(176.355,29.661) .. tension 7.39299 and 0.75 ..
 {up}(138.583,98.9167) .. tension 1.73037 and 1.61706 ..
 {right}(248.5,231.195) .. tension leii1 ( 1.33966, -0.4 ) and 1 ..
liii1 ( (372.25,143.389), (34.0278,18.0556), (0,0) ) .. tension 1.23047 and 1 ..
liii1 ( (461.333,101.028), (100.694,-13.1944), (-49.3056,-4.86111) ) setranchor
(498,0) rightjoinii
liii1 ( (459.389,1.36108), (198.611,-41.6667), (-90.2778,-0.694444) ) {curl1} .. tension 1.3164 and 1 ..
liii1 ( (394.528,15.2778), (50,3.47222), (6.25,-19.4444) ) .. tension 1 and 1.76592 ..
 {left}liii1 ( (384.444,18.0556), (24.3056,12.5), (2.77778,-13.8889) ) .. tension 1.97816 and 0.833415 ..
 {left}(356.833,-3) .. tension 1.46691 and 6.1513 ..
 {left}(234.389,12.3029) .. tension 1.07902 and 5.43489 ..
(212.684,-13.5446) .. tension 1.06966 and 18.3373 ..
 {left}(-104.75,-156.944) .. tension 1 and 1 ..
 {up}(-124.513,-140.858) .. tension 1.44285 and 1 ..
(-58.5622,-102.837) .. tension 1 and 1 ..
(98.1968,-36.0863) .. tension 1 and 3.71984 ..
 {up} cycle
;
fill
(238.556,153.222) .. tension 1.23804 and 1.74187 ..
 {down}(205.611,132) .. tension 2.2473 and 2.6024 ..
 {up}(271.056,115.417) .. tension 0.99908 and 1.33569 ..
 {left} cycle
;

%%endpaths
%%beginbody
%%beginbody
leftbearing :=- 50;

setMarkAnchor(buttonmark,z.mark1);

enddefchar;

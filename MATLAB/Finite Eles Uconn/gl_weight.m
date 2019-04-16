function [ x, w ] = gl_weight ( a, b, n );
%  [ x, w ] = gl_weight ( n ) returns the abscissas and
%  weights for Gauss-Legendre quadrature of degree n 
%  over the interval [ a , b ]
%  x and w are row vectors.

% original written by John Burkardt
% M. M. Sussman
% $Date: 2002/11/02 21:31:24 $

% Remark: the values for x are set for the interval [-1,1]
% and transformed to [a,b] at the end.

if ( n == 1 ) 
  w(1) = 2.0;

  x(1) = 0.0;
elseif ( n == 2 )
  w(1) =  1.0; 
  w(2) =  w(1);

  x(1) = - 0.577350269189625764509148780502;
  x(2) =   0.577350269189625764509148780502;
elseif ( n == 3 )
  w(1) =  5 / 9; 
  w(2) =  8 / 9;
  w(3) =  5 / 9;

  x(1) = - 0.774596669241483377035853079956;
  x(2) =  0.000000000000000;
  x(3) =   0.774596669241483377035853079956;
elseif ( n == 4 )
  w(1) = 0.347854845137453857373063949222;
  w(2) = 0.652145154862546142626936050778;
  w(3) = 0.652145154862546142626936050778;
  w(4) = 0.347854845137453857373063949222;

  x(1) = - 0.861136311594052575223946488893;
  x(2) = - 0.339981043584856264802665759103;
  x(3) =   0.339981043584856264802665759103;
  x(4) =   0.861136311594052575223946488893;
elseif ( n == 5 )
  w(1) = 0.236926885056189087514264040720;
  w(2) = 0.478628670499366468041291514836;
  w(3) = 0.568888888888888888888888888889;
  w(4) = 0.478628670499366468041291514836;
  w(5) = 0.236926885056189087514264040720;

  x(1) = - 0.906179845938663992797626878299;
  x(2) = - 0.538469310105683091036314420700;
  x(3) =   0.0;
  x(4) =   0.538469310105683091036314420700;
  x(5) =   0.906179845938663992797626878299;
elseif ( n == 6 ) 
  w(1) = 0.171324492379170345040296142173;
  w(2) = 0.360761573048138607569833513838;
  w(3) = 0.467913934572691047389870343990;
  w(4) = 0.467913934572691047389870343990;
  w(5) = 0.360761573048138607569833513838;
  w(6) = 0.171324492379170345040296142173;

  x(1) = - 0.932469514203152027812301554494;
  x(2) = - 0.661209386466264513661399595020;
  x(3) = - 0.238619186083196908630501721681;
  x(4) =   0.238619186083196908630501721681;
  x(5) =   0.661209386466264513661399595020;
  x(6) =   0.932469514203152027812301554494;
elseif ( n == 7 ) 
  w(1) = 0.129484966168869693270611432679;
  w(2) = 0.279705391489276667901467771424;
  w(3) = 0.381830050505118944950369775489;
  w(4) = 0.417959183673469387755102040816;
  w(5) = 0.381830050505118944950369775489;
  w(6) = 0.279705391489276667901467771424;
  w(7) = 0.129484966168869693270611432679;

  x(1) = - 0.949107912342758524526189684048;
  x(2) = - 0.741531185599394439863864773281;
  x(3) = - 0.405845151377397166906606412077;
  x(4) =   0.0;
  x(5) =   0.405845151377397166906606412077;
  x(6) =   0.741531185599394439863864773281;
  x(7) =   0.949107912342758524526189684048;
elseif ( n == 8 )
  w(1) = 0.101228536290376259152531354310;
  w(2) = 0.222381034453374470544355994426;
  w(3) = 0.313706645877887287337962201987;
  w(4) = 0.362683783378361982965150449277;
  w(5) = 0.362683783378361982965150449277;
  w(6) = 0.313706645877887287337962201987;
  w(7) = 0.222381034453374470544355994426;
  w(8) = 0.101228536290376259152531354310;

  x(1) = - 0.960289856497536231683560868569;
  x(2) = - 0.796666477413626739591553936476;
  x(3) = - 0.525532409916328985817739049189;
  x(4) = - 0.183434642495649804939476142360;
  x(5) =   0.183434642495649804939476142360;
  x(6) =   0.525532409916328985817739049189;
  x(7) =   0.796666477413626739591553936476;
  x(8) =   0.960289856497536231683560868569;
elseif ( n == 9 )
  w(1) = 0.0812743883615744119718921581105;
  w(2) = 0.180648160694857404058472031243;
  w(3) = 0.260610696402935462318742869419;
  w(4) = 0.312347077040002840068630406584;
  w(5) = 0.330239355001259763164525069287;
  w(6) = 0.312347077040002840068630406584;
  w(7) = 0.260610696402935462318742869419;
  w(8) = 0.180648160694857404058472031243;
  w(9) = 0.0812743883615744119718921581105;

  x(1) = - 0.968160239507626089835576202904;
  x(2) = - 0.836031107326635794299429788070;
  x(3) = - 0.613371432700590397308702039341;
  x(4) = - 0.324253423403808929038538014643;
  x(5) =   0.0;
  x(6) =   0.324253423403808929038538014643;
  x(7) =   0.613371432700590397308702039341;
  x(8) =   0.836031107326635794299429788070;
  x(9) =   0.968160239507626089835576202904;
elseif ( n == 10 )
  w(1) =  0.0666713443086881375935688098933;
  w(2) =  0.149451349150580593145776339658;
  w(3) =  0.219086362515982043995534934228;
  w(4) =  0.269266719309996355091226921569;
  w(5) =  0.295524224714752870173892994651;
  w(6) =  0.295524224714752870173892994651;
  w(7) =  0.269266719309996355091226921569;
  w(8) =  0.219086362515982043995534934228;
  w(9) =  0.149451349150580593145776339658;
  w(10) = 0.0666713443086881375935688098933;

  x(1) =  - 0.973906528517171720077964012084;
  x(2) =  - 0.865063366688984510732096688423;
  x(3) =  - 0.679409568299024406234327365115;
  x(4) =  - 0.433395394129247290799265943166;
  x(5) =  - 0.148874338981631210884826001130;
  x(6) =    0.148874338981631210884826001130;
  x(7) =    0.433395394129247290799265943166;
  x(8) =    0.679409568299024406234327365115;
  x(9) =    0.865063366688984510732096688423;
  x(10) =   0.973906528517171720077964012084;
elseif (n==11)
  w( 1) = 0.5566856711617350E-01;
  w( 2) = 0.1255803694649042E+00;
  w( 3) = 0.1862902109277336E+00;
  w( 4) = 0.2331937645919900E+00;
  w( 5) = 0.2628045445102460E+00;
  w( 6) = 0.2729250867779003E+00;
  w( 7) = 0.2628045445102467E+00;
  w( 8) = 0.2331937645919913E+00;
  w( 9) = 0.1862902109277353E+00;
  w(10) = 0.1255803694649053E+00;
  w(11) = 0.5566856711617379E-01;

  x( 1) = -.9782286581460569E+00;
  x( 2) = -.8870625997680954E+00;
  x( 3) = -.7301520055740491E+00;
  x( 4) = -.5190961292068117E+00;
  x( 5) = -.2695431559523447E+00;
  x( 6) = 0.0000000000000000E+00;
  x( 7) = 0.2695431559523451E+00;
  x( 8) = 0.5190961292068120E+00;
  x( 9) = 0.7301520055740494E+00;
  x(10) = 0.8870625997680953E+00;
  x(11) = 0.9782286581460570E+00;
elseif (n==12)
  w( 1) = 0.4717533638651189E-01;
  w( 2) = 0.1069393259953186E+00;
  w( 3) = 0.1600783285433465E+00;
  w( 4) = 0.2031674267230662E+00;
  w( 5) = 0.2334925365383550E+00;
  w( 6) = 0.2491470458134032E+00;
  w( 7) = 0.2491470458134031E+00;
  w( 8) = 0.2334925365383548E+00;
  w( 9) = 0.2031674267230660E+00;
  w(10) = 0.1600783285433459E+00;
  w(11) = 0.1069393259953177E+00;
  w(12) = 0.4717533638651136E-01;

  x( 1) = -.9815606342467189E+00;
  x( 2) = -.9041172563704747E+00;
  x( 3) = -.7699026741943045E+00;
  x( 4) = -.5873179542866176E+00;
  x( 5) = -.3678314989981801E+00;
  x( 6) = -.1252334085114690E+00;
  x( 7) = 0.1252334085114690E+00;
  x( 8) = 0.3678314989981801E+00;
  x( 9) = 0.5873179542866173E+00;
  x(10) = 0.7699026741943045E+00;
  x(11) = 0.9041172563704748E+00;
  x(12) = 0.9815606342467192E+00;
elseif (n==13)
  w( 1) = 0.4048400476531592E-01;
  w( 2) = 0.9212149983772858E-01;
  w( 3) = 0.1388735102197876E+00;
  w( 4) = 0.1781459807619462E+00;
  w( 5) = 0.2078160475368887E+00;
  w( 6) = 0.2262831802628974E+00;
  w( 7) = 0.2325515532308739E+00;
  w( 8) = 0.2262831802628975E+00;
  w( 9) = 0.2078160475368894E+00;
  w(10) = 0.1781459807619455E+00;
  w(11) = 0.1388735102197863E+00;
  w(12) = 0.9212149983772767E-01;
  w(13) = 0.4048400476531557E-01;

  x( 1) = -.9841830547185881E+00;
  x( 2) = -.9175983992229779E+00;
  x( 3) = -.8015780907333099E+00;
  x( 4) = -.6423493394403401E+00;
  x( 5) = -.4484927510364467E+00;
  x( 6) = -.2304583159551348E+00;
  x( 7) = 0.0000000000000000E+00;
  x( 8) = 0.2304583159551348E+00;
  x( 9) = 0.4484927510364468E+00;
  x(10) = 0.6423493394403401E+00;
  x(11) = 0.8015780907333099E+00;
  x(12) = 0.9175983992229779E+00;
  x(13) = 0.9841830547185881E+00;
elseif (n==14)
  w( 1) = 0.3511946033175159E-01;
  w( 2) = 0.8015808715975993E-01;
  w( 3) = 0.1215185706879026E+00;
  w( 4) = 0.1572031671581927E+00;
  w( 5) = 0.1855383974779368E+00;
  w( 6) = 0.2051984637212945E+00;
  w( 7) = 0.2152638534631576E+00;
  w( 8) = 0.2152638534631579E+00;
  w( 9) = 0.2051984637212967E+00;
  w(10) = 0.1855383974779394E+00;
  w(11) = 0.1572031671581947E+00;
  w(12) = 0.1215185706879038E+00;
  w(13) = 0.8015808715976029E-01;
  w(14) = 0.3511946033175129E-01;

  x( 1) = -.9862838086968122E+00;
  x( 2) = -.9284348836635739E+00;
  x( 3) = -.8272013150697646E+00;
  x( 4) = -.6872929048116854E+00;
  x( 5) = -.5152486363581539E+00;
  x( 6) = -.3191123689278896E+00;
  x( 7) = -.1080549487073434E+00;
  x( 8) = 0.1080549487073439E+00;
  x( 9) = 0.3191123689278900E+00;
  x(10) = 0.5152486363581541E+00;
  x(11) = 0.6872929048116853E+00;
  x(12) = 0.8272013150697648E+00;
  x(13) = 0.9284348836635734E+00;
  x(14) = 0.9862838086968123E+00;
elseif (n==15)
  w( 1) = 0.3075324199611686E-01;
  w( 2) = 0.7036604748810761E-01;
  w( 3) = 0.1071592204671713E+00;
  w( 4) = 0.1395706779261536E+00;
  w( 5) = 0.1662692058169937E+00;
  w( 6) = 0.1861610000155617E+00;
  w( 7) = 0.1984314853271112E+00;
  w( 8) = 0.2025782419255614E+00;
  w( 9) = 0.1984314853271118E+00;
  w(10) = 0.1861610000155627E+00;
  w(11) = 0.1662692058169951E+00;
  w(12) = 0.1395706779261555E+00;
  w(13) = 0.1071592204671726E+00;
  w(14) = 0.7036604748810819E-01;
  w(15) = 0.3075324199611669E-01;

  x( 1) = -.9879925180204854E+00;
  x( 2) = -.9372733924007057E+00;
  x( 3) = -.8482065834104273E+00;
  x( 4) = -.7244177313601701E+00;
  x( 5) = -.5709721726085388E+00;
  x( 6) = -.3941513470775635E+00;
  x( 7) = -.2011940939974344E+00;
  x( 8) = -.2220446049250313E-15;
  x( 9) = 0.2011940939974346E+00;
  x(10) = 0.3941513470775635E+00;
  x(11) = 0.5709721726085387E+00;
  x(12) = 0.7244177313601700E+00;
  x(13) = 0.8482065834104271E+00;
  x(14) = 0.9372733924007058E+00;
  x(15) = 0.9879925180204854E+00;
elseif (n==16)
  w( 1) = 0.2715245941175374E-01;
  w( 2) = 0.6225352393864749E-01;
  w( 3) = 0.9515851168249226E-01;
  w( 4) = 0.1246289712555333E+00;
  w( 5) = 0.1495959888165762E+00;
  w( 6) = 0.1691565193950020E+00;
  w( 7) = 0.1826034150449232E+00;
  w( 8) = 0.1894506104550686E+00;
  w( 9) = 0.1894506104550693E+00;
  w(10) = 0.1826034150449242E+00;
  w(11) = 0.1691565193950039E+00;
  w(12) = 0.1495959888165779E+00;
  w(13) = 0.1246289712555344E+00;
  w(14) = 0.9515851168249294E-01;
  w(15) = 0.6225352393864737E-01;
  w(16) = 0.2715245941175337E-01;

  x( 1) = -.9894009349916499E+00;
  x( 2) = -.9445750230732328E+00;
  x( 3) = -.8656312023878314E+00;
  x( 4) = -.7554044083550031E+00;
  x( 5) = -.6178762444026438E+00;
  x( 6) = -.4580167776572275E+00;
  x( 7) = -.2816035507792587E+00;
  x( 8) = -.9501250983763732E-01;
  x( 9) = 0.9501250983763765E-01;
  x(10) = 0.2816035507792590E+00;
  x(11) = 0.4580167776572276E+00;
  x(12) = 0.6178762444026438E+00;
  x(13) = 0.7554044083550030E+00;
  x(14) = 0.8656312023878316E+00;
  x(15) = 0.9445750230732325E+00;
  x(16) = 0.9894009349916499E+00;
elseif (n==17)
  w( 1) = 0.2414830286854770E-01;
  w( 2) = 0.5545952937398704E-01;
  w( 3) = 0.8503614831717891E-01;
  w( 4) = 0.1118838471934039E+00;
  w( 5) = 0.1351363684685252E+00;
  w( 6) = 0.1540457610768101E+00;
  w( 7) = 0.1680041021564503E+00;
  w( 8) = 0.1765627053669930E+00;
  w( 9) = 0.1794464703562071E+00;
  w(10) = 0.1765627053669935E+00;
  w(11) = 0.1680041021564503E+00;
  w(12) = 0.1540457610768105E+00;
  w(13) = 0.1351363684685254E+00;
  w(14) = 0.1118838471934039E+00;
  w(15) = 0.8503614831717914E-01;
  w(16) = 0.5545952937398678E-01;
  w(17) = 0.2414830286854736E-01;

  x( 1) = -.9905754753144176E+00;
  x( 2) = -.9506755217687675E+00;
  x( 3) = -.8802391537269865E+00;
  x( 4) = -.7815140038968011E+00;
  x( 5) = -.6576711592166906E+00;
  x( 6) = -.5126905370864769E+00;
  x( 7) = -.3512317634538762E+00;
  x( 8) = -.1784841814958478E+00;
  x( 9) = 0.0000000000000000E+00;
  x(10) = 0.1784841814958479E+00;
  x(11) = 0.3512317634538763E+00;
  x(12) = 0.5126905370864770E+00;
  x(13) = 0.6576711592166908E+00;
  x(14) = 0.7815140038968014E+00;
  x(15) = 0.8802391537269858E+00;
  x(16) = 0.9506755217687677E+00;
  x(17) = 0.9905754753144174E+00;
elseif (n==18)
  w( 1) = 0.2161601352648302E-01;
  w( 2) = 0.4971454889496964E-01;
  w( 3) = 0.7642573025488883E-01;
  w( 4) = 0.1009420441062869E+00;
  w( 5) = 0.1225552067114782E+00;
  w( 6) = 0.1406429146706500E+00;
  w( 7) = 0.1546846751262646E+00;
  w( 8) = 0.1642764837458321E+00;
  w( 9) = 0.1691423829631434E+00;
  w(10) = 0.1691423829631430E+00;
  w(11) = 0.1642764837458328E+00;
  w(12) = 0.1546846751262664E+00;
  w(13) = 0.1406429146706515E+00;
  w(14) = 0.1225552067114795E+00;
  w(15) = 0.1009420441062878E+00;
  w(16) = 0.7642573025488943E-01;
  w(17) = 0.4971454889496965E-01;
  w(18) = 0.2161601352648310E-01;

  x( 1) = -.9915651684209310E+00;
  x( 2) = -.9558239495713980E+00;
  x( 3) = -.8926024664975556E+00;
  x( 4) = -.8037049589725231E+00;
  x( 5) = -.6916870430603528E+00;
  x( 6) = -.5597708310739478E+00;
  x( 7) = -.4117511614628426E+00;
  x( 8) = -.2518862256915055E+00;
  x( 9) = -.8477501304173507E-01;
  x(10) = 0.8477501304173540E-01;
  x(11) = 0.2518862256915056E+00;
  x(12) = 0.4117511614628427E+00;
  x(13) = 0.5597708310739475E+00;
  x(14) = 0.6916870430603532E+00;
  x(15) = 0.8037049589725229E+00;
  x(16) = 0.8926024664975557E+00;
  x(17) = 0.9558239495713977E+00;
  x(18) = 0.9915651684209309E+00;
elseif (n==19)
  w( 1) = 0.1946178822972596E-01;
  w( 2) = 0.4481422676569922E-01;
  w( 3) = 0.6904454273764057E-01;
  w( 4) = 0.9149002162244917E-01;
  w( 5) = 0.1115666455473329E+00;
  w( 6) = 0.1287539625393350E+00;
  w( 7) = 0.1426067021736055E+00;
  w( 8) = 0.1527660420658583E+00;
  w( 9) = 0.1589688433939536E+00;
  w(10) = 0.1610544498487835E+00;
  w(11) = 0.1589688433939550E+00;
  w(12) = 0.1527660420658612E+00;
  w(13) = 0.1426067021736085E+00;
  w(14) = 0.1287539625393376E+00;
  w(15) = 0.1115666455473350E+00;
  w(16) = 0.9149002162245097E-01;
  w(17) = 0.6904454273764168E-01;
  w(18) = 0.4481422676569959E-01;
  w(19) = 0.1946178822972679E-01;

  x( 1) = -.9924068438435840E+00;
  x( 2) = -.9602081521348302E+00;
  x( 3) = -.9031559036148180E+00;
  x( 4) = -.8227146565371426E+00;
  x( 5) = -.7209661773352292E+00;
  x( 6) = -.6005453046616811E+00;
  x( 7) = -.4645707413759608E+00;
  x( 8) = -.3165640999636299E+00;
  x( 9) = -.1603586456402253E+00;
  x(10) = 0.1110223024625157E-15;
  x(11) = 0.1603586456402255E+00;
  x(12) = 0.3165640999636298E+00;
  x(13) = 0.4645707413759610E+00;
  x(14) = 0.6005453046616810E+00;
  x(15) = 0.7209661773352294E+00;
  x(16) = 0.8227146565371428E+00;
  x(17) = 0.9031559036148178E+00;
  x(18) = 0.9602081521348300E+00;
  x(19) = 0.9924068438435845E+00;
elseif (n==20)
  w( 1) = 0.1761400713915191E-01;
  w( 2) = 0.4060142980038711E-01;
  w( 3) = 0.6267204833410912E-01;
  w( 4) = 0.8327674157670478E-01;
  w( 5) = 0.1019301198172406E+00;
  w( 6) = 0.1181945319615187E+00;
  w( 7) = 0.1316886384491771E+00;
  w( 8) = 0.1420961093183825E+00;
  w( 9) = 0.1491729864726041E+00;
  w(10) = 0.1527533871307253E+00;
  w(11) = 0.1527533871307241E+00;
  w(12) = 0.1491729864726025E+00;
  w(13) = 0.1420961093183820E+00;
  w(14) = 0.1316886384491767E+00;
  w(15) = 0.1181945319615187E+00;
  w(16) = 0.1019301198172408E+00;
  w(17) = 0.8327674157670528E-01;
  w(18) = 0.6267204833410926E-01;
  w(19) = 0.4060142980038687E-01;
  w(20) = 0.1761400713915236E-01;

  x( 1) = -.9931285991850947E+00;
  x( 2) = -.9639719272779137E+00;
  x( 3) = -.9122344282513259E+00;
  x( 4) = -.8391169718222187E+00;
  x( 5) = -.7463319064601510E+00;
  x( 6) = -.6360536807265151E+00;
  x( 7) = -.5108670019508268E+00;
  x( 8) = -.3737060887154198E+00;
  x( 9) = -.2277858511416453E+00;
  x(10) = -.7652652113349734E-01;
  x(11) = 0.7652652113349734E-01;
  x(12) = 0.2277858511416453E+00;
  x(13) = 0.3737060887154198E+00;
  x(14) = 0.5108670019508271E+00;
  x(15) = 0.6360536807265151E+00;
  x(16) = 0.7463319064601508E+00;
  x(17) = 0.8391169718222189E+00;
  x(18) = 0.9122344282513259E+00;
  x(19) = 0.9639719272779138E+00;
  x(20) = 0.9931285991850949E+00;
else
  error('gl_weight: Fatal error! Illegal value of N.')
end;

%  Transform the x values from [-1,1] to [a,b].
x = ( a * (1 - x) + b * (1 + x) ) / 2.0;

%  Transform the weights also
w = w * (b - a) / 2.0;

x=x';
w=w';

#93500
�������� ������������~
0 q 100
~
wait 1s
� ���������� ��� �������.
� ������ �������.
� ������� �������� ����� �� ����� �������.
� �, ��� ����������, ������ ���������� ��-������. ��� ��������.
� �� ���, ����! ���� ��������� �� ��������.
� ������� ������.
� �������� ���.
� � �� ������� ����� ������� �����, � ������ �� ����. ��� ���. ���� � ������ ����.
� ����� �������� ? � �����������.
calcuid star 93500 mob
attach 93501 %star.id%
~
#93501
�������� �����������~
0 d 100
������~
if %actor.vnum% != -1
  halt
end
If %actor.religion% = 0
  � ��� � ���������.
  wait 1s
  calcuid psal 93518 room
  detach 93504 %psal.id%
  calcuid star 93500 mob
  detach 93500 %star.id%
  � ��� � ��� ��� ����������.
  wait 1s
  � ��������� �� ����! ������ ����� ����� �� ����. ��� ��� ���������� �����.
  wait 1s
  � ��� ��������� ��������. � ������� �������. � ����� �����. ����������.
  wait 1s
  � ����� ��� ���������� ���. �� ���� �����������. �� ���� �����. ����� ����������.
  mload obj 93500
  ��� ��� %actor.name%
  wait 1s
  � ��� ��� ������� �� ������.
  mecho ����������� �������� �������� ��� ������ � ����� ����� ������� �� �����.
  mteleport all 93519
  wait 1
  calcuid killstar 93501 room
  attach 93544 %killstar.id%
  exec 93544 %killstar.id%
else
  wait 1
  � �� �� ��� � ������� �������! ��� �� �� �������� ��� ������?
end
~
#93502
�����~
2 f 100
~
calcuid star 93500 mob
attach 93500 %star.id%
calcuid star 93500 mob
detach 93501 %star.id%
calcuid star 93500 mob
detach 93535 %star.id%
calcuid killstar 93501 room
detach 93544 %killstar.id%
calcuid ps 93518 room
detach 93504 %ps.id%
calcuid kolokol 93525 room
detach 93543 %kolokol.id%
calcuid killmel 93518 room
detach 93545 %killmel.id%
wait 1s
wdoor  93564 west purge
wdoor  93563 east purge
wdoor  93518 west flags a
wdoor  93518 west room  93517
wdoor  93518 east   flags a
wdoor  93518 east room  93519
wdoor  93518 north flags a
wdoor  93518 north room  93521
wdoor  93518 south   flags a
wdoor  93518 south room  93520
wdoor  93519 west flags a
wdoor  93519 west room  93518
wdoor  93517 east   flags a
wdoor  93517 east room  93518
wdoor  93520 north flags a
wdoor  93520 north room  93518
wdoor  93521 south   flags a
wdoor  93521 south room  93518
~
#93503
������ ����~
1 h 100
~
if %actor.vnum% != -1
  halt
end
wait 1s
If %actor.realroom% == 93518
  calcuid killstar 93501 room
  detach 93544 %killstar.id%
  osend %actor% �� ����� ������� ����� ����, �� ��� ������� ������� ���� �������� �� ������.
  oechoaround %actor% %actor.name% ����%actor.g% ������� ����� ����, �� ��� ������� ������� ���� �������� �� ������.
  osend %actor% �� �������� ���������� �� ���� ������, ������� �������� ����� ���, � ������, ��������������, ����� � ������.
  oechoaround %actor% %actor.name% �������� ���������%actor.g% �� ���� ������, ������� �������� ����� ���, � �����%actor.g%, ��������������, ����� � ������.
  calcuid ps 93518 room
  attach 93504 %ps.id%
  opurge %self%
else
  wait 1
end
~
#93504
������ ��������~
2 c 100
������~
if !(%arg.contains(��������)%) 
  wsend       %actor% ��� ��� �� ������ ������???
  return 1
  halt
end
If %actor.religion% = 0
  wsend       %actor% �� ��������� �� ������ ������.
  wechoaround %actor% %actor.name% �����%actor.g% ������ ������.
  wecho �����, �� ��������, ��� ���� �������� ���������� � ����������� �������, � ��� �������� ���������� �����. 
  wload mob 93501
  detach 93504 %self.id%
else
  wsend       %actor% ������ ��� �������� ����� �����!!!
  wechoaround %actor% %actor.name% �����%actor.g% �������� ����� �����, �� ������� �����������.
end
~
#93505
������ �����~
0 f 100
~
calcuid psal 93518 room
detach 93504 %psal.id%
calcuid veter 93518 room
attach 93506 %veter.id%
run 93506 %veter.id%
~
#93506
����� ���� 18~
2 z 100
~
wait 15s
wecho �������� �������� �������� ����� � ������� ��� ����� � ������, ����� ������� � �����.
wecho ������������� ���� �������� ��� �� ���� ������.
wecho �� ��������� ��������� � �����!
wdoor  93518 west purge
wdoor  93518 north purge
wdoor  93518 east purge
wdoor  93518 south purge
wdoor  93519 west purge
wdoor  93520 north purge
wdoor  93517 east purge
wdoor  93521 south purge
wdoor  93524 west flags a
wdoor  93524 west room  93518
wdoor  93525 north flags a
wdoor  93525 north room  93518
wdoor  93522 east   flags a
wdoor  93522 east room  93518
wdoor  93523 south   flags a
wdoor  93523 south room  93518
calcuid veter 93517 room
attach 93507 %veter.id%
run 93507 %veter.id%
~
#93507
����� ���� 17~
2 z 0
~
wait 1
wecho �������� �������� �������� ����� � ������� ��� ����� � ������, ����� ������� � �����.
wecho ������������� ���� �������� ��� �� ���� ������.
wecho �� ��������� ��������� � �����!
wteleport all 93518
calcuid veter 93518 room
detach 93506 %veter.id%
calcuid veter 93519 room
attach 93508 %veter.id%
run 93508 %veter.id%
~
#93508
����� ���� 19~
2 z 0
~
wait 1
wecho �������� �������� �������� ����� � ������� ��� ����� � ������, ����� ������� � �����.
wecho ������������� ���� �������� ��� �� ���� ������.
wecho �� ��������� ��������� � �����!
wteleport all 93518
calcuid veter 93517 room
detach 93507 %veter.id%
calcuid veter 93520 room
attach 93509 %veter.id%
run 93509 %veter.id%
~
#93509
����� ���� 20~
2 z 0
~
wait 1
wecho �������� �������� �������� ����� � ������� ��� ����� � ������, ����� ������� � �����.
wecho ������������� ���� �������� ��� �� ���� ������.
wecho �� ��������� ��������� � �����!
wteleport all 93518
calcuid veter 93519 room
detach 93508 %veter.id%
calcuid veter 93521 room
attach 93510 %veter.id%
run 93510 %veter.id%
~
#93510
����� ���� 21~
2 z 0
~
wait 1
wecho �������� �������� �������� ����� � ������� ��� ����� � ������, ����� ������� � �����.
wecho ������������� ���� �������� ��� �� ���� ������.
wecho �� ��������� ��������� � �����!
wteleport all 93518
calcuid veter 93520 room
detach 93509 %veter.id%
calcuid vedma 93518 room
attach 93511 %vedma.id%
run 93511 %vedma.id%
~
#93511
������ �������~
2 z 100
~
wait 7s
wecho  "���? ����������� ������ �� ��� ����?",- ���������� ������� �������.
wait 1s
wecho "����! ���������, ����� �� �� ����!",- ������������� �����, �� ���������� �� � ��������� ���� �� �������.
wait 5s
calcuid veter 93521 room
detach 93510 %veter.id%
calcuid mertvec 93518 room
attach 93512 %mertvec.id%
run 93512 %mertvec.id%
~
#93512
�������2 ������~
2 z 100
~
wait 1
wecho ������� ������ � ������.
wload mob 93502
wait 1
calcuid vedma 93518 room
detach 93511 %vedma.id%
calcuid mertvecu 93502 mob
attach 93516 %mertvecu.id%
calcuid mertvec 93518 room
attach 93513 %mertvec.id%
run 93513 %mertvec.id%
~
#93513
�������3 ������~
2 z 100
~
wait 1
wecho ������� ������ � ������.
wload mob 93503
wait 1
calcuid mertvec 93502 mob
detach 93512 %mertvec.id%
calcuid mertvecu 93503 mob
attach 93518 %mertvecu.id%
calcuid mertvec 93518 room
attach 93514 %mertvec.id%
run 93514 %mertvec.id%
~
#93514
�������4 ������~
2 z 100
~
wait 1
wecho ������� ������ � �������.
wload mob 93504
wait 1
calcuid mertvec 93503 mob
detach 93513 %mertvec.id%
calcuid mertvecu 93504 mob
attach 93520 %mertvecu.id%
calcuid mertvec 93518 room
attach 93515 %mertvec.id%
run 93515 %mertvec.id%
~
#93515
�������5 ������~
2 z 100
~
wait 1
wecho ������� ������ � ���.
wload mob 93505
wait 1
calcuid mertvec 93504 mob
detach 93514 %mertvec.id%
calcuid mertvecu 93505 mob
attach 93522 %mertvecu.id%
calcuid vedmaidet 93525 room
attach 93546 %vedmaidet.id%
run 93546 %vedmaidet.id%
~
#93516
�������2 ����~
0 f 100
~
calcuid mertvecl 93518 room
attach 93517 %mertvecl.id%
run 93517 %mertvecl.id%
~
#93517
�������2 ����~
2 z 100
~
wait 1
wecho ������� ������ � ������.
wload mob 93502
calcuid mertvecu 93502 mob
attach 93516 %mertvecu.id%
~
#93518
�������3 ����~
0 f 100
~
calcuid mertvecl 93518 room
attach 93519 %mertvecl.id%
run 93519 %mertvecl.id%
~
#93519
�������3 ����~
2 z 100
~
wait 1
wecho ������� ������ � ������
wload mob 93503
calcuid mertvecu 93503 mob
attach 93518 %mertvecu.id%
~
#93520
������� 4 ����~
0 f 100
~
calcuid mertvecl 93518 room
attach 93521 %mertvecl.id%
run 93521 %mertvecl.id%
~
#93521
������� 4 ����~
2 z 100
~
wait 1
wecho ������� ������ � �������.
wload mob 93504
calcuid mertvecu 93504 mob
attach 93520 %mertvecu.id%
~
#93522
�������5 ����~
0 f 100
~
calcuid mertvecl 93518 room
attach 93523 %mertvecl.id%
run 93523 %mertvecl.id%
~
#93523
������� 5 ����~
2 z 100
~
wait 1
wecho ������� ������ � ���.
wload mob 93505
calcuid mertvecu 93505 mob
attach 93522 %mertvecu.id%
~
#93524
������ ������+��������� "������ �����"~
0 z 100
~
wait 25s
calcuid mertvecu 93502 mob
detach 93516 %mertvecu.id%
calcuid mertvecu 93503 mob
detach 93518 %mertvecu.id%
calcuid mertvecu 93504 mob
detach 93520 %mertvecu.id%
calcuid mertvecu 93505 mob
detach 93522 %mertvecu.id%
calcuid mertvecl 93518 room
detach 93517 %mertvecl.id%
calcuid mertvecl 93518 room
detach 93519 %mertvecl.id%
calcuid mertvecl 93518 room
detach 93521 %mertvecl.id%
calcuid mertvecl 93518 room
detach 93523 %mertvecl.id%
calcuid mertvec 93518 room
detach 93515 %mertvec.id%
calcuid vedmaidet 93525 room
detach 93546 %vedmaidet.id%
wait 1s
�����
���� !�������!
~
#93525
������ ������~
0 f 100
~
calcuid vedmaidet 93506 mob
detach 93524 %vedmaidet.id%
mecho ���� ������ �����, � �������� ����, ����� ���� �� ����������, ���� �� ������.
mecho "�� ��� ����������!",- ����������� ���.
mload obj 93502
if (%world.curobjs(93504)% < 10) && (%random.3% == 2)
  mload obj 93504
end
mecho ����� ���� � ������������� ����, ���������� ���, ����� ���������.
mdoor  93518 west flags a
mdoor  93518 west room  93522
mdoor  93518 north flags a
mdoor  93518 north room  93523
mdoor  93518 east   flags a
mdoor  93518 east room  93524
mdoor  93518 south   flags a
mdoor  93518 south room  93525
~
#93526
���� ���1~
0 f 100
~
if (%world.curobjs(93505)% < 10) && %random.100% < 50
  mload obj 93505
end
mecho ������ ����� ������ �� ����� ������� ���.
mload mob 93519
calcuid kolokol 93523 room
attach 93531 %kolokol.id%
calcuid tuman 93519 mob
attach 93527 %tuman.id%
run 93527 %tuman.id%
~
#93527
����� ������~
0 z 100
~
wait 1s
���� !���� ����!
wait 5s
� �� ��� �����������!
mecho ������ ����� ���� � ����, ���� ��� ������ ������.
wait 7
mpurge �����
~
#93528
���� ���2~
0 f 100
~
if (%world.curobjs(93510)% < 7) && %random.100% < 50
  mload obj 93510
end
mecho ������ ����� ������� ������� ��� � ����������� ��� �����.
mecho "������� ��������� �����! �����������!",- ����������� ��-��� �����.
calcuid viy 93526 room
attach 93540 %viy.id%
~
#93529
����� � ����~
2 c 100
��������~
if !(%arg.contains(����)%) 
  wsend       %actor% ���� ��� �� ������ ��������?
  return 1
  halt
end
if (%actor.move%>100) && (%actor.dex%>31) && (%actor.skill(�����������)%>90)
  wsend       %actor% �� ���� ���������� ���� ����������� ��� � ������� � ����.
  wait 2s
  eval %actor.move(-100)%
  wsend %actor% �� ���� ������ ������ ��������� ����������.
  wteleport %actor.name% 93528
else
  wsend %actor% ���������� ��� ��������� �����, ����� ��� ���������� �����.
  return 0
end
~
#93530
����� �� ����~
2 c 100
��������~
if !(%arg.contains(����)%) 
  osend       %actor% ���� ��� �� ������ ��������?
  return 1
  halt
end
if (%actor.move%>100) && (%actor.dex%>32) && (%actor.skill(�����������)%>90)
  wsend       %actor% �� ���� ������� �� ��������� ����������.
  wait 2s
  eval buf %actor.move(-100)%
  wsend %actor% �� ���� ���������� ���� ����������� ���.
  wteleport %actor.name% 93510
else
  wsend %actor% ���������� ��� ��������� �����, ����� ��� ����������� �����.
  return 0
end
~
#93531
������ � �������~
2 c 100
��������~
if !(%arg.contains(�������)%) 
  wsend       %actor% ��� �� ������ ��������?
  return 1
  halt
end
wait 1
wdoor  93518 west purge
wdoor  93518 east purge
wdoor  93518 north purge
wdoor  93518 south purge
wdoor  93524 west purge
wdoor  93522 east purge
wdoor  93525 north purge
wdoor  93523 south purge
wecho ������������� ���� �������� ��������� ����� � ����.
wecho ����� ������� ����� ������ �������. � �� ����� ��� ��������.
wecho ����������� �������� ����� �� ��� ����� ����.
wteleport all 93501
calcuid kolokol 93518 room
attach 93532 %kolokol.id%
run 93532 %kolokol.id%
~
#93532
��� � ���1~
2 z 100
~
wait 1s
wecho ������������� ���� �������� ��������� ����� � ����.
wecho ����� ������� ����� ������ �������. � �� ����� ��� ��������.
wecho ����������� �������� ����� �� ��� ����� ����.
wteleport all 93501
calcuid kolokol 93523 room
detach 93531 %kolokol.id%
calcuid kolokol 93522 room
attach 93541 %kolokol.id%
run 93541 %kolokol.id%
~
#93533
������ ���� ������� ������~
2 z 100
~
wload mob 93500
wait 1
calcuid kolokol 93525 room
detach 93543 %kolokol.id%
calcuid star 93500 mob
attach 93534 %star.id%
run 93534 %star.id%
~
#93534
������ ��������� ������?~
0 z 100
~
calcuid kolokol2 93501 room
detach 93533 %kolokol2.id%
mecho � ����� ������ ��� ��� ������, �� ��� ������� �����.
� ��� ������?
wait 1s
� ��! � ���� ����� ���� �����?
wait 1s
� � ������! ��� ��� �� ������� �������� ��� ����?
wait 1s
���� ��������� � ����� ������� ����� � �� ����������.
calcuid star 93500 mob
attach 93535 %star.id%
~
#93535
�������� �������������~
0 j 100
~
wait 1
if %object.vnum% != 93502
  drop all
  halt
end
wait 1
mpurge %object%
detach 93534 %self.id%
wait 1s
mecho ����� ����� ��������� � ����� �������� � ����������� � ����.
� � ������ ������!
� ����� ���� �������, ���� ��������.
if %world.gameobjs(93503)% < 10
  mload obj 93503
  ��� ����� %actor.name%
else
  ��� %actor.name%
end
mecho ������ ����������� � ������� ����� ���� � �������.
wait 1
mpurge %self%
~
#93536
���� ������� ���~
0 f 100
~
if (%world.curobjs(93506)% < 10) && (%random.3% == 1)
  mload obj 93506
end
~
#93537
���� ���� �����~
0 f 100
~
if (%world.curobjs(93507)% < 10) && (%random.3% == 3)
  mload obj 93507
end
~
#93538
���� ����~
0 f 100
~
if (%world.curobjs(93508)% < 10) && (%random.3% == 1)
  mload obj 93508
end
~
#93539
���� ����� ����~
0 f 100
~
if (%world.curobjs(93509)% < 10) && (%random.1000% <= 333)
  mload obj 93509
end
if (%world.curobjs(1743)% < 1) && (%random.1000% <= 100)
  mload obj 1743
end
~
#93540
����~
2 c 100
������~
if !(%arg.contains(�����)%) 
  wsend       %actor% ��� �� ������ ������?
  return 1
  halt
end
wait 1
wecho �� ����������� ���� �����, ��, �������, ������ �� �����.
if (%world.curobjs(93511)% < %world.maxobj(93511)%) && (%random.100% < 31)
  wload obj 93511
end
wait 1
calcuid viy 93526 room
detach 93540 %viy.id%
~
#93541
��� � ���2~
2 z 100
~
wait 1
wecho ������������� ���� �������� ��������� ����� � ����.
wecho ����� ������� ����� ������ �������. � �� ����� ��� ��������.
wait 1
wecho ����������� �������� ����� �� ��� ����� ����.
wteleport all 93501
calcuid kolokol 93518 room
detach 93532 %kolokol.id%
calcuid kolokol 93524 room
attach 93542 %kolokol.id%
run 93542 %kolokol.id%
~
#93542
��� � ���3~
2 z 100
~
wait 1
wecho ������������� ���� �������� ��������� ����� � ����.
wecho ����� ������� ����� ������ �������. � �� ����� ��� ��������.
wecho ����������� �������� ����� �� ��� ����� ����.
wteleport all 93501
calcuid kolokol 93522 room
detach 93541 %kolokol.id%
calcuid kolokol 93525 room
attach 93543 %kolokol.id%
run 93543 %kolokol.id%
~
#93543
��� � ���4~
2 z 100
~
wait 1
wecho ������������� ���� �������� ��������� ����� � ����.
wecho ����� ������� ����� ������ �������. � �� ����� ��� ��������.
wecho ����������� �������� ����� �� ��� ����� ����.
wteleport all 93501
calcuid kolokol 93524 room
detach 93542 %kolokol.id%
calcuid kolokol2 93501 room
attach 93533 %kolokol2.id%
run 93533 %kolokol2.id%
~
#93544
������� ��������~
2 z 100
~
wpurge �������
~
#93545
������� ���~
2 z 100
~
wpurge ���
~
#93546
������� ������ �� ������ � �������~
2 z 100
~
wload mob 93506
wload mob 93507
wload mob 93508
wload mob 93509
calcuid vedmaidet 93506 mob
attach 93524 %vedmaidet.id%
run 93524 %vedmaidet.id%
~
#93547
�������� ����~
2 c 100
��������~
if !(%arg.contains(����)%) 
  wsend       %actor% ��� ��� �� ������ ��������???
  return 1
  halt
end
wait 1
wsend       %actor% �� ���������� ������������� ��������, � ������� ������ ����������, ���������� ��������� ��� ������ ����� �������.
wechoaround %actor% %actor.name% ���������%actor.g% ������������� �������� � ������� ������ ����������, ���������� ��������� ��� ������ ����� �������.
wait 2s
wecho    ��������� ���� � �������� � ������� ������� ����� ������ �� �������� �����.
wdoor  93564 west flags a
wdoor  93564 west room  93563
wdoor  93563 east   flags a
wdoor  93563 east room  93564
calcuid most 93564 room
detach 93564 %most.id%
~
$~

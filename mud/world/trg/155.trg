#15502
����������� ������ � ����~
2 c 100
����������~
if !%arg.contains(������)% 
  wsend %actor%  ��� ��� �� ������ ���������� ?
  return 0
  halt 
end
wsend %actor%  �������� ������ � �����, �� ���������� ������.
wechoaround %actor%  %actor.name% ���������%actor.q% ������ �������� ������.
wdoor 15505 east room 15524
wdoor 15524 west room 15505
wecho  ��� ������ � ������ �����.
end
~
#15504
����� ������~
2 e 100
~
wait 5s
set used 0
foreach victim %self.pc%
  if (%victim.realroom% == %self.vnum%)
    if !%used% 
      wecho ������ � �������� ���������...
    end
    wteleport %victim% 15544
    set used 1
  end
done
if %used%
  detach 15504 %self.id%
end
~
#15505
����� ����� �����~
2 c 100
���������~
if !%arg.contains(�����)% 
  wsend %actor%  ���� �� ������ �����?
  return 0
  halt 
end
wsend %actor%  ����������, �� ���������� �� ������� ���� �����.
wechoaround %actor% %actor.name% ����� ����������%actor.g% ����� �����...
wteleport %actor% 15521
wsend %actor%  �� ��������� ����� �����
wechoaround %actor%  ���-�� �������� ������. 
end
~
#15506
����� ����� �����(�����)~
2 c 100
���������~
if !%arg.contains(�����)% 
  wsend %actor%  ���� �� ������ �����?
  return 0
  halt 
end
wsend %actor%  ����������, �� ���������� �� ������� ���� �����.
wechoaround %actor% %actor.name% ����� ����������%actor.g% ����� �����...
wteleport %actor% 15520
wsend %actor%  �� ��������� ����� �����
wechoaround %actor%  ���-�� �������� ������. 
end
~
#15509
����� � ���(1)~
2 c 100
������~
if %arg.contains(���)%
  wsend %actor.name% ���� �� ������ �������?   
  return 0
  halt
end
wait 1
wsend %actor.name% �� ����� ��������� � ����� ��� � �������� �� ��.
wechoaround %actor% %actor.name% �����%actor.q% � ��������� � ����� � �����%actor.q% ������.
wteleport .%actor.name% 15561
~
#15510
����� � ��� (2)~
2 c 100
������~
if %arg.contains(���)%
  wsend %actor.name% ���� �� ������ �������?   
  return 0
  halt
end
wait 1
wsend %actor.name% �� ���������� �� ������ � �� �������� �������� � ����� ���.
wechoaround %actor% %actor.name% �����%actor.u% � ������� �� ������ ����.
wteleport .%actor.name% 15558
~
#15511
����������� ���� �������~
0 q 100
~
wait 1
say �������, ������ �������!
say �� ����� ����, � �� ������� ���� ���!
say ���� ����� ��������.
say ��� ���� �� ����� ����� ����� �� �������.
���
wait 2s
say ������ ���, �������� ��� ���� �� ���������.
attach 15512 %self.id%
detach 15511 %self.id%
~
#15512
������ ������~
0 d 100
*~
set text ��� ���� �������?
if (%questor155% || (%speech% != %text%))
  halt
end
say ����� �� �������� ����� �������� ��������� ���� ������.
say �� ������ ����� ��������, �� �������� ������ ��������� �������� ������,
say �� �� ���� ��������� ��� ������.
say � ����� �� ������� ��������
say ���� �� ������ � ���, �� � ���� ���������� ���� � ��� ��� ��������� ������� � ����� ���.
���
wait 2s
say ���� ���������� ���, � ����� ���� � �� ���� ���, �� �������, ��� ��� ��� ���-�� �����.
say � �������� ���!
say ����� ����� ����, �� ���� ���������! ������ �� ������� � ��� ��� ���-�� ���!
wait 3s
say �� ��, ���� �� ������, ������ �� �������� �� ����� �������, �� ��� �� ������� ��������!
say ���� �� ��� ������� ����� ����, �� �� ���� ���� �������, ������� ������� ���� 
say �������� �������. 
say ����� ��� ��� �� ������ �� ���� � �� ������� ����.
say ��� ������, �� ���� ���!
detach 15512 %self.id%
~
#15513
���� �������~
0 dz 100
��������~
wait 1s
say �� ��� �� ���!
say ����� ���� � ����, � ������� �� �������� ���!
say ��� ������� ������� ���� � ��� � ��������!
wait 1s 
mload obj 15551
���� ����� %actor.name%
say �����! �� ����� ���� �����yp!
wait 1s
detach 15513 %self.id%
~
#15514
������ ������� ���� �� �� ����~
0 d 100
� ������ �� ����� ����, � ���� ������ ���!~
wait 5s
say ��..... ���� �� �� ��� �� �� ������ ����� �� ���!
wait 1
say ����� �� ��� � � ������ ����!
attach 15513 %self.id%
detach 15514 %self.id%
~
#15515
������ ����� ���� ��� �������~
0 p 100
~
mecho ���� ������������ ��� ����� ������� ���������� ��� ��������� ����!
%self.hitp% = %self.maxhitp%
~
#15516
�������� �������~
1 h 100
~
wait 1
oecho ������� ��������� �� ������ �������!
if (%actor.realroom% == 15583)
  oecho ���� �� �������� �������� ���� ������ �������!
  calcuid prizrak 15500 mob
  detach 15515 %prizrak.id%
  detach 15525 %self.id%
end
wait 1
opurge %self%
~
#15517
������ � ���~
0 k 100
~
dg cast '��� ���'
dg cast '��� ���'
~
#15518
��������� �� �����~
2 e 100
~
wait 1s
wecho  ����� ������ ���������� � ��� ��� ������.
~
#15519
����������� �� ��������~
2 g 100
~
if %actor.move% < 90 
  wsend %actor% �� ������� ������ ���� �� ���� ��������!
  return 0
else
  %actor.move(-90)%
end
~
#15525
����� ��� ����� � ����~
2 e 100
~
wait 2s
eval dam 900+%random.20%
wdamage %actor% %dam%
wecho ������ ��� ��������� �� ���� ������� ����� � ���.
detach 15525 %self.id%
~
#15527
������ ���������~
0 f 100
~
if (%random.100% < 50) && (%world.curobjs(15537)% < 5) then
  wload obj 15537
end
~
#15532
���� ������~
0 n 100
~
if (%random.100% < 6) && (%world.curobjs(15513)% < 3) then
  wload obj 15513
end
if (%random.100% < 20) && (%world.curobjs(15521)% < 10) then
  wload obj 15521
end
~
#15533
���� �������~
0 n 100
~
if (%random.100% < 16) && (%world.curobjs(15525)% < 5) then
  wload obj 15525
end
if (%random.100% < 15) && (%world.curobjs(15526)% < 5) then
  wload obj 15526
end
~
#15534
���� ���������~
0 n 100
~
if (%random.100% < 20) && (%world.curobjs(15515)% < 15) then
  wload obj 15515
end
if (%random.100% < 10) && (%world.curobjs(15515)% < 5) then
  wload obj 15556
end
~
#15536
������ � ��������~
2 c 100
���������~
if !%arg.contains(������)% 
  wsend %actor%  ��� ��� �� ������ ������ ?
  return 0
  halt 
end
wsend %actor%  ����� ����� �� ��������� �������� ������.
wechoaround %actor%  %actor.name% ��������%actor.g% �������� ������, ��������� ������.
wdoor 15501 north room 15502
wdoor 15502 south  room 15501
end
~
#15543
����� ����~
2 f 100
~
wdoor 15505 east purge 15524
wdoor 15524 west purge 15505
wdoor 15564 up purge
wdoor 15535 down purge
wdoor 15501 north purge 15502 
wdoor 15502 south  purge 15501
attach 15504 15543
~
#15546
���� ����~
0 j 100
~
wait 1
if %object.vnum% != 15536
  � ��� ���? ��� �� ���!
  ���� ���
  halt
end
wait 1
mpurge %object%
� �! ���������� ����������! �������!
� ���� ����� ������� �� ��������!
���
if (%world.curobjs(15517)% < 4) && (%random.1000% <= 100)
  mecho - ���, ��� ����� ������ ������� �� ������.
  mecho - �� ������� ���� ���� ������ ����������.
  mload obj 15517
  give  ���� %actor.name%
else
  mecho - ���, ������, ��� ��� ��� � ���� ����.
  msend       %actor% ��� ��� ��� 500 �����.
  %actor.gold(+500)%
  mechoaround %actor% ��� ��� %actor.dname% ������ �����.
end
detach 15546 %self.id%
~
#15547
����� ��������� �����~
0 f 100
*~
if (%world.curobjs(15510)% < 4) && (%random.1000% <= 150)
  mload obj 15510
end
if (%world.curobjs(15511)% < 4) && (%random.1000% <= 150)
  mload obj 15511
end
~
#15548
����� �����~
0 f 100
*~
if (%world.curobjs(15529)% < 4) && (%random.1000% <= 150)
  mload obj 15529
end
~
#15549
����� ������ ��������~
0 f 100
*~
if (%world.curobjs(15520)% < 6) && (%random.1000% <= 150)
  mload obj 15520
end
if (%world.curobjs(15560)% == 0)
  mload obj 15560
end
~
#15550
����� �������~
0 f 100
*~
if (%world.curobjs(15524)% < 4) && (%random.1000% <= 150)
  mload obj 15524
end
~
#15551
����� ��������~
0 f 100
*~
if (%world.curobjs(15515)% < 4) && (%random.1000% <= 150)
  mload obj 15515
end
if (%world.curobjs(15523)% < 4) && (%random.1000% <= 150)
  mload obj 15523
end
~
#15552
����� �������� �������~
0 f 100
*~
if (%world.curobjs(15534)% < 4) && (%random.1000% <= 150)
  mload obj 15534
end
if (%world.curobjs(15535)% < 4) && (%random.1000% <= 150)
  mload obj 15535
end
~
#15553
����� �������� ����~
0 f 100
*~
if (%world.curobjs(15546)% < 4) && (%random.1000% <= 150)
  mload obj 15546
end
if (%world.curobjs(15547)% < 4) && (%random.1000% <= 150)
  mload obj 15547
end
~
#15554
����� ���������~
0 f 100
*~
if (%world.curobjs(15537)% < 4) && (%random.1000% <= 150)
  mload obj 15537
end
~
#15555
����� �������~
0 f 100
*~
if (%world.curobjs(15518)% < 4) && (%random.1000% <= 150)
  mload obj 15518
end
~
#15556
����� ����������~
0 f 100
*~
if (%world.curobjs(15530)% < 4) && (%random.1000% <= 150)
  mload obj 15530
end
if (%world.curobjs(15542)% < 4) && (%random.1000% <= 150)
  mload obj 15542
end
~
#15557
����� ��������� �������~
0 f 100
*~
if (%world.curobjs(15525)% < 4) && (%random.1000% <= 150)
  mload obj 15525
end
if (%world.curobjs(15526)% < 4) && (%random.1000% <= 150)
  mload obj 15526
end
~
#15558
����� ������~
0 f 100
*~
if (%world.curobjs(15513)% < 4) && (%random.1000% <= 150)
  mload obj 15513
end
if (%world.curobjs(15522)% < 4) && (%random.1000% <= 150)
  mload obj 15522
end
if (%world.curobjs(15533)% < 4) && (%random.1000% <= 150)
  mload obj 15533
end
~
#15559
����� ������� ������~
0 f 100
*~
if (%world.curobjs(15512)% < 4) && (%random.1000% <= 150)
  mload obj 15512
end
if (%world.curobjs(15514)% < 4) && (%random.1000% <= 150)
  mload obj 15514
end
~
#15560
����� ������� ����~
0 f 100
*~
if (%world.curobjs(15541)% < 4) && (%random.1000% <= 150)
  mload obj 15541
end
if (%world.curobjs(15556)% < 4) && (%random.1000% <= 150)
  mload obj 15556
end
~
#15561
����� ������~
0 f 100
*~
if (%world.curobjs(15532)% < 4) && (%random.1000% <= 150)
  mload obj 15532
end
if (%world.curobjs(15557)% < 4) && (%random.1000% <= 150)
  mload obj 15557
end
~
#15562
����� ������ �������~
0 f 100
*~
if (%world.curobjs(15528)% < 4) && (%random.1000% <= 150)
  mload obj 15528
end
if (%world.curobjs(15531)% < 4) && (%random.1000% <= 150)
  mload obj 15531
end
~
#15563
����� ���������~
0 f 100
*~
if (%world.curobjs(15521)% < 4) && (%random.1000% <= 150)
  mload obj 15521
end
~
#15564
����� ������ ����� �������~
0 f 100
*~
if (%world.curobjs(15527)% < 4) && (%random.1000% <= 150)
  mload obj 15527
end
if (%world.curobjs(15549)% < 4) && (%random.1000% <= 150)
  mload obj 15549
end
~
#15565
�����  �������~
0 f 100
*~
if (%world.curobjs(15516)% < 4) && (%random.1000% <= 150)
  mload obj 15516
end
if (%world.curobjs(15519)% < 4) && (%random.1000% <= 150)
  mload obj 15519
end
if (%world.curobjs(15536)% < 4) && (%random.1000% <= 150)
  mload obj 15536
end
if (%world.curobjs(15544)% < 4) && (%random.1000% <= 150)
  mload obj 15544
end
~
$~

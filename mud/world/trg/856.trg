#85600
������� ������ ����������~
0 d 100
����������~
* ������� ������� �� �������. ��� ������� ����� ��� ��������� � ������� ����
* � ��������/������� ����, �������� ������������ ��� ������������ ���������,
* �������������� ����� ���������.
wait 1
if %actor.vnum% != -1
  halt
end 
say ������-������...
wait 1
if %actor.bank% < 2856
  ���
  say ��, � ���-�� ���� �� ������� �� ������!
  halt
end
eval buffer %actor.bank(-2856)%
mload obj 85645
mload obj 85646
mload obj 85648
mload obj 85649
mload obj 85649
mload obj 85649
mload obj 85649
mload obj 85649
mload obj 85649
mload obj 85649
mload obj 85649
mload obj 85649
mload obj 139
mload obj 139
put all ���
say ��� ������� ����.
give all .%actor.name%
drop all
wait 2
say ������ ���������� ���� ��������...
if %actor.bank% < 600
  ���
  say �� ���������� ���� ���� �������, � �� ���� � ���� ����� ���!
  halt
end
eval buffer %actor.bank(-600)%
mload obj 85600
mload obj 85600
mload obj 85601
mload obj 85603
mload obj 85604
mload obj 85605
mload obj 85606
mload obj 85607
mload obj 85608
mload obj 85609
mload obj 85610
mload obj 85623
give all .%actor.name% 
drop all
wait 1
say ������ ���%actor.g% ���� � ����� ���� - �� ������%actor.w% ���.
~
#85601
�������� �����~
1 g 100
~
if ((%actor.clan% == ���) || (%actor.vnum% != -1))
  halt
end
osend %actor% %self.name% ��������%self.u% � ����� ����� ����������� ������.
wait 1
opurge %self%
~
#85602
���� ����~
1 c 2
��������~
* ������� �� ���� ��������� ����. ��������� � �������.
* ����������, ���� �� ������� �������� �������� (�������)
* ��� ����, �� � �������� ���������� ������ ���������
wait 1
if !%arg.contains(����������)%
  osend %actor% ���� �������?
  halt
end
osend %actor% �� �������� ���������� � ����� � �������� ����� �����.
if %actor.clan% != ���
  halt
end
if %world.curmobs(85608)% > 50
  osend %actor% �� ��� ��� ����������, ��� �� �������� ����� ����� ����� ����������� ����� �����.
  osend %actor% �� ����� ��� ������� �������, ��� �� ������...
  halt
end
oechoaround %actor% %actor.name% ������%actor.g% ���������� � ����� � �������� ����� �����.
oload mob 85621
oecho ����������� ������ �������� � �� ��������� ���� ������� ������ �����.
oforce %actor% �������� �����
wait 1
opurge %self%
~
#85603
���������� ����~
0 c 100
��������~
* ������� �� ����������� ��������� ����. ��������� � ����-����.
* ����������, ���� �� ������� �������� �������� (�������)
* ��� ����, �� � �������� ���������� ������ ���������
wait 1
if %self.fighting%
  halt
end
if !%arg.contains(�����)%
  msend %actor%  ���� �� ������ ��������?
  halt
end
if (%actor.clan% != ���) || (%actor% != %self.leader%)
  msend %actor% ��� �� ���� ��������.
  halt
end
msend %actor% �� ������ ���������� � ���� ����� �������� ��������.
mechoaround %actor% %actor.name% �������%actor.g% ������, ��������� � ����� ������ �������� ��������.
mload obj 85652
give ���������� .%actor.name%
wait 1
mecho ������ �������� ������� ����� ����� � ��� �� ��������� � ������.
wait 1
mpurge %self%
~
#85604
������ �������~
0 m 1
~
* ���� ����� �� ������
wait 1
if %amount% < 50
  wait 2
  say �������� �����!
  give %amount% ��� .%actor.name%
  halt
end
if %world.curobjs(85652)% >= 10
  wait 2
  say ���� ���������, ���������!
  give %amount% ��� .%actor.name%
  halt
end
wait 2
say ���, �����!
�� ����� �������� �������
wait 1s
� ��� ��������� � ��� ����������, ��� ��� �� ��������� ���� �� ���� ������!
� � ���� �� ����� ����� - ������� ��.
mload obj 85652
give ����� .%actor.name%
~
#85605
��������������~
0 q 100
~
wait 1s
� ����� ����������, ���������!
� � ���� �� ���� ������� �, ��� ����� ��������������.
� 50 ��� ������ � ������� �����!
~
#85606
�������������������~
0 q 100
~
wait 1s
if %actor.clan% == ���
  mecho _�����-������ �������� ��������� ���������� �����
else
  mecho _�����-������ ��������� ���������, ������ ������ ����� � ����� �����.
end
~
#85607
��������� � ����� ���������~
2 b 25
~
switch %random.6%
  case 1
    wecho ������ ����� ������������, � ������ ���������.
  break
  case 2
    wecho ������-�� ������ �� ��� ��������� ����� ������� ������ �����.
  break
  case 3
    wecho ���������� ������� ���������� ����, � � ��� ��� ������� ����� �������� ������.
  break
  case 4
    wecho ����� ���������� ������� ������ ��� �� �������.
  break
  case 5
    wecho �� �����������, � �������� ����� � ���� ���������������� ��������.
  break
  case 6
    wecho ������ ����� �����-���������� ��������� ����������� ��� ������������.
  break
done
~
#85608
����-��������� �������~
0 bq 30
~
wait 1
set victim %random.pc%
if !%victim%
  halt
end
msend %victim% ����-��������� �������� ��������� ��� ���������� � ������� �����.
mechoaround %victim% ����-��������� �������� ��������� %victim.vname% ���������� � ������� �����.
if (%random.100% <= 51)
  msend %victim% ����-��������� ���������� ����� ��� ����������, � ������� � ���� � �����!
  mechoaround %victim% ����-��������� ����� %victim.vname% ���������� � ���������!
  mteleport %victim% 50084
  mechoaround %victim% ���-�� �� ���������� ������ ��������� ������.
end
~
#85609
��������� �� ����� ����������~
2 c 1
����� �������� �������~
wait 1
if !%arg.contains(����)%
  wsend %actor% ���� ��� �� ������?
  halt
end
if (%actor.move% < 30)
  wsend %actor% �� ������� ������...
  halt
end
wsend %actor% �� ������ �� ������� � �������� � ����.
wechoaround %actor% %actor.name% ����� �� ������� � �������� �������������� � ������������ �����.
wait 2s
if (%random.100% < 98)
  wsend %actor% �� ����� ������� �� ������ ����������, �� � �����-������ ����� ������ � �����...
  wechoaround %actor% ����� ������%actor.w% ������ %actor.name% ������%actor.q% ������-��.
  eval buf %actor.move(-30)%
  halt
end
wsend %actor% �������-�� �� ��������� ������! �� � ����� ����...
calcuid mushroom 85622 mob
if %mushroom%
  set room %mushroom.realroom%
else
  eval room 27030+%random.20%
end
wteleport %actor% %room%
wechoaround %actor% ����� ������%actor.w% ������ %actor.name% ������%actor.q% ��-��� �����-����������!
~
#85610
����� ����������~
0 f 100
~
calcuid troom 50084 room
foreach target %troom.pc%
  mteleport %target% %self.realroom%
  mechoaround %target% �������� ������ ������ %target.name% �������%actor.y% �� ����������� ����� �����-����������!
  msend %actor% ���-�� ������� ���������� ����� � �� ���������� ������!
done
~
$~

#67100
������ ������� � �������~
0 r 100
~
wait 2
� ���������� ��������!
wait 1s
������
� �� ��� ������� ������� ��� ������ ����� ������� ���-�� �������� ��������?
� � ����� �� ������� ��� � ���� �����.
� ���������� ���� ������, ������ ���� �� �������� �� ����� ��������.
� �� ����� � ���� ����� ���, �� � �� ������ �� �����,
� �������� �� ���������, ����� ��� ���� ����������.
� � ������ ������ �� ������ � ����� ��� � ������� ��� ������� �� �������.
� ��� ���� ��� ��������, ����, �� ����� ������, ����� �� ������� ����!
wait 1s
� � � ������ �� ����� ��������� ��������, �� ����������� ��, �� ��� ������?
� ���� ������� � ����� �� ���������, ������� �� ���� ����� ���� ������!
attach 67104 %self.id%
end
~
#67101
��� ������~
1 j 100
~
if !(%actor.religion% == 0)
  osend %actor.name% ������ ��� ���� ������ ���� ������� �� �������!
  oechoaround %actor% %actor.name% �������%actor.u% �� ����������.
  return 0
  halt
end
~
#67102
��������� ����~
2 c 100
�������~
if !(%actor.haveobj(67100)%)
  wsend %actor.name% � ��� ��� ������� �����.
  wechoaround %actor% %actor.name% ����������� ������� � ���������� �������� �����.
  halt
end
if !(%arg.contains(������)%)
  wsend %actor.name% ��� �� ����������� �������?
  halt
end
wsend %actor.name% �� ������� ������ � ���������� �� �������� �����.
wechoaround %actor% %actor.name% ������ ������ � ���������� �� �������� �����.
wait 1s
wecho ������� � �������� ����� ����� ����������, ����������� ������...
wait 1s
wdoor 67181 north flags a
wdoor 67181 down room 67189
wdoor 67189 north flags a
wdoor 67189 up room 67181
wecho ����� ������������.
wpurge ������
end
~
#67103
��������� ����~
2 c 100
������~
if !(%arg.contains(������)%)
  wsend %actor.name% ��� �� ����������� ������?
  halt
end
wsend %actor.name% �� ���������� ������ ������ �� �������� �����, �� � ��� ������ ������������,
wsend %actor.name% ��� ����� ������ ��� �������� �� ���������� � ���� �� �����.
wechoaround %actor% %actor.name% ��������� ������ ������ �� �������� �����, �� � ���� ������ ������������,
wechoaround %actor% ��� ����� ������ ��� �������� �� ���������� � ���� �� �����.
wait 1s
wecho ������� � �������� ����� ����� ��������, �������� ������...
wait 1s
wdoor 67181 down purge
wdoor 67189 up purge
wecho ����� ������������.
wload obj 67100
end
~
#67104
����������� ������ ������~
0 d 1
������~
wait 1
� ������� ���� �������� �� �� ��� �������� ��� ����.
� ��� ��� � ���� �����, ��� ���� ������� �� ������ ���,
� � ������� �� �� ���� ��������� �����-�� ������ ������ - ���������,
� ������� ���� ���� ������ �� ����� ������ �� ����� ������������.
� �� � �� ���� ���� ���������� �� �����, � ����� ������ �� ����,
� ���� ���� ������������, ������� � ������ �������, ����� �� ������ ���� ��� ������.
set quest %actor%
global quest
calcuid vopr671 67101 mob
remote quest %vopr671.id%
calcuid vopr671 67104 mob
remote quest %vopr671.id%
attach 67105 %self.id%
detach 67100 %self.id%
detach 67104 %self.id%
end
~
#67105
������ ��� ������~
0 r 100
~
wait 1
if (%actor.name% == %quest.name%)
  ���� %actor.name%
end
~
#67106
������� ���� �������~
0 r 100
~
wait 1
if (%actor.name% == %quest.name%)
  � �, ���������� ��������, � ����, ���� ������� ������ �� �������.
  � ��� ������ ��� �����.
  � ��� ���� ����� ������ ��� ��� ���������� ������,
  � ��� ����������� ��������� ���������, ��� ���������� ������.
  � ������� ��� ������ ���������, ������� ������� �� ��������,
  � � ����� ������� � ������ ���� ������� ����� �� �������.
  � � ����� ������������� � ����� ��������� ����������,
  � ������� ������ ��� �� ������!
  � �� � ����, �����.
  wait  2s
  attach 67107 %self.id%
  detach 67106 %self.id%
end
~
#67107
������ � ������� �����~
0 r 100
~
if (%actor.name% != %quest.name%)
  halt
end
if !(%actor.haveobj(67101)%) && !(%actor.haveobj(67102)%)
  ���� %actor.name%
  � ��� ����� ���� ������ ��������� � ����� �������
  halt
end
if !(%actor.haveobj(67101)%) 
  ���� %actor.name%
  � ��� ����� ���� ������ ���������
  halt
end
if !(%actor.haveobj(67102)%) 
  ���� %actor.name%
  � ��� ����� ����� �������
  halt
end
� ��� �������! �� ����� �� ������ ���� �����������!
wait 1
msend %actor.name% �� ���� ����� ������� �������.
mechoaround %actor% %actor.name% ��� ����� ������� �������.
wait 1
msend %actor.name% �� ���� ���� ������ ��������� �������.
mechoaround %actor% %actor.name% ��� ���� ������ ��������� �������.
mpurge  �����.�������
mpurge ����.������.���������
� ��� � ������, ��� ���, � ��������, ��� �� ���� �������.
wait 1s
mecho ������� ������ �����, ������� � ���� ������ ��������� � ����� ������
mecho � �������� ���-�� �������, ��� ����� � ����� ���-�� ���� ���������...
wait 1s
*������� ����� �� �����
� ��, � ��������� ���� ���������, ������� ���������� ������ � �������� ����� �������� �� �����
� ��� ������ �� ��� ������, ��� ����� ���������, � ������ ����� ������� ����� ��������� �����������
� ���� ���� ������ ������ ���� �������� �� ������� ����������� ����� �������, ������� ��������� ��
� �������� �����, �� ����� ������� � ��� ���� ����������� ��� ���.
mload obj 67100
���� ������ %actor.name%
wait 1s
� ����� ���� ������ � ��������� ����� �� ������� �������, � ��������� ������ ����,
� ��� �� � ������� ������.
detach 67107 %self.id%
end
~
#67108
������ ������~
0 r 100
~
wait 1
if (%actor.name% != %quest.name%)
  halt
end
� �������, ���� �� ������ ����, ��������������!
wait 1s
switch %random.20%
  case 1
    wait 1
    � � ������ ���������?
    if (%world.curobjs(67111)% < 3) && (%random.3% == 1)
      mload obj 67111
    end
    ���� ����� %actor.name%
  break
  case 2
    wait 1
    � ��� ������ � �������
    %self.gold(3000)%
    ���� 3000 ��� %actor.name%
  break
  case 3
    � ��� ������ � �������
    %self.gold(3000)%
    ���� 3000 ��� %actor.name%
  break
  default
    � ��� ������ � �������
    %self.gold(3000)%
    ���� 3000 ��� %actor.name%
  done
  if (%random.1000% < 50)
    mload obj 103
    ���� ��� %actor.name%
  end
  detach 67108 %self.id%
~
#67109
�������� �� ������~
2 c 100
�����������~
if !(%arg.contains(�����)%)
  wsend %actor.name% ���� �� ����������� �����������?
  halt
end
wsend %actor% �������� �� ����� ��������, �������� �� ������, �� ������� ������.
wechoaround %actor% �������� �� ����� ��������, �������� �� ������, %actor.iname% �����%actor.q% ������.
wait 1s
wteleport %actor% 67154 horse
wait 1
wsend %actor% �������-�� �� ������� �� ������ � ������ �� ������ �����.
wechoaround %actor% %actor.iname% �����%actor.q% �� ������ � �����%actor.g% �� ������ �����.
~
#67110
�������� ��~
2 e 100
~
calcuid vopr671 67135 room
attach 67112 %vopr671.id%
calcuid vopr671 67196 room
attach 67112 %vopr671.id%
wait  2s
wsend %actor.name% �� ����������� � ������ �� ����. ���� ���������� �� ����!
wechoaround %actor% %actor.name% ���������� � ������ �� ����.
wait  2s
wsend %actor.name% �� ����������� � ������ �� �����. ���� ���������� �� ����!
wechoaround %actor% %actor.name% ���������� � ������ �� �����.
wait  2s
wsend %actor.name% �� ����������� � ������ � �������.
wechoaround %actor% %actor.name% ���������� � ������ � �������, � ����� �������������.
wdamage %actor.name% 2000
~
#67111
�������� ����~
2 e 100
~
if %random.15% == 1
  wait 1
  wsend %actor.name% ����� ����� �� ����� ������ ��� ����� � ����!
  wechoaround %actor% ������ ����� ������ %actor.rname% ����� � ����!
  wdamage %actor.name% 100
end
~
#67112
���������� ��~
2 e 100
~
calcuid vopr671 67138 room
detach 67110 %vopr671.id%
calcuid vopr671 67138 room
attach 67110 %vopr671.id%
~
#67113
������ ����~
0 f 100
~
calcuid vopr671 67100 mob
attach 67108 %vopr671.id%
calcuid vopr671 67100 mob
detach 67105 %vopr671.id%
calcuid vopr671 67105 mob
detach 67114 %vopr671.id%
calcuid vopr671 67106 mob
detach 67114 %vopr671.id%
end
~
#67114
���� �����~
0 r 100
~
� %actor.name%
~
#67115
������� � ������������~
0 q 100
~
if (%actor.name% != %quest.name%)
  � ���������� ������!
  � �� ������ �� �� ��������� ��� �������?
  � ������� ������!
  attach 67116 %self.id%
  halt
end
� ���� ��������� �����!
� %actor.name%
halt
end
~
#67116
������� �����������~
0 d 1
������~
� ��� ���� �������, � � �������������� ����� ������� ��� ��� ������
set quest1 %actor%
global quest1
attach 67121 %self.id%
detach 67115 %self.id%
detach 67116 %self.id%
end
~
#67117
���������� ����������~
2 f 100
~
calcuid vopr 67100 mob
rdelete quest %vopr.id%
calcuid vopr5 67101 mob
rdelete quest %vopr5.id%
calcuid vopr6 67104 mob
rdelete quest %vopr6.id%
calcuid vopr1 67104 mob
rdelete quest1 %vopr1.id%
calcuid vopr2 67100 mob
attach 67100 %vopr2.id%
calcuid vopr3 67104 mob
attach 67115 %vopr3.id%
calcuid vopr4 67101 mob
attach 67106 %vopr4.id%
wdoor 67181 down purge
wdoor 67189 up purge
end
~
#67118
���� ������~
0 f 100
~
mload obj 67101
if (%world.curobjs(67106)% < 5) && (%random.5% == 1)
  mload obj 67106
end
~
#67119
���� �����~
2 f 100
~
wload obj 67102
~
#67120
���� ������~
0 f 100
~
mload obj 67103
~
#67121
������ ������ 2~
0 j 100
~
wait 1
���
� ������ ���� �������!
mpurge  ������.�������
switch %random.20%
  case 1
    wait 1
    � � ������ ���������?
    if (%world.curobjs(67110)% < 3) && (%random.3% == 1)
      mload obj 67110
    end
    ���� ����� %actor.name%
  break
  case 2
    wait 1
    � ��� ������ � �������
    %self.gold(3000)%
    ���� 3000 ��� %actor.name%
  break
  case 3
    wait 1
    � ��� ������ � �������
    %self.gold(3000)%
    ���� 3000 ��� %actor.name%
  break
  default
    � ��� ������ � �������
    %self.gold(3000)%
    ���� 3000 ��� %actor.name%
  done
  detach 67121 %self.id%
~
#67122
���� � �������~
0 f 100
~
if (%world.curobjs(67105)% < 10) && (%random.5% == 1)
  mload obj 67105
end
~
#67123
���� � ���������~
0 f 100
~
if (%world.curobjs(67106)% < 5) && (%random.5% == 1)
  mload obj 67106
end
~
#67124
���� � �����~
0 f 100
~
if (%world.curobjs(67108)% < 10) && (%random.5% == 1)
  mload obj 67108
end
~
#67125
����� ������~
0 f 100
~
if (%world.curobjs(67112)% < 5) && (%random.5% == 1)
  mload obj 67112
end
~
#67126
����� ���������� ����~
0 f 100
~
if (%world.curobjs(67113)% < 5) && (%random.5% == 1)
  mload obj 67113
end
~
#67127
����� ��������~
0 f 100
~
if (%world.curobjs(67114)% < 5) && (%random.5% == 1)
  mload obj 67114
end
~
$~

#47100
���������~
0 d 1
����������~
wait 1
set questor471 %actor%
global questor471
calcuid grove 47171 room
remote questor471 %grove.id%
calcuid master 47176 room
remote questor471 %master.id%
say ��� ������ ������� �, ���� �����
mecho _- ���� �� ������ ������ �� ���� ������, �� ��� ��?
mecho _- ��� ���, �� ���� ������ ������ ������.
mecho _- � ������� � ���� ���� �������, ����� ������, ���� ���� �������!!
wait 2s
mecho _- ��������� ������ ���� �������...
mecho ������ �������� � ��������.
calcuid selfroom 47107 room
run 47112 %selfroom.id%
~
#47101
������~
0 q 100
~
wait 3
mecho ��� ���� ��� ������� ������ � ������ �����������.
wait 1s
if %actor.sex% == 1
  say ����������, ������.
else
  say ����������, ������ ������.
end
������
~
#47102
�����~
0 r 100
~
wait 1
say � ����� �� ������ �� ��� ����...
say ������� ������!!
wait 3
����� %actor.name%
mkill %actor%
~
#47103
�������~
2 c 1
����������� ������~
wait 1
if !%arg.contains(�����)%
  wsend %actor% �� ������������ �� ��� ������ ������� �����.
end
if %questor471.id% != %actor.id% 
  wsend %actor% �� ����������� ������, ������ ������ �������
  wechoaround %actor%   %actor.name% ��������%actor.u% ������, ����� ������ �������.
  wecho ...�� ����� ������ ����������� �� ���������.
  halt
end
wecho ��� �������� ���������� ������ ��� ������������ �����.
wecho ��� ������� ������: '�� �������� � ����� ����� � ����� ������!'
wecho _- ����� ������ ������ � �� ������������� � ������ ����.
wecho _- ������ ����� �����.
wecho _- ��� �����.
detach 47103 %self.id%
~
#47104
���~
2 c 1
������� ������~
if %questor471% != %actor.id% 
  return 0
  halt
end
wait 1
wsend %actor% �� ����� ������� �����.
wechoaround %actor%   %actor.name% ����� ������%actor.g% �����.
wecho � ������� �������� ��� ����� � ��������:
wecho �� �������� � ����� ����!
eval %actor.hitp(+500)%
detach 47104 %self.id%
~
#47105
����� ������~
0 f 100
~
mload mob 47107
mforce  ����� �� %actor.name%
return 0
~
#47106
��������� ������~
0 n 100
~
mload obj 47107
�� ���
mecho ��� ������ ������ �������� �������� ������...
mecho ����� ������� ����� ���� ��� ������ ������ � ������ ��������.
mecho ����� ���� ���������� ������� �� ��� � ������:
mecho - ��� ������� ����� �������������� ?!
~
#47107
����� ������������~
0 f 100
~
if (%world.curobjs(47114)% < 3) && (%random.10% <= 2)
  mload obj 47114
end
if (%world.curobjs(47108)% < 5) && (%random.10% <= 1)
  mload obj 47108
end
~
#47108
����� ������~
0 f 100
~
if (%world.curobjs(47110)% < 6) && (%random.15% <= 2)
  mload obj 47110
end
if (%world.curobjs(47112)% < 6) && (%random.15% <= 2)
  mload obj 47112
end
~
#47109
����� ���~
0 f 100
~
if (%world.curobjs(47111)% < 6) && (%random.15% <= 2)
  mload obj 47111
end
~
#47110
����� ������~
0 f 100
~
if (%world.curobjs(47103)% < 6) && (%random.15% <= 2)
  mload obj 47103
end
~
#47111
����� �����~
0 f 100
~
if (%world.curobjs(47109)% < 6) && (%random.15% <= 2)
  mload obj 47109
end
~
#47112
������� ������~
2 z 100
~
calcuid target 47105 mob
wdamage %target% 1000
~
#47113
����� ���� 471~
2 f 100
~
calcuid grove 47171 room
attach 47103 %grove.id%
calcuid master 47176 room
attach 47104 %master.id%
~
$~

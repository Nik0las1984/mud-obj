#69100
������ ������ � ����~
2 e 100
~
*���� ����� ����� �� �������� :))))
wait 3s
wecho _����� ���� ��������� � �� ����������� ��������� �������� ������!
wecho _� � ����� ����� ��������� �� ���!
wload mob 69100
detach 69100 %self.id%
~
#69101
������� ����� ����~
2 c 100
������������~
if !%arg.contains(����)% 
  wsend %actor% _���� ��� �� �������� ���������!?
  return 0
  halt 
end
wsend %actor% _������������ � ��� ������� ������������ �� �������� �� ������ �����.
wechoaround %actor% _%actor.name% �����������%actor.g% �� ������ ����� ����...
wteleport %actor% 69109
wsend %actor% _�� ������������ �� ������ ����� ����.
wechoaround %actor% _���-�� ������� ���� � ��� ������� ����. 
end
~
#69102
����� ���� �������~
2 c 100
������������~
if !%arg.contains(����)% 
  wsend %actor% _���� ��� �� �������� ���������!?
  return 0
  halt 
end
wsend %actor%  ������������ � ��� ������� ������������, �� �������� �� ������ �����.
wechoaround %actor%  %actor.name% �����������%actor.g% �� ������ ����� ����...
wteleport %actor% 69105
wsend %actor% _�� ������������ �� ������ ����� ����.
wechoaround %actor%  ���-�� ������� ���� � ��� ������� ����.
end
~
#69103
���� �����~
0 f 100
~
mecho _����� ����� ������������ ���� � ����������� � �������!
mecho _�� ����� �������� ����� ��� �������� �����!
mload mob 69102
~
#69104
����� ���� ������ � ������~
0 f 100
~
mload obj 69112
~
#69105
������� ������ ������~
2 h 100
~
if (%object.iname% == ������ ������)
  wait 1s
  wecho _����� ������� ���������� �����.
  wait 1s
  wecho _���������� ������.
  wait 1s
  wecho _������ ����.
  wait 1s
  wecho _� ����� ������ ���������� ������������, �������� ������.
  wdoor 69138 west room 69139
  wdoor 69139 east room 69138 
  wait 1s
  wecho _� ��� ������ ��� ���������� �����, � ����� ������ ������.
end
~
#69106
���� �����~
0 f 100
*~
if (%random.5% == 2) && (%world.curobjs(69120)% < 1)
  mload obj 69120
end
if (%random.5% == 2) && (%world.curobjs(69121)% < 1)
  mload obj 69121
end
if (%random.5% == 2) && (%world.curobjs(69122)% < 1)
  mload obj 69122
end
~
#69107
������ ������ ������~
0 f 100
~
msend %actor% _����� ������ ���������� �����, ���� ������ �� ������ �������� ��� ����!
mechoaround %actor% _����� ����� %actor.rname% ������ ����������� �� �������� � �����!
switch %random.10%
  case 1
    mload obj 69123
  break
  case 2
    mload obj 69124
  break
  default
    mload obj 69125
  break
done
~
#69108
���� ������~
0 f 100
~
msend %actor% _����� ������ ���������� �����, ���� ���������� ������� �� ������ �������� ��� ����!
mechoaround %actor% _����� ����� %actor.rname% ������ ���������� �� �������� � �����!
switch %random.10%
  case 1
    mload obj 69131
  break
  case 2
    mload obj 69132
  break
  default
    mload obj 69133
  break
done
~
#69109
����� ������� ��������~
0 f 100
~
if %random.7% == 1 && %world.curobjs(69104)% < 4
  mload obj 69104
end
~
#69110
���������� � ������~
2 c 100
����������~
if !%arg.contains(������)% 
  wsend %actor% _���� ��� �� ���������� ���������!?
  return 0
  halt 
end
wsend %actor% _�� ������ ��������� ���������� � ������.
wechoaround %actor%  %actor.name% �����%actor.g% ���������� � ������.
wteleport %actor% 67700
wsend %actor% _�� ���������� � ������, ������ ������� ����!
wechoaround %actor% _���-�� ��������� ����. 
end
~
#69111
�����~
2 f 100
~
wdoor 69138 west purge
wdoor 69139 east purge
calcuid river 69119 room
attach 69100 %river.id%
~
$~

#61000
�������� �����~
2 e 100
~
wait 1
foreach fchar %self.pc%
  if (%fchar.move% < 30)
    wsend %fchar% � ��� �� ������� ��� �� ������.
    wsend %fchar% ��� ������ ���������� � ������...
    wsend %fchar% ��� ������!
    wechoaround %fchar% %fchar.name% �����%actor.g% ������!!! 
    wechoaround %fchar% %fchar.name% �������� ������%actor.g% � �������� ����!!! 
    wteleport %fchar% 61060
    wait 1s
    if %fchar.realroom% == 61060
      wsend %fchar% �� ������!!
    end
  else
    wsend %actor%  �� ������������ � ����� �� �����
    wechoaround %actor%  �� ������������ � ����� �� �����
    eval buffer %fchar.move(-30)%
  end
done
~
#61001
�������� ����������� �� ������~
2 e 50
~
wait 1
wecho ������-�� ������ ������ �������� ����� �������:
wecho ������ ���, ������, ���������...
wait 6 
wecho ������� � ������ �������������, �� � ������� �������� �� �����!
wecho ������, ��� ��� ����������, ���� �� ��������� ���������� ��� ������� �������.
~
#61002
�������� ����������� �� ������-2~
2 e 50
~
wait 1
wecho �������� ��������, ��������� ����, ��������� ������� ���!
wecho ���� �������� �����, ��� ��� ����, �������������� (���� �������� � �����)
wait 6 
wecho ������ �� ��� ��������, ��������� ��� � �������, ��������� �������
wecho � ������ �������� ������������, ������� �� �������...
~
#61003
��������� � ����� ����������~
2 b 25
~
switch %random.15%
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
  case 7
    wecho ������ �������� ��������������. �� ��� ������� ����� �������� ����� �� �����.
  break
  case 8
    wecho �������� ����������� �������� ����� �������� �� ���� �����, �������� ��� �� ���� � ������� �������.
  break
  case 9
    wecho ���� �� ��� ����� ����� �������, � ��� � ���� ������� ����� ����� ������-������� ��������.
  break
  case 10
    wecho ���������� ������ ����������� ����, � ������ ���������� ���������.
  break
  case 11
    wecho ������ ���������� �������� ��������� ������-��, �������� ����� ���������������� ����� � ������ �������.
  break
  case 12
    wecho ����� ������ ��� ���������, � ������������.
    wecho ���� �� ������� � ��������� ������ ������, ����� ��� ������ ������ �����.
  break
  case 13
    wecho �������� �������� ����� �������� ������, ��������� ��� � ����, � ����� �������.
  break
  case 14
    wecho ������ ����� �������������, ��������.
    wecho ������� ����� ����� ��������, �� ��������� ����� ��� � �������, � ����� ����.
  break
  case 15
    wecho ������-�� ����������� ��������� �������� � ��������.
  break
done
~
#61004
��������� �������~
0 b 50
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
wait 1s
smitch %random.8%
case 1
  say ��-�������-������������������������!
break
case 2
  �����
break
case 3
  ����� %victim.name%
break
case 4
  ������
break
case 5
  ������
break
case 6
  �������
break
case 7
  ����
break
case 8
  say ��-�����-���������!
break
done
~
#61005
������� �� ����� ����������~
2 c 1
����� ������� �������� ������~
wait 1
if (!%arg.contains(���)% && !%arg.contains(������)% && !%arg.contains(�����)% && !%arg.contains(������)%)
  wsend %actor% ���� ��� �� ������?
  halt
end
if (%actor.move% < 45)
  wsend %actor% �� ������� ������...
  halt
end
wsend %actor% �� ������ �� ������� � �������� � ����.
wechoaround %actor% %actor.name% ����� �� ������� � �������� �������������� � ������������ �����.
wait 2s
if ((%random.100% < 98) && %exist.mob(61011)%)
  wsend %actor% �� ����� ������� �� ������ ����������, �� � �����-������ ����� ������ � �����...
  wechoaround %actor% ����� ������%actor.w% ������ %actor.name% ������%actor.q% ������-��.
  eval buf %actor.move(-45)%
  wteleport %actor% 50084
  halt
end
wsend %actor% �������-�� �� ��������� ������! �� � ����� ����...
calcuid mushroom 61011 mob
if %mushroom%
  set room %mushroom.realroom%
else
  eval room 27030+%random.20%
end
wteleport %actor% %room%
~
#61006
����� ����������~
0 f 100
~
calcuid troom 50084 room
foreach target %troom.pc%
  mteleport %target% %self.realroom%
  mechoaround %target% ������%actor.w% ������ ������ %target.name% �������%actor.u% �� ����������� ����� �����-����������!
  msend %target% ���-�� ������� ���������� ����� � �� ���������� ������!
done
mload obj 1758
~
#61007
������� ��������~
0 b 15
~
wait 1
set victim %random.pc%
if !%victim%
  halt
end
msend %victim% ���������� ���������������� �������� ����� ������������� ��� � ������ ������������.
mechoaround %victim% ���������� �������-��������� �������� ����������� %victim.vname% � ������ ������������.
msend %victim% ���������� �������-��������� ����� ����������, � ������� �� ��� �����!
mechoaround %victim% ���������� �������-��������� ����� ����������, � ������� �� %victim.rname% �������!
msend %victim% ��� ������������� ������! � ���� ������ ���������� - � ������.
switch %random.10%
  case 1
    dg_affect %victim% ���� ���� -5 10000 2
  break
  case 2
    dg_affect %victim% �������� ���� -5 10000 2
  break
  case 3
    dg_affect %victim% ������������ ���� -5 10000 2
  break
  case 4
    dg_affect %victim% ������� ���� -5 10000 2
  break
  case 5
    dg_affect %victim% ����.����� ���� -50 10000 2
  break
  case 6
    dg_affect %victim% ����� ���� -10 10000 2
  break
  case 7
    dg_affect %victim% ���������� ���� -10 10000 2
  break
  case 8
    dg_affect %victim% ������ ���� -10 10000 2
  break
  case 9
    dg_affect %victim% �����.���������� ���� -50 10000 2
  break
  case 10
    dg_affect %victim% ����������� ���� -100 10000 2
  break
done
~
#61008
������� �������~
0 bq 25
~
wait 1
if %actor%
  ���
  follow .%actor.name%
  halt
end
if !%self.leader%
  set victim %random.pc%
  follow .%victim.name%
  ��� .%victim.name%
end
~
#61009
����� ��������~
0 f 100
~
foreach target %self.pc%
  dg_affect %target% ���� ���� -5 0
  dg_affect %target% �������� ���� -5 0
  dg_affect %target% ������������ ���� -5 0
  dg_affect %target% ������� ���� -5 0
  dg_affect %target% ����.����� ���� -50 0
  dg_affect %target% ����� ���� -10 0
  dg_affect %target% ���������� ���� -10 0
  dg_affect %target% ������ ���� -10 0
  dg_affect %target% �����.���������� ���� -50 0
  dg_affect %target% ����������� ���� -100 0
done
~
#61012
������� �������~
0 bq 25
~
wait 1
if %actor%
  ���
  follow .%actor.name%
  halt
end
if !%self.leader%
  set victim %random.pc%
  follow .%victim.name%
  ��� .%victim.name%
end
~
$~

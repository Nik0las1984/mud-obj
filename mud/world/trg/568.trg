#56800
����� �������~
2 c 0
����� �������� ������� �����������~
if !(%arg.contains(������)%) 
  wsend       %actor% ���� ��� �� ������ �����???
  return 0
  halt
end
if %actor.fighting%
  wsend %actor% �� �� ������ ����� ���� ����������.
end
wsend       %actor% �� ������� ����� �� ��������.
wechoaround %actor% %actor.name%, ������� � ������� ����, ������%actor.g% � �������� ������ ��������.
wait 1s
wsend %actor% .- �� ��������� � ������� ����...
wteleport %actor% 56836 horse
wechoaround %actor% ���-�� ������ ����.
end
~
#56801
���� � ����~
0 q 100
1~
if (%actor.vnum% != -1)
  halt
end
wait 2s
����� ��� ������ � ���� ������ ������ ���, �������%actor.w% !
����� ������ ������ � ���� �� ���������.
����� ������ � ���� ��� ������� �� �� ������� ���� �����.
����� �������, � ��� ������ �������� ���� ����...
����� � ���, ���, ������� ������� ���� �� ����� �������������� �����...
����� � ���� ���� ���� ���������, �� �� ������ ������ ��� �������� ������ ��� ����������.
����� ����� �� �� ����������� � ���� ���� ?
~
#56802
����� ������ �����~
0 d 1
����� �� yes jar~
msend %actor% ������ ���� ���������.....
wait  3s
msend %actor% ������� � ��� ����� � ���� ��� ������������...
eval minlev 30-%actor.remort%/2
if (%actor.level% >= %minlev%)
  msend %actor% �� ����������� ������ �� ������� ������ � ����� ������ �����..
  msend %actor% .- ������ ���� ������ ��� ����� ������ � ������ ���� � ������ ���� � �������� �����������.
  mteleport %actor% 56889
  mecho ������ ���� ����� %actor.name% � ������ ����.
  mechoaround %actor% ������ ���� ����� ����-�� �� ������ ����� � ������� � �������� �����������
else  
  msend %actor% .-  �� �� ��������� �� ������ �����, ��� ����� �����������, ���� � �� ������ � �� �����...
end
*attach 56808 %self.id%
~
#56803
������� �����~
2 c 0
������� ������ ���������~
if (%arg.contains(����)%)||(%arg.contains(���)%)
  if (%actor.move%<120)
    wsend %actor% _�� ��������, ��� �������� ��� �� ������ ��� �� ���� ����..
    wsend %actor% _�� ������� � ������ , �������� ���� ���������� �����
    wechoaround %actor% _%actor.name% �����%actor.q% � �������� ���� ���������� �����.
    wait 1s
    wsend %actor% _�� �������� ��� ��� �� ������ ��� �� ���� ����.. ��� �������� � ������� ������� ���������� �����.
    wteleport %actor% 56897
    return 0
  else
    wsend %actor% _�� ������� � ������ ���� ���������� �����.
    wechoaround %actor% _%actor.name% �����%actor.q% � ����.
    wait 1s
    wsend %actor% _����� ����������� ���� �� ��������� �� ����� ����� � �����������.
    if (%actor.realroom%==56814)
      wteleport %actor% 56865 
      eval buffer %actor.move(-120)%
    end
    wechoaround %actor% %actor.name% ��������%actor.g% �� ��������� ������, ������������ � ���������.
  end
end
~
#56804
����� ������ ������~
0 f 100
~
if %world.curobjs(56816)% < 1
  mload obj 56816
end
~
#56805
��� �� �����~
2 c 100
~
wait 2s
����� ����� �� ���������%actor.g% � ��� �����?
����� ����� �� ������ ����� ��������� ����?
����� ����� �� ������� ��� ����� ��� ������ ���....
����� �������� ����� �� �����. 
mkill %actor%
~
#56806
��������� �����~
2 c 0
��������� ��������� ����������~
if (%arg.contains(�����)%)||(%arg.contains(���)%)
  if (%actor.move%<120)
    wsend %actor% _���, ������ �����, ����� ��� �� ��� ����.
    return 0
  else
    wsend %actor% _�� ��������� �� ������ � ����� ��������� �������� ���������� ������, ������� ��������� ����...
    wechoaround %actor%  %actor.name% ����%actor.g% �������� � ������� ����-����, ������� ���������� ������... �� ����� ��� ���� ����?
    wait 3s
    wdoor  56817 s room 56859
    wechoaround %actor% %actor.name% ��������%actor.g% ����� � �������� ������ ������...
    eval buffer %actor.move(-120)%
    detach 56806 %self.id%
  end
end
~
#56807
����� ���� "��������� �����"~
2 f 100
~
calcuid wall 56817 room
detach 56806 %wall%
attach 56806 %wall%
wdoor  56817 s purge
~
#56809
����� ������������~
0 f 100
~
if %world.curobjs(56805)% < 1
  mload obj 56805
end
~
#56810
���� ��������� �����~
0 j 100
~
wait 1
switch %object.vnum%
  case 56816
    wait 1
    mpurge %object%
    ����� � ���� ���-���� ����������!
    wait  1s
    ����� ��, ��� � ���� ����������...
    wait  1s
    ����� ��� �� ���� �������������?
    oecho ������ ���� ��������� �� ���������...
    wait  4s
    if ( %world.curobjs(56818)% < 2 ) && (%random.100% <= 40 )
      mload obj 56818
      ����� ��� � ���� �������� �� �������� ����...
      ����� �������� ��� ���� ����������...
      ����� ������� �� ������!
      ���� ��� %actor.name%
    else
      ����� ����������, ��� � ���� ��� ������, �� ����-�� ��� � �����.
    end
  end
break
case 56805
  wait 1
  mpurge %object%
  ����� � ���� ���-���� ����������!
  wait  1s
  ����� ��, ��� � ���� ����������...
  wait  1s
  ����� ��� �� ���� �������������?
  oecho ������ ���� ��������� �� ���������...
  wait  1s
  if (%world.curobjs(56806)% < 2 ) && (%random.100% <= 40 )
    mload obj 56806
    ����� ��� � ���� �������� �� �������� ����...
    ����� �������� ��� ���� ����������...
    ����� ������� �� ������!
    ���� ������ %actor.name%
  else
    ����� ����������, ������ � ���� ��� ������, �� ����-�� ��� � �����.
  end
end
break
default
  ���
  say ����� ��� ���?
  ������� %object.name%
done
~
#56811
������ � ��������~
1 j 100
~
wait 1s
oecho &R�������� ������ ���������� ������ �������� �������� ��������.&n
~
#56812
��� � ����. ������~
0 k 0
~
set target %random.char%
if !%target%
  halt
end
switch %random.4%
  case 1
    dg_cast 'sleep' .%target.name%
  break
  case 2
    dg_cast '����' .%target.name%
    dg_cast '������' .%target.name%
    dg_cast '������' .%target.name%
  break
  case 3
    dg_cast '������' .%target.name%
    dg_cast '������' .%target.name%
  break
  case 4
    dg_cast '��� �����' .%target.name%
    dg_cast '��� �����' .%target.name%
    dg_cast '��� �����' .%target.name%
  done
~
$~

#14500
������������~
2 c 0
��������� ��������� ���������~
if !%arg.contains(���)%
  wsend %actor% ��� ��� �� ����������� ���������?
  return 1
  halt
end
wait 1
wsend       %actor% �� ������ ��������� ���.
wechoaround %actor% %actor.name% �������%actor.u% ��������� ���.
wait 2s
wecho       ����� � ����� ����������, ������ ������ ������...
wdoor  14510 down flags a
wdoor  14510 down room  14522
wdoor  14522 up   flags a
wdoor  14522 up   room  14510
detach 14500 %self.id%
~
#14501
���������~
0 f 100
~
calcuid qroom 14525 room
attach  14502 %qroom.id%
mecho   ���� �� ���������� ������ ������������ � �������...
~
#14502
������������~
2 c 0
�������� �������~
*234567890*234567890*234567890*234567890*234567890*234567890*234567890*234567890
if !%arg.contains(���)%
  wsend %actor% ��� ��� �� ��������� �������?
  halt
end
set sword  %actor.eq(16)%
if %sword.vnum% != 14507
  wsend %actor% ����� ����������� ���-������ ����� ����������!
  halt
end
calcuid corpse 14500 obj
if !%corpse%
  wsend %actor% �� ��������� �������� ��������� ����� � �������, �� ������ �� ���������!
  halt
end
wait 1
wsend %actor% �� �������� ��������� ��� � ����������������� ������...
wechoaround %actor% %actor.name% �������%actor.g% ��������� ��� � ����������������� ������...
wecho ��� �������� ����� �������� � ������ �����...
wait 1
wpurge %corpse%
wait 1
wpurge %sword%
if (%actor.class% == 13)
  if (%world.curobjs(230)% < 100 && %random.1000% <= 450)
    wecho �� ���� ����� �������� ���� ������� ����...
    wload obj 230
    detach 14502 %self.id%
    halt
  end
end
switch %random.7%
  case 1
    if (%world.gameobs(14501)% < 10)
      wecho �� ���� ����� ������� ���� �������������� �� ������� ���...
      wload obj 14501 
    end
  break
  case 2
    if (%world.gameobs(14502)% < 10)
      wecho �� ���� ����� �������� ���� ����������� �� ������� ������...
      wload obj 14502 
    end
  break
  case 3
    if (%world.curobjs(14503)% < 15)
      wecho �� ���� ����� �������� ���� ������ �������...
      wload obj 14503 
    end
  break
  case 4
    if (%world.curobjs(14504)% < 15)
      wecho �� ���� ����� �������� ���� ���������� �����...
      wload obj 14504
    end
  break
  case 5
    if (%world.curobjs(14505)% < 15)
      wecho �� ���� ����� �������� ���� �������� �������� ��������...
      wload obj 14505
    end
  break
  case 6
    if (%world.curobjs(230)% < 50)
      wecho �� ���� ����� �������� ���� ������� ����...
      wload obj 230
    end
  break
  case 7
    if %random.1000% <= 460
      wload obj 1704
      wecho �� ���� ����� �������� ���� ������ �����...
    end
  break
done
detach 14502 %self.id%
~
#14503
����������������~
2 z 0
~
return 1
calcuid spirit 14500 mob
wpurge  %spirit%
~
#14504
�����������~
0 q 100
~
wait 1
if %self.haveobj(14507)%
  calcuid sword 14507 obj
  mpurge %sword%
end
if (%exist.obj(14507)% == 1)
  msend %actor% ������ ������ ��� ����������� �������.
  halt
end
msend %actor% - ������ ����, %actor.name%, �� ����� ���� ���� �� ����� ������.
msend %actor% ��������� �������� ������, ����������� ���.
wait 2s
msend %actor% - ��� ��� ����� � ���� - ��� ���� �� ������ ����� ������.
msend %actor% - ���� ��� ������ - ������ ����, � � ������ � ������ ��������.
msend %actor% ������ ���-�� ��������� ��� ����.
wait 2s
msend %actor% - ��� ����, ���, ��� �� ��������, ����� �����, �� ������ ����� �������.
msend %actor% - � ��� ������� ����, ����� ��� ���, � ������� ������ �����.
msend %actor% ������ �������������.
wait 2s
msend %actor% - �� ����� �� ��������� ���� ���, �����%actor.g% �� ���,
msend %actor% - ���� ���� ����� ���������� ������.
msend %actor% ������ ������.
~
#14505
������������~
0 d 1
������ ���������~
if %actor.vnum% != -1
  halt
end
wait 1
msend %actor% - ���� ��� �����, �������� ������� �� ����.
msend %actor% ����� ������� ����������.
msend %actor% - ������ �����, ����� ��� ����, ��� ���� �������, ��� ����� ������.
msend %actor% - ���� ���� �����, �� ����� ���� ������, �� � ��� ���� ��� ����������.
msend %actor% - ����� ����� �����, �� �����.
msend %actor% ������ ������� ����� �� ����.
wait 2s
msend %actor% - �������� ������, �� �� ��� �����%actor.g% ������, �� ����, ��� ��������.
msend %actor% - ��� � �������� ���������, � ����� ����������.
wait 2s
msend %actor% - �� ��� ������ �� ���� ������� �����, �� ����. ������ ��������, ���
msend %actor% - � ��������� ������� ����� ���, �������� � ������ �������� ��� ��������,
msend %actor% - ����� �� ����� ��� ���� ��� ������ � ����� ��������.
msend %actor% - �� �� ������� ���, �� �� �� �������.
msend %actor% ������ ������ ���� ����������� �������.
wait 1s
msend %actor% - ��� � ������� ��� ���� ������, ��������� ����.
msend %actor% - �������� ���� ����� ������ ��� ���� �����.
msend %actor% (������ ������ ��-�� ������� ������������ ������)
msend %actor% - ������ ������ ��� � ������, ���� ���� ���� ������.
msend %actor% - ������ ��� ������ ��������, ����� � ������ ������.
mload obj 14507
���� ���������.��� %actor.name%
dg_cast '������ �� ����' %actor.name%
detach  14504 %self.id%
detach  14505 %self.id%
~
#14510
��������������������~
2 f 100
0~
wdoor   14510 down purge
wdoor   14522 up   purge
calcuid qroom 14510 room
attach   14500 %qroom.id%
detach  14502 %self.id%
~
$~

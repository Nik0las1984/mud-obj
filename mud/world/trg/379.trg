#37900
���������������~
0 f 100
~
if %world.curobjs(37915)%==0
  mecho ���� ����, ����� ��������� ����� �����������, � ���� ����� �� ������� �������� ����������� ������.
  mload obj 37915
end
~
#37901
����������������������~
2 c 100
��������~
if !%arg.contains(������)%
  wecho ����?
  halt
end
calcuid kamen379 37915 obj
if !%kamen379%
  halt
end
if %actor.eq(19)%==%kamen379%
  wecho ���?
  halt
end
if %actor.eq(17)%!=%kamen379%
  wecho ����?
  halt
end
if (%arg.contains(������)%) && (%actor.eq(17)%==%kamen379%)
  wsend %actor% �� �������� ����������� ������ �������� ����� � ���������� � �����.
  if %actor.sex%==1
    wechoaround %actor% %actor.name% ������� ����������� ������ �������� ����� � ���������� � �����.
  else
    wechoaround %actor% %actor.name% �������� ����������� ������ �������� ����� � ���������� � �����.
  end
  wecho ���-�� ������ �������� � �����, ����� ������� ������.
  wait 4s
  wecho ����� ����� ����������� ������� � ����������� � �������, ��������� ������ �� ��.
  wdoor 37926 south room 37940
  if %kamen379%
    wpurge %kamen379%
  end
else
  wecho ���� ��������?
  halt
end
~
#37902
���������������~
2 f 100
~
wdoor 37926 south purge
~
#37903
���������������~
0 f 100
~
if %world.curobjs(37907)%==0
  mecho ���� ����, ����� ��������� ����� �����������, � ���� ����� �� ������� �������� ����������� ������.
  mload obj 37907
end
~
#37904
����������������������~
2 c 100
��������~
if !%arg.contains(������)%
  wecho ����?
  halt
end
calcuid kamen379 37907 obj
if !%kamen379%
  halt
end
if %actor.eq(19)%==%kamen379%
  wecho ���?
  halt
end
if %actor.eq(17)%!=%kamen379%
  wecho ����?
  halt
end
if (%arg.contains(������)%) && (%actor.eq(17)%==%kamen379%)
  wsend %actor% �� �������� ����������� ������ �������� ����� � ���������� � �����.
  if %actor.sex%==1
    wechoaround %actor% %actor.name% ������� ����������� ������ �������� ����� � ���������� � �����.
  else
    wechoaround %actor% %actor.name% �������� ����������� ������ �������� ����� � ���������� � �����.
  end
  wecho ���-�� ������ �������� � �����, ����� ������� ������.
  wait 4s
  wecho ����� ����� ����������� ������� � ����������� � �������, ��������� ������ �� ������.
  wdoor 37940 east room 37966
  if %kamen379%
    wpurge %kamen379%
  end
else
  wecho ���� ��������?
  halt
end
~
#37905
�������������������~
2 f 100
~
if %room.south%==east
  wecho ����� � ������� ����������, ������ ������ �� ������.
end
wdoor 37940 east purge
~
#37906
��������������~
0 f 100
~
if %world.curobjs(37918)%==0
  mecho ���� ����, ����� ��������� ����� �����������, � ���� ����� �� ������� �������� ����������� ������.
  mload obj 37918
end
~
#37907
���������������������~
2 c 100
��������~
if !%arg.contains(������)%
  wecho ����?
  halt
end
calcuid kamen379 37918 obj
if !%kamen379%
  halt
end
if %actor.eq(19)%==%kamen379%
  wecho ���?
  halt
end
if %actor.eq(17)%!=%kamen379%
  wecho ����?
  halt
end
if (%arg.contains(������)%) && (%actor.eq(17)%==%kamen379%)
  wsend %actor% �� �������� ����������� ������ ������� ����� � ���������� � �����.
  if %actor.sex%==1
    wechoaround %actor% %actor.name% ������� ����������� ������ ������� ����� � ���������� � �����.
  else
    wechoaround %actor% %actor.name% �������� ����������� ������ ������� ����� � ���������� � �����.
  end
  wecho ���-�� ������ �������� � �����, ����� ������� ������.
  wait 4s
  wecho ����� ����� ����������� ������� � ����������� � �������, ��������� ������ �� ��.
  wdoor 37966 south room 37949
  if %kamen379%
    wpurge %kamen379%
  end
else
  wecho ���� ��������?
  halt
end
~
#37908
������������������~
2 f 100
~
if %room.south%==south
  wecho ����� � ������� ����������, ������ ������ �� ��.
end
wdoor 37966 south purge
~
#37909
�������������~
0 f 100
~
if %world.curobjs(37919)%==0
  mecho ���� ����, ����� ��������� ����� �����������, � ���� ����� �� ������� �������� ����������� ������.
  mload obj 37919
end
~
#37910
��������������������~
2 c 100
��������~
if !%arg.contains(������)%
  wecho ����?
  halt
end
if (%exist.obj(37919)%)
  calcuid kamen379 37919 obj
else
  halt
end
if %actor.eq(19)%==%kamen379%
  wecho ���?
  halt
end
if %actor.eq(17)%!=%kamen379%
  wecho ����?
  halt
end
if (%arg.contains(������)%) && (%actor.eq(17)%==%kamen379%)
  wsend %actor% �� �������� ����������� ������ ������ ����� � ���������� � �����.
  if %actor.sex%==1
    wechoaround %actor% %actor.name% ������� ����������� ������ ������ ����� � ���������� � �����.
  else
    wechoaround %actor% %actor.name% �������� ����������� ������ ������ ����� � ���������� � �����.
  end
  wecho ���-�� ������ �������� � �����, ����� ������� ������.
  wait 4s
  wecho ����� ����� ����������� ������� � ����������� � �������, ��������� ������ �� ��.
  wdoor 37949 south room 37913
  if %kamen379%
    wpurge %kamen379%
  end
else
  wecho ���� ��������?
  halt
end
~
#37911
�����������������~
2 f 100
~
if %room.south%==south
  wecho ����� � ������� ����������, ������ ������ �� ��.
end
wdoor 37949 south purge
~
#37912
����������������������~
0 r 100
~
wait 1s
���
wait 1s
���
if (%exist.mob(37925)% || %exist.mob(37925)%)
  mecho ������!
  mecho ���� ������������ ����, ����� ����� ������� �����.
  mecho ����� ������ ��� ������� �� �����, � ������, ��� ������.
  mecho � �������� ����� �������, �������, ������ � �����. ��� ������.
  wait 1s
  mecho �� ������������, ���� ��� ������ � ������� ����������� ������, ������ ��������.
  mecho ���� ���������.
  wait 1s
  mecho ���� �� ���-���� �� ��������, �� ����� ���� � ���� �������� ��� ���� ���������.
  wait 1
  halt
else
  mecho �, ���� ���-���� ���� �����. �������!
  if (%random.1000% < 60)
    mload obj 103
    mecho ���, ������. ��� ��� ��� �� �����������.
    ���
    wait 1
    �� ���
  end
end
wait 1
mpurge %self%
detach 37912 %self.id%
~
#37913
��������������~
0 f 100
~
mload obj 37925
switch %random.3%
  case 1
    if %world.curobjs(37924)%<2
      mload obj 37924
      halt
    end
  break
  case 2
    if %world.curobjs(37923)%<1
      mload obj 37923
      halt
    end
  break
  default
  break
done
if (%random.10%<4) && (%world.curobjs(575)%<1)
  mload obj 596
  halt
end
if (%random.10%<4) && (%world.curobjs(530)%<1)
  mload obj 530
end
~
$~

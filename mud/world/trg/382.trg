#38200
����� �������~
0 f 100
~
if %world.curobjs(38214)% == 0
  mload obj 38214
end

~
#38201
����� ���������~
0 f 100
~
if %world.curobjs(38215)% == 0
  mload obj 38215
end

~
#38202
������ ����~
2 c 0
������ ���������~
if !(%arg.contains(����)%)
  wsend       %actor% ��� �� ������ ���������???
  return 0
  halt
end
wsend %actor% �� ��������� �������� � ���� � ����� ������� ����.
wechoaround %actor% %actor.name% ��������%actor.g% �������� � ����. ����� ������� ����.
wait 1
wecho _� ����� ������ �� ���� ��������� ���������� ���������.
wload mob 38231
wait 2
wecho _"��� ������!" - ������ ���������, ������������ � ������� ��������.
calcuid pechnikr 38232 room
detach 38202 %pechnikr.id%

~
#38203
����� ��������~
2 f 100
~
calcuid pechnikr 38232 room
attach 38202 %pechnikr.id%
wdoor 38245 up purge
calcuid stol 38245 room
attach 38204 %stol.id%
calcuid qstoql 38233 mob
detach 38207 %qstoql.id%
attach 38206 %qstoql.id%

~
#38204
������� ����~
2 c 0
������� �������~
if !(%arg.contains(����)%)
  wsend %actor% ��� �� ������ ��������???
  return 0
  halt
end
wsend %actor% �� ����������� ���� � �����...
wechoaround %actor% %actor.name% ����������%actor.g% ���� � �����.
wait 1
wdoor   38245 up flags ab
wdoor   38245 up room  38291
wecho ����� �������� ������ ������.
calcuid stol 38245 room
detach 38204 %stol.id%

~
#38205
����� �����~
0 f 100
~
if ( %world.curobjs(211)% < 20 ) && ( %random.5% == 1 )
  mload obj 211
end
if (%random.10% == 1)
  if %random.2% == 1
    mload obj 549
  else
    mload obj 529
  end
  
~
#38206
���� ����� �����~
0 j 100
~
if %object.vnum% == 38218
  wait 2s
  mpurge ����
  wait 2s
  say �������. �������%actor.g%! � ����� ����� ���� �����...
  msend       %actor% _�� ������ ���� �� �������� 5000 ����� �����...
  %actor.exp(+5000)%
  wait 2s
  say � �������� ������� �� ����� ����� �������� ��������.
  wait 2s
  say ��� ��� �������� � ����������� � �������...
  ���
  wait 1s
  say ��, �� ����� �� �� ����� ���� ���� �� ������� �� �� ������..
  wait 1s
  say ������� ��� ������? �����������..
  calcuid stoql 38233 mob
  attach 38207 %stoql.id%
end
else
say  ����� ��� ���?
eval getobject %object.name%
���� %getobject.car%.%getobject.cdr%
end

~
#38207
���� ������ �����~
0 d 0
�� ����� �������� ������ ��������~
wait 1s
say ��� � �������, %actor.name%.
say ���� � ���� ����. ���� ����� �� ������, ��������������.
wait 1s
say �� ����� � ��� �����, � ������ �� ���� ��� ��� ��� ������� ��� ��� ������.
wait 1s
say ���������� �� � �������� �� ������� ������, ��� � ������, � ��������� ���������.
say �� , �� �������� ���-��. ��� ���� �� �� ��� ��������%actor.g% � ��� ��� �������� �������%actor.g%.
wait 1s
mecho _����� ������ �������� ���-�� �� ����� ����..
mload obj 38222
��� ������� %actor.name%
wait 1s
say ��� �� �� ���� � �������������.
���
calcuid stoql 38233 mob
detach 38207 %stoql.id%

~
#38208
��������� �����~
0 c 0
��������� ����������~
if !(%arg.contains(�����)%)
  msend %actor% ���� �� ������ ����������???
  return 0
  halt
end
wait 1
msend %actor% �� ��������� ����� � �������� �������.
mechoaround %actor% %actor.name% ��������%actor.g% �����.
mecho ������� ����� ����������� � ���� ��� �����������!
if %actor.level% > 20
  msend %actor%  �� ������ ���� �� �������� 80000 ����� �����...
  %actor.exp(+80000)%
end
say � �����, �������� �������, ��� �� ���� ����������!!!
mecho ������� ��� ��� ���������� � ����.
wait 1
mpurge %self%

~
#38209
���� � ����������� �����~
0 m 100
~
say My trigger commandlist is not complete!
wait 1
if %amount% < 1000
  mecho ��������� ����� ���������� ������
  wait 1s
  say �� �� ��� ����� �� ������ ��� ������ �������...
else
  mecho ������� �� ��������� ����� �������� ������ ���������.
  mecho ������� �� ��������� ������ ��-��� ����� �������� ���.
  mecho ������� �� ��������� ����� �� ���.
end
mteleport all 56996
~
#38210
����� � ������������� �����~
0 h 100
~
wait 3
mecho ���������� �������� ���, ����� ���������.
say ������, ��������, ���� �� ���������� ����������� �������� ���������� �����?
say ���� ���� � ����, ����� � ������ ������.
say ��� ���, ���� � ���� ��� ���������, ������ �� � ���� � �����, ����� �� � ����� ���������?
say �� ������ ���� ������� ������ - 10 ��������.
mecho ����� ������� ���� �� ��� �������.
say ������ ��� �������, ��� � �� ����.
say ��-������ ��� 1000 ���.
~
$
$

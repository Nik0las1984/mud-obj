#10000
<100 Enter to Fisherman>~
0 h 100
*~
if %actor.vnum% != -1
  halt
end
wait 1
if !%Killer%
  mecho - �� ������ ����, � �� ������� ���� ���, - ����� ��������� �������� � ����.
  mecho - ���� �� �� ������ ����, ��, �� ������ ?
  mecho - ����� ������� �� ����� ����, �������� ����� ������.
  mecho - ��� ���, �����, �� ����... � �� �����, �� �� ���%actor.g%...
  mecho - ������� ? ��� �� ���� �������%actor.g%, ��� ��, ����, ��� ��������� ?
  attach 10001 %self.id%
elseif %Killer.id% == %actor.id%
  mecho - ������ �, ��� ��, %actor.name% ����%actor.g% ������.
  mecho - ���-�, �� ��������%actor.g% �� ����� ��������, ������ ��� ���� ��������.
  mecho - ���, ������, � ����� �� ��� �����, �� ������ ��� ��� �� � ����.
  msend       %actor% ����� ��� ��� 400 �����.
  %actor.gold(+400)%
  mechoaround %actor% ����� ��� %actor.dname% ������ �����.
  detach 10000 %self.id%
else
  mecho - �� ������ ����, %actor.name%, - ����� ��������� ������� � ����.
end
~
#10001
<100 � �����>~
0 d 0
����� ������ ��������~
if %actor.vnum% != -1
  halt
end
wait 1
mecho - �������, ��� �� �������%actor.g%. ���, ��� ������� ���� ������ � ������.
set pc %self.people%
while %pc%
  if %pc.vnum% == -1
    mload obj 10008
    give  �����.������ .%actor.name%
  end
  set pc %pc.next_in_room%
done
attach 10002 %self.id%
detach 10000 %self.id%
detach 10001 %self.id%
~
#10002
<100 Second enter to Fisherman>~
0 h 100
*~
if (%actor.vnum% != -1) || (%actor.id% != %Killer.id%)
  halt
end
wait 1
mecho - ������� ����, %actor.name%.
mecho - ���-�, �� ��������%actor.g% �� ����� ��������, ������ ��� ���� ��������.
if (%world.curobjs(10019)% < 10) && (%random.10% <= 3)
  mecho - ���, ��� � ����� � ����, ����� ��� �������. ��� ��� �� � ����.
  mecho - � �� ������� �� ��������� ����������.
  mload obj 10019
  give  ������.��������� %actor.name%
else
  mecho - ���, ������, � ����� �� ��� �����, �� ������ ��� ��� �� � ����.
  msend       %actor% ����� ��� ��� 400 �����.
  %actor.gold(+400)%
  mechoaround %actor% ����� ��� %actor.dname% ������ �����.
  if (%world.curobjs(239)% < 50) && (%random.1000% <= 150)
    mload obj 239
    ���� ��� %actor.name%
  end
end
detach 10002 %self.id%
~
#10003
<100 Water monster killed>~
0 f 100
*~
if (%actor.vnum% != -1)
  eval Killer %actor.leader%
else
  eval Killer %actor.id%
end
calcuid Fisherman 10011 mob
remote  Killer %Fisherman.id%
~
#10004
<100 Solovey killed>~
0 f 100
*~
if (%world.curobjs(10000)% < 10) && (%random.10% <= 2)
  mload obj 10000
end
if (%world.curobjs(10003)% < 10) && (%random.10% <= 2)
  mload obj 10003
end
if (%world.curobjs(10007)% < 10) && (%random.10% <= 2)
  mload obj 10007
end
if (%world.curobjs(10014)% < 10) && (%random.10% <= 2)
  mload obj 10014
end
~
#10005
<100 Oldest sun killed>~
0 f 100
*~
if (%world.curobjs(10001)% < 10) && (%random.10% <= 2)
  mload obj 10001
end
if (%world.curobjs(10002)% < 10) && (%random.10% <= 2)
  mload obj 10002
end
if (%world.curobjs(10005)% < 10) && (%random.10% <= 2)
  mload obj 10005
end
~
#10006
<100 Medium sun killed>~
0 f 100
*~
if (%world.curobjs(10007)% < 10) && (%random.10% <= 2)
  mload obj 10007
end
if (%world.curobjs(10009)% < 10) && (%random.10% <= 2)
  mload obj 10009
end
if (%world.curobjs(10013)% < 10) && (%random.10% <= 2)
  mload obj 10013
end
~
#10007
<100 Youngest sun killed>~
0 f 100
*~
if (%world.curobjs(10012)% < 10) && (%random.10% <= 2)
  mload obj 10012
end
if (%world.curobjs(10015)% < 10) && (%random.10% <= 2)
  mload obj 10015
end
~
#10008
<100 Medium robber killed>~
0 f 100
*~
if     (%world.curobjs(10004)% < 20) && (%random.10% <= 2)
  mload obj 10004
elseif (%world.curobjs(10006)% < 20) && (%random.10% <= 2)
  mload obj 10006
end
if     (%world.curobjs(10010)% < 20) && (%random.10% <= 2)
  mload obj 10010
elseif (%world.curobjs(10011)% < 20) && (%random.10% <= 2)
  mload obj 10011
end
~
#10009
<100 Large robber killed>~
0 f 100
*~
if     (%world.curobjs(10016)% < 20) && (%random.10% <= 2)
  mload obj 10016
elseif (%world.curobjs(10017)% < 20) && (%random.10% <= 2)
  mload obj 10017
end
if     (%world.curobjs(10015)% < 20) && (%random.10% <= 2)
  mload obj 10015
elseif (%world.curobjs(10018)% < 20) && (%random.10% <= 2)
  mload obj 10018
end
~
#10010
<100 Ficht Solovei>~
0 k 20
~
mecho �������-��������� ��� ���������, ��� �� ������� ���������!!!
msend       %actor% ������ ����� �� ��������� ������� ���!
mechoaround %actor% �� ������ ����������� %actor.name% �������%actor.g% �� �����.
%actor.position(6)%
%actor.wait(2)%
mdamage %actor% 100
~
$~

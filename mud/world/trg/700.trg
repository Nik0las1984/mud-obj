#70000
����� � ����� ������~
0 r 100
~
wait 1
say ����. �������. ���, ������ � ��� � ����� �����?
wait 10
if %self.fighting%
  halt
end
say ����� ������� ��������� - ���� �������� ����� ����� ���������, 
say � �� ������ �� ��� ����� ���. ���� ������ - ������ ��.. ����.. 
wait 10
���
mecho ���-�� ������� ���������� ��������� ������� ���.
wait 10
if %self.fighting%
  halt
end
say  ..������ ����� � ������� ��� ��� - ����� �������.
wait 10
mecho ���-�� ������� ���������� ��������� ������� ���.
wait 10
if %self.fighting%
  halt
end
~
#70001
������� ����~
0 r 100
~
wait 1
mecho ������ �������� ������� ������ � ������� �������� �� ���.
wait 5
say ������ ����, ��������.
wait 4
say ��� ������� ���� � ��� ������? ���� ������ �� ��������... 
wait 10
say ������, �����, ����� ������ � �����������. ����� ����� � ��� �����. 
wait 5
���
say ���� � ���� ���� ������� ��� ����. ���������, ������� �� �� ������� �� ������ ������.
wait 10
say �� ���, �������� �� �� �������� ���� � ������� ����� �����, ��������� ������?
end
~
#70002
���������.~
0 d 100
��~
wait 5
say ������� ��������� �������� � ����. 
say �� ����� ������ � ��� �� ������� ������� ��������, ��� �������.
���
wait 5
say ������ ����� ������� ������� �������� ����� ���������...
wait 4
say  �� ����� ������ ����� ����������� �������� �� ����������.
wait 4
���� %actor.name%
wait 4
say ���� �� ��������, �������� ����� - ������� � ���� �������� ���� �����.
wait 4
say �� ������ ����� ����� ����� � ��� ��������. ������ ���! ���� � �����.
attach 70003 %self.id%
detach 70001 %self.id%
detach 70002 %self.id%
end
~
#70003
����������1.~
0 j 70015
100~
wait 1
if %object.vnum% !=70015
  ���� ���
  halt
end
wait 1
mpurge %object%
wait 5
���
say �����! �� ������� ���� ����� ������, � � ����������� ����!
wait 5
mecho �������� ��������� ��� ������ ������� � ���-�� ������ ������� �� ���..
wait 5
mload obj 70052
���� ����� %actor.name%
wait 1
say ������ ���� ����� ������� �������, ������ �������, � �� ������ ���� �������.
detach 70003 %self.id%
~
#70004
������ 1.~
0 j 70052
100~
wait 1
if %object.vnum% !=70052
  ���� ���
  halt
end
wait 1
mpurge %object%
rdelete abuse %self.id%
wait 1
��� %actor.name%
wait 1
���� �������� � ����� �������, ����� ����
wait 1
say �� ��� �... ����� � ���� �������. 
wait 1 
say �� � ��� ����� �����. 
wait 6
say ��� - ��� ���, ����������� ��������.
wait 6
say ���� - ���� ���� �����, ����������� ������, �� ����� ���������� � ����������.
wait 6
say ��������� - ��� ���������, ������ ����� �������.
wait 6
say ���� - ������ �������
wait 6
say ������ - ����������� ������������� 
wait 6
say ������ - ������-������������
wait 6
say ��� - ��� �����
wait 6
say ���� - ��� ��������� � ���
wait 6
say ������ - ����� ���������� �� �����, ������� ��� �����.
wait 12
say ��� ������ ���� � ������� �� �� ��������� �������?
attach 70004 %self.id%
attach 70005 %self.id%
attach 70006 %self.id%
attach 70007 %self.id%
attach 70008 %self.id%
attach 70009 %self.id%
attach 70010 %self.id%
attach 70011 %self.id%
attach 70012 %self.id%
attach 70013 %self.id%
end
~
#70005
���~
0 d 100
���~
wait 1
mecho - ������ ��������� � ���, �� ������� ��������� � ������� � �����.
mecho - �� ��� �� ������%actor.g% ����� ���� - ��� ������ ����� �� ����� ��� ���� �������.
if (%world.curobjs(70040)% < 3) && (%random.100% <= 10)
  mecho - ������ �������� �� ������.
  wait 10
  mecho - ���, ������, ��������� �������� ������!
  mload obj 70040
  give  ������ %actor.name%
else
  mecho - ������, ���� � ���� ����� �������� ��������! ��, ��� � ���� ����������
  mecho - ���������� ���� ����� ��������! ������ ����� ������ � ���� �������������.
  %self.gold(10000)%
  ���� 10000 ��� %actor.name%
end
*detach 70005 %self.id%
detach 70006 %self.id%
detach 70007 %self.id%
detach 70008 %self.id%
detach 70009 %self.id%
detach 70010 %self.id%
detach 70011 %self.id%
detach 70012 %self.id%
detach 70013 %self.id%
detach 70005 %self.id%
~
#70006
����~
0 d 100
����~
wait 1
mecho - ������ ��������� � ���, �� ������� ��������� � ������� � �����.
mecho - �� ��� �� ������%actor.g% ����� ���� - ��� ������ ����� �� ����� ��� ���� �������.
if (%world.curobjs(70041)% < 3) && (%random.100% <= 10)
  mecho - ������ �������� �� ������.
  wait 10
  mecho - ���, ������, ��������� �������� ������!
  mload obj 70041
  give  ������ %actor.name%
else
  mecho - ������, ���� � ���� ����� �������� ��������! ��, ��� � ���� ����������
  mecho - ���������� ���� ����� ��������! ������ ����� ������ � ���� �������������.
  %self.gold(10000)%
  ���� 10000 ��� %actor.name%
end
detach 70005 %self.id%
*detach 70006 %self.id%
detach 70007 %self.id%
detach 70008 %self.id%
detach 70009 %self.id%
detach 70010 %self.id%
detach 70011 %self.id%
detach 70012 %self.id%
detach 70013 %self.id%
detach 70006 %self.id%
~
#70007
���������~
0 d 100
���������~
wait 1
mecho - ������ ��������� � ���, �� ������� ��������� � ������� � �����.
mecho - �� ��� �� ������%actor.g% ����� ���� - ��� ������ ����� �� ����� ��� ���� �������.
if (%world.curobjs(70045)% < 3) && (%random.100% <= 10)
  mecho - ������ �������� �� ������.
  wait 10
  mecho - ���, ������, ��������� �������� ������!
  mload obj 70045
  give  ������ %actor.name%
else
  mecho - ������, ���� � ���� ����� �������� ��������! ��, ��� � ���� ����������
  mecho - ���������� ���� ����� ��������! ������ ����� ������ � ���� �������������.
  %self.gold(10000)%
  ���� 10000 ��� %actor.name%
end
detach 70005 %self.id%
detach 70006 %self.id%
*detach 70007 %self.id%
detach 70008 %self.id%
detach 70009 %self.id%
detach 70010 %self.id%
detach 70011 %self.id%
detach 70012 %self.id%
detach 70013 %self.id%
detach 70007 %self.id%
~
#70008
����~
0 d 100
����~
wait 1
mecho - ������ ��������� � ���, �� ������� ��������� � ������� � �����.
mecho - �� ��� �� ������%actor.g% ����� ���� - ��� ������ ����� �� ����� ��� ���� �������.
if (%world.curobjs(70046)% < 3) && (%random.100% <= 10)
  mecho - ������ �������� �� ������.
  wait 10
  mecho - ���, ������, ��������� �������� ������!
  mload obj 70046
  give  ������ %actor.name%
else
  mecho - ������, ���� � ���� ����� �������� ��������! ��, ��� � ���� ����������
  mecho - ���������� ���� ����� ��������! ������ ����� ������ � ���� �������������.
  %self.gold(10000)%
  ���� 10000 ��� %actor.name%
end
detach 70005 %self.id%
detach 70006 %self.id%
detach 70007 %self.id%
*detach 70008 %self.id%
detach 70009 %self.id%
detach 70010 %self.id%
detach 70011 %self.id%
detach 70012 %self.id%
detach 70013 %self.id%
detach 70008 %self.id%
~
#70009
������~
0 d 100
������~
wait 1
mecho - ������ ��������� � ���, �� ������� ��������� � ������� � �����.
mecho - �� ��� �� ������%actor.g% ����� ���� - ��� ������ ����� �� ����� ��� ���� �������.
if (%world.curobjs(70047)% < 3) && (%random.100% <= 10)
  mecho - ������ �������� �� ������.
  wait 10
  mecho - ���, ������, ��������� �������� ������!
  mload obj 70047
  give  ������ %actor.name%
else
  mecho - ������, ���� � ���� ����� �������� ��������! ��, ��� � ���� ����������
  mecho - ���������� ���� ����� ��������! ������ ����� ������ � ���� �������������.
  %self.gold(10000)%
  ���� 10000 ��� %actor.name%
end
detach 70005 %self.id%
detach 70006 %self.id%
detach 70007 %self.id%
detach 70008 %self.id%
*detach 70009 %self.id%
detach 70010 %self.id%
detach 70011 %self.id%
detach 70012 %self.id%
detach 70013 %self.id%
detach 70009 %self.id%
~
#70010
������~
0 d 100
������~
wait 1
mecho - ������ ��������� � ���, �� ������� ��������� � ������� � �����.
mecho - �� ��� �� ������%actor.g% ����� ���� - ��� ������ ����� �� ����� ��� ���� �������.
if (%world.curobjs(70048)% < 3) && (%random.100% <= 10)
  mecho - ������ �������� �� ������.
  wait 10
  mecho - ���, ������, ��������� �������� ������!
  mload obj 70048
  give  ������ %actor.name%
else
  mecho - ������, ���� � ���� ����� �������� ��������! ��, ��� � ���� ����������
  mecho - ���������� ���� ����� ��������! ������ ����� ������ � ���� �������������.
  %self.gold(10000)%
  ���� 10000 ��� %actor.name%
end
detach 70005 %self.id%
detach 70006 %self.id%
detach 70007 %self.id%
detach 70008 %self.id%
detach 70009 %self.id%
*detach 70010 %self.id%
detach 70011 %self.id%
detach 70012 %self.id%
detach 70013 %self.id%
detach 70010 %self.id%
~
#70011
���~
0 d 100
���~
wait 1
mecho - ������ ��������� � ���, �� ������� ��������� � ������� � �����.
mecho - �� ��� �� ������%actor.g% ����� ���� - ��� ������ ����� �� ����� ��� ���� �������.
if (%world.curobjs(70049)% < 3) && (%random.100% <= 10)
  mecho - ������ �������� �� ������.
  wait 10
  mecho - ���, ������, ��������� �������� ������!
  mload obj 70049
  give  ������ %actor.name%
else
  mecho - ������, ���� � ���� ����� �������� ��������! ��, ��� � ���� ����������
  mecho - ���������� ���� ����� ��������! ������ ����� ������ � ���� �������������.
  %self.gold(10000)%
  ���� 10000 ��� %actor.name%
end
detach 70005 %self.id%
detach 70006 %self.id%
detach 70007 %self.id%
detach 70008 %self.id%
detach 70009 %self.id%
detach 70010 %self.id%
*detach 70011 %self.id%
detach 70012 %self.id%
detach 70013 %self.id%
detach 70011 %self.id%
~
#70012
����~
0 d 100
����~
wait 1
mecho - ������ ��������� � ���, �� ������� ��������� � ������� � �����.
mecho - �� ��� �� ������%actor.g% ����� ���� - ��� ������ ����� �� ����� ��� ���� �������.
if (%world.curobjs(70050)% < 3) && (%random.100% <= 10)
  mecho - ������ �������� �� ������.
  wait 10
  mecho - ���, ������, ��������� �������� ������!
  mload obj 70050
  give  ������ %actor.name%
else
  mecho - ������, ���� � ���� ����� �������� ��������! ��, ��� � ���� ����������
  mecho - ���������� ���� ����� ��������! ������ ����� ������ � ���� �������������.
  %self.gold(10000)%
  ���� 10000 ��� %actor.name%
end
detach 70005 %self.id%
detach 70006 %self.id%
detach 70007 %self.id%
detach 70008 %self.id%
detach 70009 %self.id%
detach 70010 %self.id%
detach 70011 %self.id%
*detach 70012 %self.id%
detach 70013 %self.id%
detach 70012 %self.id%
~
#70013
������~
0 d 100
������~
wait 1
mecho - ������ ��������� � ���, �� ������� ��������� � ������� � �����.
mecho - �� ��� �� ������%actor.g% ����� ���� - ��� ������ ����� �� ����� ��� ���� �������.
if (%world.curobjs(70051)% < 3) && (%random.100% <= 10)
  mecho - ������ �������� �� ������.
  wait 10
  mecho - ���, ������, ��������� �������� ������!
  mload obj 70051
  give  ������ %actor.name%
else
  mecho - ������, ���� � ���� ����� �������� ��������! ��, ��� � ���� ����������
  mecho - ���������� ���� ����� ��������! ������ ����� ������ � ���� �������������.
  %self.gold(10000)%
  ���� 10000 ��� %actor.name%
end
detach 70005 %self.id%
detach 70006 %self.id%
detach 70007 %self.id%
detach 70008 %self.id%
detach 70009 %self.id%
detach 70010 %self.id%
detach 70011 %self.id%
detach 70012 %self.id%
detach 70013 %self.id%
~
#70014
������ ���� �����~
0 j 70031
100~
wait 1
if %self.fighting%
  halt
end
if %object.vnum% !=70031
  ���� ���
  halt
end
mecho ����� ������� �� ������������ ������������ ������� �����.
mpurge �����
wait 10
if %self.fighting%
  halt
end
���
wait 10
if %self.fighting%
  halt
end
say �������, ���������! �� ��� � ������ ���������!
wait 5
if %self.fighting%
  halt
end
mload mob 70003
mpurge ����
~
#70015
���������� �� �������~
2 e 100
~
wait 1
wecho  ������� ����� ������ � �������, �������� ������ ��������� ���� ����.
set fchar %self.people%
wdamage %fchar% 50
~
#70016
������ ������~
2 c 100
������~
if !%arg.contains(������)%
  wecho ����?
  halt
end
wait 1s
wsend %actor% �������� �������� ������, �� ������ ������.
wechoaround %actor% ���������� �� ������, %actor.name% �����%actor.g% ������.
wdoor 70017 north flags a
wdoor 70017 north room 70072
wdoor 70072 south flags a
wdoor 70072 south room 70017
wait 1
detach 70016 %self.id%
~
#70017
������� ������� � �������~
2 f 100
~
wdoor 70017 north purge
wdoor 70072 south purge
attach 70016 %self.id%
~
#70018
����� �����~
0 f 100
*~
if (%world.curobjs(70023)% < 30) && (%random.100% <= 5)
  mload obj 70023
end
if (%world.curobjs(70026)% < 30) && (%random.100% <= 5)
  mload obj 70026
end
if (%world.curobjs(70027)% < 10) && (%random.100% <= 5)
  mload obj 70027
end
if (%world.curobjs(70032)% < 30) && (%random.100% <= 5)
  mload obj 70032
end
if (%world.curobjs(70033)% < 10) && (%random.100% <= 5)
  mload obj 70033
end
~
#70019
����� ���������~
0 f 100
*~
if (%world.curobjs(70001)% < 30) && (%random.100% <= 5)
  mload obj 70001
end
if (%world.curobjs(70002)% < 30) && (%random.100% <= 5)
  mload obj 70002
end
if (%world.curobjs(70005)% < 10) && (%random.100% <= 5)
  mload obj 70005
end
if (%world.curobjs(70006)% < 5) && (%random.100% <= 5)
  mload obj 70006
end
if (%world.curobjs(70007)% < 20) && (%random.100% <= 5)
  mload obj 70007
end
if (%world.curobjs(70018)% < 30) && (%random.100% <= 5)
  mload obj 70018
end
if (%world.curobjs(70019)% < 30) && (%random.100% <= 5)
  mload obj 70019
end
if (%world.curobjs(70036)% < 10) && (%random.100% <= 5)
  mload obj 70036
end
~
#70020
����� �����������~
0 f 100
*~
if (%world.curobjs(70001)% < 30) && (%random.100% <= 5)
  mload obj 70001
end
if (%world.curobjs(70004)% < 30) && (%random.100% <= 5)
  mload obj 70004
end
if (%world.curobjs(70018)% < 30) && (%random.100% <= 5)
  mload obj 70018
end
if (%world.curobjs(70034)% < 30) && (%random.100% <= 5)
  mload obj 70034
end
if (%world.curobjs(70035)% < 30) && (%random.100% <= 5)
  mload obj 70035
end
~
#70021
����� ��������~
0 f 100
*~
if (%world.curobjs(70002)% < 30) && (%random.100% <= 5)
  mload obj 70002
end
if (%world.curobjs(70037)% < 30) && (%random.100% <= 5)
  mload obj 70037
end
if (%world.curobjs(70038)% < 10) && (%random.100% <= 5)
  mload obj 70038
end
if (%world.curobjs(70039)% < 10) && (%random.100% <= 5)
  mload obj 70039
end
~
#70022
����� ��������~
0 f 100
~
if %world.curobjs(3370)% < 2 && %random.10000% < 100
  mload obj 3370
end
~
#70023
������ � ���������~
2 c 100
�����~
if !(%arg.contains(�������)%)
  wsend %actor% ���� ��� �� ������ �����???
  return 0
  halt
end
wsend %actor.name% _������ �����, �� ������� � �������� �� �����.
wechoaround %actor% %actor.name% ��������%actor.q% ���� ������� �� �����.
wait 3
wecho _������� �������� � ������ � �������� ����.
wait 10
wat 79200 wecho ���-�� ��������� ���� � ��������.
wteleport all 79200
end
~
#70024
������ � ����������~
2 c 100
�����~
if !(%arg.contains(�������)%)
  wsend %actor% ���� ��� �� ������ �����???
  return 0
  halt
end
wsend %actor.name%  ������ �����, �� ������� � �������� �� �����.
wechoaround %actor% %actor.name% ��������%actor.q% ���� ������� �� �����.
wait 3
wecho ������� �������� � ������ � �������� ����.
wait 10
wat 79200 wecho ���-�� ��������� ���� � ��������.
wteleport all 70200
end
~
#70025
����� ���������~
0 f 100
~
mload obj 70015
~
$~

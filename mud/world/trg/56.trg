#5600
����� � ������~
0 q 100
~
if %world.curmobs(5611)% > 0
  wait 5
  say ������ ����, %actor.name%!
  say �� �������� �� �� ��� � ����� ����?
else
  attach 5606 %self.id%
  detach 5601 %self.id%
  detach 5603 %self.id%
  detach 5600 %self.id%
end
~
#5601
������ ������~
0 d 100
������~
detach 5600 %self.id%
wait 5
say ��� � ������!
say ������ � �� ���� �� �������, ������ ����..
say � ������ �����!
say � ��� ������ ���� � �� ��, ������ � �������, � ���� ��������!
say ������� ��� �������, � � ���� �� ��� �������!
~
#5602
���� ����~
0 f 100
~
mload obj 5600
~
#5603
��� ���� ������~
0 j 100
~
wait 1
if  %object.vnum% == 5600
  mpurge %object%
  mecho ����� ���� ����.
  wait 3
  �����
  say ��� ������� ���� %actor.name%!
  wait 3
  say ����%actor.q% �� ���� �� ������!
  say ��� ������ ����� � �������!
  %self.gold(+50)%
  ���� 50 ��� %actor.name%
  detach 5601 %self.id%
  detach 5603 %self.id%
else 
  say ��� ��� �� �����!
  drop all
end
~
#5604
����� ����~
0 n 100
~
attach 5600 %self.id%
attach 5601 %self.id%
attach 5603 %self.id%
detach 5606 %self.id%
~
#5605
reset 56~
2 f 100
~
wpurge �����
wload mob 5612
~
#5606
��� ���-���� ������~
0 j 100
~
if  %object.vnum% == 5600
  say  �� ��� ����� � �����������..
  wait 1
  mpurge %object%
else 
  say ����� ��� ���?
end
~
#5607
���������~
0 f 10
~
if %world.curobjs(5601)% < 100
  mload obj 5601
end
~
$~

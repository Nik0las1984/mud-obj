#27700
�������~
0 q 100
~
wait 1s
say   ��� �� ����� �������???
wait 2s
say   ���� �������� ������ ��� �������
wait 2s
����
wait 1s
say   ������ �������!!! ���������� �� ������� ����...
~
#27701
���������~
2 c 100
���������~
if !%arg.contains(�����)% 
  return 0
  halt
end
wait 1
wdoor 27745 north flags a
wdoor 27745 north room 27746
wsend %actor.name% �� ���������� ����� � ������� ������� ������.
wechoaround %actor% %actor.name% ���������%actor.g% ����� � �������� ������.
detach 27701 %self.id%
~
#27702
�������~
0 r 100
~
wait 1s
mecho ������ ������� �������� �������� �� ���.
wait 1s
�����
wait 2s
say ����������, ��� �������. 
say ����� ������ ������� ���� � ���� ����?
wait 2s
say � ��� ����� ��� ����� �� �������.
wait 2s
say ��������� ������ � ���...
say ��������� � ���� ����������,
say ����� �� ��� ��� - �������� ������.
say ������, �������, ��������..
wait 2s
say ��� � ������ ����� ��� ��� � �� ����� � ���.
say �� ��� �������� �� ��� ������, �� �������� ���
say � �����-���� � ��� �� �����.
wait 2s
say ������ ���� ����� ��� ���� ���, � �� ���������.
say �������� ������ � ���� �����������.
say ���� � ��� � ��� �����, � �� ������� �� ��� ���� ������!
say ������ ���� ��� �� ��. �� ��������� ��� � ����.
wait 2s
say ����� �� ��������? �������� ��� ������ �� �����?
wait 2s
emot ������������� �������� �� ���.
attach 27703 %self.id%
detach 27702 %self.id%
~
#27703
�������2~
0 d 100
������~
wait 2
say ������� ����...
say ��� �� ��, �� ����, � ����� �� ������-������, ���-�� ��� �� ������...
wait 2
mecho ������� ��������� ��� �� ��.
mdoor 27719 south room 27727
mdoor 27719 south flags a
detach 27703 %self.id%
~
#27704
���������� �����.~
2 d 100
������~
wait 4
wdoor 27719 south flags a
wdoor 27719  south  room 27727
~
#27705
��������� �������~
0 c 100
���������~
if !(%arg.contains(������)%) 
  msend  %actor% � ��� ������?
  return 0
  halt
end
wait 1
msend %actor% �� ��������� ������� � ������� �� ������.
mechoaround %actor% %actor.name% ���������%actor.q% �������
wait 3s
mecho �������, ��������� �������, ����������� ����� �������������.
say � ������ � �������, �� ���� �� ������� ���������� ����� ������.
wait 3
mecho ������� ������ �������� �� �������.
calcuid ohotni 27706 mob
attach 27706 %ohotni.id%
set questor277 %actor%
remote questor277 %ohotni.id%
wait 1
mpurge %self%
~
#27706
����� � ����� ����� �������~
0 q 100
~
wait 1
if ((%actor.id% != %questor277.id%) && !%exist.mob(27700)%)
  halt
end
say ������� ����, %actor.name%, �� ������. ����������� ���, ������, �� �������� ����.
mecho _- � �� �������� � �������� � ������� ��������. 
mecho _- � ���� ����������� �� ���� ������.
wait 3
mecho ������� ����� ���-�� �� �������
wait 3
switch %random.25%
  case 1
    mload obj 27709
    ���� ��� %actor.name%
  break
  case 2
    mecho ������� ����� ���-�� �� �������.
    mload obj 27710
    ���� ��� %actor.name%
  break
  case 3
    mecho ������� ����� ���-�� �� �������.
    mload obj 27711
    ���� ��� %actor.name%
  break
  default
    mecho ������� ����� ���-�� �� �������.
    %self.gold(1000)%
    ���� 1000 ��� %actor.name%
  done
  detach 27706 %self.id%
~
#27707
�����~
2 f 100
~
wdoor 27745 north purge
wdoor 27719 south purge
calcuid branch 27745 room
detach 27701 %branch.id%
attach 27701 %branch.id%
~
#27708
���� ����~
0 f 100
~
if (%world.curobjs(27704)% < 10) && (%random.10% <= 2)
  mload obj 27704
end
~
#27709
���� ���������~
0 f 100
~
if (%world.curobjs(27705)% < 10) && (%random.10% <= 2)
  mload obj 27705
end
~
#27710
���� ���������~
0 f 100
~
if (%world.curobjs(27708)% < 10) && (%random.10% <= 2)
  mload obj 27708
end
~
#27711
���� �������~
0 f 100
~
if (%world.curobjs(27703)% < 10) && (%random.10% <= 2)
  mload obj 27703
end
~
#27712
���� ��������~
0 f 100
~
if (%world.curobjs(27700)% < 10) && (%random.10% <= 2)
  mload obj 27700
end
~
#27713
���� ����~
0 f 100
*~
if (%world.curobjs(27702)% < 10) && (%random.10% <= 2)
  mload obj 27702
end
if (%world.curobjs(27706)% < 10) && (%random.10% <= 2)
  mload obj 27706
end
~
$~

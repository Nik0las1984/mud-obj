#6700
�������� ������~
2 c 0
�������� ��������� ������~
if !(%arg.contains(������)%) 
  wsend %actor% ��� ��� �� ������ ��������???
  return 0
  halt
end
wsend %actor% �� ������� ����� �������� � ������ ������� �� ����!
wechoaround %actor% %actor.name% ������ ������%actor.g% �� ������ �������� ����� �����!
wait 1s
wecho �� ����� �� ���� ��������� ������ � ������� ������.
wload obj 6700
calcuid kamen 6720 room
detach 6700 %kamen.id%
~
#6701
�������� � ����� ����~
2 c 0
����� �������� ������~
if !(%arg.contains(����)%) 
  wsend %actor% ���� ��� �� ������ ��������???
  halt
end
if (!%actor.rentable%)
  wsend %actor% ����� �� ����� ����� �� ���� ��� ������� �����!
  halt
end
wsend %actor% �� ��� ��� ���� �������� � ����.
wechoaround %actor% %actor.name% �����%actor.q% � ����.
wait 1s
wsend %actor% �������, �� �� �� �������� � ���� � ������������ ��������� ��� ��.
wteleport %actor.name% 6771
~
#6702
�������� � ����� �����~
2 c 0
��������� ����� �������� ������~
if !(%arg.contains(����)%) 
  wsend %actor% ���� ��� �� ������ ��������???
  halt
end
if (!%actor.rentable%)
  wsend %actor% ����� �� ����� ����� �� ���� ��� ������� �����!
  halt
end
wsend %actor% �� � ��� ��� ���� �������� � ����.
wechoaround %actor% %actor.name% �����%actor.q% � ����.
wait 1s
wsend %actor% �������, �� �� �� �������� � ���� � ������������ ��������� �� ������ �����.
wteleport %actor.name% 6719
wat 6719 wechoaround %actor% ���-�� ������ ���� �����.
~
#6703
����� ��������~
2 f 100
~
context 67
calcuid norkad 6719 room
attach 6701 %norkad.id%
calcuid kamen 6720 room
attach 6700 %kamen.id%
unset qwestik67
calcuid norkam 6717 room
attach 6706 %norkam.id%
attach 6707 %norkam.id%
calcuid medwed 6700 mob
attach 6709 %medwed.id%
detach 6710 %medwed.id%
~
#6704
����� �� ������~
2 g 20
~
wait 1
if %random.20%<4
  wsend %actor% �� ������������ � ������ � � ������ �������� ����!
  wait 1
  wsend %actor% ��������� �� �� ��� ����� ������� ������.
  wteleport %actor.name% 6740
  wechoaround %actor% ���-�� �������� ���� � ������.
end
~
#6705
������� �� ������~
2 c 0
������� ����� ~
if !(%arg.contains(�����)%) 
  wsend %actor% ���� ��� �� ������ �������???
  return 0
  halt
end
wsend %actor% ����������� �� ����� ������, �� ������� �����.
wechoaround %actor% %actor.name% �����%actor.q% ����� �� ������ ������.
wait 1s
wsend %actor% �� ����� ��������� �� ������ �� ������� ��������.
wteleport %actor.name% 6743
wat 6743 wechoaround %actor% ���-�� ������ ���� �����.
~
#6706
������� � ����������~
2 c 0
������� ����� ��������~
if !(%arg.contains(����������)%) 
  wsend %actor% ���� ��� �� ������ �������???
  return 0
  halt
end
context 67 
if !(%qwestik67% == %actor.name%)
  wsend %actor% ����� �������� � ���������� ���� ������� ������������ � �������!
  return 0
  halt
end
if !%actor.rentable%
  wsend %actor% ����� �� ����� ����� �� ���� ��� ������� �����!
  halt
end
context 67 
wsend %actor% ������ ����� ���������, �� �������� � ����������.
wechoaround %actor% %actor.name% �����%actor.q% � ��������� ��������� �����������.
wait 1s
wsend %actor% �� � ������ � ������ �����.
wteleport %actor.name% 6774
wat 6774 wechoaround %actor% ���-�� ������ ���� ������.
unset %qwestik67% 
calcuid norkam 6717 room
detach 6706 %norkam.id%
~
#6707
������������ � �������~
2 c 0
������������~
if !(%arg.contains(�������)%) 
  wsend %actor% � ���� �� ������ ������������???
  return 0
  halt
end
context 67 
eval qwestik67 %actor.name%
calcuid norkam 6717 room
remote qwestik67 %norkam.id%
wsend %actor% �� ����� ������ �������-���������. ����� ��� ���!?
wechoaround %actor% %actor.name% ������%actor.q% ���������� ����� � ����%actor.q% �������� � �������.
calcuid norkam 6717 room
detach 6707 %norkam.id%
~
#6708
� ������� � ���~
0 k 100
~
if  (%random.25% < 3)
  msend %actor% ������� ������� ���� � �������� �� ����� ��� � ������!
  mechoaround %actor% %actor.name% �������%actor.q% ���� ����� �� ���. 
  mdamage %actor% 15
end
~
#6709
������� ���� �����~
0 q 100
~
wait 2s
��� 
wait 5s
say ��� ��� ������....
���
wait 2s
say ��� ��� �����.... ���� ����� ��������..
attach 6710 %self.id%
detach 6709 %self.id%
~
#6710
���� ������� ������~
0 d 0
������~
wait 2s
mecho "�� ��������..." - ������� ������� �������.
mecho "���� � ���, ��� ����� ���� ��������, �� ���� ����� ������������..." - ������ �������
���
wait 2s
mecho "� ��� ��-�� ����, ��� � ������ ����� �����, ���-�� ����� ����" - ��������� �������.
mecho "��� ��� ��� �? �� �������..." - ������ �������.
mecho "������, � � ���� ����� �������!" - �������� �������.
wait 2s
mecho "�� ����, ��� ����� ������ ��� �� �������, �� �� ���� ��������� � ����� � ����"
mecho "��� ���� ��������" - ��������� �������.
detach 6710 %self.id%
~
#6711
���������� ����~
2 c 0
���������� ������ ����� ��������� ��������~
if !(%arg.contains(����)%) 
  wsend %actor% ��� �� ������ ����������???
  return 0
  halt
end
wsend %actor% �� �������� ����� � ������ ����� ���������� ������! �����, ��� � ��� �� �������.
wechoaround %actor% %actor.name% �����%actor.g% ���������� ������. ��� ��� ������?
wait 1s 
wecho �������� �� ���� ������� ��� ���� �� ������ ������ ����!
wload mob 6732
wload mob 6732
wload mob 6732
wload mob 6732
calcuid uleizimnii 6760 room
detach 6711 %uleizimnii.id%
~
#6712
������� �������� �������~
1 n 100
~
calcuid uleizimnii 6760 room
attach 6711 %uleizimnii.id%
attach 6713 %uleizimnii.id%
~
#6713
���� ���������� �����~
2 c 0
�������� ��������~
if !(%arg.contains(�����)%) 
  wsend %actor% ���� �� ������ ��������???
  return 0
  halt
end
wsend %actor% �� ������� "���. ���."
wechoaround %actor% %actor.name% ������%actor.g% : "���. ���."
wait 1s 
wecho �� ���� �������� ������ �������� �����, �������, ��� ������ ����� �������
wload mob 6730
calcuid shmell 6730 mob
attach 6714 %shmell.id%
wait 3s
wecho ����� ���������� ��������, ������� ��� ��� �� �� ���.
calcuid uleizimnii 6760 room
detach 6713 %uleizimnii.id%
~
#6714
���� ���� �����~
0 j 100
~
if %object.vnum%==6707
  wait 2s
  mecho "��������." - ���������� �������� �����.
  wait 2s
  mecho "������� ��� ���? ����. � ��� �� ������� ���� ����� ������!"
  mpurge %object%
  wait 5s
  mecho "����. �� ������� �������."- ��������� �����.
  mecho ����� ����� �� ����, � ��� ���������� ������ ������.
  wait 3s
  if %world.curobjs(6713)% < 100
    mload obj 6713
    ��� ���� %actor.name%
    mecho "������� � �� ������."- ��������� �����.
  end
end
~
#6715
������� �� �����������~
2 c 0
������� ����� ��������~
if !(%arg.contains(������)%)
  wsend %actor% ���� ��� �� ������ �������???
  return 0
  halt
end
wsend %actor% ������ ����� ���������, �� ������� �� �����������.
wait 1s
wsend %actor% �� �������.
wat 6774 wecho ���-�� ������ ���� �����.
wteleport %actor.name% 6717
~
#6716
������� �����~
0 f 100
~
mload obj 6707
~
$~

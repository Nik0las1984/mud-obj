#68700
���� ������ ������~
0 j 100
~
if %object.vnum% == 68611
  wait 1s
  mecho %self.name% ����������: ��� ������!
  mecho %self.name% ����������: ������ � �������� �� ������ ���� ������!
  wait 1s
  mecho ���������� ������� �������� �����������...
  calcuid demid 68613 mob
  attach 68701 %demid.id%
  set hero %actor%
  remote hero %demid.id% 
  detach 68605 %demid.id%
  mteleport %self% 68760
  wait 1
  mpurge %self%
end
~
#68701
������� ������  �� ����������~
0 q 100
~
if %actor% != %hero%
  wait 2s
  halt
end
say ������� ���� ��� ������� ?
say ������� �� ����� ��� � ����-������ ��������� �������� ����� ������.
say �����, ������ ��������!
if (%random.100% < 2)
  mload obj 103
  ���� ����� .%actor.name%
else
  msend %actor% %self.name% ��� ��� ��������� �������.
  mechoaround %actor% %self.name% ��� %actor.tname% ��������� �������.
  %actor.gold(+10000)%
  msend %actor% ��� ��������� 10000 ���.
end
detach 68701 %self.id%
~
#68702
�������~
0 r 100
~
wait 1s
say ��������� ������, ��� ������� ���� ?
wait 10s
~
#68703
������� �����~
0 d 0
����� ����~
wait 1s
mecho ������� ������� ��������.
wait 1s
say ��� �, ������ ���� %actor.name%, �� ������ � �� ���.
say ������� ����� � ����� ����, ������� ����� ��� �� ����, ������� ������
say ����������. ������ ��� ���������� �� ����, ��� ������ � �������� ���� �����.
wait 2t
halt
~
#68704
����� ���� -  ������ ������� ��������~
0 f 100
~
calcuid vodan 68718 mob
detach 68702 %vodan.id%    
detach 68703 %vodan.id% 
attach 68705 %vodan.id%
~
#68705
������� ���� ����� ����~
0 r 100
~
say ���� ����� ������� �� ��������%actor.g%.
wait 1s
mecho ������� ������ ������ � ����� �����.
wait 1s
say ��� ������, ��� � � ������.
mload obj 68702
���� ������ %actor.name%
wait 1s
��� ������
detach 68705 %self.id%
~
#68706
�����  ���~
0 f 100
~
mecho %self.name% ����������: �� ������� ����, �� �  ��� �������!!!
mecho ���������� ������� �������� �����������... 
if %random.4% ==  1 && %world.curobjs(68713)% < 2
  mload obj 68713
end
~
$~

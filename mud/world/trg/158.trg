#15800
�������� ���� �����~
1 gj 100
~
wait 1
if %actor.clan% == ���
  halt
end
osend %actor% %self.name% ��������%self.u% � ����� �����.
wait 1
opurge %self%
~
#15801
����� ����~
1 c 2
�������~
wait 1
if !%arg.contains(�����������)%
  osend %actor% ���� �������?
  halt
end
osend %actor% �� ��������� � �����������.
if %actor.clan% != ���
  halt
end
if %world.curmobs(15805)% > 50
  osend %actor% ...� ������ �� ���������!
  halt
end
oechoaround %actor% %actor.name% ��������%actor.g% � �����������.
oload mob 15805
oecho ���������� ���� ����� � ����� ���� �������� ������� ����.
oforce %actor% �������� ����
wait 1
opurge %self%
~
#15802
���� ������ ������~
0 m 0
~
wait 1
if %amount% < 50
  wait 2
  say �������� �����!
  give %amount% ��� .%actor.name%
  halt
end
if %world.curobjs(15835)% >= 200
  wait 2
  say ����������� ������������, ������!
  give %amount% ��� .%actor.name%
  halt
end
wait 2
say ���, �����.
mload obj 15835
give ����������� .%actor.name%
~
#15803
���������� ����~
0 c 0
����������~
wait 1
if %self.fighting%
  halt
end
if !%arg.contains(����)%
  msend %actor%  ���� �� ������ ����������?
  halt
end
if (%actor.clan% != ���) || (%actor% != %self.leader%)
  msend %actor% ��� �� ��� ������.
  halt
end
msend %actor% �� ���������� ����.
mechoaround %actor% %actor.name% ���������%actor.g% ����.
mload obj 15835
give ����������� .%actor.name%
wait 1
mecho ���� ������� �������.
wait 1
mpurge %self%
~
#15804
��������� ������ ��������~
0 g 100
~
wait 1s
if (%actor.vnum% == 15810)
  mforce %actor% ������ �����.�����
  wait 1s
  ���
  ����
  ����� %actor.name%
end
~
$~

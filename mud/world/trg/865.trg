#86500
��������� �������~
0 r 100
~
wait 1s
� ����. ���-�� ����.
~
#86501
��������� ���� �����~
0 j 100
������~
wait 2
if %object.vnum% == 86518
  calcuid vari 86518 obj
  mpurge %vari%
  wait 1s
  � ��� ��� �������! ��� ���� ������� ������� ���?!
  wait 1s
  � ������ ���������� ��� ���� ��� ����.
  � ��� �������� ������� ������� ���������.
  � ������� � ���������� ����, �� ������� ������� ������ � ���.
  � � ����� ���� ���������.
  � ��� ���� �� ��������� �����, �� � �� �� ���� �����.
  mload obj 86501
  ��� ���� %actor.name%
  wait 1s
  � ��� � ������� ����� ������� �� ��������� ���������, � � ����� ����� ��� ������.
  ���� �������.��������
  mpurge %self%
end
~
#86502
������� ��������� ��������� �����~
0 j 100
~
wait 1
if %object.vnum% == 86500
  wait 3
  � ���� ��� �����?
  ��
  wait 3
  � �� ��� �� ����� ���������.
  �����
  wait 1
  � ������ ��� ��� � ����� �����.
  wait 3
  � �� ��. ���, ����� �� ������ � ������.
  %self.gold(+6000)%
  ���� 4000 ��� %actor.name%
  calcuid var 86500 obj
  mpurge %var%
  mpurge %self%
end
~
#86503
������� �����������~
0 r 100
~
wait 2s
� � �� ������ ������� � ����.
mecho ���������� ������� ���-�� �� �����.
wait 2s
mecho ������� ����� ������������ ������.
wait 1s
� �� ��� ���������� ������� ������� ���������.
wait 5s
� � �������� ������ �� ����� ����� �����!
mecho ���������� ������� ������ ���� ������ ���� � ������ ������� ������.
mecho ������� ������� ������ ���� ������ ���� � ���������� ������� ������.
~
#86504
���� ���� ���~
0 j 100
~
wait 2
if %object.vnum% == 86516
  calcuid vari 86516 obj
  mpurge %vari%
  wait 2
  msend %actor% ������� ��� ������� ����� ����, ������ ������� � ������� �������.
  mload obj 86517
  wait 1s
  msend ������� ���, ������������� � ��������� ���, ������.
  mpurge %self%
end
~
#86505
������� ������� �������~
0 r 100
~
wait 5s
� ������. ��������� ������� ��� ��� ��������.
~
#86506
������ �������~
0 m 1
~
if %actor.vnum% != -1
  halt
end
eval nadakyn 500
if %amount% < %nadakyn%
  � ���! ����� ����� ����. ����� ������!
else
  mecho ������ ����� ��������� � ������ ����� ��������� � �����.
  tell %actor.name% ������� ������� ���-������ ������?
  mecho ������ ������ ����� � ������� �������.
  mteleport %actor.name% 86542
  wait 1
end
~
#86507
����������������~
0 r 100
~
wait 1s
� �, �������� ��������� ����������.
wait 1s
� �� ���� ����� ��� � ������� ���������� �� ��� ����� ������.
~
#86508
������ ������~
0 d 100
������~
wait 1s
� ��� �������!
wait 1s
� ������ ������� ��� ������� ������ ���������.
mload obj 86519
��� ������� %actor.name%
� � � ������, ��� ��� ����� �����.
mpurge %self%
~
#86509
�������������~
0 r 100
~
wait 1s
� �� �������. ������� ����� ����� ��� �� ����.
wait 1s
wecho ����� ������ ��������.
~
#86510
������ ������� ���������~
0 j 100
~
wait 2
if %object.vnum% == 86519
  calcuid vari 86519 obj
  mpurge %vari%
  wait 1s
  � ��� ���? ��...
  wait 4s
  � ������� ����������� �������� ������ ������� ������ �� ������������� ��������.
  wait 2s
  � �� ��� � � �� ������� ������!
  wait 2s
  � �� �����...
  wecho �������� ������ ���-�� ����� �� ������ ������.
  wait 4s
  mload obj 86520
  � ���. ����� ��� ������� � ������. ����� ���� ����.
  ��� ������� %actor.name%
  � � ��� ������ �� ������. � ������ ����� ������ � ������ �������� ����.
  wait 2s
  � ��������!
~
#86511
������ ������� �������~
0 j 100
~
wait 2
if %object.vnum% == 86520
  calcuid vari 86520 obj
  mpurge %vari%
  wait 1s
  � �? ��� �� ��� �����?
  wait 4s
  � ��� ����� � ���� ��� ������ ���� ��� ������� ���������� � ����� ������� �� ��� �������!
  wait 2s
  � �� �����. ������ ����. ����� ������� ���� � ���.
  mload obj 86502
  ��� ������ %actor.name%
  wait 1s
  wecho ������ ����� ��������� � ������� ������������� ��������.
  mpurge %self%
~
$~
* BRusMUD trigger file v1.0
#6200
���������~
0 f0 100
~
if %world.curobjs(6200)% < 1
   mload obj 6200
end








~
#6201
������������~
0 f0 100
~
if %world.curobjs(6205)% < 1
   mload obj 6205
   mecho ������� ������, ������������� � ��������� ����� �����.
   mecho ���, ��� ������ ���� ������� �������� ���-�� �������������.
end
if (%world.curobjs(6206)% < 50) && (%random.5%==1)
   mload obj 6206
   mecho ����� ������ ��� ���-�� ��������.
end

~
#6202
����������~
1 o0 100
~
oecho ��������� ������ ���� ���������� � �����.
if %world.curobjs(517)% < 1 && %random.5%==1
osend %actor% �������� ������, �� �������� ����� �������� �������, ������������ ��������.
oechoaround %actor.name% ����� ������������ ��������.
oload obj 517
end
calcuid target 6200 obj
opurge %target%
detach %self.id%



~
#6203
��������~
1 c0 4
�������~
if (%arg%==����) && (%actor.eq(18)%=6205)
osend %actor.name% ������������, �� ����������� ������� ���� � �����.
oechoaround %actor% %actor.name% ����������, ����� ������� ���� �� �������.
osend %actor.name% �����, �� ����� �� ������ ������ ������� �� ���-�� ��������.
osend %actor.name% ��������� ���� ���� � � ��� � ����� �������� �������.
osend %actor.name% ����� ������������ �� ��� � ����� � �������.
oload obj 6208
if %random.5%<2
oforce %actor.name% ����� �������
else
osend %actor.name% ������� ����������� � ��� � ���� � �������. 
end
calcuid target 6205 obj
opurge %target%
detach 6203 %self.id%
else
oecho ���� ?
  halt
end

~
$
$

#66100
�����������~
0 q 100
~
wait 1
msend %actor.name%  - ������� ������� ���� ������,  ���� ���������� �� �������� ����.
msend %actor.name%  - ������ ���� ���� � ���������� ���������� ������ ����� �����. 
msend %actor.name%  - ������� ����� ����� �����, � ������ ��� ������ � ������� ����.
msend %actor.name%  - ����� ��������� � ����. � ���� ����������� ���� �� 200 ��� �� ����� ��������
msend %actor.name%  - �� ���������, ������� ��� ��������� �����.
mecho ������ �������� ���.
wait 1s
msend %actor.name% - � ����� �� ����������...
detach 66100 %self.id%
~
#66101
������� �����~
0 j 100
~
wait 2s
switch %object.name% 
  case ���� ������������ �����
    ��
    %self.gold(200)% 
    say - ��� � ����������, ������ ������ ������ ����� ���������...
    say %actor.name% - ��� ������ ������� �� ����� ���������.
    wait 1s
    �� 200 ��� .%actor.name%
    mecho ������ ���-�� ����������� ��� ���� � ������� ������ ������.
    mpurge %object%
  break
  default
    say - � �� ��� �� ����, �� �� �������, �� ���� � �� ������� �� ������ �����.
    eval getobject %object.name%
    if  %getobject.car% == ����
      mpurge %object%
    else
      ����� %getobject.car%.%getobject.cdr%
    end
  break
done
~
#66102
������ ������ :)~
0 q 100
~
if %exist.mob(66111)% && %exist.mob(66112)%
  say - ������� ���� �������, ������ �������� 
  say - ������ �� �������� �� ���� ������� ������. 
  wait 1s
  say - ������, � ���� �������� ��� ���� � �������. 
  wait 1s
  ��� 2000 ��� %actor.name%
  mecho ������ � ������� ���� � ���� �������..
  wait 1
  calcuid elder 66112 mob
  calcuid young 66111 mob
  mpurge %elder%
  mpurge %young%
  halt
end
msend %actor.name%  - �� �������� �� �� ��� ����� ����� ������� � ���������?
msend %actor.name%  - � � ���� ����������� ��� �����...
wait 1s
mecho   �������� ���������
~
#66103
������ ������ 2~
0 d 0
�� ������~
wait 1
msend %actor% - ��������� � ��, ������ �� ��������� ������� �� ��������, ��������
msend %actor% - ��� �����, �� ��� �����, ��� ������� ���, ��� � � ������� ���, 
msend %actor% - �� ������-�����, � ������������ � ������, ���������� �� �� 
msend %actor% - �������� ����, ������� �� ����� ����, �� ��� ��� �� ��� 
msend %actor% - ���������� � � ������� ���������� ��......
mecho   �������� ���������.
wait 1s
msend %actor% - ������ � ���� ������ � ����� �� ����� � �����, �� ���� ����� 
msend %actor% - �����, ����� ��� �� ��� ������, ��� ��� ��� ������ � ����, ����� �� 
msend %actor% - ����� �� ����, � ������ �� ���, � ������ �� ��� ������, ��� ��
msend %actor% - ������, ����������.
~
#66104
�������~
1 c 100
�������~
wait 1
osend %actor.name% ������ ��� ������������....
if %actor.haveobj(66104)%
  osend %actor% ����� ����� ������ ����������� � ��������� ��� ��������...
  oload mob 66111
  oload mob 66112
  wait 2s
  oforce %actor% ���� ���
  opurge %self%
end
default
  oecho �� ������ �� �����
~
#66105
���� �� ����~
0 q 100
~
wait 1
msend %actor.name% ���� ������ ���:
msend %actor.name% -����� � �� ������� ����� ������������.
~
#66106
����������~
0 d 100
��������~
wait 1
���� %actor.name%
����� � ����� ��, ���� �� ���� ����� ���������,  �� ���.
~
#66107
����������~
0 d 100
��������~
wait 1
���� %actor.name%
����� ���� ����, %actor.name%
~
#66108
����� ��������~
0 f 100
~
if (%world.curobjs(66100)% < 6) && (%random.100% <= 10)
  mload obj 66100
end
~
#66109
����� ����~
0 f 100
~
if (%world.curobjs(66110)% < 6) && (%random.100% <= 10)
  mload obj 66110
end
~
#66110
����� ������������~
0 f 100
~
if (%world.curobjs(66108)% < 6) && (%random.100% <= 10)
  mload obj 66108
end
~
#66111
����� ����������~
0 f 100
~
if (%world.curobjs(66107)% < 6) && (%random.100% <= 10)
  mload obj 66107
end
~
#66112
����� ������~
0 f 100
~
mload obj 66104
~
#66113
����� ����~
0 f 100
~
if (%world.curobjs(66103)% < 6) && (%random.100% <= 10)
  mload obj 66103
end
~
#66114
����� �����~
0 f 100
~
if (%world.curobjs(66109)% < 6) && (%random.100% <= 10)
  mload obj 66109
end
~
$~

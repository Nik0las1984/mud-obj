#5100
�������� ~
1 c 4
����������~
if %arg.contains(�������)%
  odoor 5104 up room 5117
  osend %actor% ��������������, �� ���������� �������� � ������ ����� ��������� ������.
  oechoaround %actor% %actor.iname% ���������%actor.g% �������� � ������ ����� ��������� ������.
  oload obj 5105
  calcuid target 5104 obj
  wait 1
  opurge %target%
else
  oecho ���� ?
  halt
end
~
#5101
����� ~
2 f 100
�����~
if %world.curobjs(5105)% > 0 || %room.up%
  wdoor 5104 up purge
  wecho �������� ����������� � ����� �� ���.
  calcuid target 5105 obj
  wpurge %target%
end
~
#5102
����������~
1 o 100
����������~
wait 1
oecho ��������� ���� ���������� � �����.
switch %random.5%
  case 1
    if %world.curobjs(517)% < 1
      osend %actor% ����������, ����� �������� ������, �� �������� ����� �������� 
      osend %actor% ������� - ��� ������������ ��������
      oechoaround %actor.name% ����� ������������ ��������.
      oload obj 517
    end
  break
  case 2
    if %world.curobjs(1730)% < 1
      osend %actor% ����������, ����� �������� ������, �� �������� ����� �������� 
      osend %actor% ������� - ��� �����-�� ������ �����.
      oechoaround %actor.name% ����� � ���� ������ �����.
      oload obj 1730
    end
  break
done
calcuid target 5103 obj
opurge %target%
~
#5113
���������� ������ ����� ������~
0 d 0
���~
say My trigger commandlist is not complete!
~
#5114
����� ���� ���~
0 f 100
~
mload obj 5103
~
$~

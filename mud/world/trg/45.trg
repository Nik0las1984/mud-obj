#4500
������� ��� ����~
0 b 18
~
wzoneecho 4500 &Y������� ��� ����: '�-�-�-�-�-�-�-�!!!'&n
~
#4501
����� ����~
0 f 100
~
calcuid corpse 4500 obj
if %corpse%
  calcuid qroom 4525 room
  attach  4502 %qroom.id%
end
return 1
calcuid room 4525 room
mecho   ���� �� ���������� ������ ������������ � �������...
attach  4503 %room.id%
run     4503 %room.id%
~
#4502
������ ������~
2 c 0
�������� �������~
calcuid corpse 4500 obj
if !%corpse% || !%arg.contains(���)%
  return  1
  halt
end
calcuid gladius 4700 obj
if %actor.eq(16)% != %gladius%
  return  1
  halt
end
wait       1
wsend %actor% �� �������� ��������� ��� � ����������������� ������...
wechoaround %actor% %actor.name% �������%actor.g% ��������� ��� � ����������������� ������...
wecho      ��� �������� ����� �������� � ������ �����...
wpurge %corpse%
wpurge %gladius%
switch %random.5%
  case 1
    wecho �� ���� ����� �������� ���� �������������� ���������...
    wload obj 4501 
  break
  case 2
    if (%world.gameobs(4502)% < 20)
      wecho �� ���� ����� �������� ���� ����������� �� ������� ������...
      wload obj 4502 
    end
  break
  case 3
    if (%world.curobjs(4503)% < 20)
      wecho �� ���� ����� �������� ���� ������ �������...
      wload obj 4503 
    end
  break
  case 4
    wecho �� ���� ����� �������� ���� ���������� �����...
    wload obj 4501 
  break
  case 5
    if (%world.curobjs(4505)% < 15)
      wecho �� ���� ����� �������� ���� �������� �������� ��������...
      wload obj 4501 
    end
  break
done
detach 4502 %self.id%
~
#4503
������������ ����~
2 z 0
~
return   1
calcuid spirit 4500 mob
wpurge  %spirit%
~
#4510
���������� ����������~
2 f 100
0~
wdoor   4510 down purge
wdoor   4522 up   purge
calcuid qroom 4510 room
attach   4500 %qroom.id%
wpurge  ������
wload   obj 4500
detach  4502 %self.id%
~
$~

#34400
���� ������ �����~
0 m 1
~
wait 1s
if %amount% < 2 then
  say �� ����� ������� ������� ���� ����, � ���� �������...
  ���
  wait 10s
  halt
end
wait 1
mecho _����� ������ ����� ������� ���� �� ������� � ��������� ����������.
calcuid rfont 34425 room
exec 34401 %rfont.id%
wait 10s
~
#34401
���� �����������~
2 z 100
~
calcuid fontan 34400 obj
wpurge %fontan%
wload 34400 obj
~
#34402
������ � ������~
0 r 50
~
wait 1
if %actor.sex% == 2
  wait 1s
  say  ����� �� ���� ��� � ������� ���������� �����, � ���������� �������.
else
  wait 1s
  say  ����� �� ���� ��� � ������� ���������� �����, � ������� ��������������.
end
~
#34403
������ � �����-��������~
0 q 100
~
wait 1
say ������������, ��������!
say ��� ���� ������� � ���� - ����� �����!
say �������? ��?
calcuid khelow 34421 mob
attach 34404 %khelow.id%
detach 34403 %khelow.id%
~
#34404
���� ������ �����~
0 d 0
������ ������ �����~
wait 1s
say � ��! ����� ������!
���� %actor.name%
calcuid khelow 34421 mob
attach 34407 %khelow.id%
detach 34404 %khelow.id%
~
#34405
����� ����~
2 f 100
~
if %exist.mob(34421)%
  calcuid khelow 34421 mob
  detach 34404 %khelow.id%
  detach 34403 %khelow.id%
  attach 34403 %khelow.id%
end
~
#34406
����� ���� ��������~
0 b 10
~
switch %random.13%
  case 1
    say ��� �? ��� ���������....
    mecho ��������� ����� ��������� �� ��������.
  break
  case 2
    say  ��������� �� � ����. ��� ������� ����...
    ���
  break
  case 3
    mecho ��������� ����� ����������� ������ ������, ������ � ������.
    mecho ��������� ����� ���������� ��������.
  break
  default
  break
done
end
~
#34407
���� ����� ������~
0 c 0
������ ��� ������~
wait 1
if (%actor.realroom%==49987)
  say ������� �������!
  msend %actor% ��������� ����� ��������� ��� ��� 2000 ���.
  %actor.gold(+2000)%  
  ����
  mecho ��������� ����� ���� �� ������.
  calcuid a7mfor 34421 mob
  mpurge  %a7mfor%
end
~
#34408
������������� ������~
0 m 1
~
wait 1
emot ����������%self.g% ������
eval target 0
switch %amount%
  * ����� (�������� ������� ��������)
  case 5200
    eval target 60016
  break
  * �����
  case 3400
    eval target 69073
  break
  default
    ���
    say � ���� �� �� �� ��� ������ ������?
    give %amount% ��� .%actor.name%
    halt
  done
  ���
  emot ������%self.g% ��������� �������� ������
  mechoaround %actor% %actor.name% �����%actor.q% � ������ ����.
  msend %actor% � ��� ����������� ������, � �� ��� �� �������� ��������...
  msend %actor% 
  mteleport %actor% %target% horse
  mechoaround %actor% %actor.name% ������%actor.u% ����� � ������ ����.
~
$~

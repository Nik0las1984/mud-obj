#69000
������, ����� �����~
0 m 1
~
wait 1
emot ����������%self.g% ������
eval target 0
switch %amount%
  * �����������
  case 2100
    eval target 25007
  break
  * �����
  case 3900
    eval target 75063
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

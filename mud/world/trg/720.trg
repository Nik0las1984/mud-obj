#72000
������� ��������~
0 m 1
~
wait 1
emot ����������%self.g% ����
eval target 0
switch %amount%
  *�����
  case 2500
    eval target 35010
  break
  * ��
  case 3500
    eval target 60016
  break
  default
    say � ���� �� �� ������?
    give %amount% ��� .%actor.name%
    halt
  done
  ���
  emot ������%self.g% ���������� ����� ������
  mechoaround %actor% %actor.name% �����%actor.q% � ������ ����.
  msend %actor% � ��� ����������� ������, � �� ��� �� �������� ��������...
  msend %actor%
  mteleport %actor% %target% horse
  mechoaround %actor% %actor.name% ������%actor.u% ����� � ������ ����.
~
$~

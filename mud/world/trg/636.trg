#63600
����� ���~
2 c 0
�����~
if (%arg% == ���)
  wsend %actor% �� ��������� ����������� �� �������� ����� ���.
  wsend %actor% �� ������������ �� ����������.
  if (%self.vnum% == 63638)
    wteleport %actor% 63658
  else
    wteleport %actor% 63638
  end
  wechoaround %actor% %actor.iname% ��������%actor.g% ����� � ����.
  wecho %actor.iname% �����%actor.g% �� ������ ��� � ������� �� ����
else
  wsend %actor% ���� �� ������-��?
end
~
#63601
��������� ���~
2 c 0
�����~
if (%arg% == ���)
  wsend %actor% �� ��������� ����������� �� �������� ����� ���.
  wsend %actor% �� ������������ �� ����������.
  if (%self.vnum% == 63626)
    wteleport %actor% 63665
  else
    wteleport %actor% 63626
  end
  wechoaround %actor% %actor.iname% ��������%actor.g% ����� � ����.
  wecho %actor.iname% �����%actor.g% �� ������ ��� � ������� �� ����
else
  wsend %actor% ���� �� ������-��?
end
~
#63602
�������� ���~
2 c 0
�����~
if (%arg% == ���)
  wsend %actor% �� ��������� ����������� �� �������� ����� ���.
  wsend %actor% �� ������������ �� ����������.
  if (%self.vnum% == 63617)
    wteleport %actor% 63662
  else
    wteleport %actor% 63617
  end
  wechoaround %actor% %actor.iname% ��������%actor.g% ����� � ����.
  wecho %actor.iname% �����%actor.g% �� ������ ��� � ������� �� ����
else
  wsend %actor% ���� �� ������-��?
end
~
#63603
������������� ������, �����~
0 m 1
~
wait 1
emot ����������%self.g% ������
switch %amount%
  case 4500
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
#63604
������������� ������, ��������~
2 z 100
~
wportal 75063 2
~
#63605
load set on voevoda~
0 f 100
~
mload obj 64425
~
$~

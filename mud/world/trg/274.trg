#27400
������������~
2 e 20
�������~
wait 1
wteleport %actor% 27400 horse
wsend %actor.name% �� � ������ ����� ����������� � �������, �������� ���������� �� ������.
if %actor.sex%==1
  wechoaround %actor% %actor.name% � ������ ����� ���������� � �������.
  wat 27400 wechoaround %actor% %actor.name% �������� ������ � �������.
else
  wechoaround %actor% %actor.name% � ������ ����� ����������� � �������.
  wat 27400 wechoaround %actor% %actor.name% ��������� ������ � �������.
end
wsend %actor.name% ��� ������� �� ������ ���������.
wsend %actor.name% ���� ���� �������� �������� ������ ����.
wdamage %actor.name% 100
~
#27401
�����������1~
2 c 0
���� �����~
if (%arg.contains(�����)%)
  if %actor.fighting%
    wsend %actor% ����� �������?! � ����������� ����������� �������.
    halt
  end
  wechoaround %actor% %actor.name% ��������� ����%actor.y% �� ������.
  wteleport %actor% 27466 horse
  wat 27466 wechoaround %actor% %actor.name% ����%actor.y% �� ������ � �������.
  wsend %actor% �� ��������� ������ �� ������ �� �����.
else
  return 0
end
~
#27402
�����������2~
2 c 0
���� �����~
if (%arg.contains(�����)%)
  if %actor.fighting%
    wsend %actor% ����� �������?! � ����������� ����������� �������.
    halt
  end
  wechoaround %actor% %actor.name% ��������� ����%actor.y% �� ������.
  wteleport %actor% 27402 horse
  wat 27402 wechoaround %actor% %actor.name% ����%actor.y% �� ������ � ������.
  wsend %actor% �� ��������� ������ �� ������ �� ������.
else
  return 0
end
~
#27403
�������������~
0 f 100
~
if (%world.curobjs(554)%==0) and (%random.10%==1)
  mload obj 554
end
~
#27404
����� �����~
2 c 0
�����~
if (%arg.contains(����)%)
  wechoaround %actor% %actor.name% ��������� �����%actor.q% �� ������ �����.
  wteleport %actor% 27483
  wechoaround %actor% %actor.name% �����%actor.q% �� ������ � ������.
  wsend %actor% �� ������ ����������� �� ������ �����.
else
  return 0
end
~
#27498
����20�������~
0 m 1
~
if %actor.vnum% != -1
  halt
end
eval needgold %actor.level%*(%actor.remort%+1)
if %amount% < %needgold%
  ���� %amount% ��� .%actor.name%
  tell %actor.name% �������� �����!
else
  mecho ������ �������: '������, ���� ����, ������ ��� �������� � �����.'
  wait 5
  mecho ������-�� ����� �������� ����� � ������� ������� ������,
  mecho � ������� ������ ������ �� ����.
  tell %actor.name% �� ����������, ������� � ������� � �����������!
  tell %actor.name% ������ ������� ���� ���������, ���, �� ������.
  tell %actor.name% �������� ��. ��� ���� ���� ������� � �����.
  wait 2
  msend %actor% ����� ������ �����, �������� ��������� �� ���, � ������� � ������.
  mechoaround %actor% ����� ������ %actor.dname% �����, �������� ��������� �� ���, � ������� � ������.
  mechoaround %actor% %actor.name% ��%actor.y% �� ������� � ������ ����.
  mteleport %actor% 33698 horse
  wait 3
  msend %actor% ����� ����� ��� �� �����-�� ������.
  msend %actor% ����� ������: '���, � ���� ���� ������, �����!'
end
~
#27499
�������������~
0 r 100
~
tell %actor.name% ������, ���� �������!
tell %actor.name% �� ��������%actor.g%? � �� ���� ��������� ���� � �������� ������ �����.
tell %actor.name% ������� �� �, � ��� ������, �� �� ������ ����� �������� ������.
eval needgold %actor.level%*(%actor.remort%+1)
tell %actor.name% �� �� ����� �������, ��� %needgold% ��� �� ���������� � �� ���!
tell %actor.name% ���%actor.g% �� �������, ������ ���� ������ ������.
~
$~

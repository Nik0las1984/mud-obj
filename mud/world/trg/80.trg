#8000
���������� ������~
0 q 100
~
wait 1
if (%actor.level% > 5)
  halt
end
: ������ ����������� � ��������� �� ���
say ��, ��� ���� ���!
���
say ���� ��� ��������� ��������, ��� ���� �������...
mecho _- ���� �� ����������, �� ���� ��������
mecho _- ���� �������� �����, ������� � ����� ��� ���� - ����������� ��� �����.
���
wait 1
say ����� ����� - ������ �������� - ������ �� �������� �������!
~
#8001
����� ���~
0 f 100
~
if %actor.vnum% != -1 
  set killer %actor.leader%
  if %killer.vnum% != -1
    halt
  end
end
mload obj 8004
~
#8002
���������� ������� ����������~
0 j 100
~
wait 1
if %object.vnum% != 8004
  ����
  ����
  drop %object.name%
  halt
end
wait 1
mpurge %object%
eval gold %random.3%+1
if (%actor.level% <= 5)
  say �! ��� �������%actor.a%!
  mecho _- ���, ����� �� ������������.
else
  say ����� � �� ������� ���, � ��� �� ������� �������...
  ���
  wait 1s
  say ����� ��, �����.
end
give %gold% ��� .%actor.name%
%self.gold(+%gold%)%
~
#8003
����� �� �������~
2 c 1
������� �������� ������ ������� ��������~
wait 1
if !%arg.contains(����)%
  wsend %actor% �����-�������, �������� �� �����...
  wsend %actor% �� ��� � ���������, ���� ���� �� ����� ���� �����.
  halt
end
wsend %actor% �� � ����� �������� ����� �� ���� � ��� ������ �� �����.
wechoaround %actor% ~~%actor.name% � ����� �������%actor.a% �� ���� ���� �� �����.
wait 2
attach 8009 %self.id%
if ((%actor.level% > 5) || (%random.1000% <= 500))
  wsend %actor% ����� ��������� �� ����� ��� � ���� �� ��������� ��� ������!
  detach 8003 %self.id%
  halt
end
wecho ��������� ������� ������� ����������� ��-�� ����� �, �������, ���� �� ���.
wload obj 8005
if %random.1000% <= 200
  %echo% � ������� � �������, �� ��� ������ �����-�� ������!
  %load% obj 1730
end
detach 8003 %self.id%
~
#8004
����� ���� "������� ����"~
2 f 100
~
calcuid cherdak 8084 room
attach 8003 %cherdak.id%
detach 8009 %cherdak.id%
~
#8005
������ ����� ����~
0 s 80
~
wait 1
foreach victim %self.npc%
  if %victim.vnum% == 8000
    mkill %victim%
    halt
  end
done
~
#8006
������ ����� ���� - 2~
0 g 80
~
wait 1
if %actor.vnum% == 8000
  kill %actor.name%
end
~
#8007
�������� �������� ���������~
0 q 80
~
wait 1
if %actor.clan% != null
  halt
end
if !%actor.agressor%
  halt
end
if ((%actor.agressor% > 7000) && (%actor.agressor% < 9999))
  set agr 1
end
if %agr% == 1
  if %actor.sex% == 1
    ����� %actor.name%, - ��� ��, ������, ������ ���! ���� ���!
  else
    ����� %actor.name%, ��������, ������ ��! ���� ��!
  end
  ����� %actor.name% - ��� ��%actor.g% ���, ������, ������!
  mkill %actor% 
end
~
#8008
�������� ����� � ���������~
0 t 80
~
wait 1
if %actor.clan% != null
  halt
end
foreach char %self.pc%
  if ((%actor.agressor% > 7000) && (%actor.agressor% < 9999))
    set target %char%
  break
end
done
if !%target%
  halt
end
if %actor.sex% == 1
  ����� %target.name%, - ��� ��, ������, ������ ���! ���� ���!
else
  ����� %target.name%, ��������, ������ ��! ���� ��!
end
����� %target.name% - ��� ��%target.g% ���, ������, ������!
����
mforce %target.name% ������
mkill %target% 
~
#8009
���� �����~
2 c 1
������� �������� ������ ������� ��������~
wait 1
if !%arg.contains(����)%
  wsend %actor% �����-�������, �������� �� �����...
  wsend %actor% �� ��� � ���������, ���� ���� �� ����� ���� �����.
  halt
end
wsend %actor% ����� ������ ������ ������, � �� �� ������ �� ����������.
wsend %actor% ������ ���� ���� ���...
~
#8010
���� ������� � �����~
0 hi 100
~
wait 1s 
if (%actor.vnum% == 8042)
  %echo% �� ����������� �������������� ���� �������� � �������. ��������!
  dg_cast '��������' ����
endif
~
#8011
����� �����~
0 b 15
~
������
~
$~

#8500
����� �� �������� ����~
2 c 0
����� ����������� ���������~
wait 1
if !%arg.contains(���)%
  wsend    %actor% ���� �� �����-�� ���������?
  halt
end
wsend %actor% �� ������ ����������� ����� �� ������.
wechoaround %actor% %actor.name% �����%actor.g% ����������� ����� �� ������.
wait 1s
if %actor.rentable%
  wteleport %actor% 8591 horse     
  wait 1
  wsend %pc% _�� ������������� �� �������� ����.
  wechoaround %actor% %actor.name% �����%actor.g% �� �������� ����.
end 
end
~
#8501
����������~
2 c 0
�������� ���������~
wait 1
if !%arg.contains(����)%
  wsend    %actor% ������������, ���� �������-�� ���������?
  halt
end
wsend %actor% ���������� ��������, �� ��������� � ���� � ������������ �� ����� �����.
wechoaround %actor% %actor.name% ��������%actor.g% � ����, ���� �� ���� ��� � ���.
wait 1
wteleport %actor% 8571 horse     
~
#8502
��� �����~
2 c 1
������ ������ ������~
wait 1
if !%arg.contains(������)%
  wsend %actor% ��� �� ����������� ����������?
  halt
end
wsend %actor% �� ���������, ���� �� �� �� ������, �������� ������.
wechoaround %actor% %actor.name% �����%actor.g% ����������� ���������� ������ �������� ���.
wait 1s
wecho __� ������ ���-�� �����������. ������ �� ��� ������� �������� �����.
wload mob 8503
calcuid target 8503 mob
wforce %target% kill .%actor.name%
detach 8502 %self.id%
~
#8503
����� ��������~
0 q 100
~
wait 5
switch %random.4%
  case 1
    ��� �������� ��� � ���������.
    say � ���� ��� �� � ����� �������?
  break
  case 2
    say ������-�� ������� ������� �� ��������
    ��
  break
  case 3
    ����
    say � �� �? � �� � ��������?
  break
  case 4
    say ���� ����� ����, ���� ���� ������� ����. ���� �� ������� �������.
    ����
  break
done
~
#8504
�������� �������� ����~
0 q 100
~
wait 1
if %self.fighting%
  halt
end
say ��������� ����. 
say ������������� ������? ��� �����.
set j 0
set needgold 30
foreach target %self.pc%
  eval needgold %needgold%+%target.level%*(%target.remort%+1)
  eval j %j%+1
done
if %j% > 1
  say �� ��������� � ��� ���� ������...
else 
  say �� ��������� � ���� �����...
end
mecho �������� ���������� �������� ��� � ��� �� ������.
wait 2
say ...%needgold% ��� �����, � ���� ������ - �� ���������.
���
~
#8505
���� ����� ���������.~
0 m 1
~
wait 1
if %self.fighting%
  ���
  say �� �� ���� ������, ��%actor.q% ���!
  halt
end
set needgold 30
foreach target %self.pc%
  eval needgold %needgold%+%target.level%*(%target.remort%+1)
done
mecho �������� ���������� ������.
wait 1s
if %amount% < %needgold%
  ����
  say ������� �� - %needgold% ���! � �� ����� ������.
  give %amount% ��� .%actor.name%
  halt
end
emot �������� ������
wait 1
mecho �������� �������� ���������, � ��� ������ ���������� �� �����.
mecho ����� � ������� � ������� ������� �� �������.
mdoor 8512 south purge
mdoor 8511 north purge
wait 4s
mecho ����� ������������ �� ������ ������.
wait 4s
mecho ��� ���������� ��������� ��������.
wait 4s
mecho ����� � ���������� ������ ������� � ������.
mdoor 8512 south room 24007
mdoor 24007 north room 8512
wait 2s
say ���������, ������� �������, �� ������������.
wait 5s
if %self.fighting%
  halt
end
mecho �������� �������� ���� � ������.
mforce all stand
foreach target %self.pc%
  mforce %target% south
done
mecho �������� � ���������� ����� ������� �� �����.
mdoor 8512 south purge
mdoor 24007 north purge
mdoor 8512 south room 8511
mdoor 8511 north room 8512
%self.gold(0)%
~
#8506
������ �������� (���� ����� ������)~
0 f 100
~
if (%random.100% < 4) && (%world.curobjs(538)% < 1)
  %load% obj 538
end
~
#8507
����� ������ ������~
1 g 100
~
return 0
%send% %actor% �� ��������� ���� � ������, �� �� �������� �� ��� � ����������� ��������� �����.
%echo% ������ ������� : '�� �������! � ������� �� ���-��!'
wait 1s
%echo% �������� � ������ ���������� �� �������� �����-�� �����.
%echo% ��� ����������, ��� � ��� ������������ ���-�� ������-�����.
wait 1s
%echo% ������ ��������� �� ����� � ������ ��������.
wait 1s
%echo% �������... �-�-�... ���� �� �������� ��� ��������� �� ������, � ���� ����������.
%echo% ������� � ������, ��� �������... ��������?
attach 8508 %world.room(%self.room%)%
~
#8508
����������� ������� ������~
2 d 1
�� ������ ������ ��������~
wait 1s
%echo% ������ ������������� ������.
%echo% ������ ������ : '�����, ����� ������ ����� ���� � ����.'
detach 8507 %world.obj(8506)%
attach 8509 %world.obj(8506)%
attach 8512 %world.obj(8506)%
detach 8508 %self%
~
#8509
�������� ������ ���� ����~
1 c 2
��������~
if (%arg% != ������)
  %send% %actor% ����-���� �� ������ ��������?
  halt
end
set gnezdo %world.obj(8507)%
if (%actor.realroom% != %gnezdo.room%)
  %echoaround% %actor% ������ �������� ��-�� ������ %actor.rname% � ��������� ������� ���������.
  %send% %actor% ������ ��������� �������� ������ � ��������� ������� ���������.
  wait 1s
  %echo% ������ ������ : '������ �� ��������� �� �����, ������ � ����� ���, ����� ������.'
else
  %echoaround% %actor% %actor.iname% ������%actor.q% ������ � �������� ��������%actor.q% ��� �� ���� ������.
  %send% %actor% �� ������� ������ � �������� ��������� ��� �� ���� ������.
  wait 1s
  %echo% ���������� �� �������� ������ �������� ������ ��� ������, � �����������, ������� ��������� �� ��� ������.
  wait 1s
  %echo% �� ����� ������ ������ �� ����, ��� ��������� ����� ����� ���� �� ���� ��� � ���.
  %echo% ���� ��� �������� �� �������� �������.
  %echo% ����� �� ���������� � ���������� �� ������, ��������� ��� ����� ���� �� ����� ����� �������� �����, 
  %echo% �������, ���� �� �����, ������-�� �� ���������� � ��� ������ ��������.
  %load% mob 8514
  detach 8512 %self%
  %purge% %self.id%
end
~
#8510
������� ������~
0 n 100
~
wait 2s
say �������!! ����� ������!!
�� ������ ����������, ����������� � ���
wait 1s
if %actor.sex% == 1
  set mest ���
else
  set mest ��
end
%echo% ����� ��� ��� ����� ���������� �� ���, �� ����� �� ������ �������� ����.
%echo% - ����, ����! �� ���� %actor.rname%! ��%actor.g% ���� �� ������ ����%actor.q%!
wait 1s
say � ��� ��� ���. ����� �� ������ �������?!
���
wait 1s
say ��� �� ���� ���������...
say ��������! ����� �� ���� ����� ����� �� ������ ��� ������� � ������ ��� ��, ������!
say ������ ������ ���������?
attach 8511 %self%
detach 8510 %self%
~
#8511
����� ����������~
0 d 1
�� ����~
wait 1s
say ������, ������ �����������!
%echo% ����� �������� � �����, ���������� � ����� ������� ������ ������� ������� � ������.
%echo% ������ ���� ����� ����� �������� �� �����.
wait 1s
say ��������%actor.g%? �������!
wait 1s
%echoaround% %actor% %actor.iname% ������%actor.g% �� �������� � ���������%actor.q% ����.
%send% %actor% �� ������� �� �������� � ������������� � ������.
wait 1s
if %actor.sex% == 1
  set mest ���
else
  set mest ��
end
%echoaround% %actor% ���� ��� %actor.iname% ����������, ����� ������ ���������� %mest% ������ ������ ����, ����-���� ������ �����.
%send% %actor% ����� ������ ���, ����� �������� ��� � �����.
%echoaround% %actor% %actor.iname% �������%actor.g% � ����� ����.
%send% %actor% �� �������� ����.
%teleport% %actor% 8581
if ((%actor.class% == 1)||(%actor.class% == 6)||(%actor.class% == 7))
  %send% %actor% �� ����� ��� ��������, �� ���-��� �����������, ������� �������� ����������� � �� ������ ���������� �� �����.
  if (!%actor.spelltype(�����)%)
    %send% %actor% �� ������������ ��������� ������!
    mspellturn %actor% ����� set
  else
    %send% %actor% �� ��� ��� �� � �������, ������� �� ��� �����.
  end
else
  %send% %actor% ������ ������ ���� �� ������. ��� �� �� ��������� ������ ������, � ��� ������ �� �����.
  %send% %actor% �� ������� ���������� �� �����.
  eval buf %actor.hitp(-20)%
  %send% %actor% ������ �������� ����� ������:
  %send% %actor% - ������, ����� ������� �����...
  %send% %actor% - ��������� �������, ������ �� �����.
  %send% %actor% - �� � ������ ������������� ���� �� �������� ����� ������...
  %send% %actor% - ����� ��������� �������, ������ �������� � ����� �������� �� ������.
  eval temp %actor.gold(+100)%
end
detach 8511 %self%
~
#8512
������� ������~
1 h 100
~
return 0
%echo% ������ ���������� ������� : '�� �� ���!! � �� ����� � ������, ����� ���� ������!!'
%echo% ������ ���������� ������� : '���� ����� ������������� ��-��-����!'
~
$~

#42100
���� �������~
0 b 8
~
mecho _������ ������� ������ ������� �����.
~
#42101
���������� ������~
2 c 0
���������� �����~
if !(%arg.contains(������)%) 
  wsend       %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
wsend       %actor% �� ������� � ������ �������� ����.
wechoaround %actor% %actor.name% �����%actor.q% ���� ��.
wait 1s
wsend %actor% .- �� ��������� � ������ �������.
wteleport %actor.name% 42110
wat 42110 wechoaround %actor% ���-�� ��������� ����.
~
#42102
������� �����~
2 c 0
���������� �����~
if !(%arg.contains(�����)%) 
  wsend       %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
wsend       %actor% �� ������� �� �������.
wechoaround %actor% %actor.name% �����%actor.q% ���� ��.
wait 1s
wsend %actor% .- �� ��������� � ������� �������.
wteleport %actor.name% 42113
wat 42113 wechoaround %actor% ���-�� ��������� ����.
~
#42103
�������� ����� ������ (� ������ ������)~
0 j 100
~
%echo% _������� ����� �������� %object.iname%.
if (%object.type%==19)
  wait 2s
  if %exist.mob(42113)%
    %echo% _������� ����� ������ %object.iname% ���������.
    %echo% _�������� ������ ���� %object.iname%.
    %purge% %object%
    halt
  endif
  wait 1s
  %echo% _������� ����� ����� %object.iname%.
  wait 1
  mpurge %object%
  wait 1s
  %echo% _������� ����� ������� � ������� ���� ����.
  if %world.curmobs(42113)% >= 5
    halt
  end
  wait 5s
  %load% mob 42113
  %load% mob 42113
  %load% mob 42113
  %load% mob 42113
  %load% mob 42113
  %echo% _������� ����� ��������� �� ���� � ������������� ������ ������� ����.
elseif
  %echo% _������� ����� ���������� ��������.
  return 0
  halt
endif
~
#42104
����� ����~
1 gj 100
~
wait 1
if ((%actor.clan% == ��) || (%actor.vnum% != -1))
  halt
end
osend %actor% %self.iname% ��������%self.u% � ����� �����.
wait 1
opurge %self%
~
#42105
���������� ���� ����~
1 c 2
��������~
wait 1
if !%arg.contains(����������)%
  osend %actor% ��� ������ �� �����?
  halt
end
osend %actor% �� � ������������ ���������� �����������, ��� ������ � ��� ����� �������...
if %actor.clan% != ��
  halt
end
if %world.curmobs(42110)% > 50
  osend %actor% ...� ���-�� ����� ��� ���������, ��� �� ��������� �����?!?!
  halt
end
oechoaround %actor% %actor.name% �������%actor.g% ����������, �������� ������� ������� �������...
oload mob 42110
oecho ��� ������ ������� ����� �� ���� ������ �������� �������� ������!
oforce %actor% �������� ����
wait 1
opurge %self%
~
#42106
����� ���������~
0 c 100
�������~
if %self.fighting%
  halt
end
if !%arg.contains(�������)%
  msend %actor%  ������ �� � ��� �������, ������ ������� ���������� ������ ������?!
  halt
end
if (%actor.clan% != ��) || (%actor% != %self.leader%)
  return 0
  halt
end
msend %actor% �� ������ ����� ����������� ������...
mechoaround %actor% %actor.name% �����%actor.g% ��� ���� ����...
mload obj 42154
give ���������� .%actor.name%
wait 1s
mecho � �������� ���� ����������� � �������.  ���, �� � ��� �� ��?
wait 1
mpurge %self%
~
#42107
���� ����~
0 b 5
~
mecho _�������� ���� �������� ������, �� ��� ��������� ��� ���������� �������.
~
#42108
�������~
0 m 1
~
wait 1
if %amount% < 50
  wait 2
  say �� �� ���� ������, � ���� ������ �� ����������!!
  give %amount% ��� .%actor.name%
  halt
end
if %world.curobjs(42154)% >= 200
  wait 2
  say ������, �� �� ������, �� ��������� ���. ������� �������...
  give %amount% ��� .%actor.name%
  halt
end
wait 2
say �� �����, ������ ����������, ��� ��������� ������ ������� �������... 
mload obj 42154
give ���������� .%actor.name%
~
#42109
���������� � ������~
2 c 100
����������~
if (!%arg.contains(������)%)
  %send% %actor% ���� ���������� ��?
  halt
end
wait 1
%send% %actor% �� ������� ����������� ����� ����� ������ ����� � ���������� ����.
%echoaround% %actor% %actor.iname% ����� ����-�� �������%actor.u%.
wait 1
%teleport% %actor% 42150 horse
~
#42110
����������� ������ �������~
2 c 1
����������~
if (%actor.vnum% > 0)
  halt
end
if ((!%arg.contains(������)%) && (!%arg.contains(�����)%))
  %send% %actor% ���� �� ������ ����������?
  halt
elseif (!%arg.contains(������)%)
  %send% %actor% � ������ ��� �� �� ������ ����������?
  halt
end
%send% %actor% �� ��������� � ���������� ����� �������.
%echoaround% %actor% %actor.iname% �����%actor.u% � ������� �������.
wait 3
%send% %actor% �������, �� ���������� ������, ����� ��������� ���.
%teleport% %actor% 42163 horse
wait 1
wat 42163 wechoaround %actor% %actor.iname% �������%actor.u% � ���� ������ ������.
~
#42111
���� ������ � ������~
2 b 100
~
%echo% ������ ��� ������ � �������. ������ ����������� ������!
foreach victim %self.char%
  eval victdam %victim.maxhitp%/10
  if (%victim.hitp% > %victdam%)
    eval temp %victim.hitp(-%victdam%)%
  end
done
~
#42112
��������� �� �����~
2 c 100
���������~
if (!%arg.contains(�� ����)%)
  %send% %actor% ���� ���������� �����?
  halt
  *elseif (!%actor.rentable%)
  *  %send% %actor% ��-�� ����� �� ����� ����� ����� ����� �� ������, ����� ���������!
  *  halt
end
%send% %actor% �� ������ ����������� ����� �� �����.
%echoaround% %actor% %actor.iname% �����%actor.g% ���������� �� �����.
wait 3
%send% %actor% �������, �� ��������� �����������.
switch %actor.realroom%
  case 42160
    eval targ 42162
  break
  default
    eval targ 42161
  break
done
%teleport% %actor% %targ% horse
wait 1
wat %targ% wechoaround %actor% ���-�� �������� ����.
~
$~

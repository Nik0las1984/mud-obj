#58101
���~
1 gijl 100
~
wait 1
if !%actor.anem% || %actor.vnum% != -1
  halt
end
oforce %actor% ����
~
#58102
�������~
1 c 1
��������~
wait 1
if %arg%
  oecho &c������� ���������� �������&n �������� � ����� ������, %arg%.
else
  oecho &c������� ���������� �������&n �������� � ����� ������.
end
~
#58103
�����-��� ����~
0 c 100
������~
wait 1
if !%actor.name% || %actor.iname% != �������� && %actor.iname% != ������
  %echo% You're restricted to use me!
  halt
else
end
~
#58104
������ �����~
1 c 9
������~
halt
wait 1
%actor.wait(8s)%
wsend %actor% ������������, � ������������ �� �������� � �����!
wechoaround %actor% ������������, � ������������ %actor.name% �������%actor.q% � �����!
wait 1s
wsend %actor% &Y����� �������� � ������&n. &R�� ��������� ������ ����� � ���� �����!&n
wechoaround %actor% ��� ������������ %actor.rname% �� ������ ���������� &Y�����&n, �������� &R��� ���� ������������� ������&n.
wait 1s
wsend %actor% �� ��� �������� � �������� ��������.
wechoaround %actor% %actor.name% ��� �������� � �������� �������.
wait 3s
wsend %actor% �� ��� �������� � �������� ��������.
wechoaround %actor% %actor.name% ��� �������� � �������� �������.
wait 3s
wsend %actor% �, ��� ��� ����� ���� ����������?
~
#58110
���� ���� �� ������� � ����� ��� ����� �� ����������~
1 g 100
~
*���� ���� �� ������� � ����� ��� ����� �� ����������
*Objects | Get | 100 
*���� ������ ����-���� ��� ������� ����� ��� ������� ����������-���������� � �����
wait 1
* ���� � ��������, ���� ����� ���� -- ����� ������
if ((%actor.clan% == ��) || (%actor.clan% == ��2) || (%actor.clan% == ��3) || (%actor.vnum% != -1))
  halt
end
* ��������� -- �� �����
if (%actor.clan% != ��)
  oecho �������� %self.iname% �����%self.q% � ����� �������.
  wait 1
  opurge %self.id%
end
~
#58111
�������� => ����~
1 c 3
��������~
*�������� => ���� | Objects | Command | 3 | ��������
wait 1
if (%actor.clan% != ��)
  oechoaround %actor% %actor.name% �����%actor.u% ������ ������ ��������. � ��� ��� � �������?
  osend %actor% �� ������ ������ ��������. ��������� �������.
  halt
end
if (%world.curmobs(58112)% < 50)
  oechoaround %actor% %actor.name% �����%actor.g% ������ �������� � ��� ����������� � ����.
  osend %actor% �� ������� �������� � �� ����������� � ����!
  oload mob 58112
  wait 1
  opurge %self%
else
  osend %actor% �� ������� �������� �� ������ �� ���������.
end
~
#58112
���� => ��������~
0 c 0
���������~
*���� => �������� | Mobiles | Command | 0 | ���������
wait 1
if (%actor.clan% != ��)
  if (%self.vnum% == 58112)
    mechoaround %actor% %actor.name% ����������%actor.g% ��������� %self.vname%, �� ��� ���������� ������%self.g% ��� �� �����.
    msend %actor% �� ����������� ��������� %self.vname%, �� �� ���������� ������%self.g% ��� �� �����!
  else
    if (%self.vnum% == 58113)
      mechoaround %actor% %actor.name% ����������%actor.g% ��������� %self.vname%, �� �� �������%self.g% � �������.
      msend %actor% �� ����������� ��������� %self.vname%, �� ��� �������%self.g% � �������.
    end
  end
  halt
end
if (%self.vnum% == 58112)
  mechoaround %actor% %actor.name% ��������� ��������%actor.g% %self.vname%, � %self.name% � ������� ������� �����%self.q%.
  msend %actor% �� ��������� ��������� %self.vname%, � %self.name% � ������� ������� �����%self.q%.
else
  if (%self.vnum% == 58113)
    mechoaround %actor% %actor.name% ����������� ��������%actor.g% %self.vname%, � �������� %self.name% ������%self.g%! �������� :(.
    msend %actor% �� ����������� ��������� %self.vname% � ��� ��������� ��� ������%self.g%! ��� �� �� ��������!?
  end
end
mload obj 58105
wait 1
mpurge %self%
~
#58113
�������� => ����2~
1 c 3
�������~
*�������� => ����2 | Objects | Command | 3 | �������
wait 1
if (%actor.clan% != ��)
  oechoaround %actor% %actor.name% �����%actor.u% ���������� ������ ��������. � ��� ��� � �������?
  osend %actor% �� ������ ���������� ���������� ��������. ��������� �������.
  halt
end
if (%world.curmobs(58113)% < 5)
  if (%actor.clanrank% < 6)
    oechoaround %actor% %actor.name% �����%actor.g% ���������� �������� � �������� ��� ����������� � ��������� ����, �� � ����!
    osend %actor% �� ������ ���������� �������� � �������� �� ����������� � ��������� ����!
    oload mob 58113
    wait 1
    opurge %self%
  else
    osend %actor% ��-�� ������� ����������� ���������, ����� ����������� �������� ������ �������� ������� �����! :(.
  end
else
  osend %actor% �� ������� �������� �� ������ �� ���������.
end
~
#58122
������� ���~
0 c 100
�������~
*������� ��� | Mobiles | Command | 100 | �������
*��������� �� ���� 58120
wait 1
if %actor.vnum% != -1 || %actor.leader% == %self%
  mechoaround %actor% %actor.name% �������%actor.u% ������� �� ���� �� ��������%actor.g%!
  halt
end
msend %actor% �� ������� �� ����!
if %socker1balllag% == 1
  %actor.wait(2)%
end
mechoaround %actor% %actor.name% ������%actor.g% �� ����!
set sockerpinalter1name %actor.name%
global sockerpinalter1name
set sockerroom1 %self.realroom%
if %arg.contains(��)%
  if %sockerroom1.south%
    if %random.100% < 25
      ��
    end
    ��
  else
    mecho ��� �������� �� ������.
    %actor.wait(4)%
    �����
  end
elseif %arg.contains(�����)%
  if %sockerroom1.north%
    if %random.100% < 25
      �����
    end
    �����
  else
    mecho ��� �������� �� ������.
    %actor.wait(4)%
    ��
  end
elseif %arg.contains(�����)%
  if %sockerroom1.west%
    if %random.100% < 25
      �����
    end
    �����
  else
    mecho ��� �������� �� ������.
    %actor.wait(4)%
    ������
  end
elseif %arg.contains(������)%
  if %sockerroom1.east%
    if %random.100% < 25
      ������
    end
    ������
  else
    mecho ��� �������� �� ������.
    %actor.wait(4)%
    �����
  end
elseif %arg.contains(����)%
  if %sockerroom1.down%
    ����
  else
    %actor.wait(4)%
    �����
  end
elseif %arg.contains(�����)%
  if %sockerroom1.up%
    �����
  else
    mecho ��� �������� �� ������.
    %actor.wait(4)%
    ����
  end
else
  msend %actor% � ����� ����������� ����� ������� ���? (�����, ������, ��, �����, ����, �����)
end
~
#58123
��� ��������� � ������~
0 g 100
~
*��� ��������� � ������ | Mobiles | Greet | 100
*��������� � ���� 58121
wait 1
if %actor.vnum% != 58120
  halt
end
detach 58122 %actor.id%
eval sockergoal1counter %sockergoal1counter% + 1
global sockergoal1counter
set sockergate1id %self%
global sockergate1id
remote sockergate1id %actor.id%
exec 58125 %actor.id%
wait 2
*������� &W%sockerpinalter1name% �������� %sockergoal1counter% ��� � ������ ������� '&K%sockercommand1name%&W'!&n
������� &W%sockerpinalter1name% �������� %sockergoal1counter% ��� � ������ ������� '&K%sockercommand1name%&W'!&n
mpurge %actor%
if %ballloadroom%
  set ballbackroom %self.realroom%
  global ballbackroom
  eval pause 3+%random.3%
  wait %pause%s
  * �.�. �� �������� mat ������� �������� �����������
  *mat %ballloadroom% mload mob 58120
  mteleport %self% %ballloadroom%
  mload mob 58120
  mteleport %self% %ballbackroom%
end
~
#58124
��������� �������� �������~
0 c 100
���������~
*��������� �������� ������� | Mobiles | Command | 100 | ���������
*��������� � ���� 58121
wait 1
if %actor.level% > 30
  if !%arg%
    msend %actor% ������� ������������ �����: "%sockercommand1name%"
    msend %actor% ������� ���������� �����: "%sockergoal1counter%"
  elseif %arg.car% == �������
    set sockercommand1name %arg.cdr%
    global sockercommand1name
    set sockergoal1counter 0
    global sockergoal1counter
    msend %actor% ����� ������������ �����: "%sockercommand1name%"
  elseif %arg.car% == �����
    set ballloadroom %arg.cdr%
    global ballloadroom
    msend %actor% ��� ����� ������������� ����������� � ������� %ballloadroom% (%ballloadroom.name%).
  else
    msend %actor% ��������, �������� �������. ����������� "��������� �������" ��� "��������� �����".
  end
else
  msend %actor% ���� ������� ������������ ��� �����!
end
~
#58125
������� ����� ����� ���� ���������� ��� ������� ���~
0 z 100
~
*������� ����� ����� ���� ���������� ��� ������� ��� | Mobiles | Auto | 100
*��������� � ���� 58120
remote sockerpinalter1name %sockergate1id.id%
~
#58126
���������� ���� � ���� ��� ��� ���~
0 c 100
���������~
*���������� ���� � ���� ��� ��� ��� | Mobiles | Command | 100 | ���������
*��������� �� ���� 58120
wait 1
if %actor.level% > 30
  if %socker1balllag% == 1
    set socker1balllag 0
    global socker1balllag
  else
    set socker1balllag 1
    global socker1balllag
  end
  msend %actor% ���� �� ��� � ����: %socker1balllag%
else
  msend %actor% ���� ������� ������������ ��� �����!
end
~
#58127
�������� �� ���� �������� �������~
0 r 100
~
*�������� �� ���� �������� ������� | Mobiles | Great-All PC | 100
*��������� � ���� 58122
wait 1
if %actor.vnum% == -1
  tell %actor.name% �� 15000 ��� �� ������ ���������� � ���� &W�&K�&W�&K�&W�&K�&W� &K�&W�&K�&C!&n
end
~
#58128
�������� �� ���� �������� �������~
0 m 1
~
*�������� �� ���� �������� ������� | Mobiles | Bribe | 1
*��������� � ���� 58122
wait 1
if %world.curmobs(58120)% < 25
  if %amount% < 15000
    tell %actor.name% ����, ��� ����� 15000 ���, � �� ������� �����? ����� %amount%!
    tell %actor.name% � ������ ����� �� ����� - ��� ���� ��������, ��� ����� �� ������%actor.g%.
  else
    tell %actor.name% ��� ����, ���� ���
    mload mob 58120
  end
else
  say ��������� ����, ������ �� ��������
  �����
end
~
#58129
��� ����������� � ���~
0 n 100
~
*��� ����������� � ��� | Mobiles | Load | 100
*��������� � ���� 58120
wait 1
mecho ��� ���� �� ����� � ���������, ������ �����������.
~
#58170
���� �� �����~
2 c 1
�����~
* ���� �� ����� [�������� -- �����������]
* �������� �� ������: 58116
wait 1
if !%actor.rentable%
  wsend %actor% � &R��&n ������ �� �����.
  halt
end
if %arg.contains(��)%
  wsend %actor% �� ����� �� ������������� ���� � \&R���\&n.
  wechoaround %actor% %actor.name% ���%actor.y% �� ������������� ����.
  wteleport %actor% 58193 horse
elseif %arg.contains(�����)%
  wsend %actor% �� ����� �� ������������� ���� � \&R������\&n.
  wechoaround %actor% %actor.name% ���%actor.y% �� ������������� ����.
  wteleport %actor% 58173 horse
elseif %arg.contains(�����)%
  wsend %actor% �� ����� �� ������������� ���� � \&R������\&n.
  wechoaround %actor% %actor.name% ���%actor.y% �� ������������� ����.
  wteleport %actor% 58181 horse
elseif %arg.contains(������)%
  wsend %actor% �� ����� �� ������������� ���� � \&R�������\&n.
  wechoaround %actor% %actor.name% ���%actor.y% �� ������������� ����.
  wteleport %actor% 58185 horse
else
  eval rnd %random.num(4)%
  wsend %actor% �� ����� �� ������������� ����.
  wechoaround %actor% %actor.name% ���%actor.y% �� ������������� ����.
  switch %rnd%
    case 1
      wteleport %actor% 58193 horse
    break
    case 2
      wteleport %actor% 58173 horse
    break
    case 3
      wteleport %actor% 58181 horse
    break
    case 4
      wteleport %actor% 58185 horse
    break
  done
end
~
#58171
����� � �����~
2 c 1
�����~
* ����� � ����� [��� ����������]
* �������� �� ������: 58173 58181 58185 58193
wait 1
wsend %actor% �� �������� ������������� ����.
wechoaround %actor% %actor.name% ���%actor.y% � �������������� ����.
wteleport %actor% 58116 horse
~
$~

#26000
������� ���� ������~
0 j 100
~
if (%actor.vnum% != -1)
  return 0
  halt
end
context 260
wait 1
switch %object.vnum%
  case 26001
    case 26002
      wait 1
      mpurge %object%
      say ������� ����, %actor.name%, � ���� ��� �� ������� ������� ��� ���� ���� ������.
      wait 5s
      say ������ ����������� �������� ����!
      wait 3s
      say ����� ���������� � �������� ������� �����, ���� ��������� ��������� ������ ����.
      wait 1s
      say �������� �������� ��������� ��� ������ ����, �� �����.�..�...
      wait 2s
      mecho �� ���� �������� �������� �������� ����.
      mecho ��������� ������ � �������� �������� �������...
      mecho ������ ������ ��� �� ������� ������, ��� ���� ������� ����������� � ����� �����.
      makeuid object %self.id%
      calcuid thisroom %self.realroom% room
      attach  26051 %thisroom.id%
      run     26051 %thisroom.id%
    break
    case 26003
      mpurge %object%
      wait 3s
      say ������� ����, %actor.name%, � ���� ��� �� ������� ������� ��� ���� ���� ������.
      say ������ ����������� �������� ����!
      wait 2s
      say ����� ���������� � �������� ������� �����, ���� ��������� ��������� ������ ����.
      say �������� �������� ��������� ��� ������ ����, �� �����.�..�...
      mecho �� ���� �������� �������� �������� ����.
      wait 3s
      eval    dam %actor.hitp%*19/20
      calcuid thisroom %self.realroom% room
      attach  26052 %thisroom.id%
      run     26052 %thisroom.id%
      mechoaround %actor% ������ ���� � ����� ������ �������� %actor.vname%!
      mecho � ���� ��������� ���� � ����� ������ �������� ���!
      wait 1s
      ���
      wait 1s
      if %actor.sex% == 2
        say ��, ��������, ���-�� ���� �� ������, ����� �� �������%actor.g% ������ �� �������.
      else
        say ��, ��� ����, ���-�� ���� �� ������, ����� �� �������%actor.g% ������ �� �������.
      end
      say � �������� ���� �������, �� ���� �������� ������� ����.
      say ���... � ��� � ������� ?
      ���� ���������� � �����������..
      wait 6s
      ���� ������� �������
      wait 8s
      say �-�-�!.. ��������. � ������ ��������.
      wait 2s
      say ��� ���: ������������ ������ ����� �������, �� ��� ��� ������� � �� ����.
      say ���� ������ ����, ��� ������ ������ ������ �� ������ ������ �������
      say ���������� ������, ������ ������ �� ���� �������� � ������ � ��� ����.
      wait 2s
      say � ������ �� �������� ����� ������� ����� ������ ����, �� �� ��� ����� ��� �� ���������
      say ����� ��� ������...
      wait 3s
      say ����� ����, %actor.name%! ������ ��� ��������� �� ������� � ���� ���������.
      say ������ %actor.name%, ��� ���� �������, ���� ��� ������ � ��� �������.
      ���
      mecho ������ ��������� ���������� ����� � ����������� ������� ������ �����
      mecho ���� ��� � ����������� �����������.
      set    nut260 2
      WORLDS nut260
      makeuid object %self.id%
      calcuid thisroom %self.realroom% room
      attach  26050 %thisroom.id%
      run     26050 %thisroom.id%
    break
    default
      say ������� ��� �������, ��� �� ���������� � ���� ����, �� � ���� ���� ��� %object.name%.
      ���� %object.name%
    break
  done
~
#26001
������� �����~
0 j 100
~
if (%actor.vnum% != -1)
  return 0
  halt
end
context 260
wait 1
switch %object.vnum%
  case 26001
    wait 1
    mpurge %object%
    wait 1s
    if !%self.fighting%
      mecho  ��������� ������ �� �����, ����� ����� � ����� �� ��� ��������������� ������.
    end
    set    nut260 3
    WORLDS nut260
  break
  case 26002
    case 26003
      wait 1
      mpurge %object%
      wait 1s
      ���
      say    �������-��, ���-�� �������� ��������, ������ ����� ��� ��������.
      mecho  ����� � ������� ������������� ����� ������ �������.
      set    nut260 9
      WORLDS nut260
    break
    default
      say  �! ��� ��� ����������.
      mjunk all
    break
  done
end
~
#26002
������ �����~
1 c 4
�����~
context 260
if ((%nut260% !=5) && (%nut260% !=6))
  return 0
  halt
end
if !(%arg.contains(���)%)
  return 0
  halt
end
wait 1
osend %actor.name% ������ �� ��������, �� ��������� ���������� ����.
oechoaround %actor% %actor.name%, ������ �� ��������, �������%actor.u% ����.
wait 5
oteleport %actor% 26027 horse
~
#26003
(������)~
1 c 4
����������~
if (%actor.vnum% != -1)
  return 0
  halt
end
context 260
wait 1
if !(%arg.contains(�������)%) && !(%arg.contains(����������)%) && !(%arg.contains(�����������)%)
  return 0
  halt
end
if !(%nut260% ==2) && !(%nut260% ==3)
  osend %actor% �� ���������� ������ �� ������, �� ������ �� ���������.
  osend %actor% �� ������� ����������� ���� �������.
  return 0
  halt
end
if !(%actor.haveobj(26001)%) && !(%actor.haveobj(26003)%) && !(%actor.haveobj(26002)%)
  osend %actor.name% - ���� ���������� ?
  halt
end
if !(%arg.contains(����������)%)
  if (%arg.contains(�������)%) 
    osend %actor.name% ����� ���������� ��������� ������� ���������� ������, �� ������, ���
    osend %actor.name% ������� ������ ���� �� ������.
    calcuid gold 26001 obj
    opurge  %gold%
    halt
  elseif (%arg.contains(�����������)%)          
    osend %actor.name% ����� ���������� ��������� ������� ���������� ������, �� ������, ���
    osend %actor.name% ����������� ������ ���� �� ������.
    calcuid malax 26003 obj
    opurge %malax%
    halt
  end
else
  wait 1
  calcuid izumrud 26002 obj
  opurge %izumrud%
  osend %actor.name% �� �������� ������ � ������ �� ������, � � ��� �� ���
  osend %actor.name%  ���������� ���� ���������� ������ �� ��� ������� �����.
  oechoaround %actor% %actor.name% ���������%actor.g% ������ � ���������� �� ������.
  wait 6s
  oechoaround %actor% �� �������� ������ ���� ������������ �����.
  osend %actor.name% � ������ ��������� ������������� ������ ������� � �������,
  osend %actor.name% � �� �������� ��������� ���.
end
if %nut260% == 2
  set nut260 5
  WORLDS nut260
elseif %nut260% == 3
  set nut260 6
  WORLDS nut260
end
~
#26004
������� �������~
2 c 0
���������� ���������~
context 260
if !(%arg.contains(�����)%)
  wecho ��� ��������� ����� ������� ������.
  halt
end
if (%world.curobjs(26001)% < 1) && (%world.curobjs(26002)% < 1) && (%world.curobjs(26003)% < 1)
  wechoaround %actor% %actor.name% �����%actor.g% �� ������ � �����%actor.g% ������� ����� �������.
  wechoaround %actor.name% ����� ���� ������������ � ��� ��� ���� ���-�� �����.
  wsend %actor.name% ��������� ������, �� ��������, ��� ������������ ����� ����, � ���-�� ����� ��� ��� ����.
  wload obj 26001
  wload obj 26002
  wload obj 26003
  set    nut260 1
  WORLDS nut260
else
  wecho ��� ��������� ����� ������� ������, � ��������� ��������� ����� �� �����.
end
~
#26005
������~
2 c 0
������ ������~
context 260
if %shalash260%
  return 0
  halt
end
if !(%arg.contains(�����)%) && !(%arg.contains(�����)%)
  wechoaround %actor% %actor.name% �����%actor.g% ���-�� ��������, �� ��� � �� ��������%actor.g%, ���.
  if %actor.sex%==2
    wechoaround %actor% ���������, ��� � ��� �� ���?...
  else
    wechoaround %actor% ���������, ��� � ���� �� ���?...
  end
  wsend %actor.name% ��� �� ������ ��������? ����� ������ � ����������?...
  halt
end
wechoaround %actor% %actor.name% �����%actor.g% ������ �����, ����� �������� �� ��� �������.
wsend %actor.name% ������� ���� ������, �� ������ ������ ������.
wsend %actor.name% ����� ���������� ���������� �������, ��������� ������ ����������� �� ������ �����.
wload obj 26005
calcuid poleno 26004 obj
wpurge %poleno%
set shalash260 1
worlds shalash260
~
#26006
�����~
2 c 0
������ �������~
context 260
if %shalash260% != 1
  return 0
  halt
end
if !(%arg.contains(�����)%) && !(%arg.contains(�����)%)
  wechoaround %actor% %actor.name% ������%actor.g% �� ������� ���-�� ��������� ���� � �����%actor.g% ������ ������ ������.
  wechoaround %actor% ����� �����, ��� ��%actor.g% ������ �� �����.
  wsend %actor.name% �� ���� ���� �������  ��������, ���� ���� ������ ������� �� ������.
  halt
end
wechoaround %actor% %actor.name% ���-�� �������%actor.g%, � ���������� ������, ������� �������� ������ ��� ���������.
wsend %actor.name% ��������, ��� � ������� ������� ��������� ������, �� ������ ����� � �������� ���.
wsend %actor.name% ����� ������ ���������� ������ ��� ���������.
wsend %actor.name% ������ ����, � �������� �����������, �� ������� �������� ��������.
wdoor 26016 north flags a
wdoor 26016 north room 26017
if (%exist.obj(26005)%)
  calcuid drova 26005 obj
  wpurge %drova%
end
set shalash260 2
worlds shalash260
wait 30s
wecho ������ �����.
wdoor 26016 north purge
wdoor 26016 north flags a
wdoor 26016 north room 26010
~
#26008
������ ������~
0 h 100
~
wait  1
context 260
if (%actor.vnum% != -1)
  halt
end
if !%nut260%
  wait 1s
  say - ������ ������ ����, %actor.name%!
  say ����� ��� ����� � ���������� �� ������ ���������� ������, ������� ������� ���� ������� � �������.
  wait 2s
  say �� ���� �������, ������� � ���� ������, ����������� ����, � � �� ���� ������ ������ �� ��������.
  wait 2s
  say ���� �� ����������� ������ ���, � �������� ���� �������, ��� � ������ ������� ������� �������� ������� ��� �������� �������.
  say ����� ��������� ��� � ������� ��� ������.
end
~
#26009
�����~
2 c 0
������ ������� �����~
context 260
if (%nut260% !=7)
  return 0
  halt
end
if !(%arg.contains(�����)%)
  wechoaround  %actor% %actor.name%, ����� ��������� ������� ������� � �����, ����%actor.g% �� �����.
  wsend %actor.name% ���������� �� ������ �����, �� ��������� �� �����, ������� � ������� ����������.
  wsend %actor.name% ����� ��������� ����� ����, �� � �������� ����� �� �����.
  halt
end
wsend %actor.name% ����� ������ ��������� �������, ��� ���-���� ������� ������� � �����.
if %actor.sex% == 2
  wechoaround  %actor% %actor.name% ���������%actor.g% �� ���� �� ������, ������� ��������� �� � �����.
else
  wechoaround  %actor% %actor.name% ���������%actor.g% �� ���� �� ������, ������� ��������� ��� � �����.
end
wteleport  %actor%  26045 horse
~
#26010
������� ���~
0 f 100
~
context 260
if %nut260% == 5
  set nut260 10
  WORLDS nut260
end
if %nut260% == 6
  set nut260 7
  WORLDS nut260
end
if (%world.curobjs(26022)% < 10) && (%random.100% <= 12)
  mload obj 26022
end
~
#26012
���� ��������~
0 h 100
~
context 260
wait  1
if (%actor.vnum% != -1)
  halt
end
if !%key260%
  wait 1
  say �������-�� � �������� ����, %actor.name%!
  wait 1
  say ������� � ������� ���� �� �������.
  wait 1
  say %actor.name%, ������ ��� ����� ���� � � ���� ���-�� ��������.
end
~
#26013
�������� ���� ��������~
0 j 100
~
if (%actor.vnum% != -1)
  return 0
  halt
end
context 260
wait 1
if (%object.vnum% != 26025)
  if (%object.vnum% == 26018)
    wait 1
    mpurge %object%
    mecho ������ ����� ������� ������������� ����.
    ���
    say ������, %actor.name%, �� ���� ���� �� ���.
    wait 1s
    say ���� �������, � ����� ��� ����������.
    halt
  elseif (%object.type% == 18)
    mecho ������ ����� ������� ������������� %object.vname%.
    ���
    say ������, %actor.name%, ����� ��� � ����, �� ����� �� ���.
    wait 2
    ���� %object.name%
    halt
  else
    say %actor.name%! �� ���� �� ���� ����������?
    say � ���� ������ �������� ����, � �� %object.vname%.
    wait 2
    ���� %object.name%
    halt
  end
end
wait 1
mpurge %object%
wait 1s
say ������� ����, %actor.name%, ��� � � ��� ���� �����!
*������� �������� ������ ���� � ���� ��� �������� (�� ����)
wait 2
msend       %actor% %self.iname% �������� ��� ��������� ������� ���.
mechoaround %actor% %self.iname% �������� %actor.dname% ��������� ������� ���.
eval temp %actor.gold(+5000)%
*wait 1s
*��� ��� ����������� ������ ����, ������ ����� ��� �������� � ����
*say ���-�� �� ������� � ������ ���� ����� � ������ ��������.
*say ��� ��, ���� ������������, ������� ������� ������ ��������, ��� ���������� ���� � ����������.
*say ������ ��� ����, ��� ������� ���� ����� ���� � ��������.
*mload obj 26026
*wait 2
*���� ���� %actor.name%
~
#26014
���� � ������~
2 h 100
~
context 260
if (%object.vnum% == 26026)
  wait   1
  wdoor  26096 west flags a
  wdoor  26016 west room 26100
  *261 ���� - ������ �������� - �� ���������� :)
  wpurge %object%
  wait   30s
  wdoor  26096 west purge
end
~
#26015
����� ������~
2 g 100
~
if (%actor.vnum% != -1)
  halt
end
context 260
if (%nut260% !=7)
  halt
else
  wait 2s
  wecho ��� ��������� ����� ������.
  wecho ����� ���� ������������ � ������ ������ �� ������� �����.
end
~
#26016
������������~
0 f 20
~
if %world.curobjs(216)% < 50
  mload obj 216
end
~
#26023
260 - Zone reset~
2 f 100
~
context 260
unset   shalash260
unset   nut260
unset   key260
~
#26050
260 - Purge mob object~
2 z 100
~
return 0
wpurge %object%
detach 26050 %thisroom.id%
~
#26051
260 - Purge mob object~
2 z 100
~
return 0
wload obj 26023
wpurge %object%
detach 26051 %thisroom.id%
~
#26052
261 - Damage PC's~
2 z 100
~
wdamage %actor% %dam%
return 0
detach 26052 %thisroom.id%
~
#26053
���������~
0 f 100
~
if %world.curobjs(513)% == 0
  mload obj 513
end
~
#26054
��������~
0 f 100
~
if %world.curobjs(515)% == 0
  mload obj 515
end
~
#26055
�����~
1 h 100
~
eval kost2601 %random.6%
eval kost2602 %random.6%
wait 3
oecho �������� ����� ����� �� ����� � ������ %kost2601% � %kost2602%
worlds kost2601
worlds kost2602
~
$~

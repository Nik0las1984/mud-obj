#33000
���� � ������� (33024)~
0 q 100
~
wait 1s
say ����� ��� ������, � ����� ���� ���������. ��� ������� �����-�� ������ ������ ��� �����������.
�����
wait 5s
say ��� �� � �� ����� �� ���.
~
#33001
�������� ������������ (33027)~
0 q 100
~
wait 1
say ������ ������! ��� ����, �����, ������ �������. � � ���� ���� ����������� �������� �������, �� ����������� �� ��������� ��������������. 
wait 1
���� %actor.name%
~
#33002
���� 100 ����� �������� (33027)~
0 m 1
~
wait 1
if %amount% < 100 then
  say �������� �����,  � ��� ������ ��� ����������.
  halt
end
switch %myvar%
  case 1
    say - �� �������  ������ ��������, ����� � ��� � ��� ������ ������!!! ��..
    wait 1
    ���
    wait 1
    mecho �������� ���������, ��������� � �������� �� �������.
    set myvar 2
    global myvar
  break
  case 2
    say - ���� ������ ���� �� �����, �� �� ����� ����� � ����� ������������� � ��������...
    wait 1
    mecho �������� ���������, ��������� � �������� �� �������.
    set myvar 3
    global myvar
  break
  case 3
    say - �� �������� �������� ������� ���� ����, ������� � �����������, ���� ����� �� ����� � ������� ��� ����� �������...
    wait 1
    mecho �������� ���������, ��������� � �������� �� �������.
    set myvar 4
    global myvar
  break
  case 4
    say - ������� ���� ���� �������� ����� �������� �������...
    wait 1
    mecho �������� ���������, ��������� � �������� �� �������.
    set myvar 5
    global myvar
  break
  case 5
    say - ������ ����� �� ��� - ������� ����, ����� �� �������� ������� ��������, ��� �������� ������� ���� �� �������...
    wait 1
    mecho �������� ���������, ��������� � �������� �� �������.
    set myvar 6
    global myvar
  break
  case 6
    say - � ���������� � �������, �������, ����� ����!!! ��� ��� ��������... �� �����...
    wait 1
    mecho �������� ���������, ��������� � �������� �� �������.
    set myvar 7
    global myvar
  break
  case 7
    say - ������ �������, � ����� ����, ��� �������� ����������� �� ���� ������� �����!!!
    wait 1
    mecho �������� ���������, ��������� � �������� �� �������.
    set myvar 8
    global myvar
  break
  case 8
    say - �������, ��� � �������, �������� ����������, ������� ��� ��� ������!!! � ��, ��������, ��� ���� �� � �����, ��� ��� ����!!!
    wait 1
    mecho �������� ���������, ��������� � �������� �� �������.
    set myvar 9
    global myvar
  break
  case 9
    say - ���, ��� ���������? ������, ��� �����, ������� � ����� ���� ������...�� � �� � ���...
    wait 1
    mecho �������� ���������� �� ��� � ������� ������ ������.
    set myvar 0
    global myvar
  break
  default
    say - ������ ����, ������ � ��� �����, �� ���� ��������, ����� ���...
    wait 1
    mecho �������� ���������, ��������� � �������� �� �������.
    set myvar 1
    global myvar
  break
done
~
#33003
� ����� ~
0 q 100
~
wait 1
say ������� ������ �� ������ � �� �������. ��� ��� ������, �������!!!
wait 1s
mecho  _����� ���������� ���� ���������.
say ��� ������, ����������!!!.
msend  %actor%  ����� ��������� �������, �������� ��� � ���� ����� � ������ ������ ���� ����� �������!
mechoaround %actor% %actor.name%, ������� ���� ��������, � ������ �������%actor.g% �� ����!!! 
wait 1s
msend %actor%  ������� ���, �� ������ � ����������� ����.
mteleport %actor% 33043
calcuid zellroom 33043 room
attach 33018 %zellroom.id%
exec  33018 %zellroom.id%
detach 33018 %zellroom.id%
calcuid kupez 33013 mob
attach 33013 %kupez.id%
calcuid kupez 33013 mob
detach 33003 %kupez.id%
~
#33004
���� � ���������� ~
0 r 100
~
wait 10
say ��, ��������, ������%actor.g% ���� ��������!!!
say �� ������!!!.
������
kill %actor.name%
end
~
#33005
���� � ������� �������������� ������~
0 r 100
~
wait 1s
say ���������� ������....
wait 1s
say ��� ��������� ������� �������?
~
#33006
���� � ����������� �������~
0 q 100
~
wait 1
msend %actor%  ������ �������� �������� �� ���.
mechoaround %actor% ������ �������� �������� �� %actor.vname%
~
#33007
��� ����� ��-��~
0 j 100
~
wait 1
if %object.vnum% == 33019
  wait 1
  mpurge %object%
  wait 2s
  say �������. �������%actor.g%!
  wait 2s
  if (%world.curobjs(242)% < 50) && (%random.100% < 21)
    mecho _������ ������ ���� � �����.
    mload obj 242
    wait 2s
    ��� ��� %actor.name%
  else
    mecho _������ ���� ������� ���� � ����.
    mload obj 33000
    wait 2s
    ��� ���� %actor.name%
  end
end
else
say  ����� ��� ���? 
eval getobject %object.name%
���� %getobject.car%.%getobject.cdr%
end
~
#33008
��� ������� �������~
0 j 100
~
wait 1
if %object.vnum% == 33017 then
  wait 1
  mpurge %object%
  wait 2s
  say ��. ����� ��� ��������... �� �����, ������ ���� ��������, ������ ������ �� ���� �� ����! 
  wait 2s
  mecho ������ ����� ��������� �������..
  wait 2s
  mload obj 33018
  ��� ���� .%actor.name%
end
~
#33009
���� � �������� �������~
0 g 100
~
wait 2s
mecho  ������� ���������� ��� � ���������� �������� � ��� ������������
~
#33010
����� 10 ����� ������~
0 m 10
~
if %amount% < 10 then
  wait 1
  say - �� ����� ������ ����� ��� ������ �� ������!!!.
else
  wait 1s
  say - ������� ����� ������.
  wait 1s
  mecho _������ ������� ����-��.
  wait 1s
  mecho _������ ��������� � �������� ����, ������� ����� ����������.
  mload obj 33003
  ��� ��� %actor.name%
end
~
#33011
��� ����� �������~
0 j 100
~
wait 1
if ((%object.vnum% < 33309) || (%object.vnum% > 33311))
  drop all
  halt
end
set objvnum %object.vnum%
mpurge %object%
wait 1s
set i 0
switch %objvnum%
  case 33309
    wait 1s
    if ((%world.curobjs(33319)% < 4) && (%random.1000% <= 333))
      say �������!
      wait 1s
      mload obj 33319
      wait 10
      say ����� ��� ��� ������!
      ���� ������.���� .%actor.name%
    else
      set i 1
    end
  break
  case 33310
    wait 1s
    if ((%world.curobjs(33307)% < 4) && (%random.1000% <= 333))
      say �������!
      wait 1s
      mload obj 33307
      wait 10
      say ����� ��� ��� ������!
      ���� ����.���� .%actor.name%
    else
      set i 1
    end
  break
  case 33311
    wait 1s
    if ((%world.curobjs(33308)% < 4) && (%random.1000% <= 333))
      say �������!
      wait 1s
      mload obj 33308
      wait 10
      say ����� ��� ��� ������!
      ���� ����.��� .%actor.name%
    else
      set i 1
    end
  break
done
if %i%
  say �������!
  %self.gold(+20000)%
  ���� 20000 ��� .%actor.name%
end
~
#33012
� ����������~
2 e 100
~
wait 3s
wecho _������ ���� ������ ��� � � ��� ����������� ������.
wait 5s
wecho _������ ���� ������ ��� � � ��� ����������� ������.
wait 10s
wecho _������ ���� ������ ��� � � ��� ����������� ������.
wait 15s
wecho _������ ���� ������ ��� � � ��� ����������� ������.
~
#33013
���� � ����� 2~
0 q 100
~
wait 1
say � �� ���� ������������ ���� �� ����� �� ��� �������!!!
������
mkill %actor%
~
#33014
����� ��������~
2 f 100
~
calcuid kupez 33013 mob
detach 33013 %kupez.id%
calcuid kupez 33013 mob
attach 33003 %kupez.id%
calcuid udochkl 33004 room
exec 33026  %udochkl.id%
~
#33015
�������������~
0 f 20
~
if %world.curobjs(501)% == 0
  mload obj 501
end
mload obj 33036
~
#33016
���������~
0 f 20
~
if ((%world.curobjs(504)% == 0) %% (%random.100% < 51))
  mload obj 504
end
~
#33017
��������������~
0 f 20
~
if %world.curobjs(521)% == 0
  mload obj 521
end
~
#33018
����� ����� �������� �� �����~
2 z 100
~
wechoaround %actor% ���-�� � ������ ������ �������� ���� �� ����������� ������ � ��������� � �����.
~
#33019
����� � ������ � ����������~
2 e 100
~
wait 2s
wecho ���������� ��� �������� ���� �� ���.
wload mob 33022
wait 5s
wecho ���������� ��� �������� ���� �� ���.
wload mob 33022
detach 33019 %self.id%
~
#33020
���� ����������~
0 f 100
~
if %world.curobjs(522)% == 0
  mload obj 522
end
mload obj 33015
mload obj 33032
~
#33021
�������� ����� ������ ����~
2 c 0
�������� ������������ ��������~
if !(%arg.contains(������)%) 
  wsend       %actor% ��� �� ������ ������������???
  return 0
  halt
end
wsend       %actor% ������������, �� �������� ����� ������ �����.
wechoaround %actor% ������������, %actor.name% �������%actor.g% ����� ������.
wait 1s
wsend %actor% .- �� �� �� ������� �������.
wteleport %actor% 33015 horse
wechoaround %actor% ���-�� ������� ����.
~
#33022
�������� ����� ������ �����~
2 c 0
�������� ������������ ��������~
if !(%arg.contains(������)%) 
  wsend       %actor% ��� �� ������ ������������???
  return 0
  halt
end
wsend       %actor% ������������, �� �������� ����� ������ �����.
wechoaround %actor% ������������, %actor.name% �������%actor.g% ����� ������.
wait 1s
wsend %actor% .- �� �� �� ������� �������.
wteleport %actor% 33012 horse
wechoaround %actor% ���-�� ������� ����.
~
#33023
�������� ������~
1 c 4
��������~
if !(%arg.contains(������)%) && !(%arg.contains(������)%)
  %send%       %actor% ��� �� ������ ��������???
  return 0
  halt
end
wait 1
%send%       %actor% �������� ������� � ���������� �������������, �� �������� ������.
%echoaround% %actor% �������� ������� � �������� �� ���� �������� ������, %actor.name% �������%actor.g% ������ � ����.
%load% obj 33033
calcuid udochka 33033 obj
exec 33024 %udochka%
%purge% %self%
~
#33024
�����~
1 z 100
~
switch %random.3%
  case 1
    wait 15s
    %echo% _�����. ����� ����� �������.
    attach 33025 %self% 
  break
  case 2
    wait 10s
    %echo% _�����. ����� ����� �������.
    attach 33025 %self%
  break
  case 3
    wait 5s
    %echo% _�����. ����� ����� �������.
    attach 33025 %self%
  break
done
~
#33025
������� ������~
1 c 4
�������~
if !(%arg.contains(������)%) && !(%arg.contains(������)%)
  %send%       %actor% ��� �� ������ �������???
  return 0
  halt
end
%send%       %actor% �� ��������� ����� ������� � ����� ��������.
%echoaround% %actor% ������ ��� �����, %actor.name%, ��������� ������ ������%actor.g% �������.
switch %random.3%
  case 1
    wait 1s
    %send%       %actor% ����������� ������ ��������� � ������... ������.
    %echoaround% %actor%  %actor.name% �������%actor.g% �� ������, ����� �������� ������ ��������� � ������.
    %load% obj 33028
    %purge% %self%
  break
  case 2
    wait 1s
    %send%       %actor% �� ������� �������� �������.
    %echoaround% %actor%  %actor.name% � ������� ������� �������%actor.g% ��������� �������.
    %load% obj 33003
    %load% obj 33028
    %purge% %self%
  break
  case 3
    wait 1s
    %send%       %actor% �� ������� �������� ������� ������.
    %echoaround% %actor%  %actor.name%, ��������� �� ������, �������%actor.g% ������� ������.
    %load% obj 33034
    %load% obj 33028
    %purge% %self%
  break
end
~
#33026
������� ��� � ������~
2 z 100
~
foreach object %self.objs%
  if (%object.vnum% == 33028) || (%object.vnum% == 33033)
    %purge% %object%
  end
done
%load% obj 33028
~
#33027
�����������~
0 r 100
~
wait 1
msend %actor% �������� ������ ����:
msend %actor% - ������ ����, %actor.name%!
msend %actor% - � ���� ��������� ���� ����� ���� � ����������� �� 100 ���.
~
#33028
�������~
0 m 1
~
wait 1
switch %amount%
  case 100
    msend %actor% �������� ����������� ����� � �����, ����� ��� ����� ������������ � ���.
    wait 1s
    msend %actor% �� ������� �� �����.
    msend %actor% ������� ����� �����, � ����� �� ��������� ����� ��������� � ������� � �����.
    if %actor.sex%==1
      mechoaround %actor% %actor.name% ����� � ����� � ����������.
      mechoaround %actor% %actor.name% ����� �� ����� � ����������.
    else
      mechoaround %actor% %actor.name% ������� � ����� � ����������.
      mechoaround %actor% %actor.name% ������ �� ����� � ����������.
    end
    wait 1s
    msend %actor% �� �������� � ����������� � ������� �� �����.
    msend %actor% �������� ��� � ����� � ������ �����.
    mteleport %actor% 25065
    wait 1s
    * if %actor.sex%==1
    *  mat 25065 mechoaround %actor% %actor.name% ������� � ����������.
    *  mat 25065 mechoaround %actor% %actor.name% ����� �� �����.
    * else
    *  mat 25065 mechoaround %actor% %actor.name% �������� � ����������.
    *  mat 25065 mechoaround %actor% %actor.name% ������� �� �����.
    * end
    *  mat 25065 mechoaround %actor% �������� ��� � ����� � ������ �����.
    *  wait 1s
    *  mat 33027 mecho �������� ������� �����.
  break
  default
    msend %actor% ���-�� �� ��.
    msend %actor% � ������� ����������� �����, � ��� ��������� ���. 
    ���� %amount% %actor.name%
  break	
done
~
#33029
���� ���� ����� �������� � �����~
0 f 100
~
if %random.100% <= 15
  if %world.curobjs(562)% < 2
    mload obj 562
  end
end
~
#33030
����� ����� �������~
0 j 100
~
wait 1
if ( %object.vnum% == 11407 )
  wait 1
  mpurge %object%
  if !%actor.quested(27002)% || %actor.quested(27003)%
    halt
  end
  %actor.unsetquest(27002)%
  %actor.setquest(27003)%
  say ��� ���� ������� �������?
  mecho _- ��, �����%actor.g% ����, ������� �� ������.
  ���
  wait 2s
  say �� ����� �����, ��� ����.
  mecho _- ���� �������� - � �� ����, �� � ���� ���-�� ����.
  mecho _- ���� ���� ������� ��������� - ������ ������ �������.
  ����
  wait 2s
  mecho _- � ������� ��������� ���� ������ ���-��...
  mecho _- ����� �������� ��������.... �� ��������� �����.
  wait 2s
  emot ���������� �� ��������
  wait 1s
  ���� %actor.name% ������ ���������, �� ����� �� ���� ������� �������.
  msend %actor% _- ��-�� ���� � ���� - ��������, ��� �� ����������� ���.
  msend %actor% _- �������-�� �����!
  �����
  ���� %actor.name% � ��������� ��� ��� �������� - ���, �������, �� �������.
  ����
  ���
  wait 2s
  say ����� �� ������ ���� ��������? ������� - �� �������, ��� ������� ����...
  emot ������� � ������ � ���������� �������
  wait 1s
  emot �������� ��������� ������, ��������� ���������� �� �����
  halt
end
if ( %object.vnum% != 33035 ) && ( %object.vnum% != 33036 )
  drop all
  halt
end
if !%actor.quested(27005)% && ( %object.vnum% == 33036 )
  wait 1
  mpurge %object%
  say ��� �� ���� ������ ����� - ������!
  emot ��������� ��� � ��� �� ������.
  ����� �� ��, ������!
  mecho ������� �������� ����� � �������� �� ��� � �����!
  mkill %actor%
  halt
end
wait 1s
switch %object.vnum%
  case 33035
    wait 1
    mpurge %object%
    ����
    say ������-�� �����!
    say �������%actor.u%-���� � ���!
  break
  case 33036
    wait 1
    mpurge %object%
    say ��� ��� ���� ����?
    mecho _- �����, ��������?!
    mecho _- ������ ���, ��� ��� ���� ���� � ����� �� �����!
    mecho _- ��, ������ ��� ��� ������...
  break
done
������ .%actor.name%
say ������� ����, %actor.name%!
mecho _- ������ �� ��� ��� - ������� �� ���� �������� �������.
mecho _- ��� ���������� ����.
mload obj 33037
%actor.setquest(27007)%
���� ������ .%actor.name%
detach 33035 %self.id%
~
#33031
������� ����� � ��������~
0 q 100
~
wait 1
if !%actor.quested(27003)% || %actor.quested(27004)%
  halt
end
wait 1s
����
say ������ ������� ����� ��� �� �����...
wait 1s
mecho _- ��, ���� �������?!
mecho _- ���������� �������-���������, � �� �� ���� ���� ��������!
mecho _����� �������� ����������� ����������� ������� ������.
%actor.setquest(27004)%
~
#33032
������� ��������~
0 d 1
���� ����~
wait 1
if !%actor.quested(27004)% || %actor.quested(27005)%
  halt
end
���
say ����� ��� ����?! �� ���� � ����� ����� � �� �����!
mecho _- ����� ������, ����� ���������� ��������, �� � ���� ���, �� ��� ��� �� �����!
����
say ���� �� ������ �� ������� ���� � �������, ��� ����� ���, �������� � ������ �� ������ �����
mecho _- � ������ ���� ������������ ������ - �� � ������.
mechp _- � ����� ��� ��� - ��� ���, �����, ��������!
wait 1s
���
say ����������, ������!
���
%actor.setquest(27005)%
wat 33011 wload mob 33035
wat 33011 wload mob 33035
~
#33033
������� ����~
0 f 100
~
if %actor.vnum% != -1
  set target %actor.leader%
else
  set target %actor%
end
if %target.quested(27005)% && ( %target.align% > 400)
  %target.align(-10)%
end
if %target.quested(27003)%
  mload obj 33035
end
~
#33034
����� ���� ��������~
0 j 100
~
wait 1
if !%actor.quested(27005)% || ( %object.vnum% != 33036 )
  ���
  say ��� ���%actor.y%!!!
  ������� ���
  halt
end
if %actor.quested(27006)%
  drop all
  halt
end
%actor.setquest(27006)%
wait 1s
say � ���� ������ ����%actor.g%?
mecho _- ������� �� �, �� ���� � ����!
���
wait 2s
say �������, ������ ���� ������ ��������� ���� ������...
say ��� ����� � �� ����� ���� ������.
����
wait 2s
say ���, ���������� � ���� ���� ����, ��� �� �����, � ����, �������, ����������.
switch %random.6%
  case 1
    mload obj 4413
  break
  case 2
    mload obj 550
  break
  default
    msend %actor% ������� ��� ��� ��������� ���.
    mechoaround %actor% ������� ��� %actor.dname% ��������� ���.
    %actor.gold(+12000)%
  done
  ���� ��� .%actor.name%
  say ���-�� ����� ����� - ������ �� ������ ����������...
  ���
  say �����, � ���� ������� ������.
  wait 1
  mpurge %self%
~
#33035
����� ���� ��� ���� �������~
0 j 100
~
wait 1
if ( %object.vnum% != 33035 ) && ( %object.vnum% != 33036 )
  drop all
  halt
end
wait 1
mpurge %object%
if !%actor.quested(27005)% && ( %object.vnum% == 33036 )
  say ��� �� ���� ������ ����� - ������!
  emot ��������� ��� � ��� �� ������.
  ����� �� ��, ������!
  mechoaround %actor% ������� �������� ����� � �������� �� %actor.iname% � �����
  msend %actor% ������� �������� ����� � �������� �� ��� � �����!
  mkill %actor%
  halt
end
wait 1s
switch %object.vnum%
  case 33035
    ����
    say ������-�� �����!
    say �������%actor.u%-���� � ���!
  break
  case 33036
    say ��� ��� ���� ����?
    mecho _- �����, ��������?!
    mecho _- ������ ���, ��� ��� ���� ���� � ����� �� �����!
    mecho _- ��, ������ ��� ��� ������...
  break
done
������ .%actor.name%
say ������� ����, %actor.name%!
mecho _- ������ �� ��� ��� - ������� �� ���� �������� �������.
mecho _- ��� ���������� ����.
mload obj 33037
���� ������ .%actor.name%
detach 33035 %self.id%
~
#33036
����� ������ ������~
0 q 100
~
wait 1
if %direction% != north
  halt
end
if !%actor.quested(27005)%
  halt
end
��
say �����.. ��! ��������!
say ��� ���.. �-������!
mkill %actor%
~
#33037
����� ������~
0 f 100
~
mload obj 33021
~
$~

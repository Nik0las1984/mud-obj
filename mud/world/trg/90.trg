#9000
����� �� ������~
2 c 1
����� ������� ������ ���������~
if (!%arg.contains(���)% && !%arg.contains(������)%)
  wsend %actor% ���� ��� �� �������?
  halt
end
wechoaround %actor% %actor.name% �����%actor.q% �� ���.
wsend %actor% �� ������ ����� �� ����� �������� ����.
wteleport %actor% 9052
wechoaround %actor% ���-�� �������� �� �������� �����.
~
#9001
����� � �������~
2 c 1
����� ������ ������� �������� ������������ ���������� ��������� �����������~
wait 1
if !(%arg.contains(�����)%) 
  wsend %actor% ���� �������-�� ������?
  halt
end
if !(%arg.contains(����)%) 
  wsend %actor% � ��� ��� �� ������? �� ����� �����?
  halt
end
if (%actor.dex% < 23)
  wsend %actor% �� ������ ����������� �� ������ �����.
  wsend %actor% ���������� ����� ��� ������ �������, � ���������� ������ ���������� �� ���.
  wsend %actor% �� �������� ���� � ������ ���������� ������ ������...
  %actor.position(6)%
  wsend %actor% ���, ����� ���� ����������, ���� ���� ��������� ��������.
end
if (%actor.remort% > 3)
  wsend %actor% �� ����� ��� � ������� ���� ��������...
  wsend %actor% ���� �������� - �� ������� ������. ������� ��, ��� ��, ������� �������.
end
wechoaround %actor% %actor.name% ����%actor.q% ����������� �� ������. ���������, ����?
wsend %actor% ����������� ������, �� ��������� � ������ ������� ������.
wteleport %actor% 9046
wechoaround %actor% ���-�� �������� �� ������ ����.
~
#9002
������� � ������~
2 c 1
������ ����������~
wechoaround %actor% %actor.name% ����%actor.q% � ����.
wsend %actor% �� ����� ���������� �� ������, � ������� ��������� �� �����.
wteleport %actor% 9051
wechoaround %actor% ���-�� �������� � ������ ������ ����.
~
#9003
������� �� �����~
2 c 1
�������� ��������� ������ �����~
if !(%arg.contains(����)%) 
  wsend %actor% ���� �������? � ������ - ������!
  halt
end
wechoaround %actor% %actor.name% � ������� �������%actor.g% ����. ���������, �� ������� �� ���� ���?
wsend %actor% ������ � ��� ���� � �����, ����� �� ������, ��� �������� ������������ ���� �����.
wteleport %actor% 9053
wechoaround %actor% ���-�� �������� ���� � ������� �����. ����������...
~
#9004
������� � �����~
2 c 0
����� ������ ��������� �������� ����������~
wechoaround %actor% %actor.name% ��������� �������%actor.u% � �����. ������, ������ �� �����!
wsend %actor% �� ��������� ������ � ����� ����.
wteleport %actor% 9035
wechoaround %actor% ���-�� �������� � �����.
~
#9005
��������� �����~
0 q 100
~
if %actor.level% >= 15 || (%actor.bank% >= 5000) 
  halt
end
wait 1
msend %actor% �������� ������ ���:
if %actor.sex% == 1
  msend %actor% - ����� �������, %actor.name%, ��������, ��������, ������ �� ����!
elseif
  %actor.sex% == 2
  msend %actor% - ����� �������, %actor.name%, ��������, ��������, ������ �� ����!
end
msend %actor% &K%self.name% ���������� �������� � ��������� ������.
msend %actor% - ������, �������, ����� ��� ���������...
dg_cast '���������' %actor.name%
msend %actor% ������� ��������, �� ������������� �������� ������� � �������.
~
#9006
������ ������ ������~
2 c 0
�������� ����������� ��������~
if !(%arg.contains(������)%)
  wsend %actor% ��� �� ������ �����������?
  halt
end
wsend %actor% �� ������ �������� ������.
wechoaround %actor% %actor.name% �����%actor.g% ����������� ������.
wait 1
wecho �������� �� ��� ����������� ������, ��������� ������� ������.
wait 2
wecho ������, ��� �� ����� ��������, ��� �� ��������� �� ������.
wload mob 9044
detach 9006 %self.id%
~
#9007
�������� �������� ���������~
0 qr 80
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
#9008
�������� ����� � ���������~
0 qrt 80
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
  ����� %target.name%, - ��� ��, ������ ������, ������ ���!
else
  ����� %target.name%, ��������, ���� ��!
end
����� %target.name% - ��� �� %target.g% ���, ������, ������!
����
mforce %target.name% ���
mkill %target% 
~
#9009
���� �������~
0 q 100
~
if ((%actor.remort% > 3) || (%actor.getquest(9000)% == %date.yday%) || (%actor.getquest(9000)% > 366))
  halt
end
%actor.unsetquest(9000)%
wait 1
say ������ ����, %actor.name%!
�����
say ���� � ���� ������������, �� ��������?
~
#9010
����� ���� ��~
0 d 1
�� ���� ������~
if ((%actor.vnum% != -1) || (%actor.remort% > 3) || %actor.quested(9000)%)
  halt
end
wait 1
%actor.setquest(9000 1000)%
���
say ��� � ���� ����� ���, �� ���������� ���� ���������.
say ��� ��� ��� ����� ��� ��� �����!
say �� ��� ���� ����� ��� ����, �� ������ ����������, � ������ ������� ������.
say ����� ����, ������� ���, � � �� ����������� ��� �����.
~
#9011
���� �����~
0 b 15
~
������
~
#9012
���� ��������~
2 eg 50
~
wait 1 
wsend %actor% ������ ������ ��� ������ ������.
wechoaround %actor% ������ ��������, ����� %actor.name% ������� �� ����.
~
#9013
������� �������~
0 q 10
~
wait 2
msend %actor% ������� ������� ��� � �������� �����������, ������� ���� � ����� ������.
wechoaround %actor% ����������� ������� ������� %actor.rname% � ��������� �����������.
~
#9014
����� ���� ����~
0 j 100
~
if (!%actor.quested(9000)% || (%actor.getquest(9000)% == %date.yday%))
  return 0
  say ����� � ���� �� ���� ������?
  halt
end
switch %object.vnum%
  case 9016
    case 9017
      case 9018
        eval i %actor.getquest(9000)%+1
      break
      default
        return 0
        say ����� � ���� �� ���� ������?
      done
      wait 1
      mpurge %object%
      %actor.setquest(9000 %i%)%
      wait 1
      if (%actor.getquest(9000)% < 1006)
        say �������, %actor.iname%, �� ��� �� ��������� ����?
        halt
      end
      %actor.setquest(9000 1100)%
      say ������� ����, �����%actor.q%.
      if (%actor.str% >= 23)
        %actor.setquest(9000 %date.yday%)%
        mload obj 9020
        say ������ ���.
        give ���� .%actor.iname%
        say � ������ ������, �� �������, ������� ��������� ������. 
        say ������ ������� ���� ����� �����������, ����� ����� ��� ��������...
        ���� %actor.name%
      elseif (%actor.dex% >= 23)
        %actor.setquest(9000 %date.yday%)%
        mload obj 9021
        say ������ ���.
        give ���� .%actor.iname%
        say � ������ ������, ��� ��� ��������� �����, ������ �������� �������. 
        say ������ ����� ������ ������ ������� � ��� - ��������� ��� ��� ����� ������.
        say ���������� ��� ��������� - ������, ������� ����.
        ���� %actor.name%
      elseif (%actor.int% >= 23)
        ���� .%actor.iname% ������� ����� ��������: "���������", ��� ���� ����� �����������!
        say � ������ ������, ��� ��� ��������� �����, ����� ������� �����. 
        say ������ ����� ����� ������ ���������, ��� �� ��� ��������.
        say ����� �������� - ��������� ����� ������. 
        ���� %actor.name%
        calcuid plita 9045 room
        attach 9015 %plita.id%
        exec 9017 %plita.id%
      else
        say ���� �� ��������� ����..
        ���
        say �� ���-�� �� ���� � ����, ��� ����� ��������, �� �������� ����������.
        say �� � ���� ���� ���� �� ��������.
        say ������ ������� ��� - �� ����� ���������� �����.
        %self.gold(+150)%
        ���� 150 ��� .%actor.name%
      end
~
#9015
������� ����~
2 d 1
���������~
if (%actor.getquest(9000)% != 1100)
  halt
end
%actor.setquest(9000 %date.yday%)%
wait 1s 
wsend %actor% �� ������������� ���� ���� ����� ����������� � ����.
wechoaround %actor% �� ������������� %actor.tname% ���� ����� ����������� � ����.
calcuid plita 9004 obj
wpurge %plita%
wait 1
wload obj 9023
~
#9016
�����~
2 f 100
~
calcuid birdhouse 9052 room
attach 9018 %birdhouse%
calcuid birdhouse 9053 room
attach 9006 %birdhouse%
wdoor 9045 w purge
calcuid rodnik 9045 room
attach 9020 %rodnik%
~
#9017
���� ���~
0 f 100
~
if (%actor.getquest(9000)% == 1000)
  mload obj 9016
  set i 1001
elseif (%actor.getquest(9000)% == 1001)
  mload obj 9017
  set i 1002
elseif (%actor.getquest(9000)% == 1002)
  mload obj 9018
  set i 1003
end
%actor.setquest(9000 %i%)%
~
#9018
������ ������ ������~
2 c 0
�������� ����������� ��������~
if !(%arg.contains(������)%)
  wsend %actor% ��� �� ������ �����������?
  halt
end
wsend %actor% �� ������ �������� ������.
wechoaround %actor% %actor.name% �����%actor.g% ����������� ������.
wait 2
wecho �������� �� ��� ����������� ������, ��������� ������� ������.
wait 3
wecho ������, ��� �� ����� ��������, ��� �� ��������� �� ������.
wload mob 9045
detach 9018 %self.id%
~
#9019
��������� �� �������~
2 c 1
������� ������ ���������� ���������~
wechoaround %actor% %actor.name% �������%actor.u% ������-�� ��-��� ����� ������.
wsend %actor% �� ������������ ���������� �� �����.
wteleport %actor% 9045
~
#9020
������� �����~
2 c 0
�������� ���������� �������� ��������~
wait 1
if (!%arg.contains(������)% && !%arg.contains(�����)%)
  wsend %actor% ������-������, �� ��� ��� �� ������ ��� ���������?
  halt
end
if (%actor.str% < 22)
  wsend %actor% �� ��������� ������ ������, � ���������� ��� ���� ���.
  wsend %actor% ������ ���� ���������� ����, �� ��� ���� ���� ������������, � �� ���������� ������.
  %actor.position(6)%
  wsend %actor% ���� ���� ���� ������ ����, �� � ������ ��������� ����� ������� ��������.
  halt
end
if (%actor.remort% > 3)
  wsend %actor% �� ����� ��� � ������� ���� ��������...
  wsend %actor% ���� �������� - ����� ��� ����� ��������. ������� ��, ��� ��, ������� �������.
  halt
end
wechoaround %actor% %actor.name% �������%actor.q% � ������� �������� �����!
wsend %actor% ����������� ���� �����, �� �������� ����� � �������.
wecho �� ������� �������� ����� ������.
wdoor 9045 w room 9047
calcuid stone 9003 obj
wpurge %stone%
wload obj 9024
detach 9020 %self.id%
~
#9021
���� ����� ���������~
1 o 100
~
if (%actor.str% < 23)
  osend %actor% ��� �� �� ���������, ��� ��� � �� ������� ��������� ���� � ����������� �����.
  osend %actor% ��� ���� �� ����-�� ���������...
  return 0
  halt
end
wait 1
foreach item %actor.objs%
  if %item.vnum% == 9020
    opurge %item%
  end
done
osend %actor% ���� �������� � �������� � ��� � �����.
~
#9022
���� ����� ��������~
1 o 100
~
if (%actor.dex% < 23)
  osend %actor% ��� �� �� ���������, ��� ��� � �� ������� ������ �� ��� ������ �������.
  osend %actor% ��� ���� �� ����-�� ��������...
  return 0
  halt
end
wait 1
foreach item %actor.objs%
  if %item.vnum% == 9021
    opurge %item%
  end
done
osend %actor% ���� �������� � �������� � ��� � �����.
~
$~

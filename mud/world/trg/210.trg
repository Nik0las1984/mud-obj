#21000
���� �� �����~
2 e 100
~
wait 2
wsend %actor.name% �� ��������� �� ���������! 
wsend %actor.name% ��� ��� ����� �������� ���� ������� �����������
wsend %actor.name% � ����������� �����, ����� ������� �����������. 
~
#21001
�������� ����~
0 r 100
~
wait 1
���� %actor.name%
say  ������ ����!  
wait 1
�����
~
#21002
����� � �����~
2 c 100
�����~
wait 1
wechoaround %actor% %actor.name% ���� �� ��.
wsend %actor.name% &W��� ��������� � ���������.&n
wsend %actor.name% &W�� ����� �� ��.&n
wteleport %actor% 21006
wechoaround %actor% %actor.name% ������ � ������.
~
#21003
������~
0 r 100
~
wait 1
����
say �� ����� ����! � ���� ������ ����!
~
#21004
������ �������~
0 r 100
~
wait 1
��� %actor.name%
say �������� ��� ������ �����, ���� ������ ������� ��� ����� ���� �� ������� ����!
���
~
#21005
�������� �����~
0 m 10
~
wait 1
if %world.curobjs(21035)% > 500
  say ����� ��������� - ��������� �� ����.
  halt
end
say ������ �����.
say %actor.name%, �� �������, ��� ��� ������ ��� �� ������� ��������� ������ �������.
mload obj 21035
��� ���� %actor.name%    
~
#21006
������ ���~
1 c 2
������~
wait 1
if (%actor.clan%==��)
  oechoaround %actor% %actor.name% �����%actor.g% ������ ������.
  oechoaround %actor% �� ��� �� ��� ����� �������� �������� ���.
  osend %actor% �� ������ ������ ������ ��������.
  oload mob 21015
  oforce %actor% �������� ���
  wait 1
  opurge %self%
else
  oechoaround %actor% %actor.name% �������%actor.u% ��������� ����-��, �� ����� �� ��������.
  osend %actor% �� ���������� ��������� ����-��, �� ������ �� �����.
end
~
#21007
�������� ���~
0 c 1
��������~
wait 1
if (( %actor.clan% == �� ) && (%self.leader% ==  %actor%))
  mechoaround %actor% %actor.name% �������%actor.g% ���.
  mechoaround %actor% ��� ��������� � �����.
  msend %actor% �� �������� ���.
  msend %actor% ������, ��� ����� ��� �����.
  mload obj 21035
  ���� ���� %actor.name% 
  wait 1
  mpurge %self%
else
  mechoaround %actor% %actor.name% �������%actor.u% �������� ���, �� �� ������� �� �����.
  msend %actor% �� ���������� �������� ���, �� �� ������� �� �����.
end
~
#21008
������ �������~
0 s 30
~
wait 1  
switch  %random.10%
  case 10
    say ������!
  break
  case 9
    say ���� ������!
    ���
  break
  case 8
    say � ���� � �������� ����� ����! � � ��������� ���� ����!
    �����
  break
  case 7
    say �� ��� ��� ������� �� �����!
    mecho ������ ���� ������ � ��� ����.
    wait 1
    mecho &y������ �� ���� ��������� ��� ����&n.
    wait 1
    ���
    wait 1
    mecho ������ ��������� ������������ ������.
    wait 1
    say �� ������! �������� - ����� ������� �������� �������� - ��� ����� � ���������!
  break
  case 6
    say ��! ������ �� ��� � �������, ��� ����� �� �� �� � ��������! � ��� ����-�����!
    ���
  break
  case 5
    say ����� ��� ������� � ������� ������� ����� �� ����� ? ������� ��� ���-�� �������...
    ����
    wait 1
    say ���� ��� ������ - ����� ��� ������� ��!
  break
  case 4
    say ���������! ����� ����! ����� ����! ����� ����! ������� ����! ������!
  break
  case 3
    say ������� ���� � ��! � ������ ������ �� ����!
    wait 1
    ���
    wait 1
    say �� �� ������ - ��� ������! ������ ����� �������!
  break
  case 2
    say ������ �� ������� ������� ���������! ������ ������ �� ���� ��� ������ �����������!
    ���
  break
  case 1
    say ��� ���-����! �� ��� ���-����!
    mecho ������ ������� ��� � ������ �� ���.
    ����
    say �� �� ���� ����-���� ���� ��� ��.
    ���
  done
  
~
#21009
������ �����������~
0 r 60
~
wait 1
mecho ������ ������� ��� � ������ �� ���.
���
wait 1
say �� �� ���� ������!
���
~
#21010
����� ����~
1 g 100
~
halt
*���� �������� �� (���������) �������������
wait 1
if %actor.clan% == �� || %actor.clan% == ��� || %actor.clan% == �� 
  halt
end
osend %actor% %self.iname% ��������%self.u% � ����� �����.
wait 1
opurge %self%
~
#21011
������ � �����������~
2 c 1
���������� �����~
if !%arg.contains(����)%
  wsend       %actor% ���� ��� �� ������ ����������???
  return 0
  halt
end
wsend       %actor% �� ������ ���������� ���� �� �������� � ����-�� ����.
wechoaround %actor% %actor.name% �����%actor.q% ����, ������� �� ��������.
wait 1s
wsend %actor% .- �� ���������� � �����������.
wteleport %actor% 21035
%actor.wait(1)%
wechoaround %actor% %actor.name% ��������%actor.q% ���� ������.
~
#21012
���� �������~
0 r 100
~
wait 1  
��� %actor.name%
mechoaround ���� ������ ������� ���� &R��������&n �����.
~
#21013
����������~
2 c 0
���������� �����~
* ���������� | Rooms | Command | 0 | ���������� �����
wait 1
if (!%arg.contains(�����)%)
  wsend %actor% ���� ��� �� ������ ����������?
  return 0
  halt
end
if ((!%actor.fighting%) && ((%actor.clan% == ��) || (%actor.clan% == ��) || (%actor.clan% == ���) || (%actor.level% > 30)))
  if (!%actor.rentable%)
    wsend %actor% �� ���������� ��� �����.
    wechoaround %actor% %actor.iname% �����%actor.g% ������� ������ � ������ �����%actor.u% ��� ������.
    switch %random.5%
      case 5
        wteleport %actor% 21046
      break
      case 4
        wteleport %actor% 21060
      break
      case 3
        wteleport %actor% 21069
      break
      case 2
        wteleport %actor% 21038
      break
      case 1
        wteleport %actor% 21059
      break
    done
    wechoaround %actor% %actor.iname% �������%actor.u% ������-�� �����.
    halt
  else
    wteleport %actor% 21017
    wechoaround %actor% %actor.iname% �������%actor.u% ������-�� �����.
  end
else
  return 0
  halt
end
~
#21014
���� ������� ��������~
0 r 100
~
if %actor.clan% == ��
  wait 3
  mecho ������� �������� ������ ���������� � ����� � ������ &K"������"&n.
else
  ���� ������ ������ ��� � ������, %actor.iname% �����!!!
end
~
#21015
����������� � ���������~
2 c 1
��� ���� ����� ������ ������� �������� ��������� ���������� ����������� ������������ ������������!~
wait 1
wsend %actor% �� ���������� �� ��������.
wsend %actor% &y�����:&n ��������
wsend %actor% &y������:&n ��������
wsend %actor% &y��:&n ��������
wsend %actor% &y�����:&n ��������
wsend %actor% &y����:&n ��������
wsend %actor% &y���:&n ��������
~
#21016
��������~
0 q 100
~
wait 1
if (%actor.clan% != �� )
  halt
end
if %actor.level% < 24
  halt
end
if (%actor.vname% == %char1%) || (%actor.vname% == %char2%) || (%actor.vname% == %char3%) || (%actor.vname% == %char4%) || (%
  actor.vname% == %char5%) || (%actor.vname% == %char6%) || (%actor.vname% == %char7%) || (%actor.vname% == %char8%) || (%
  actor.vname% == %char9%) || (%actor.vname% == %char10%) || (%actor.vname% == %char11%) || (%actor.vname% == %char12%) |   
  halt
end
eval num %num%+1
global num
switch %num%
  case 1
    eval char1 %actor.vname%
    global char1
  break
  case 2
    eval char2 %actor.vname%
    global char2
  break
  case 3
    eval char3 %actor.vname%
    global char3
  break
  case 4
    eval char4 %actor.vname%
    global char4
  break
  case 5
    eval char5 %actor.vname%
    global char5
  break
  case 6
    eval char6 %actor.vname%
    global char6
  break
  case 7
    eval char7 %actor.vname%
    global char7
  break
  case 8
    eval char8 %actor.vname%
    global char8
  break
  case 9
    eval char9 %actor.vname%
    global char9
  break
  case 10
    eval char10 %actor.vname%
    global char10
  break
  case 11
    eval char11 %actor.vname%
    global char11
  break
  default
    eval char12 %actor.vname%
    global char12
    eval num 0
    global num
  done
~
#21017
���� �������~
0 r 100
~
if %actor.clan% == ��
  wait 3
  mecho ������� �������� ������ ���������� � ����� � ������ &K"������"&n.
else
  ���� %actor.iname% �����!!!
end
~
#21018
������� �������~
2 c 0
������� �������~
wait 1
if (%actor.vnum% != -1)
  return 0
  halt
end
if !%arg.contains(�������)% 
  wsend %actor%  ��� �� ������ �������?
  return 0
  halt
end
wsend %actor%  �� ������� �� �������.
wechoaround %actor.name%  %actor.name% ������%actor.g% �������.
wechoaround  ���-�� �������� �����.
wdoor 21063 w room 21064
wdoor 21063 e room 21046
wait 10s
wechoaround  �������� ������� ����.
wdoor 21063 w purge
wdoor 21063 e purge
~
#21019
!������~
0 r 100
~
wait 1
if (%actor.religion% == 1)
  say ����� ������ ������������ �������
else
  ����
  say &r������ ���� &n.
end
~
#21020
����������� � ���������2~
2 c 1
����� ������ ������� �������� ��������� ���������� ����������� ������������ ������������!~
wsend %actor% �� ������ �������������� ��������������.
wsend %actor% &y�����:&n
wsend %actor% &g ������ � �����.&n
wsend %actor% &y������:&n
wsend %actor% &g ������ � �����.&n
wsend %actor% &y��:&n
wsend %actor% &g ������ � �����.&n
wsend %actor% &y�����:&n
wsend %actor% &g ������ � �����.&n
wsend %actor% &y����:&n
wsend %actor% &g ������ � �����.&n
wsend %actor% &y���:&n
wsend %actor% &g ������ � �����.&n
~
#21021
����������� � �������~
2 e 100
~
wait 1
if %actor.clan% == ��
  wait 3
  wsend %actor% �� ����� � ����� � ����� ������������ ����� ����.
  halt
else
  wait 3
  wsend %actor% �� ����������� � ������ � �����.
  wsend %actor% ��� ���������� ��� �����.
  %actor.position(6)%
  %actor.wait(5)%
end
~
#21022
�������~
2 e 100
~
wait 1
%actor.wait(5)%
wecho  ��� ������ �� ����� � ������� ������ �� ��� ����� �����.
wecho  �� ���������� ����������...
wecho  &R�� ����� ������� �� ���!&n
foreach victim %self.all%
  wdamage %victim% 200
done                                        
~
#21023
�������� �����~
2 c 0
�������~
wait 1
if (%actor.vnum% != -1)
  return 0
  halt
end
if !%arg.contains(������)% 
  wsend %actor% 
  return 0
  halt
end
wsend %actor%  �� ��������� ��������� �� ������.
wechoaround  %actor.name% ��������� ��������%actor.g% �� ������.
wechoaround  �������� ���� ������� ������, �� ������ �� ���������.
wait 1
exec 21024 %world.room(21040)%
end
~
#21024
����������� �������~
2 z 100
~
calcuid lov 21042 room
detach 21022 %lov.id%
wait 5s
attach 21022 %lov.id%
~
#21025
����� ������~
2 c 0
����� ������~
if (%actor.vnum% != -1)
  return 0
  halt
end
if !%arg.contains(������)% 
  wsend %actor%  ����?
  return 0
  halt
end
wsend %actor%  �� �� ���� ���� ����� ������.
wechoaround %actor.name% �� ���� ����� ����%actor.g% ������.
wecho ������ ������ �� ������.
wecho �������� ������ � ����� �� �����-�� ������������� �����.
~
#21026
����� ������2~
2 c 0
����� ������~
if (%actor.vnum% != -1)
  return 0
  halt
end
if !%arg.contains(������)% 
  wsend %actor%  ����?
  return 0
  halt
end
wsend %actor%  �� �� ���� ���� ����� ������.
wechoaround %actor.name% �� ���� ����� ����%actor.g% ������.
wecho ������ ������ �� ��.
wecho �� ������ �� ��������.
~
#21027
������� � ���~
2 e 100
~
wait 1
%actor.wait(3s)%
wechoaround %actor.name% ��������� � � ������ ����� ��������%actor.u% ����.
wsend %actor% ����� �� ���������� � � ������ ����� �������� ����.
wsend %actor% &R�� ������ ��������� �������.&n
wsend %actor% � ������ � ��� ��������.
wsend %actor% �� ��������. 
wteleport %actor% 21068
eval dam124 %actor.hitp%/2
wait 1
wdamage %actor% %dam124%
wechoaround %actor.name% � ������� ����%actor.u% ������.
~
#21028
������ �������2~
2 c 1
��������~
wait 1
if (%actor.vnum% != -1)
  return 0
  halt
end
if !%arg.contains(������)% 
  wsend %actor%  ����?
  return 0
  halt
end
wsend %actor%  �� ��������� ���������� ������.
wechoaround %actor.name% ��������� ���������%actor.g% ������.
wechoaround  �������� ���� ������� ������, �� ������ �� ���������.
exec 21029 %world.room(21049)%
end
~
#21029
����������� �������2~
2 z 100
~
calcuid lov2 21063 room
detach 21027 %lov2.id%
wait 4s
attach 21027 %lov2.id%
~
#21030
������ ������� � ���������~
2 c 1
�� ��� ���� ����� ������ ������� �������! dro drop drop!~
wsend %actor% �� �������� ������� ���-��, �� ��� �� ���������� � ���� ������������.
~
#21031
������ ������ � ���������~
2 c 1
� �� ��� ���� ����! gi giv give give!~
wsend %actor% �� ����������� ���� ���-��, �� ��� �� ���������� � ���� ������������
~
#21032
����������� � ���������3~
2 c 1
�� ��� ���� ����� ������ ������� �������� ��������� ���������� ����������! �� ��� ���� ����� ������ ������� �������� ��������!~
wsend %actor% �� ���������� �� ��������.
wsend %actor% &y�����:&n ��������
wsend %actor% &y������:&n ��������
wsend %actor% &y��:&n ��������
wsend %actor% &y�����:&n ��������
wsend %actor% &y����:&n ��������
wsend %actor% &y���:&n ��������
~
#21033
����������� � ��������� 4~
2 c 1
sc sca scan scan!~
wsend %actor% �� ���������� �� ��������.
wsend %actor% &y�����:&n ��������
wsend %actor% &y������:&n ��������
wsend %actor% &y��:&n ��������
wsend %actor% &y�����:&n ��������
wsend %actor% &y����:&n ��������
wsend %actor% &y���:&n ��������
~
#21034
����������� � ���������5~
2 c 1
��� ���� ����� �����! sens sense sense!~
wsend %actor% ���� ������� ������.
~
#21035
���������� �����~
2 z 100
~
foreach victim2 %self.all%
  wdamage %victim2% 200
  wecho &R ����� ������ ������� ���������� ������� ������ ���������� �� ��� �� ������� �����
  wasound &Y ���-�� ������ ���������� �����! &n
done
~
#21036
�������� �����~
2 z 100
~
set victim %random.pc%
if %victim%
  wdamage %victim% 200
  wecho  &r_�������� ������ � ������ �������� ������������ ��������� �� ������� �����!&n
  wasound &R �� �������� ������ ���� � ���� ����! &n
end
~
#21037
������ ����������~
2 c 1
����������~
eval drct %arg.car%
switch %drct%
  case �����
    wsend %actor% _�� ���������� ����� ����������.
    wechoaround %actor% _~~%actor.name% ����������%actor.g% ����� ����������.
    wecho ����� ����� ������� ����� � �� �������� �������� �������� � ���������� �����.
    wecho ����� ����� �� ������ ���� � ����� ����� ����.
    exec 21035 %world.room(21048)%
  break
  case ������
    wsend %actor% _�� ���������� ����� ����������.
    wechoaround %actor% _~~%actor.name% ����������%actor.g% ����� ����������.
    wecho ����� ����� ������� ����� � �� �������� �������� �������� � ���������� �����.
    wecho ����� ����� �� ������ ���� � ����� ����� ����.
    exec 21035 %world.room(21040)%
  break
  case �����
    wsend %actor% _�� ���������� ����� ����������.
    wechoaround %actor% _~~%actor.name% ����������%actor.g% ����� ����������.
    wecho ����� ����� ������� ����� � �� �������� �������� �������� � ���������� �����.
    wecho ����� ����� �� ������ ���� � ����� ����� ����.
    exec 21035 %world.room(21076)%
  break
  case ����
    wsend %actor% _�� ���������� ����� ����������.
    wechoaround %actor% _~~%actor.name% ����������%actor.g% ����� ����������.
    wecho ����� ����� ������� ����� � �� �������� �������� �������� � ���������� �����.
    wecho ����� ����� �� ������ ���� � ����� ����� ����.
    exec 21035 %world.room(21033)%
  break
  case �����
    wsend %actor% _�� ���������� ����� ����������.
    wechoaround %actor% _~~%actor.name% ����������%actor.g% ����� ����������.
    wecho ����� ����� ������� ����� � �� �������� �������� �������� � ���������� �����.
    wecho ����� ����� �� ������ ���� � ����� ����� ����.
    exec 21035 %world.room(21052)%
  break
  default
    wsend %actor% ����-����?
  done
  wait 6s
~
#21038
������ ����������~
2 c 1
��������~
eval drct %arg.car%
switch %drct%
  case �����
    wsend %actor% _�� ���������� ��������� ����������.
    wechoaround %actor% _~~%actor.name% ���������%actor.g% ��������� ����������.
    wecho ������� ������ ����� ������ � ���������� ������.
    wecho ������ ����������� � ������� �����.
    exec 21036 %world.room(21048)%
  break
  case ������
    wsend %actor% _�� ���������� ��������� ����������.
    wechoaround %actor% _~~%actor.name% ���������%actor.g% ��������� ����������.
    wecho ������� ������ ����� ������ � ���������� ������.
    wecho ������ ����������� � ������� �����.
    exec 21036 %world.room(21066)%
  break
  case �����
    wsend %actor% _�� ���������� ��������� ����������.
    wechoaround %actor% _~~%actor.name% ���������%actor.g% ��������� ����������.
    wecho ������� ������ ����� ������ � ���������� ������.
    wecho ������ ����������� � ������� �����.
    exec 21036 %world.room(21069)%
  break
  case ����
    wsend %actor% _�� ���������� ��������� ����������.
    wechoaround %actor% _~~%actor.name% ���������%actor.g% ��������� ����������.
    wecho ������� ������ ����� ������ � ���������� ������.
    wecho ������ ����������� � ������� �����.
    exec 21036 %world.room(21033)%
  break
  case �����
    wsend %actor% _�� ���������� ��������� ����������.
    wechoaround %actor% _~~%actor.name% ���������%actor.g% ��������� ����������.
    wecho ������� ������ ����� ������ � ���������� ������.
    wecho ������ ����������� � ������� �����.
    exec 21036 %world.room(21052)%
  break
  default
    wsend %actor% ����-����?
  done
  wait 4s
~
#21039
������� �� �����~
2 c 1
�����~
calcuid troom 21048 room
wecho �� ���������� �� �����:
foreach char %troom.all%
  if %char%
    wecho �� ������� %char.vname%
  else
  break
end
done
~
#21040
������� �� �����~
2 c 1
������~
calcuid troom 21040 room
wecho �� ���������� �� ������:
foreach char %troom.all%
  if %char%
    wecho �� ������� %char.vname%
  else
  break
end
done
~
#21041
������� �� �����~
2 c 1
�����~
calcuid troom 21076 room
wecho �� ���������� �� �����:
foreach char %troom.all%
  if %char%
    wecho �� ������� %char.vname%
  else
  break
end
done
~
#21042
������� �� �����~
2 c 1
����~
calcuid troom 21033 room
wecho �� ���������� ����:
foreach char %troom.all%
  if %char%
    wecho �� ������� %char.vname%
  else
  break
end
done
~
#21043
������� �� �����~
2 c 1
�����~
calcuid troom 21052 room
wecho �� ���������� �� �����:
foreach char %troom.all%
  if %char%
    wecho �� ������� %char.vname%
  else
  break
end
done
~
#21044
���� �� �����~
2 cz 1
�����~
wait 1
wechoaround %actor% %actor.name% ���� �� �����.
wsend %actor.name% &W�� ����� �� �����.&n
wteleport %actor% 21004
wechoaround %actor% %actor.name% ������ � ���.
~
#21045
������ �������~
0 c 1
iGyvgsifbusfgousv~
say ���
~
#21046
���� �� �����2~
1 c 1
����~
osend %actor% � �� ������ ����? �� ������ ��� �������.
log &G%actor.name%  - ����� � ������ �� ����������� ����� ��������� � ����!!!&n
~
#21047
���� ������~
2 z 0
~
wait 1
%purge%
wait 1
wecho ������� ���������� ����� �������� � ����� ��� �� ����� ����.
~
#21048
����2~
2 cz 0
������~
wait 1s
%echo% ���������� ������ ��������� �����, ����� ��� �� ����� ����!
%purge%
~
#21049
������ �������� ����~
0 r 100
~
if %direction% == west  
  if %actor.clan% == ��
    wait 3
    mecho ������ �������� ������ ���������� � ����� � ������ "������".
  else
    ���� %actor.iname% ������ �����!
  end
end
~
#21050
����� ���������~
0 bj 100
~
wait 1
set items %self.objs%
set item %items.car%
if %item%
  mecho ������ ������� � ������� ��������� ������� %item.vname%.
  wait 1
  mpurge %item%
end
~
#21051
���� ��� � �����!~
0 b 20
~
foreach victim %self.pc%
  if %victim.affect(����������)%
    wait 10s
    say %victim.name%, �����, ������� �����, �� �� ����� � ����� ������.
    mechoaround %victim.name% ������� ������ ������ �������� %victim.vname% � ������� �� ��������������.
    msend %victim.name% ����� ������������ ����� �������� �� ��������� ����� ����� �������.
    msend %victim.name% ���, ������� �� ����� �� ����� ������ � ����, - ������ ��, ������� ����.
    mforce %victim% wake
    mforce %victim% stand
    mforce %victim% �����
    mforce %victim% �����
    mforce %victim% �����
  end
done
~
#21052
�������� ���� ��� ����� ����. ������� �� ��������� �����!~
2 g 100
~
wait 1s
%echo% �� ��������� � ���. ��������.
%echo% � ������ ����� �� ������.
wait 2s
%echo% ����� �������� : '�� ������ ��� ����!'
wait 1s
%echo% ��� �����, �������, ����� ��� ���� � ���������� �����-�� �������������.
wait 3s
%echo% ���������, ��� ������ ������� �����, &Y�����&n ������ ��� ����������� ���.  
%echo% &R���������, ����� ����� ������ ���� ����.&n
wdamage %actor% 50
wait 10s
%echo% &R����� ����������� ��� �����, ���� ����, ������ �������� �����!&n
wdamage %actor% 150
~
#21053
������ ����, ������ �����~
2 b 20
~
switch %random.20%
  case 1
    wecho ������ ������ ������� : '�� ���� ���� �� ������� ����'
    wait 1
    wecho ������ ������ ������� : '� ��'
    wait 2
    wecho ������ ������ ������� : '�������� �������� �� ������ )'
    wait 1
    wecho &K����� ������ ������� � �������� �����.&n
    wait 1
    wecho ����� ������ ������� : '� ������� �� �������� � �����?'
    wait 2 
    wecho ������ ������ ������� : '�� ����� �� 2 �����'
  break
  case 2
    wecho ������ ������ ������� : '������ ������� ��� �� ������� �)'
    wait 1
    wecho &K����� ������ ���������� �� �����.&n
  break
  case 3
    wecho ������ ������ ������� : '��� ������ �� ������� )'
    wait 3
    wecho ������ ������ ������� : '����, � ��� ��������� ��� ��� ������ �������� ���� ������!'
    wait 1
    wecho &K����� ������ ��������� ������.&n
    wait 1
    wecho ����� ������ ������� : '���� �� �������'
  break
  case 4
    wecho ������ ������ ������� : '����� �����'
    wait 2
    wecho &K����� ������ ������������� ���������� �� ������.&n
    wait 2
    wecho ������ ������ ������� : '��� ����� ���'
    wait 1 
    wecho ������ ������ ������� : '������'
    wait 2
    wecho ������ ������ ������� : '������'
    wait 2
    wecho ������ ������ ������� : '��� �����'
    wait 1
    wecho ������ ������ ������� : '� ���������'
    wait 1
    wecho ������ ������ ������� : '��������� ����� ���������'
    wait 2
    wecho ������ ������ ������� : '���� ������ �� ���� ��� ���������'
    wait 1
    wecho ������ ������ ������� : '� ����� ����� �� ����'
    wait 1
    wecho ������ ������ ������� : '�� ������ ����������� � ����� ���� ������� �����))'
    wait 2
    wecho ����� ������ ������� : '��� �� ���'
    wait 2
    wecho ������ ������ ������� : '�� ���� ������� ������� ����'
  break
  case 5
    wecho ������ ������ ������� : '� ��������� �� 3 ����)'
    wait 2
    wecho ������ ������ ������� : '������ ���������� ������ )'
    wait 2
    wecho ������ ������ ������� : '�� ��� ���� ������� ����������� ����� �������'
    wait 1
    wecho ������ ������ ������� : '���� � ������� �� ��������'
    wait 1
    wecho ������ ������ ������� : '� �������� 3'
    wait 2
    wecho ����� ������ ������� : '����������� �� ��� �������?..:('
  break
  case 6
    wecho ������ ������ ������� : '�����������������!'
    wait 2
    wecho &K����� ������ ����������.&n
    wecho ������ ������ ������� : '�����!'
    wait 1
    wecho ������ ������ ������� : '�������!'
    wait 1
    wecho ������ ������ ������� : '�������!'
    wait 1
    wecho ������ ������ ������� : '�����!'
    wait 1
    wecho &K����� ������ � ����� ��������� �� ������.&n
    wait 1
    wecho ����� ������ ������� : '���� �����? ����� ��� ��� ��������� ���������?
    wait 2
    wecho ������ ������ ������� : '���. ��������� ��� ���� �������'
  break
  case 7
    wecho ������ ������ ������� : '� ���� �� ����� ����� �� ��� �� ������ ����?'
    wait 1
    wecho ����� ������ ������� : '���������� ��� ��� ��� � �� �����������. � �� ��� ���?'
    wait 1
    wecho ������ ������ ������� : '���� ���, ���� ���'
    wait 1
    wecho ����� ������ ������� : '�� � ������ �� �����?'
    wait 1
    wecho &K������ ������ ������ �������� �� ����� � �����������.&n
    wait 2
    wecho ������ ������ ������� : '����� � ������� �������� ������ ����������� �����)'
  break
  case 8
    wecho ������ ������ ������� : '����� ����� ��� ��� ���� �����'
    wait 1
    wecho ������ ������ ������� : '�� �� ����� �����'
    wait 2
    wecho ������ ������ ������� : '��� ����� ���� ����� ������ �����?'
    wait 2
    wecho ������ ������ ������� : '�� ���� �� ������?'
    wait 3
    wecho ������ ������ ������� : '�� ����� ����� )'
    wait 1
    wecho ������ ������ ������� : '�� ������ ����'
    wait 1
    wecho ������ ������ ������� : '������� ����������������������� )'
    wait 3
    wecho ������ ������ ������� : '���� �� �� �����)'
    wait 1
    wecho ����� ������ ������� : '�� ��� �� ����������� �����?'
    wait 1
    wecho ������ ������ ������� : '�� ��� ��������� ��� ���� ���������� ����� ����������'
    wait 1
    wecho ����� ������ ������� : '�� � ��� ������� ?'
    wait 1
    wecho ������ ������ ������� : '�������, ������ �� ��������'
    wait 1
    wecho &K����� ������ ��������� ������.&n
    wait 1
    wecho ����� ������ ������� : '� �� ������  - ��� �������?'
    wait 1
    wecho &K����� ������ �����������.&n
  break
  case 9
    wecho &Y������ ������ �������� : '����� �������� ������'&n
    wait 1
    wecho &Y������ ������ �������� : '� ���� ������ ���� ������!'&n
    wait 1
    wecho &K����� ������ ������� ����� ���� �� �� ������ � ��������� � �����.&n
    wait 1
    wecho &K����� ������ ���� ����� ������.&n
    wait 1
    wecho ����� ������ ������� : '���� ������'
  break
  case 10
    wecho ������ ������ ������� : '� ������� ����� ��� �� ������ ��������� ����� ����������)'
    wait 1
    wecho ������ ������ ������� : '�� ��� ��� �� ���� :('
  break
  case 11
    wecho ������ ������ ������� : '������� ���� ����� �� �����)'
    wait 2
    wecho ����� ������ ������� : '� �� ����� ������)'
    wait 1
    wecho ������ ������ ������� : '������� �'
    wait 1
    wecho ����� ������ ������� : '��� ����� ��������� ���������)))'
  break
  case 12
    wecho ������ ������ ������� : '� � ��� ����� ��� � ��� �� ���� ��� ���� ��������� ���?)'
    wait 2
    wecho ������ ������ ������� : '���� ���� ������� �?'
    wait 2
    wecho ������ ������ ������� : '�� ���� ���������� ��� ������� ��� ����� ���?'
    wait 1
    wecho ������ ������ ������� : '��������??? '
    wait 1
    wecho ������ ������ ������� : '���������'
    wait 2
    wecho ������ ������ ������� : '���� ����� �� ���� ��� )))'
  break
  case 13
    wecho ������ ������ ������� : '��� �������� ��� �������� ������ � ��� ����������?'
    wait 1
    wecho ������ ������ ������� : '� �� ��� ���, ���, ����� �������?'
    wait 2
    wecho ����� ������ ������� : '�� ��� � ��� ������?'
  break
  case 14
    wecho ������ ������ ������� : '������ � �� ������� �� �� �� ������ � ��� ���� ���� ��������)))'
    wait 2
    wecho ����� ������ ������� : '�� ����� ��� �����)))'
    wait 1
    wecho ����� ������ ������� : '������� �� ����� ��� ����� ������'
  break
  case 15
    wecho ������ ������ ������� : '�� ���� �������� 1 �� 1 ?:))'
  break
  case 16
    wecho &K������ ������ ���������� �����������.&n
  break
  case 17
    wecho ����� ������ ������� : '���� ������� �� �����'
    wait 1
    wecho ����� ������ ������� : '��� ������ �����)'
    wait 2
    wecho ������ ������ ������� : ' ���� �� �����'
  break
  case 18
    wecho ����� ������ ������� : '����� ���� ������ ��������!'
  break
  case 19
    wecho ������ ������ ������� : '�� ����� ��������7??'
    wait 1
    wecho ������ ������ ������� : '� ��� ��������� ������ �����?:)'
  break
  case 20
    wecho ������ ������ ������� : '������ ���� � ���'����� ���������, ���� �� ����� ���������.'
    wait 1
    wecho ������ ������ ������� : '�� ������ ����'
    wait 1
    wecho ������ ������ ������� : '������� ����������������������� )'
  break
done
~
#21054
������ ����, ���-�� �����~
2 eg 30
~
wait 1
if (%actor.affect(��������������)% == 1) || (%actor.affect(����������)% == 1)
  switch %random.2%
    case 1
      wecho ������ ������ ������� : '�������, �� ���?)'
      wait 1
      wecho &K������ ������ ����� �����������, ���������� �� ��������.&n
    break
    case 2
      wecho ������ ������ ������� : '�� ���� �������� ) � ��������� )'
      wait 1
      wecho &K������ ������ ������ �����������.&n
    break
  done
  halt
end
if (%actor.clan% != ��)
  switch %random.9%
    case 1
      wechoaround %actor% ������ ������ ��������� %actor.vname%.
      %send% %actor% &W������ ������ ��������� ���.&n
      wait 1
      wecho ������ ������ ������� : '��� ���������  � ���� �...����))'
    break
    case 2
      wecho ������ ������ ������� : '����� �� �� ��� ������� ! ��� ������� ����������'
      wait 1
      wecho ����� ������ ������� : '������ ������� ���� ���������'
    break
    case 3
      wecho ������ ������ ������� : '�� ���� ����� �� �����)'
    break
    case 4
      wecho ������ ������ ������� : '������?'
    break
    case 5
      wecho ������ ������ ������� : '�������� �� ��???'
    break
    case 6
      wecho ������ ������ ������� : '������� � ��������)))'
    break
    case 7
      wecho &W������ ������ ������ ���������� ���.&n'
    break
    case 8
      wecho ������ ������ ������� : '������ ���� � ������ �� ������ ������ � ������ ����������'
      wait 1
      wecho ������ ������ ������� : '� ��� ������ ������� )'
      wait 2
      wecho ����� ������ ������� : '���� �� �� ����� ���� �����, �� �� ��� �� ������� ��'
      wait 1
      wecho &K����� ������ ����������...&n
      wait 1
      wecho ����� ������ ������� : '��� ���� �� ������� ��'
    break
    case 9
      wecho ������ ������ ������� : '�� ���������� ��������'
      wait 1
      wecho ������ ������ ������� : '� �����������'
      wait 1
      wecho ������ ������ ������� : '�� ����� �������� ))'
    break
  done
else
  switch %random.6%
    case 1
      wecho ������ ������ ������� : '�� 3 �������� ���� ������ ����'
      wait 1
      wechoaround %actor% ������ ������ � ������ ���������� �� %actor.vname%.
      %send% %actor% ������ ������ � ������ ���������� �� ���.
    break
    case 2
      wecho ������ ������ ������� : '��������� �� ����� ��� ����� �������� ���� �'
      wait 1
      wecho ������ ������ ������� : '����� �������� ���� ��� ���� � � �������� � 4 - 5 ��� ������ �������� 1 ���� ����'
      wait 1
      wecho ������ ������ ������� : '��� �� ����� ���, ��� ������� !:)'
    break
    case 3
      wecho ������ ������ ������� : '���������� ���� ������ � ���� �������'
    break
    case 4
      wecho ������ ������ ������� : '�������� �� ����� �����)'
    break
    case 5
      wecho ������ ������ ������� : '�� �� ������� �����, ��� � ��� � ����� ������?)'
      wait 3
      wecho ������ ������ ������� : '������ �������� �� ������� ))'
    break
    case 6
      wecho &K������ ������ ���������.&n
      wait 1
      wecho ������ ������ ������� : '������ �� �����!'
    done
  end
~
$~

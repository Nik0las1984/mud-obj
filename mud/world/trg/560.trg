#56000
�������~
2 c 1
�������~
wsend %actor% �� ��������� � ������.
wechoaround %actor% %actor.name% �������� ������� �� �������.
wait 1s
wecho �� �������� �����-�� ����� �� ��������..
wait 1s
wecho ��-�� ����� �������� �������� ���� :"����... ��� ��? ������������ ������?"
attach 56001 %self.id%
~
#56001
�����~
2 d 1
�� ������~
wait 2s
wecho ������������� ���� ������� � ������ ���������.
wdoor 56020 south purge
wdoor 56020 south room 56021
detach 56001 %self.id% 
detach 56000 %self.id%
~
#56002
��������� ������~
2 e 100
~
wait 1
if %direction% == north
  wdoor 56020 south purge  
  wdoor 56020 south room 56021 flags abcd
end
~
#56003
��������  �����~
2 c 1
����~
*������ �����
~
#56004
�������� ��������~
1 c 4
��������~
if (%arg.contains(��������)%)
  oechoaround %actor% %actor.name% �������%actor.g% �������� � ������ ������ ����.
  osend %actor% �� �������� �������� � ������ ������ ����.
  odoor 56090 down room 56091  
  wait 1s
  opurge %self%
end
osend %actor% ��� �� ������ �������� ����?
~
#56005
����������� ������~
0 r 100
~
wait 1
if !%world.curmobs(56010)%
  halt
end
if (%direction% == up)
  emote ��������� � ������� ������
  say ������������, ������... � �� � ����� ��� ����������.
  wait 2s
  emote ������ ��������
  say �� �� ��� ������������ ��������, ����� � ������. �������� ��� ��� ���,
  �����
  wait 1s
  say �� ���, ����� ��� ��� ����������.
end
attach 56006 %self.id%
detach 56005 %self.id%
~
#56006
������� ������~
0 j 100
~
if !(%actor.vnum% == -1)
  halt
end
if !%world.curmobs(56010)%
  halt
end
if (%object.vnum% == 56026)
  wait 1
  mecho ������ ����� ���������� � �������.
  wait 1s
  switch %actor.sex%
    case 1
      msend %actor% ������ ��������� ��������� �� ���.
      mechoaround %actor% ������ ��������� ��������� �� %actor.vname%
      say �������, ������, ���� ���� �� �������.
    break
    case 2
      msend %actor%  ������ ���������� ������� ��� � ���������� ��� �� �����.
      mechoaround %actor% ������ ���������� ������� %actor.vname% � ���������� �� �� �����.
      say �������, ��������, �������� �� ���.
    break
    default
      mecho ������� ���� %actor.name%
    break
  done
  wait 1s
  say �� �������� ������ ��� ������� �����, ��� ����� � ����� ����� ����� ��������,
  say ��� ��� ��� ����� ������� ��������� ����������. �� ������ ������ �� ��������, 
  say � �������� � ���������� ������..
  wait 1s
  say ����� �������� �� � ��� ����� �������� �������. � ������ ��� �� ������� �����
  say ����� �� ����. �������� ��� ���� �� ������. 
  wait 1s
  say � ������ ���� ����� ����������. � ���� � ��� ������ �����.
  ������ %actor.name%
  set hero %actor%
  calcuid kalinika 56015 mob
  attach 56010 %kalinika.id%
  remote hero %kalinika.id%
  detach 56006 %self.id%
else
  wait 1
  mecho ������ ��������� �������� � ����� %object.iname% � ������� � ������� ������... �� ���-������ �� ��������.
  mpurge %object%
end
~
#56007
���� ������~
0 f 100
~
if !(%world.curobjs(56026)%)
  mload obj 56026
end
~
#56008
�����~
2 c 0
����������~
if (%arg.contains(�����)%)
  wait 1
  wsend %actor% �� ���������� ���� �� ������ � ���������� �� ��� �����!
  wechoaround %actor% %actor.name% ���������%actor.g% ���� �� ������ � �� ������� �� ��� �����!
  wdoor 56058 east room 56062
  wait 2t  
  wdoor 56058 east purge
end
wait 1
wsend %actor% ��� �� ������ ����������?
~
#56009
����� �� �������~
0 r 100
~
if !%world.curmobs(56009)%
  wait 5s
  halt
end
wait 1     
switch %actor.sex%
  case 1
    msend %actor% �������� ����������� ���������� �� ���.
    mechoaround %actor% �������� ����������� ���������� �� %actor.vname% 
    emote ����� ����������, ������ ����� � ����� �����������.
    say ����������, ������ �������.. ������ �������� � ������� ����� ���� �������, �������.
    say �������� ��� �� ������ ��� �� ������ ���������, � � ��� ����� - ������
  break
  case 2
    msend %actor% �������� ����� ����������� ���.
    mechoaround %actor% �������� ����� ����������� %actor.dname% 
    say ����������, ��������. ������ �������� � ������� ����� ���� �������, �������.
    say �������� ��� �� ������ ��� �� ������ ���������, � � ��� ����� - ������
  break
  default
    say H��� ����� - ���� ������ :)
  break
done
calcuid ivasek 56009 mob
attach 56005 %ivasek.id%
detach 56009 %self.id%
~
#56010
�������~
0 r 100
~
if !%world.curmobs(56009)%  || %actor% != %hero%
  wait 1s
  halt
end
calcuid ivas 56009 mob 
wait 1s
if %ivas.realroom% != %self.realroom%
  halt
end
mforce %ivas% follow �
wait 1s
mecho �������� ��������� �� ��� �������.
say �������, ��� �� � ������!
wait 1s
say ������� ���� %actor.name%, ��� �������. ����� �� ��� � ����� ����.
wait 1s 
if !%world.curmobs(56010)%
  say �� ��� �� � ��������. ��� � ���� ��� ��������� �����.
  mforce ������ say ������� ����, %hero.name%. �� ������ ������ ����.
  mecho ������ ��� ����� �������� � ������ ������� � ����������� �����������.
  wait 1
  mpurge %self%
  mpurge %ivas%
  halt
end  
say ��� ����, �� ���� �� ����� �� �����, �� ������ ���� ��� ����� �����, 
say ���������� ����� ������ ����� ��������� �������.
mload obj 56027
���� ���� %hero.name%
wait 1s
mforce ������ say ��, ������. � ������ ��� ���-�� �����, �� ������ �����, ���� �����,
mforce ������ say ������� ����� � ������ ����������, ����� ������� ��������.
mforce ������ say ���� �� ������� ��, �� ������� ������ � ���� ������������.
wait 1s
say � ������� ����� � �� ��������.
calcuid polk 56010 mob
attach 56011 %polk.id%       
detach 56010 %self.id%
~
#56011
����� ����������~
0 f 100
~
if !%world.curmobs(56009)% || !%world.curmobs(56015)% 
  halt
end   
if %actor.vnum% == -1
  set hero3 %actor%
else
  set hero3 %actor.leader%
end
calcuid kalinika 56015 mob
attach 56013 %kalinika.id%
remote hero3 %kalinika.id%
~
#56012
������~
2 e 100
~
if (%direction% == south && %exist.mob(56010)%)
  wait 1
  calcuid polkov 56010 mob
  wecho %polkov.iname% �������� : '��� �������!!!'
  wforce %polkov% mkill %actor%
  wait 1s
  if (%exist.mob(56004)%)
    calcuid drakon 56004 mob
    wteleport %drakon% 56060
    wforce %drakon% mkill %actor%
  end
  wait 5s
  set tar %random.pc%
  if (%exist.mob(56013)%)
    calcuid tisyac 56013 mob
    wteleport %tisyac% 56060
    wforce %tisyac% mkill %tar%
  end
  wait 9s
  set tar %random.pc%
  if (%exist.mob(56012)%)
    calcuid sotnik 56012 mob
    wteleport %sotnik% 56060
    wforce %sotnik% mkill %tar%
  end
  wait 15s
  set tar %random.pc%
  if (%exist.mob(56011)%)
    calcuid desyat 56011 mob
    wteleport %desyat% 56060
    wforce %desyat% mkill %tar%
  end
  wait 5t
end
~
#56013
�������~
0 q 100
~
if (%actor% != %hero3% || !%world.curmobs(56009)%) && (%actor.level% <33)
  halt
end
calcuid ivas 56009 mob
wait 2s
say �� ��� �� � ��������. ��� � ���� ��� ��������� �����.
if (%actor.level% <= 24)
  say ������� ����,%hero3.name%. �� ������%hero3.g% ������ ����.
  wait 1
  *if (%actor.quested(560)% || %actor.level% >= 24)
  %actor.exp(+700000)%
  mecho ������ ��� ����� �������� � ������ ������� � ����������� �����������.
end
wait 1s
%actor.setquest(560)%
mecho ������ ��� ����� �������� � ������ ������� � ����������� �����������.
wait 1s
mpurge %ivas%
wait 1
mpurge %self%
~
#56014
����� ���� ������~
2 f 100
~
calcuid enter 56020 room
detach 56000 %enter.id%
detach 56001 %enter.id%
attach 56000 %enter.id%
~
$~

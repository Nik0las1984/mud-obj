#61600
������� ������~
1 c 4
�����������~
if (%arg% == ������)
  osend %actor% �� ������������� � ����������� ������...
  oechoaround %actor% %actor.iname% ����������%actor.u% � ����������� ������.
  eval number %random.7%
  switch %number%
    case 7
      wait 1
      oecho ���, ��� ������ ������, �� ������� ��������� �����!
      oload obj 61602
    break
    case 6
    break
    case 5
    break
    default
      oload mob 61600
      wait 1
      osend %actor% �������� ���� ��������� ��-��� ������ � ��������� �� ���!
      oechoaround %actor% �������� ���� ��������� ��-��� ������ � ��������� �� %actor.vname%!
      oforce ���� ����� %actor.iname%
    done 
    oecho ������ ������ ��������� � ����� � ����������� � ����. 
    opurge %self%
  end
~
#61601
������� ������~
2 c 0
���������~
if (%arg% == �����)
  wsend %actor% �� ��������� ����������� ����� �����.
  wsend %actor% �� ������������ ��� ����������.
  if (%self.vnum% == 61609)
    wteleport %actor% 61610
  else
    wteleport %actor% 61609
  end
  wechoaround %actor% %actor.iname% ��������%actor.g% ����� � ���� � ������.
  wecho %actor.iname% �����%actor.q% ����� ����� � ������� �� ����
else
  wsend %actor% ���� �� ������-��?
end
~
#61602
������� ������� ������~
1 g 100
~
return 0
if ((%world.curmobs(61602)% == 0) && (%actor.id% == %questor616.id%))
  oload mob 61602
  oecho ������������ ��� ������ ������� �������!
  oecho ������������ ��� �������: "�� ��������� �������� ��� �����?!! ��� ���� ��!!!"
  calcuid ghost 61602 mob
  oforce  %ghost% ����� %actor.iname%
else
  osend %actor% �� ��������� ���� � ������, �� ��� � �� �������� � ���� ������������.
end
~
#61603
������� ��������~
1 g 100
~
return 0
if (%actor.hitp% > 30)
  odamage %actor% 30
else
  odamage %actor% %actor.hitp%
end
osend %actor% �� ����� ������ ���� � ������  - ��� ������������� ������!!!
oechoaround %actor% %actor.iname% �����%actor.g% ���� � ������ � �����%actor.g% �� ����.
~
#61604
������� ��������� �����~
1 g 100
~
if (%actor.id% == %questor616.id%)
  oecho ���������� ����� ����� �������� ��������� ����������� � ��� �����
  oecho ����� ������ �� ����� ����.
  detach 61604 %self.id%
else
  return 0
  osend %actor% "����� �� ���?" - �������� �� � �������� ���� ������ �� ����. 
end
~
#61605
������� ������������~
2 e 100
~
calcuid horror 61648 room
attach 61614 %horror.id%
exec 61614 %horror.id%
detach 61605 %self.id%
~
#61606
������� ������������� ����~
0 f 100
~
return 0
calcuid posoh 61614 obj
detach 61602 %posoh.id%
mecho � ��������� ������ ������������ ��� ����������� �� ����.
~
#61607
������� �������~
1 c 4
����������~
if (%arg% == ������)
  oechoaround %actor% %actor.iname%, ���������� �� ������, ���������%actor.g% ������ �� �����. 
  osend %actor% �� � ������ ���������� ������� ������ � �������.
  oecho ��� �������� � ���� �������� ����� ����.
  odoor 61647 d room 61687
  detach 61607 %self.id%
end
~
#61608
������� ������� � ������������~
2 c 0
������������~
if (%arg% == �����)
  wsend %actor% �� ����������� � �������� ��� ���� ���, ���� �� ������ ������ � ���� ��������.
  wechoaround %actor% %actor.iname% ��������%actor.u% � �������%actor.g% ������ ��������.
  if (%self.vnum% == 61689)
    wteleport %actor% 61691
  else
    wteleport %actor% 61689
  end
  wechoaround %actor% %actor.iname%  �������%actor.g% �� ������� � ������ ����%actor.g% ����� � ����.
else
  wsend %actor% ���� �������?
end
~
#61609
������� �������~
0 q 100
~
say � �� ��� �����?!
say ���� ���� ����� ����?!!
~
#61610
������� ������� (�����������)~
0 r 100
~
if ((%world.gameobjs(61615)% == 0) || (%world.gameobjs(61614)% == 0))
  halt
end
wait 1
msend %actor% ������ ���������� ��������� �� ���.
msend %actor% - ���������, %actor.name%! - ������ ������.
if !%questor616%
  msend %actor% - ����� ���������? ������ ��������, ������ ��������� ��� ��������?
  msend %actor% - ��� �� ������ ������ ���? 
  attach 61611 %self.id%
  attach 61612 %self.id%
end
~
#61611
������ ������� ������� (������ �������)~
0 d 0
��������~
msend %actor% ������ ������:
msend %actor% "��� �, ������... ������-����� ������ � ��� ���� ������-�� � ������ �������
msend %actor% ����� �������� �� ��������. ������� �� ������ ���, ��������� ����������
msend %actor% ������ �� �����, ������ ����� � ������... �� �� ���� �� - �����, ��� ��������
msend %actor% �������� ������� �� �� ������� ����. ������� ��� ������ ����� ����� ������ 
msend %actor% ������ ���� ������. ����� ���� ������ ��������� ����� - ������ � ����� �����
msend %actor% ������ �� ������: "�� ����, �����, ������� ���. �� ����� �����" �� ����� �� ����������
msend %actor% ��� �������� - ������ ���� �� ������ ����� - � �� �������� ��� �����. ����� �� ����� 
msend %actor% ������� ����� - ����� ������ ����� � ��������� ����������... ��������� ��� ����� - 
msend %actor% �������� �� �������� ������, � ���������� � ������ - ������ ��� �� ������, ��������:
msend %actor% "�� �������� ���� � �������, ��� ����� ����� � ����� ������������!". �� ������ �������
msend %actor% ���������-��... ���� � ������ �� ����������� ���� ������� ��������� - � ��� � ��� �����
msend %actor% ���� �� ������� � ����� - ��� ������� �� ����. ��� � ��������� �� ������ ���������
msend %actor% �������� ��������� ������ ������ ������� ����, ��� ������ ������ ��� � ����� �� ������...
msend %actor% �� ����� ������� �������� ���� �������� ��� ���  - � �������� �����  �������� 
msend %actor% ������... ����� ����� ��� ����� ��� - � � ���������� ������� ����� ���� ���� � ���� �
msend %actor% ���������, ��� ������ ���������� ���, ���� �� �������. ����� �� � ���� � ������,
msend %actor% ��� ��������� � ��� �����������, ��� ������� �� ���� ����... � ��� ��� � ����� ��� 
msend %actor% �������� - ��� ������ ������ � ������..." - ������ ����� � ������� ��������� � ���-��. 
~
#61612
������� ������� (������ ������)~
0 d 0
������~
wait 1
if  %actor.vnum%  !=  -1
  halt
end
if (%actor.id% == %questor616.id%)
  say � � ��� ��� ���, ����� �� ��� ��������, ��� �������...
  halt
end
if %questor616% 
  if %questor616.sex% == 1
    say  ������ ��� ������ ��� ���� ������ ������� - %questor616.name%.
    say ���� �� � ������ - �� ����� ��� �� �� ����� �������� ��� ���� ������...
    halt
  else
    say  ������� ��� ������ ��� ���� ������ ������  - %questor616.name%.
    say ���� ��� � ������� - �� ����� ��� �� �� ����� �������� �� ���� ������...
    halt
  end
end
makeuid questor616 %actor.id%
global  questor616
msend %actor% ������ ������:
msend %actor% "������... ������...  ����� � ����, ������ � ��� ���� ������ ����� - �� ���,
msend %actor% ��� ����� ������ ������... ������� �� ��������� �� �������� � ��������
msend %actor% �� ���� ������� ����������� - ������ ����� � ��������. ���� ���� �����
msend %actor% ��� - ��������� �� ��������... ���� � ���� ��� �����, �� ��� ����� ��� �����
msend %actor% ��� ������� ������� ������ - ����� �� ����� ���������� ���� � ��������
msend %actor% ������ ����-������, ������� �� ������� � ����� � �������.
msend %actor% ����� �������� �� ������ ����� ������� �����,  ������������� � ����������� ��������,
msend %actor% � ������ �������� � ������������, ������ ��� � ������� ���������� ���-�� � ������� 
msend %actor% ������. ���� �� �� ��� ����� ������ ������ ��� ����.
msend %actor% ������� ��� ��, � � ����� ���������� ����!" 
wait 1
msend %actor% ������ ������ ��������� ������. �� ������������� ����� ����� ��������� �� ����� ����.
dg_cast '������ �� ���' %actor.name% 
calcuid stick 61614 obj
remote questor616 %stick.id%
calcuid key 61617 obj 
remote questor616 %key.id%
attach 61613 %self.id%
detach 61610 %self.id%
~
#61613
������� ������� (������ ������)~
0 j 100
~
if  (!(%object.vnum% == 61615) && !(%object.vnum% == 61614))
  say ����� ��� ���?
  return 0
  halt
end
wait 1
if  (%actor.id% == %questor616.id%)
  if  !(%quest616_objects%  == ok)
    eval quest616_objects ok
    global quest616_objects
    wait 1
    if  (%object.vnum% == 61614)
      say ����� ������, �� ��� ��� ����� �������� ������... 
    elseif  (%object.vnum% == 61615)
      say ����� ������, �� ��� ��� ����� ������ ����� ������� �����...
    end
    ���� %actor.name%
    mpurge %object%
    halt
  end
  wait 2
  say �! �� �������� ��� �������!
  say ��� �... ��� � ���� �������... 
  eval chanse %random.100%
  if     ( %chanse% < 3) && (%world.curobjs(61618)% < 7)
    mload obj 61618
    ���� �������� %actor.name%
  elseif  %chanse% < 10
    mload obj 583
    ���� ����� %actor.name%
  elseif %chanse% < 20
    mload obj 61613
    ���� ���� %actor.name%
  elseif (%chanse% < 35) && (%world.curobjs(61623)% < 20)
    mload obj 61623
    ���� �������� %actor.name%
  else
    msend %actor% ������ ������ ��� ��������� ������.
    mechoaround %actor% ������ ������ %actor.dname% ��������� ������.
    %actor.gold(+500)%
  end
  unset %quest616_objects%
  detach 61612 %self.id%
  detach 61611 %self.id%
  mpurge %object%
  detach 61613 %self.id%
  halt
end
wait 1
say �! �������! 
����
��� %actor.name%
%actor.gold(+5000)%
~
#61614
�������� ������ ������������~
2 z 100
~
calcuid corp 61605 obj
wpurge %corp% 
wload mob 61628
calcuid knez 61628 mob
wteleport %knez%  61647
detach 61614 %self.id%
~
#61615
������� �������� ��������~
0 h 100
~
mecho ������� ���������: "����... � ����� ������ ��� ��� �����!"
detach 61615 %self.id%
~
#61616
������� ���������� ������~
2 f 100
~
calcuid questor 61601 mob
calcuid treasor 61692 room
attach 61605 %treasor.id%
rdelete questor616 %treasor.id%
if %questor%
  attach  61610      %questor.id%
  detach  61611      %questor.id%
  detach  61612     %questor.id%
  detach  61613      %questor.id%
  rdelete questor616 %questor.id%
  unset questor616
end
calcuid stick1 61614 obj
calcuid claw1 61615 obj
calcuid key1 61617 obj
if %stick1%
  attach 61619 %stick1.id% 
  exec 61619 %stick1.id%
end
if %claw1%
  attach 61619 %claw1.id% 
  exec 61619 %claw1.id%
end
if %key1%
  attach 61619 %key1.id% 
  exec 61619 %key1.id%
end
calcuid room1 61666 room
calcuid room2 61692 room
calcuid room3 61648 room
attach 61621 %room1.id%
attach 61621 %room2.id%
attach 61621 %room3.id%
exec 61621 %room1.id%
exec 61621 %room2.id%
exec 61621 %room3.id%
wdoor 61647 down purge
~
#61617
������� ������� �����~
0 q 10
~
say ��� �� ��.. ������� � ��� �������?
say ���... ����� ������... ���� ���������!..
����
msend %actor% ������ � �������� ��������� �� ���.
say ������ ���, %actor.iname%, ������ ������ ����...
~
#61618
������ ������� ������� �����~
0 j 100
~
return 1
if  (%object.vnum% == 61619)
  wait 1
  say ��, �������, %actor.iname% !
  ���
  say ������ ���... �� �����������, ����� �������.
  if (%actor.level% < 15)
    msend %actor% ������ ��� ��� ������� �����.
    mechoaround %actor% ������ ��� %actor.dname% ������� �����.
    %actor.gold(+400)%
  else
    mload obj 103
    ���� ���� %actor.name%
  end
  detach 61617 %self.id%
  mpurge %object%
end
~
#61619
������� ��������� ���������~
1 z 0
~
opurge %self%
~
#61620
������� ��������� �����~
0 q 75
~
mechoaround %actor% ����� ��������� �� %actor.vname%. 
msend %actor% ����� ��������� ����� �� ���!
mecho ����� ������: "������ ����!!!"
kill .%actor.name%
~
#61621
�������� ��������� ���������~
2 z 0
~
if (%self.vnum% == 61666)
  wload obj 61614
elseif (%self.vnum% == 61648)
  wload obj 61617
elseif (%self.vnum% == 61692)
  wload obj 61615
end
detach 61621 %self.id%
~
$~

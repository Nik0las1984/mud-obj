#4000
������� �� �������� ~
0 j 100
~
wait 2
switch %object.name%
  case ���� ����
    say  �������������, �� ���� ���������, ������ �����.
    %self.gold(+1)%
    ���� 1 ��� %actor.name%
    mpurge %object%
  break
  case ���� �����
    say    �������������, ��������� ������� ������ �� ����, ������ �����.
    %self.gold(+20)%
    ����   20 ��� %actor.name%
    mpurge %object%
  break
  case ���� ����
    say    �������������, ��������� ������� ������ �� ����, ������ �����.
    %self.gold(+30)%
    ����   30 ��� %actor.name%
    mpurge %object%
  break
  case ���� �������
    say    �������������, ��������� ������������ �����, ������ �����.
    %self.gold(+80)%
    ����   80 ��� %actor.name%
    mpurge %object%
  break
  case ���� �����
    say    �������������, ��������� ������� �����, ������ �����.
    %self.gold(+10)%
    ����   10 ��� %actor.name%
    mpurge %object%
  break
  case ���� �������
    say    �������������, ��������� ������� ��������, ������ �����.
    %self.gold(+40)%
    ����   40 ��� %actor.name%
    mpurge %object%
  break
  case ���� �����
    say    �������������, ������� ���, ������ �����.
    %self.gold(+25)%
    ����   25 ��� %actor.name%
    mpurge %object%
  break
  case ���� �������
    say    �������������, ������� ���, ������ �����.
    %self.gold(+25)%
    ����   25 ��� %actor.name%
    mpurge %object%
  break
  case ���� �����
    say    �������������, ������� ���, ������ �����.
    %self.gold(+22)%
    ����   22 ��� %actor.name%
    mpurge %object%
  break
  default
    say  ����� ��� ���?
    eval getobject %object.name%
    if  %getobject.car% == ����
      mpurge %object%
    else
      ����� %getobject.car%.%getobject.cdr%
    end
  break
done

~
#4001
������� �� ������� �������� ~
0 q 100
~
wait 1
foreach victim %actor.group%
  if (%victim.level% < 10 && (%victim.gold% < 20) && (%victim.bank% < 20) && (%actor% != %victim%))
    msend %victim% ������� ������� ���:
    msend %victim% - �� �� ��������%victim.w%, ������%victim.w% ��������, %victim.name%.
    ���
    msend %victim% - � ���� ��� ��������� ������ ��� ����� ��������...
    msend %victim% - ������, �������...
    dg_cast '���������' %victim.name%
  end
done
*��������� ����� ����� ������� ������... ����� ���� �����, ���� ������ ��� :(
if (%actor.level% < 10 && (%actor.gold% < 20) && (%actor.bank% < 20))
  msend %actor% ������� ������� ���:
  msend %actor% - �� �� ��������%actor.w%, ������%actor.w% ��������, %actor.name%.
  ���
  msend %actor% - � ���� ��� ��������� ������ ��� ����� ��������...
  msend %actor% - ������, �������...
  dg_cast '���������' %actor.name%
end

~
#4002
������������~
0 r 100
~
wait 1
eval factor %self.people%
while %factor%
  eval pc %factor.next_in_room%
  if (%factor.vnum% == -1) && (%factor.level%>19) && (%factor.level%<31)
    if %factor.sex%==1
      tell %factor.name% ����� �� ���, ������ ���� ����� ����� �����������.
    else
      tell %factor.name% ������� �� ���, ������ ���� ����� ���� �����������.
    end
    tell %factor.name% �� ���� � ���� ����� �� ������, ��� � �����, ��� ��� ������� �����.
    tell %factor.name% � �� ��� ������ �������� ����� �����.
    mechoaround %factor% ������ ��������� %factor.vname% �� �����.
    msend %factor.name% ������ ��������� ��� �� �����.
    mteleport %factor.name% 4014
    mteleport %factor.name% 4014
    mteleport %factor.name% 4014
    mteleport %factor.name% 4014
    mteleport %factor.name% 4014
    mteleport %factor.name% 4014
    mteleport %factor.name% 4014
    if %factor.sex%==1
      mat 4014 mechoaround %factor% ������� ������������� %factor.name% ������ � ������.
    else
      mat 4014 mechoaround %factor% ������� ������������� %factor.name% ������ � ������.
    end
  end
  if %pc.id% && %pc.id%!=%factor.id%
    makeuid factor %pc.id%
  else
    unset factor
  end
done

~
#4003
���������������~
0 k 100
~
set name2 %actor%
if %actor.leader%
  set name1 %actor.leader%
  if (%name1.vnum% == -1) && (%actor.vnum% != -1))
    set name2 %actor.leader%
  end
end
if !%name2.rentable%
  msend %actor% %self.name% ��������H� ������%self.g% ���.
  mdamage %actor% 300
  ������
  halt
end
� %name2.name%, � ��� �������� ������ �� ����� ���������!
msend %actor.name% ����� �������� �������� ������ � ������� ���.
mechoaround %actor% �������� �������� ������, ������� %actor.rname% � ����-�� ������.
wait 1
msend %name2.name% �� �������� ��������.
wait 1
msend %name2.name% �� ������ � �������� � �������� ��� �� ����� � �����.
if %name2.hitp%>0
  msend %name2% ���-�� ������ ������ ���������, ������� ���� ����� ������������� �� �������� ������.
  msend %name2% ���-�� ������ ������: ������ �����, ���� �� �����������.
  msend %name2% ��, ���� ������ ����� ������: �������� ���� ������, ����� � ������.
  mteleport %name2% 4058
  *mat 4058 mechoaround %name2% ������� � ��� ��������� � %name2.name% ����%name2.a% ������ � ���.
  *mat 4058 mechoaround %name2% ���-�� ������ ���������, ������� ���� ������������� %actor.rname% �� �������� ������.
  *mat 4058 mechoaround %name2% ���-�� ������ ������:
  *mat 4058 mechoaround %name2% ������ ����� ���� �� �����������.
  *wait 1
  *if %name2.sex%==1
  *mat 4058 mechoaround %name2% ��, ���� ������ ����� ������: �������� ���� ������, ����� � ������.
  *else
  *mat 4058 mechoaround %name2% ��, ���� ������ ����� ������: �������� ���� ����, ����� � ������.
  *end
end

~
#4004
�����������~
2 d 0
"�������� ���� ������" "�������� ���� ����"~
wait 1
if %random.10%<2
  wecho ������� � ��� ���������, ������ ���������� ����������� ���������� ����������.
  wecho �����, ������ �������, ������!
  wecho � ��������� ��� �����, ������ ��� ������� ������� �����!
  if %actor.hitp%>0
    wteleport %actor.name% 4000
    wat 4000 wechoaround %actor% � ������� ������� �������� ������, ������ �����.
    wat 4000 wechoaround %actor% ������ ������� � ����� ��������� ������� ����-��.
    wat 4000 wechoaround %actor% ����� ������� ��������� �����.
    if (%actor.sex% == 1)
      wat 4000 wechoaround %actor% %actor.name% ������ �����, ������ � ��� ��� ���� ��������.
    else
      wat 4000 wechoaround %actor% %actor.name% ������� �����, ������ � ��� �� ���� ��������.
    end
  end
else
  wechoaround %actor% ����� �� ������������� �� ����� %actor.rname%.
  wsend %actor% ����� �� ������������� �� ���� �����.
  wsend %actor% �������� �� ����� �������� ��� ����������, ��������� � ��������.
end

~
#4005
�������� �������~
0 c 1
��� ���� ����� ������ ������!~
wait 1
say ���������

~
#4006
������� ������� � ����������~
0 q 80
~
wait 1
if %actor.clan% != null
  halt
end
if !%actor.agressor%
  halt
end
if %actor.agressor% > 4000
  if %actor.agressor% < 4099
    set agr 1
  end
end
if %actor.agressor% > 4300
  if %actor.agressor% < 4399
    set agr 1
  end
end
if %actor.agressor% > 4800
  if %actor.agressor% < 4899
    set agr 1
  end
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
#4007
�������� ������� � ��������~
0 t 100
~
wait 1
if %actor.clan% != null
  halt
end
foreach char %self.pc%
  if %char.agressor% > 4000
    if %char.agressor% < 4099
      set target %char%
    break
  end
end
if %char.agressor% > 4300
  if %char.agressor% < 4399
    set target %char%
  break
end
end
if %char.agressor% > 4800
  if %char.agressor% < 4899
    set target %char%
  break
end
end
done
if !%target%
  halt
end
if %target.sex% == 1
  ����� %target.name%, - ��� ��, ������, ������ ���! ���� ���!
else
  ����� %target.name%, ��������, ������ ��! ���� ��!
end
����� %target.name% - ��� ��%target.g% ���, ������, ������!
����
mforce %target.name% ������
mkill %target%

~
#4008
������~
0 b 18
~
stand
switch %random.38%
  case 1
    ���
  break
  case 2
    ���
  break
  case 3
    ����
    ����
    ����
  break
  case 4
    ����� �� ��-��-��-��-��-��, ��� ������ �� ����, � �� ������ ���� ����� ��� �������!
  break
  case 5
    ���
    ����
  break
  case 6
    �����
    ����� �-�������.. �? �������� �� ���?!
  break
  case 7
    �����
    ����
    �����
    ���
  break
  case 8
    **msend %self% ��������� ���� ������� ��� ����-��...
    n
    e
  break
  case 9
    *msend %actor% ��������� ���� ������� ��� ����-��...
    s
    e
  break
  case 10
    *msend %actor% ��������� ���� ������� ��� ����-��...
    u
    n
  break
  case 11
    *msend %actor% ��������� ���� ������� ��� ����-��...
    e
    s
  break
  case 12
    ����� ������� ���, ������, ������� ����!!!
  break
  case 13
    ����� �� ������ ������ ��������� �������� - ���� ����� �������� � ������� ������... ��!
  break
  case 14
    ���� '� ���� �� ������ ������ ���� ��������, � �� ��� ������ � ����� �������...'
  break
  case 15
    ����� ���� ��� ��� ���������, ��� ���������� �����. �� ����� � ���� ������ � ��������� ���� ����
  break
  case 16
    ����� ������� ��� � ��������, ��� � �����,- ������������������ ����������, �� ����� ������ �������, ��������, ����� ������ �������, ����������.
  break
  case 17
    ����� � ���� �������, �� ������, � ���������������� ������ � ����� � ������� ���������, � ��������� �� ������...
  break
  case 18
    say ����������, ��� �����, ����������, �������...
  break
  case 19
    say ����������, ��� �����, ����������, �������, ����������, ����-������� ���...
  break
  case 20
    ��� ���������  ��������! ���� ������ ����?!
  break
  case 21
    ����� ��, ����!! ��� ����� �� ���������?!
  break
  case 22
    ����  ����������, ��� �����, ����������, �������, ����������, ����-������� ���, ��� ���� ������ ����� ����� ����, ��� �� ������� �������?
  break
  case 23
    ���� '������� ��� ����� - ����� ��� ������ - ����...'
  break
  case 24
    ����� � �� ��� ���� ������!
  break
  case 25
    say � ���� ����� ���� �������� � �������� �������!
  break
  case 26
    emot ���������� : '� �p������ ��p����p, ������p���� ��p��� ��p, �� ����� ������� ���p, ��, ����p!'
  break
  case 27
    say ����� ���������� ����, ��� ��� ����� �� ������, ����������� - �� �����, � ������.
  break
  case 28
    ������
    ����
    �����
  break
  case 29
    eval drgold %self.gold%/10
    drop %drgold% ���
    � ������! ��� ������!!!
    emot ������ ������%actor.q% ������ �� �����
  break
  case 30
    ����� ��, ������ �����������, ���� �� ����� ������!
  break
  case 31
    �� ��� � ��� � ��� ����� - ��� �� ���� � ����!!!
  break
  case 32
    �� ���� ������, ����� ����, �� � ������� �����, ��������� � ���� ������ - �� �������� ���!
  break
  case 33
    �� ���� ����� ���� ���, ��� �����, ���� �� �����, � ���� ��� �������� ������� - �� �������� ����!
  break
  case 34
    �� ���� ����� ���� ����, ������ � ����� ������, � �� ������� ������ ������� - �� �������� ���!
  break
  case 35
    �� ���� ����� ���� ���, ��� ���������� ����... ������, �� ������ ������� - �� ���� ������!
  break
  case 36
    �� �� ����! ���� �� �������� - ��� ��� � �� ����! ������������!! ������ ����������� ���!
  break
  case 37
    ��� �� �� ��� - � ��� �������? ��� ����� ������� ���� ������!!!
  break
  case 38
    ��� ���� ���-���� � ������ �����������?
  break
done

~
#4009
������~
1 c 1
�����~
log &C�������� ���� �� ������ ������� - %actor.name% - %actor.realroom%&n
oecho ������� ������ ����� � ���������.

~
#4010
����������� ������~
1 c 2
���������~
if !%arg.contains(�����)%
  %send% %actor% ���� �������?
  halt
end
osend %actor% �� ������������ ����� ��� � ��� ������� ����� �������� �������...
oechoaround %actor% %actor.name% ������%actor.g% ����� ������ - ������� ������ ����� ������ � ���.
attach 4008 %actor.id%
wait 1
opurge %self%

~
#4011
���� �������~
2 z 100
~
wportal 50040 2

~
#4012
��������� ������~
1 g 100
~
wait 1
oforce %actor% ��������� �����
osend %actor% �� ��������� ������ �����.

~
#4013
����� ������ 4013~
2 c 100
������~
%arg%
~
#4014
�����~
0 f 100
~
log ������ �������� ������� �� ����������� �����, ������� %actor.name%

~
#4015
�����~
0 q 100
~
wait 1
%actor.loadroom(60036)%
mteleport %actor% 60036
log ����� - %actor.name%

~
#4016
������ �����~
0 bj 100
~
wait 1
set items %self.objs%
set item %items.car%
if %item%
  mecho ����� ������� %item.vname%.
  wait 1
  mpurge %item%
end

~
#4017
����� �����~
0 b 14
~
wait 1
switch %random.8%
  case 1
    emot ������� ������ ������� � ������������ � ���������� �������
  break
  case 2
    emot ������ � ��������, ������� �����-�� ������� ��������� � ������ ���� ����������� � ���
    � ����-���-���, ����-����-����, ����-���, ���
  break
  case 3
    emot ������� ��� ������ � ��������� ������� � ����� ������ ������������ �� �� ������ �������
  break
  case 4
    emot �� ������ ��������� ���� � ��������� ������� � ������ ���-�� ��� ���������
  break
  case 5
    ������
  break
  case 6
    mecho ������ ����� ��������� ������ ���-�� �����.
  break
  case 7
    set target %random.pc%
    emot ��������� �������� %target.vname%
    ���
  break
  case 8
    emot ������� ������-�� ��� ��������� ������ � ��������� �� ����������
  break
done

~
#4018
��������� ����~
0 b 15
~
����� ���������!!!

~
#4019
����� ���� ����~
0 c 1
����~
foreach item %self.objs%
  mecho %item.name%
  wait 1
done

~
#4020
��������� ������������ ������~
0 d 3
�������� ������~
wait 1
if (%actor.vnum% != -1)
  halt
end
if !%actor.rentable%
  ����
  say �� ���� �� ��� ������... �������-�� �����.
  halt
end
context 4000
msend %actor% ��������� ����������� ��������� �� ���.
mechoaround %actor% ��������� ����������� ��������� �� %actor.vname%.
wait 1s
switch %actor.class%
  case 3
    if %actor.quested(12200)%
      say ���� � ��� ����������� ������, ���� � ������ ��������.
      ���
      halt
    end
    if (%fighterstory% == 1)
      wait 1s
      say ����� �... ��������� �������.
      say ������� ����� ����� - ���� ������ ��������..
      halt
    end
    say ������... �� ��� ��, ������.
    say �� �� ����, �� �� �� ����, ���� �������, ���� ���Σ������...
    msend %actor% �� ����������� ���������� � ���� ����� ���� ����� �������� �� ��� �������.
    mechoaround %actor% �������� ����� ����� %actor.vname% � ����������.
    log %actor.iname% ��������%actor.u% � ������ �������� (12200)
    mteleport %actor% 12200
    set fighterstory 1
    worlds fighterstory
    halt
  break
  case 7
    if %actor.quested(12800)%
      say ���� � ��� ����������� ������, ���� � ������ ��������.
      ���
      halt
    end
    if (%defendermagestory% == 1)
      wait 1s
      say ����� �... ��������� �������.
      say ������� ����� ����� - ���� ������ ��������..
      halt
    end
    say ������... �� ��� ��, ������.
    say �� ������, �� ������, �� �� ������ ������...
    msend %actor% �� ����������� ���������� � ���� ����� ���� ����� �������� �� ��� �������.
    mechoaround %actor% �������� ����� ����� %actor.vname% � ����������.
    log %actor.iname% ��������%actor.u% � ������ ���������� (12800)
    mteleport %actor% 12800
    set defendermagestory 1
    worlds defendermagestory
    halt
  break
  case 8
    if %actor.quested(5900)%
      say ���� � ��� ����������� ������, ���� � ������ ��������.
      ���
      halt
    end
    if (%warlockstory% == 1)
      wait 1s
      say ����� �... ��������� �������.
      say ������� ����� ����� - ���� ������ ��������..
      halt
    end
    say ������... �� ��� ��, ������.
    say �� ������, �� ������, �� �� ������ ������...
    msend %actor% �� ����������� ���������� � ���� ����� ���� ����� �������� �� ��� �������.
    mechoaround %actor% �������� ����� ����� %actor.vname% � ����������.
    log %actor.iname% ��������%actor.u% � ������ ������������� (5900)
    mteleport %actor% 5900
    set warlockstory 1
    worlds warlockstory
    halt
  break
  case 10
    if %actor.quested(6500)%
      say ���� � ��� ����������� ������, ���� � ������ ��������.
      ���
      halt
    end
    if (%hunterstory% == 1)
      wait 1s
      say ����� �... ��������� �������.
      say ������� ����� ����� - ���� ������ ��������..
      halt
    end
    say ������... �� ��� ��, ������.
    say �� ������, �� ������, �� �� ������ ������...
    msend %actor% �� ����������� ���������� � ���� ����� ���� ����� �������� �� ��� �������.
    mechoaround %actor% �������� ����� ����� %actor.vname% � ����������.
    log %actor.iname% ��������%actor.u% � ������ �������� (6500)
    mteleport %actor% 6500
    set hunterstory 1
    worlds hunterstory
    halt
  break
  case 11
    if %actor.quested(14000)%
      say ���� � ��� ����������� ������, ���� � ������ ��������.
      ���
      halt
    end
    if (%smithstory% == 1)
      wait 1s
      say ����� �... ��������� �������.
      say ������� ����� ����� - ���� ������ ��������..
      halt
    end
    say ������... �� ��� ��, ������.
    say �� ������, �� ������, �� �� ������ ������...
    msend %actor% �� ����������� ���������� � ���� ����� ���� ����� �������� �� ��� �������.
    mechoaround %actor% �������� ����� ����� %actor.vname% � ����������.
    log %actor.iname% ��������%actor.u% � ������ ������� (14000)
    mteleport %actor% 14000
    set smithstory 1
    worlds smithstory
    halt
  break
  case 13
    if %actor.quested(12900)%
      say ���� � ��� ����������� ������, ���� � ������ ��������.
      ���
      halt
    end
    if (%druidstory% == 1)
      wait 1s
      say ����� �... ��������� �������.
      say ������� ����� ����� - ���� ������ ��������.
      halt
    end
    say ������... �� ��� ��, ������.
    say �� ������� �����������, � ���� ��������...
    msend %actor% �� ����������� ���������� � ���� ����� ���� ����� �������� �� ��� �������.
    mechoaround %actor% �������� ����� ����� %actor.vname% � ����������.
    log %actor.iname% ��������%actor.u% � ������ ������ (12900)
    mteleport %actor% 12900
    set druidstory 1
    worlds druidstory
    halt
  break
done
say ������, ��� ���� � ���� ��� ������...
���

~
#4021
���� ���� ������4028~
0 m 1
~
if %actor.vnum% != -1
  halt
end
eval needgold %actor.level%
if %amount% < %needgold%
  ���� %amount% ��� %actor.name%
  tell %actor.name% �������� �����!
else
  mecho ����� ��������� ����-�� � ������ � ������ ��������.
  mecho ��-�� ������ �������� ��������� � �������.
  msend %actor.name% � �������� �������, ������ �������� �� �������!
  msend %actor% ��������� ������ ������ ��� ������.
  mechoaround %actor% %actor.iname% ����%actor.q% �� ������.
  mecho ��������� �������: � �� ��������!
  wait 1
  mteleport %actor.name% 5052 horse
  wait 1
  msend %actor% �� ������ �� � ������ ��������, ��� ��������!
  msend %actor% ��������� ������ ��������� ������ � ������� �������.
  mechoaround %actor% %actor.iname% ����%actor.q% � ����������� ������.
  mechoaround %actor% ������ ������������ � �������� �����.
end

~
#4022
�����4028 ���������~
0 g 100
~
tell %actor.name% ������ ������� ���� �� ������ �����, ��� ���� �� �� �����������!
eval needgold %actor.level%
tell %actor.name% �����-�� ��� ���� %needgold% � �� ���!

~
#4023
����� � ���������~
0 q 30
~
if (!%actor.rentable%)
  halt
end
context 4000
wait 3
switch %actor.class%
  case 3
    if (!%actor.can_get_skill(������)% || %actor.skill(������)% || (%fighterstory% == 1) || (%actor.quested(12200)%))
      halt
    end
    set profname ��������
  break
  case 7
    if (!%actor.can_get_skill(�����)% || %actor.skill(�����)% || (%defendermagestory% == 1) || (%actor.quested(12800)%))
      halt
    end
    set profname ���������
  break
  case 8
    if (!%actor.can_get_spell(������� ����)% || %actor.spelltype(������� ����)% || (%warlockstory% == 1) || (%actor.quested(5900)%))
      halt
    end
    set profname ������������
  break
  case 10
    if (!%actor.can_get_skill(������� ������)% || %actor.skill(������� ������)% || (%hunterstory% == 1) || (%actor.quested(6500)%))
      halt
    end
    set profname �������
  break
  case 11
    if (!%actor.can_get_skill(��������)% || %actor.skill(��������)% || (%smithstory% == 1) || (%actor.quested(14000)%))
      halt
    end
    set profname ������
  break
  case 13
    if (!%actor.can_get_skill(��������)% || %actor.skill(��������)% || (%druidstory% == 1) || (%actor.quested(12900)%))
      halt
    end
    set profname �����
  break
  default
    halt
  break
done
%send% %actor% %self.iname%, ������� ���, ������ ���������.
%send% %actor% %self.iname% ������ : '%profname% - ������� ���������'
%send% %actor% %self.iname% ������ : '���� � ���� ���� �������� ������ ��� ������ �����'

~
$
$

#14000
����� � �������~
0 h 100
~
wait 2s
%echo% ������� %self.iname% �������� ���.
���� .%actor.iname%
wait 1s
���� ������ ������
wait 3
if (%actor.sex% == 2)
  � ��� �� ����� �������, ������ ������?
else
  � ��� �� ����� �������, ������ �������?
end
� ������� �� �������� ���� ��� �����?
������ .%actor.iname%
~
#14001
������� ���~
0 d 100
���~
detach 14000 %self.id%
wait 3
� �� �������� ����� ������� �� ����� �����,
� ������ ��� ���� ������� ������ ������
� ���� ��������� ������ � ����� ������ ��
� ���� ����� �����. ������ ��, ������ ����
� ������ �� ������ �������, �� ����������
� ������, �� ��������� �����.
wait 2s
�����
wait 1s
� � ���� ���� ������ ��� �� ��� ��������
� �������. �� ����� � � ���� ��������� ��
� �� ������ ������? ������� ����� ����,
� ������� ��������� ���������� ��������.
wait 1s
�����
wait 1s
� �� � ������ �� ������ ������ ���������
� ������, ������ ���� ���������. ��������
� ������ ���� ��� ������!
detach 14001 %self.id%
~
#14002
������� ������~
0 d 100
*~
if ((%speech% != ���) && (%speech% != ������) && (%speech% != �� ����))
  halt
end
detach 14000 %self.id%
detach 14001 %self.id%
wait 3
���� ������ ����������
� ������ ������?
� ���� ���������� ������, �����?
� � ��� �������, �� ����� ���� ������,
if (%actor.sex% == 2)
  � � �� ������� �����������.
else
  � � �� ������� ����.
end
wait 1s
���� ������� ��� ����� ������� ���-�� ���
%echo% ����� �� ������� ���� ������� �������.
wait 3
%echo% ���� ������ ��������� ������ ���.
%echo% �� ���� ���������� �����:
%echo% _- ������, ������� � ����������� �������.
%echo% _- ��� ����� �������� �������� ������� �� ������� ����?
%echo% ������������ ����� ���������� �� ���������.
wait 1s
%force% %actor% � � ���%actor.g% �� ����
%force% %actor% � � ���� ��� ������� � ����� �� ���!
wait 1s
%load% mob 14001
%echo% �� ��������� ���� ���������� ����������� ������� ������.
calcuid head 14001 mob
%force% %head% � �� ���������� �� �� ���� �� �� ����, �����?
detach 14002 %self.id%
~
#14003
������ ������~
0 cf 100
�������~
if (%self.position% == 0)
  %echo% ��������� � ������� ����� ������, ��� ��������� ������� �� ����.
  calcuid snake 14002 mob
  exec 14004 %snake.id%
  halt
end
if (!%arg.contains(�����)%)
  %send% %actor% ��� ������� ��?
  halt
end
%echo% ���������� �������������, �� ������� %self.vname%.
%echo% %self.iname% ��������%self.g% � ��������%self.u% � ����.
%echo% ��������� � ������� ����� ������, ��� ��������� ������� �� ����.
calcuid snake 14002 mob
exec 14004 %snake.id%
%purge% %self%
~
#14004
���� ������~
0 z 100
~
eval heads %heads%+1
global heads
wait 3
switch %random.5%
  case 1
    ���� ������ ���� ������! ������ ��!
  break
  case 2
    ���� �� �� ������! �������� � ������!
  break
  case 3
    ���� �� ��� �� �� ���, ������ ���� � ���� �����!
  break
  case 4
    ���� ��� ��������� ���� - �������� ��������!
  break
  case 5
    ���� �������� � ������, ����, � ��� ��������!
  break
done
if (%heads% == 1)
  %door% 14002 east room 14004
  if (%exist.mob(14000)%)
    calcuid girl 14000 mob
    exec 14007 %girl.id%
  end
end
if (%heads% == 6)
  wait 1s
  ���� �� ���! ������� ��� � ����� ������, ����� �������!
end
~
#14005
������� �� ����~
0 k 100
~
eval perc ((%actor.hitp%*100)/%actor.maxhitp%)
if (%perc% <= 70)
  %echo% ���������� ������� ������ �� ������, �� ��� �� ������ ������� ����.
  %echo% ������-�� ������ �����������:
  %echo% _- ���� ����� ������ ���%actor.g%, � �������� ������� ������� �� �������!
  wait 3
  %echo% ������������ ����������� �������� �� ���� ����, �� ������ � ������.
  %teleport% %actor% 14012 horse
  calcuid sky 14012 room
  exec 14006 %sky.id%
  detach 14005 %self.id%
end
~
#14006
�������� �����~
2 gz 100
~
wait 3
%door% %self.vnum% down purge
switch %self.vnum%
  case 14012
    %echo% &B������ �������� ���� ����������� �� ����� ������.&n
  break
  case 14013
    %echo% &B������ �������� ���� ����������� �� ����� ������.&n
  break
  case 14014
    %echo% &B������ �������� ���� ����������� �� ����� ������.&n
  break
done
detach 14006 %self.id%
~
#14007
������� ������ �����~
0 z 100
~
wait 1s
%echo% %self.iname% ������� �� ��� ������ ������ � ������� �����.
� � ���� �������� �� ����!
%echo% � ����� ������� ��� ������� �����, ���������� ���-�� ���� ��� ���.
eval victim %random.pc%
if (%victim.name%)
  dg_cast '�����' .%victim.name%
end
~
#14008
������ ����������~
2 g 100
~
eval mvnum 14005+%actor.religion%
wait 1s
%echo% ����� ���������� �������� �����:
%echo% _- �� ��������%actor.g%, ��� � �������?
wait 1s
%load% mob %mvnum%
calcuid god %mvnum% mob
%echo% &Y%god.iname% ����� ����� �� ������� �����!&n
wait 5
%force% %god% � �� ����������, %actor.iname%!
dg_cast '���������' .%actor.name%
wait 1s
calcuid parni 14004 mob
%force% %parni% ������� .%actor.name% ������ �� ������� ��
detach 14008 %self.id%
~
#14009
������ ����������~
0 c 100
������~
%echo% �� ����������� %self.dname% � ����.
%force% %actor% � ����������, %self.iname%!
wait 1s
� ����� � ��� �� �����%actor.u% ������� ���������� ������
� ��� ���� ���������� ����%actor.g% ������ ���� ������
� ����� ������ ����, ���������� ������, ��� �������
wait 1s
���� �� ��, ����, ������ �� ���������!
���� �� ������ �� � ����� ��������, �� �� ������ ���� �� �����
���� ����� ������ ������� ����, ������� ������ ���� ��� ����
���� �� ���� ����� ������� ����� �� ���� � ������!
wait 1s
calcuid snake 14002 mob
%force% %snake% ���� �������� �� � ������, %actor.iname%!
wait 1s
���
� �� ���, ������ � ��� ���� ������� �������
� ����� ���� �������, ����� �����������
� ����� ��������� �������� �� ���������
� ������� ������ ���� �����, �� ���� ������� �� ����
� ����� ��������� ��������� ������ ����
wait 5
� ����� ��� �����%actor.g% ������ � ���� �����������
attach 14010 %self.id%
detach 14009 %self.id%
~
#14010
������ �����~
0 d 100
*~
if (!((%actor.sex% == 1) && (%speech% == �����)) && !((%actor.sex% == 2) && (%speech% == ������)))
  halt
end
wait 5
switch (%quested%+1)
  case 1
    � ����� ��������� �������� ���� ��-����������
    � ��� ���� ����� ������� ���������, �� ��� � �����������
    wait 3
    %echo% %self.iname% �������� ����� � � ������ � ��� ���������.
    eval temp %actor.wait(1)%
    %teleport% %actor% 14016 horse
    set quested 1
    global quested
    detach 14010 %self.id%
  break
  case 2
    � �������� ���� ����� ��������� ���������
    � ��� ���� ������� ��� ���� �����, ���������� ������
    wait 3
    %echo% %self.iname% �������� ����� � � ������ � ��� ���������.
    eval temp %actor.wait(1)%
    %teleport% %actor% 14020 horse
    set quested 2
    global quested
    detach 14010 %self.id%
  break
  case 3
    � ����� ���� �� ����� ��������� �������
    � ������ ������, �� ��������� ���, � �� �� � ����� �������
    %echo% %self.iname% ����� ���, ��������, ��������� ���-�� ����������...
    wait 3
    %echo% �����������, �� ��� �� �������� ����� � � ������ � ��� ���������.
    eval temp %actor.wait(1)%
    %teleport% %actor% 14030 horse
    set quested 3
    global quested
    detach 14010 %self.id%
  break
done
~
#14011
���������� ������~
1 c 4
����������~
if (%actor.fighting%)
  %echo% �� �� ���� ����������!
  halt
end
if (!%arg.contains(�����)%)
  %echo% ��� �� ������ %cmd%?
  halt
end
if (%holding%)
  %echo% �� �� ���� ��� �� �������!
  halt
end
if (%actor.move% < 5)
  %echo% �� ������� ������, ����� ������� ���������.
  halt
end
%echo% ��������������, �� ���������� ������.
%echo% �� � ������� ��! �� � ������ ����������� �� �� ����.
eval temp %actor.move(-5)%
eval temp %actor.wait(1)%
set holding 1
global holding
if (%exist.obj(14006)%)
  calcuid wheel 14006 obj
  remote holding %wheel.id%
end
wait 3
%echo% �� ���� ����������� ������:
%echo% _- � �� �������, ��� �� ����� ����� ���� ��������� ������!
if (%exist.mob(14007)%)
  calcuid seller 14007 mob
  %echo% %seller.iname% ��������� � �������� �� �������� ������������ ��������.
end
%echo% _- �� �� �������� �� ����, ��� ��� ������!
%echo% _- �� �������� �� ��� � ����! �����-�������...
%echo% _- ��� ������ � ��������� - ����� ��� �������!
%echo% ������ ������, �� ������ ����� ���� �����������.
%load% mob 14008
calcuid razb1 14008 mob
%force% %razb1% mkill %actor%
wait 3
%load% mob 14008
calcuid razb2 14008 mob
%force% %razb2% mkill %actor%
~
#14012
��������� ������~
1 c 2
���������~
if (%actor.fighting%)
  %echo% �� �� ���� ����������!
  halt
end
if (!%arg.contains(������)%)
  %echo% ��� �� ������ %cmd%?
  halt
end
if (!%holding%)
  %echo% ��� �� ������ ������� ����������.
  halt
end
if (%actor.move% < 5)
  %echo% �� ������� ������, ����� ������� ���������.
  halt
end
%echo% ���-��� ����������� ������ ����� ������, �� ������ ����������� ������ �� �����.
eval temp %actor.wait(1)%
wait 1s
%echo% ���������� �������� ������, �� ����� ��������� ��� - �������, ����� �����.
eval temp %actor.move(-5)%
%load% obj 14007
wait 1
if (%exist.obj(14005)%)
  calcuid vagon 14005 obj
  %purge% %vagon%
end
if (%exist.mob(14007)%)
  calcuid seller 14007 mob
  set quester %actor%
  remote quester %seller.id%
  exec 14013 %seller.id%
end
%purge% %self%
~
#14013
������� ����������~
0 z 100
~
if ((%world.curmobs(14008)% > 0) || (%exist.obj(14005)%) || (!%quester.name%))
  halt
end
wait 1s
%echo% %self.iname% ������� �� ���� � ����� �������� ��� ���������������.
%echo% ��� ������ ��� �� ����� �� ��������� � ��� ���� "����-����-����-���".
%echo% ��������� ��� ������� � ��� ���-��, %self.iname% ������ ��-�� ������ �������.
%load% obj 14008
give all .%quester.name%
wait 3
%echo% � ������ � ��� ���������, �������� �������� ������.
%teleport% %quester% 14014 horse
~
#14014
��������� ����~
0 f 100
~
if (%exist.mob(14007)%)
  calcuid seller 14007 mob
  set quester %actor%
  remote quester %seller.id%
  exec 14013 %seller.id%
end
~
#14015
���� �������~
0 f 100
~
%load% obj 14008
~
#14016
������� ����������~
1 gz 100
~
wait 3
%echo% � ������ � ��� ���������, �������� �������� ������.
%teleport% %actor% 14014 horse
detach 14016 %self.id%
~
#14017
���� ����������~
0 j 100
~
switch %object.vnum%
  case 14008
    *������� � ��������
    wait 3
    ���
    %echo% %self.iname% ������� %object.vname% ������ �� ������������.
    %echo% ��� ����� ������� ���� ������� � ����� � ������� �����.
    %purge% %object%
    wait 3
    %echo% %self.iname% ������ ��������� �����!
    %echo% � ������ �������� ����� � �����, %self.iname% ������� �� � �����.
    %echo% ��������� ������� �������, ��� ������� ��� �����.
    %echo% %self.iname% �������� �����, �������� ���, �������� �� �����.
    wait 3
    � �� ���, ����� ����������
    � ����� ��� ������ �����%actor.g% ������ �����������
    � ��� ������ ����� ������ �������!
    attach 14010 %self.id%
  break
  case 14011
    *��� �������
    if (!%silver%)
      set silver 1
      global silver
      wait 3
      � ������, �� �� ���� ����� �������.
    elseif (%silver% == 1)
      set silver 2
      global silver
      wait 3
      � �����, ����� ������
      %echo% %self.iname% ������� ������� ������������ � ������ � ����� ��������.
      wait 3
      � ���� ��� �� ����, ����� ���� � ������ �����������
      � ����� ��� ������ �����%actor.g%
      � �������� ����� ��������� ���������
      %door% 14013 down room 14012
      attach 14010 %self.id%
    else
      ���
      � ��� ��� ������. ������ ����, ���� ��������%actor.g%
      � ����������� ������ � ���� � ������ � ����� ����� �������
      return 0
      halt
    end
    %purge% %object%
  break
  case 14015
    *�����
    � ��� � ��, ��������� ����������� �������
    � ��� �� ������� �...
    wait 3
    %door% 14014 down room 14013
    %echo% ����� ����� ����� ������������, ������ ��������� �����.
    %echo% �������� � ����� ���� �������, ���������� �� ����� ������ ��������.
    %echo% ������� ����� %self.iname% ����� ���������...
    %echo% �� �������� ��� � ���� ���� ����������.
    %echo% ���� ���� ������� � ���������� ��������.
    %echo% ������ � ��������� ����� ���� �� �����.
    %load% obj 14017
    calcuid tongue 14017 obj
    calcuid kuznya 14015 room
    eval temp %tongue.put(%kuznya%)%
    calcuid snake 14002 mob
    %teleport% %snake% 14014
    wait 1s
    � ������� ������� ����� �� ������ ��������, ���� � ����� ���!
    give ����� .%actor.name%
    � ��� ��������� ����, �������� ��� � ����
    � �� ���� � ��� � ����, ��� ����� ��������� ���
    � �� ���� ����������, ��� ����� ���������
    � ������ ������ ����� �� ������� ����� ��������
    %load% obj 14016
    give ���� .%actor.name%
    drop all
    wait 3
    � ����� ����!
    dg_cast '���������' .%actor.name%
  break
  default
    %echo% ��� ��� �� �����!
    return 0
  break
done
~
#14018
����� � ���������~
0 h 100
~
wait 5
��� .%actor.name%
� ��� ��?.. �������� � ����� ������, ��� ���� ����������� ��������!
if (%exist.mob(14010)%)
  � �������, �� ���� ��������� �������� ��� � ���� �������?
  wait 1s
  calcuid milomir 14010 mob
  %force% %milomir% � �� �� �� ��� �������� ���� ���� ����� ������ ���� ���������
  %force% %milomir% � ������� ������� �� �������� �����, ����� ��������� �� � �����
  %force% %milomir% ����
end
wait 1s
���
%echo% %self.iname% �������� �� ������������ ��������, ���������� � ����.
� ������, ��� �� ������
� �� ��� �� ����������� ���� ���� ��������! ����������!
wait 1s
if (%exist.mob(14010)%)
  calcuid milomir 14010 mob
  %force% %milomir% � �� ������ ��! �� ������ �����, ������ � ��� ���������%actor.g%
  if (%actor.sex% == 2)
    %force% %milomir% � ����� ������, �� �������� �� �� ���� �����������?
  else
    %force% %milomir% � ������� �������, �� �������� �� �� ���� �����������?
  end
  %force% %milomir% ������ .%actor.name%
  attach 14019 %self.id%
end
~
#14019
������� ������ ��������~
0 d 100
������~
wait 5
%echo% %self.iname% �������� ����� ����.
� ��� �� ������������! �������, ������������!
� �������� ��� ������� ������� �� � ����� ������������
� �� �� ���� ������������, ���� ��������
%load% obj 14009
give all .%actor.name%
drop all
attach 14020 %self.id%
detach 14018 %self.id%
detach 14019 %self.id%
~
#14020
���� ��������~
0 j 100
~
switch %object.vnum%
  case 14009
    %echo% %self.iname% ������ ��������� ���.
    � �������%actor.g% ��������? ��� � ����!
    return 0
  break
  case 14010
    wait 3
    ��� .%actor.name%
    � ������� ����, %actor.iname%!
    � ������ � ������� ������� ������ ���������
    set i 0
    while (%i% < 3)
      %load% obj 14011
      calcuid silv 14011 obj
      eval temp %silv.put(%actor%)%
      eval i %i%+1
    done
    %echo% %self.iname% �������� ��� ��� ���� �������.
    wait 3
    %echo% � ������ � ��� ���������, �������� �������� ������.
    %teleport% %actor% 14014 horse
  break
  default
    %echo% ��� ��� �� �����!
    return 0
  break
done
~
#14021
����������� ����������~
1 c 2
��������~
if (!%arg.contains(����������)%)
  %echo% ��� �� ������ %cmd%?
  halt
end
if (!%actor.haveobj(14012)%)
  %echo% �� ����� ��, ��������, ��������������, � � �������� ���?
  %echo% ��� �� ���-������ ������� �� ��������, �������� ��������.
  halt
end
calcuid glue 14012 obj
%purge% %glue%
%echo% �� ����������� ��������� ��� ��� �����-���� ������ ��� ������� � �������.
%echo% ...��� ��� ����������, ����� ��������� �� �������...
%echo% ...�����! �� � ��� �������, ��� ������� ����-������� ����������?
%echo% ...���������, ����� ������ �� �������...
%echo% �������, � ��� � ����� �������� ��������� ����� ������������.
%load% obj 14010
calcuid tools 14010 obj
eval temp %tools.put(%actor%)%
wait 1
%purge% %self%
~
#14022
������ ������~
0 f 100
~
if (%world.curmobs(14009)% == 1)
  %load% obj 14012
end
~
#14023
������� � �����~
2 c 100
�������~
if (!%arg.contains(� �����)%)
  %echo% ���� ��� �� ������ %cmd%?
  halt
end
%echo% ������, � ������� � ��� ������ �����.
%echo% ������������, �� ���������� � �������� �����!
%teleport% %actor% 14052 horse
if (%exist.mob(14012)%)
  calcuid hammer 14012 mob
  if (%hammer.realroom% == 14052)
    remote actor %hammer.id%
    exec 14030 %hammer.id%
  end
end
~
#14024
��������� �� �����~
2 c 100
�������~
%echo% �� ������ �������� �������, �������� ������� �� �����������.
%echo% �� ���������� �� ������ ������ ������.
%teleport% %actor% 14050 horse
~
#14025
������� � �����~
2 b 100
~
switch %random.3%
  case 1
    %echo% ��� ����� �������, ����� �� ������ ����������.
  break
  case 2
    %echo% ������� � ��� �������� ����. ������ ����������!
  break
  case 3
    %echo% �� ��� �� ���������� �������� ������� �� �����.
  break
done
foreach victim %self.pc%
  eval dam %victim.maxhitp%/10
  if (%dam% < %victim.hitp%)
    eval temp %victim.hitp(-%dam%)%
  end
done
~
#14026
����� �������� ����~
0 n 100
~
switch (%random.3%)
  case 1
    attach 14031 %self.id%
  break
  case 2
    attach 14032 %self.id%
  break
  default
    attach 14033 %self.id%
  break
done
detach 14026 %self.id%
~
#14027
������ ������� � ������~
2 z 100
~
eval roomone 14030+%random.7%
eval roomtwo 14037+%random.7%
eval roomtri 14044+%random.7%
calcuid rmone %roomone% room
calcuid rmtwo %roomtwo% room
calcuid rmtri %roomtri% room
foreach snowone %rmone.objects%
  if (%snowone.vnum% == 14014)
    wait 3
    wat %roomone% wpurge %snowone%
    wat %roomone% wload obj 14013
    if (%roomone% == %actroom%)
      wat %roomone% wecho ���-�� ���������� � ������.
    else
      wat %actroom% wecho ������-�� ���������� ������.
    end
  end
done
foreach snowtwo %rmtwo.objects%
  if (%snowtwo.vnum% == 14014)
    wait 3
    wat %roomtwo% wpurge %snowtwo%
    wat %roomtwo% wload obj 14013
    if (%roomtwo% == %actroom%)
      wat %roomtwo% wecho ���-�� ���������� � ������.
    else
      wat %actroom% wecho ������-�� ���������� ������.
    end
  end
done
foreach snowtri %rmtri.objects%
  if (%snowtri.vnum% == 14014)
    wait 3
    wat %roomtri% wpurge %snowtri%
    wat %roomtri% wload obj 14013
    if (%roomtri% == %actroom%)
      wat %roomtri% wecho ���-�� ���������� � ������.
    else
      wat %actroom% wecho ������-�� ���������� ������.
    end
  end
done
wait 3
wat %actroom% wecho ������, �� ��������� ���-�� � �����.
wat %actroom% wecho ���� �� ������������� � ���� ��������.
wat %actroom% wecho ����� ����� ��������� ������ ��� �� ���������.
~
#14028
������� ������~
1 c 4
������������~
if (!%arg.contains(������)%)
  %echo% ��� �� ������ %cmd%?
  halt
end
%echo% �� ������ ����������� �������� ������...
wait 1s
if (%world.curobjs(14013)% > 1)
  %echo% ��������� ��� ����������, �� ��� ������ � �� �����!
  wait 1
  %purge% %self%
else
  %echo% ����� �� ���������� �� ���-�� ������� � ��������...
  %echo% �� ������� ���������� �����:
  %echo% _- �� ����� ����! ������ ����� � ������ ���� ���������!
  %load% obj 14015
  calcuid hammer 14015 obj
  %echo% �� ������� %hammer.vname% �� �������.
  eval temp %hammer.put(%actor%)%
  remote actor %hammer.id%
  exec 14016 %hammer.id%
end
~
#14029
����������� �������~
0 d 100
*~
switch %zagad%
  case 1
    if (%speech.contains(��������)%)
      set ugadal 1
    end
  break
  case 2
    if (%speech.contains(����)%)
      set ugadal 1
    end
  break
  case 3
    if (%speech.contains(�������)%)
      set ugadal 1
    end
  break
done
wait 5
if (%ugadal%)
  ���
  � ������%actor.g%, ������%actor.g%!
  � ������ ����� � ������ ���� ���������!
  %load% obj 14015
  calcuid hammer 14015 obj
  %echo% %hammer.iname% ������� ����� � ��� � ����.
  eval temp %hammer.put(%actor%)%
  remote actor %hammer.id%
  exec 14016 %hammer.id%
  wait 1
  %purge% %self%
else
  ���
end
~
#14030
������� �����~
0 z 100
~
wait 3
�����
� ��� ����� ���� ����� �� �������!
� ��, ������ ����� � ������ ���� ���������!
%load% obj 14015
calcuid hammer 14015 obj
%echo% %hammer.iname% ������� ����� � ��� � ����.
eval temp %hammer.put(%actor%)%
remote actor %hammer.id%
exec 14016 %hammer.id%
wait 1
%purge% %self%
~
#14031
������ � ������~
0 q 100
~
wait 1s
� �����������!
� ����� �������� � ������?
wait 1s
%force% %actor% � ������� ������, ����� ������ �� ����� �����
%force% %actor% � �� ��� ����� ����� ������� ��������� ������
wait 1s
���
� ��� � ���� ��� �����, ��� ����
� ������ ������� �������� �� ����
%echo% %self.iname% ������� ��� � ��� � �������.
%echo% � ��� �� ���� ���������� ������.
� � ��� �� ������������!
eval temp %actor.wait(3)%
%echo% ����� ���� ���� �� �������� %self.vname% �� ����.
%force% %actor% � �� ��� ��...
calcuid log 14030 room
attach 14027 %log.id%
eval actroom %actor.realroom%
remote actroom %log.id%
exec 14027 %log.id%
%purge% %self%
~
#14032
���������� �������~
0 q 100
~
wait 1s
� ������!
� ������� �������!?
wait 1s
%force% %actor% � ������� ������, ����� ������ �� ����� �����
%force% %actor% � �� ��� ����� ����� ������� ��������� ������
wait 1s
� ����� ������� �������, � � ����� � �����
���
wait 3
eval zagad %random.3%
global zagad
switch %zagad%
  case 1
    *��������
    � �� ���������� �� �������
    � ������ ��������,
    � �� �� ���� ���������.
    � ��� �� ����� ������� -
    � �� ������ �������.
  break
  case 2
    *����
    � ����ģ� �� ������ ��� �����
    � � ����� ����� ������,
    � � ������ � ��� ��� ������
    � ��������� ���� ����.
  break
  case 3
    *�������
    � ����� ���� ����� �������,
    � ���� ������� ���ģ� -
    � ���� ��������.
  break
done
wait 3
� ��� ���?
attach 14029 %self.id%
detach 14032 %self.id%
~
#14033
������ � ���������~
0 q 100
~
wait 1s
� ��! �������%actor.u%?
� � ����� � ��������� ������?
wait 1s
%force% %actor% � ������� ������, ����� ������ �� ����� �����
%force% %actor% � �� ��� ����� ����� ������� ��������� ������
wait 1s
� � �� ������ ���� - � ���� ����� � ������
eval temp %actor.hitp(-5)%
%echo% %self.iname% �������� ������� ��� �� ����� � ����� ����-�� �����
wait 1
%teleport% %self% 14052
wait 1s
if (%actor.realroom% != 14050)
  %send% %actor% ���-�� ������ ���������.
else
  %send% %actor% ���-�� ������ ���������� � �����.
end
attach 14030 %self.id%
detach 14033 %self.id%
~
#14034
��������� ����~
1 c 2
�������~
if (!%arg.contains(���))
  %echo% ���� �� ������ %cmd%?
  halt
end
if (!%exist.mob(14013)%)
  %echo% � ���� �� ���, ������� ����-��.
  halt
end
calcuid snake 14013 mob
if (%self.room% != %snake.realroom%)
  %echo% � ���� �� ����� ���. ����� �����.
  halt
end
%echo% �� ����� ���������� ���������� ������� ���� � ����.
eval temp %actor.wait(4)%
wait 3
%echo% ������ ��������, �� ������� ��� � ������.
%echo% ������ ��������� ���� ��� �� ���� � �������.
wait 1s
%echo% ������������� �� ���� ����� �������, �� ������ ���������� �����.
%echo% ������� �������� �������� ��� ��������� �� ����... ����� ���!
wait 1s
%echo% ������� ��� ����, &Y�� ���������� �������� ���������� ������� ����.&n
%teleport% %self.carried_by% 14001
%echo% ���������� � ������� ������ ����������� ���� ������ ����� �� ���.
wait 1s
if (%exist.mob(14000)%)
  %echo% "������ ����� �� � ������� ��������", - ���������� ���.
  calcuid girl 14000 mob
  attach 14035 %girl.id%
end
%purge% %self%
~
#14035
����� ������, ���� � �������~
0 q 100
~
wait 1s
%echo% �� �������� ���������� ������� �� ��������, �������� �� �������.
if (%actor.sex% == 2)
  %echo% ��������� ��� ����� �� �������� ���� ����� �������,
else
  %echo% ��������� ��� ����� �� �������� ���� ����� ����������,
end
%echo% �� �������� � ������� �������.
eval temp %actor.wait(4)%
%echo% �, ��� ��� ����� ������ � �������, ����� ����������� �����, 
%echo% ���������� � ���������� � ������� �������, ��������� ��������� 
%echo% �������� ���� � �������. ���� ������� �������� �������� � ���� 
%echo% ������� ��� ��������� ��������� ���������� ����. ������ ������ 
%echo% ����� ��� ���������� ���� ���� �� ��������� ����-�������...
if ((!%actor.skill(��������)%) && (%actor.can_get_skill(��������)%))
  mskillturn %actor% �������� set
  eval temp %actor.setquest(14000 %date.yday%)%
else
  eval temp %actor.gold(+1000)%
  %echo% ����������� ������ ������� ��������� ��� ����� ������� ���.
end
wait 3s
%echo% �� ����� ������ �� ��� ����� ��������� �����,
%echo% ����� ���������� � ����� � ������������� ������.
%echo% ��� � �������� �����...
%purge% %self%
~
#14036
������ �������� ����~
2 z 100
~
%load% mob 14013
%door% 14002 east purge
~
#14037
���� ����������� (���������� ��� ��������)~
0 p 100
~
eval prm %damager.eq(16)%
eval off %damager.eq(17)%
if ((%prm.vnum% != 14015) && (%off.vnum% != 14015))
  %echo% ���� ������� %self.vname% � ��������� �������� ����������� ���� ����.
  %self.hitp% = %self.maxhitp%
else
  return 0
end
~
#14038
���� ���!~
0 f 100
~
%door% 14002 east purge
%echo% &K������������� ���� ����������, ������� ���� ���� �� ����� ���.&n
%echo% &M������ ������� � ����� ������ ����, �� ��������� �������� ��.&n
%echo% �� ����� ������� ������ ����������� ��������� ������ ����.
%load% mob 14013
return 0
~
#14099
�����~
2 f 100
~
%echo% RESETTING!
%door% 14012 down room 14011
%door% 14013 down room 14012
%door% 14014 down room 14013
%door% 14002 east purge
set i 14012
while (%i% <= 14014)
  calcuid temproom %i% room
  attach 14006 %temproom.id%
  eval i %i%+1
done
calcuid temproom 14015 room
attach 14008 %temproom.id%
eval j 14031
while (%j% <= 14051)
  wat %j% wload obj 14014
  eval j %j%+1
done
context 4000
set smithstory 0
worlds smithstory
~
$~

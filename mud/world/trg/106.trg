#10600
������������ ������� ����~
0 r 100
~
eval save %actor.dex%+%actor.int%+%actor.intadd%+%actor.dexadd%-30
if (%actor.affect(���������������)%)
  eval save %save%+30
end
if (%random.100%<=%save%)
  halt
end
%echo% ���� ������������ ���, � ������� ������ � ��������!
dg_cast '��� ���' %actor.name%
%load% obj 10622
%purge% %self%
~
#10601
������ �������~
1 c 2
����������~
if (%arg%==�������)
  %send% %actor% �� ��������� ������� �� ����� � ��������� ������ �� �������.
  %echoaround% %actor% %actor.iname% �������� ��������� �� ����� � ����� �� �������.
  set i %random.5%
  switch %i%
    case 1
      set dragon ��� ����
      %load% mob 10600
    break
    case 2
      set dragon ��� �������
      %load% mob 10605
    break
    case 3
      set dragon ��� �����
      %load% mob 10602
    break
    case 4
      set dragon ��� ����
      %load% mob 10603
    break
    case 5
      set dragon ��� �������
      %load% mob 10604
    break
  done
  %echo% ������� ��������� �������� � ��������� ������� � ������ ���������!
  %echo% ������, �������, ������ � ��� �� �� �������.
  %purge% %self%
else
  %send% %actor% �, �������, ���� ���������, �� ��� ������ �� ������ ����������?
  halt
end
~
#10602
������������ ������� �����~
0 r 100
~
eval save %actor.dex%+%actor.int%+%actor.intadd%+%actor.dexadd%-30
if (%actor.affect(���������������)%)
  eval save %save%+30
end
if (%random.100%<=%save%)
  halt
end
%echo% ���� ������������ ���, � ������� ������ � ��������!
dg_cast '�������'
%load% obj 10622
%purge% %self%
~
#10603
������������ ������� ����~
0 r 100
~
eval save %actor.dex%+%actor.int%+%actor.intadd%+%actor.dexadd%-30
if (%actor.affect(���������������)%)
  eval save %save%+30
end
if (%random.100%<=%save%)
  halt
end
%echo% ���� ������������ ���, � ������� ������ � ��������!
%echo% ������� ����������, ������ ��� �������� ���������!
dg_cast '������� �����'
%load% obj 10622
%purge% %self%
~
#10604
������������ ������� �������~
0 r 100
~
eval save %actor.dex%+%actor.int%+%actor.intadd%+%actor.dexadd%-30
if (%actor.affect(���������������)%)
  eval save %save%+30
end
if (%random.100%<=%save%)
  halt
end
%echo% ���� ������������ ���, � ������� ������ � ��������!
dg_cast '���� ������'
%load% obj 10622
%purge% %self%
~
#10605
������������ ������� �������~
0 r 100
~
eval save %actor.dex%+%actor.int%+%actor.intadd%+%actor.dexadd%-30
if (%actor.affect(���������������)%)
  eval save %save%+30
end
if (%random.100%<=%save%)
  halt
end
%echo% ���� ������������ ���, � ������� ������ � ��������!
dg_cast '��� �����'
%load% obj 10622
%purge% %self%
~
#10606
������� ����� - �����~
1 gpr 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != �����
  otransform 3798
  osend %actor% �� �� ������ ��� �����!
  return 0
  halt
else
  wait 1
  %echo% &W������&n �� &Y����&n ��������� ���������, ���� ��� ����������� &R������&n.
end
~
#10610
������ ����~
0 f 100
~
%echo% ��� ������� ���������: � ��� ���� ����!
%echo% ���������� �� �������� ����� ���� �������� ����� ���! ��� ������ � ��������!
%load% mob 10610
~
#10611
����~
1 c 1
�������~
wait 1
%skilladd% %actor.name% ����� 10
%echo% + �����
%purge% %self.id%
~
#10612
��� ����� ������ �� �������~
0 ab 100
~
eval limjump 10
eval i 0
while (%i% < %limjump%)
  eval rndroom %random.95599%
  %echoaround% %self% %self.iname% ����������� ������ �� ������, � ������� �������� ������.
  if (%world.room(%rndroom%)% && (%rndroom% > 3999))
    set temp %world.room(%rndroom%)%
    if (!%temp.flag(�����)%)
      %teleport% %self.id% %rndroom%
      %load% obj 10630
      ���� ����
    else
      %teleport% %self.id% 4099
      wait 20s
    end
  else
    %teleport% %self.id% 4099
    wait 20s
  end
  %echoaround% %self% ������ �� �������� ������� ������������ ���� �������������, � �� ������� ������� ������ %self.rname%!
  wait 4s
  eval i (%i% + 1)
done
~
#10613
������ �������~
0 c 1
���������~
if !%arg.contains(���������)%
  %send% %actor% ��� ������ ������� �� ������?
else
  %send% %actor% �� �������� ������ ������� ���� ������ � �������.
  %echoaround% %actor% %actor.name% �����%actor.a% ������� ���� ������ � �������. ������ ��������?!
  wait 1
  � ��������� ���...
  ���
  � �� �����, ����� ��� ��� �� ���!
  %echo% ��� ����� ������ ����� ���-�� ������ � ����� �������� �����.
  wait 1
  eval rnd %random.50%
  if %rnd% < 10
    %load% obj 10709
    ���� ������ .%actor.name%
  elseif %rnd% < 20
    %load% obj 10710
    ���� ������ .%actor.name%
  elseif %rnd% < 30
    %load% obj 10711
    ���� ������ .%actor.name%
  elseif %rnd% < 40
    %load% obj 10712
    ���� ������ .%actor.name%
  elseif %rnd% <= 50
    %load% obj 10713
    ���� ���� .%actor.name%
  end
end
~
#10614
������� �������� ��� �����~
1 c 4
�������~
if ((%cmd% != �������) || (%arg% != �������))
  %send% %actor% ����-����?
  halt
end
if (%actor.level% < 25)
  %send% %actor% - ��%actor.q% �� ��� ������� �������.
  halt
end
*�������� ����� ����
if (%date.month% > 6)
  eval nyear %date.year%+1
else
  set nyear %date.year%
end
if (%actor.getquest(10600)% == %nyear%)
  %send% %actor% - �� ��� ������%actor.q% � ���� ���� �������!
  %send% %actor% - ������� � ��������� ����.
  %send% %actor% &g������ ������ ����������.&n
  halt
end
set listpresents 2505 2506 2507 2508 2509 2510 2511 2512 2513 2514 2515 2516 2517 2518 2519 2520 2521 2522 2523 2524 2525 2526 2527 2528 2529 2530 2531 2532 2533 2534 2535
eval rnd %random.31%
eval presentvnum %listpresents.words(%rnd%)%
%load% obj %presentvnum%
calcuid present %presentvnum% obj
%present.put(%actor%)%
%send% %actor% &g������ ������� ��� ��� �������..&n
%send% %actor% - ����, %actor.iname%, ��� ����� ������ %present.vname% �� ����� ���.
%send% %actor% - ����������� ������ ����, %actor.iname%!
%echoaround% %actor% %actor.iname% ��������%actor.q% ���� ������� � �������%actor.q% �� �������!
set buf %actor.setquest(10600 %nyear%)%
~
#10615
��������� ��������� ��������~
1 g 100
~
if %snow106flake%
  halt
end
set snow106flake 1
worlds snow106flake
wait 1
set count 0
foreach items %actor.objs%
  if (%items.vnum% == %self.vnum%)
    eval count %count%+1
  end
done
if (%count% < 10)
  halt
end
set count 0
log %actor.name% �������������� ��������!
foreach snow %actor.objs%
  if ((%snow.vnum% == %self.vnum%) && (%snow% != %self%))
    %purge% %snow%
    eval count %count%+1
  end
  if (%count% == 9)
  break
end
done
wait 1
oecho &W��������� �������� ����������� � ������������� ����� � ����� ��������� ������� � ��������� ��������.&n
oload obj 10631
eval t %world.obj(10631)%
%t.put(%actor.id%)%
set snow106flake 0
worlds snow106flake
opurge %self.id%
~
#10616
��������� ������ ��������~
1 g 100
~
if %snow106flake%
  halt
end
set snow106flake 1
worlds snow106flake
wait 1
set count 0
foreach items %actor.objs%
  if (%items.vnum% == %self.vnum%)
    eval count %count%+1
  end
done
if (%count% < 10)
  halt
end
set count 0
log %actor.name% �������������� ��������!
foreach snow %actor.objs%
  if ((%snow.vnum% == %self.vnum%) && (%snow% != %self%))
    %purge% %snow%
    eval count %count%+1
  end
  if (%count% == 9)
  break
end
done
wait 1
oecho &W��������� �������� ����������� � ������������� ����� � ����� ��������� ������� � ��������� ��������.&n
oload obj 10632
eval t %world.obj(10632)%
%t.put(%actor.id%)%
set snow106flake 0
worlds snow106flake
opurge %self.id%
~
#10617
��������� ��������� ��������~
1 g 100
~
if %snow106flake%
  halt
end
set snow106flake 1
worlds snow106flake
wait 1
set count 0
foreach items %actor.objs%
  if (%items.vnum% == %self.vnum%)
    eval count %count%+1
  end
done
if (%count% < 10)
  halt
end
set count 0
log %actor.name% �������������� ��������!
foreach snow %actor.objs%
  if ((%snow.vnum% == %self.vnum%) && (%snow% != %self%))
    %purge% %snow%
    eval count %count%+1
  end
  if (%count% == 9)
  break
end
done
wait 1
oecho &W��������� �������� ����������� � ������������� ����� � ����� ��������� ������� � ...��������.&n
oload obj 10633
eval t %world.obj(10633)%
%t.put(%actor.id%)%
set snow106flake 0
worlds snow106flake
opurge %self.id%
~
#10618
��������� ������ ��������~
1 g 100
~
if %snow106flake%
  halt
end
set snow106flake 1
worlds snow106flake
wait 1
set count 0
foreach items %actor.objs%
  if (%items.vnum% == %self.vnum%)
    eval count %count%+1
  end
done
if (%count% < 10)
  halt
end
set count 0
log %actor.name% �������������� ��������!
foreach snow %actor.objs%
  if ((%snow.vnum% == %self.vnum%) && (%snow% != %self%))
    %purge% %snow%
    eval count %count%+1
  end
  if (%count% == 9)
  break
end
done
wait 1
oecho &W�������� ����������� � ������������� ����� � ����� ��������� ������� � ������� ��������.&n
oload obj 10644
eval t %world.obj(10644)%
%t.put(%actor.id%)%
set snow106flake 0
worlds snow106flake
opurge %self.id%
~
#10620
���� �����~
0 d 100
����~
calcuid st 3714 obj
%purge% %st.id%
~
#10621
���� �� ������-���������~
1 c 1
*~
eval pl %self.worn_by%
eval cm %cmd.mudcommand%
*%echo% %cm% %pl.name%
if (%cm% == south || %cm% == ��)
  oforce %pl% south
  oforce %pl% south
  oforce %pl% south
  oforce %pl% south
  oforce %pl% south
  oforce %pl% south
elseif (%cm% == north || %cm% == �����)
  oforce %pl% north
  oforce %pl% north
  oforce %pl% north
  oforce %pl% north
  oforce %pl% north
  oforce %pl% north
elseif (%cm% == east || %cm% == ������)
  oforce %pl% east
  oforce %pl% east
  oforce %pl% east
  oforce %pl% east
  oforce %pl% east
  oforce %pl% east
elseif (%cm% == west || %cm% == �����)
  oforce %pl% west
  oforce %pl% west
  oforce %pl% west
  oforce %pl% west
  oforce %pl% west
  oforce %pl% west
elseif (%cm% == up || %cm% == �����)
  oforce %pl% up
  oforce %pl% up
  oforce %pl% up
  oforce %pl% up
  oforce %pl% up
  oforce %pl% up
elseif (%cm% == down || %cm% == ����)
  oforce %pl% down
  oforce %pl% down
  oforce %pl% down
  oforce %pl% down
  oforce %pl% down
  oforce %pl% down
end
return 0
~
#10627
�����~
1 c 2
��������~
%echoaround% %actor.name% ������� ����������������� &R�����&n �������� �������� ���� ����� ����� ����� !
%send% %actor.name% �� �������� ���� ����������������� &R�����&n
~
#10639
��������� ���������� �������~
1 c 2
���������~
wait 1
%send% %actor.name% ���������� ������ �� ��������� �������...
eval rnd %random.100%
if %rnd% < 5
  %load% obj 1912
  %echo% �� ������������ �������� ����� ������ ������.
elseif (%rnd% < 15)
  %load% obj 10621
  %echo% �� ������������ �������� ������ ���� ��������� �����!
elseif (%rnd% < 25)
  %load% obj 10648
  %echo% �� ����� ���� ��������� ������ ���.
elseif (%rnd% < 50)
  %load% obj 33938
  %echo% �� ������������ �������� ������ ������ ��, � ��� ������ ������ �����. ������!!!
elseif (%rnd% < 75)
  %load% obj 10603
  %echo% �� ������������ �������� �����... ��������! �� ������ ����� �������� ��� ���� ������!
elseif (%rnd% <= 100)
  %load% obj 10627
  %echo% �� ������������ �������� ���-�� ����� �� �����. �����, ��������� ��� ��� �� ��������!
end
%purge% %self.id%
~
#10650
���� �� ���� ��������~
1 gj 100
~
wait 1
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ������
  %send% %actor.id% � ����� ��� ���� �������?
  %purge% %self.id%
  return 0
  halt
end
~
#10651
�� ���� �������-��������~
1 gj 100
~
wait 1
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ��������
  %send% %actor.id% �� �� ���� ��� �������!
  %purge% %self.id%
  return 0
  halt
end
~
#10652
���� �� ��� ����� ��������~
1 gj 100
~
wait 1
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != �������
  %send% %actor.id% �� �� ���� ��� �������!
  %purge% %self.id%
  return 0
  halt
end
~
#10653
�������� �������� � ������~
1 g 100
~
wait 1
if !%self.owner%
  %self.owner(%actor.uniq%)%
  osend %actor% %self.name% ����� ��������%self.u% � ����� ����� � ����%self.q%.
  oechoaround %actor% %self.name% ����� ��������%self.u% � ����� %actor.rname% � ����%self.q%.
end
~
#10654
������� ��� ��� ������~
1 c 2
�������~
wait 1
if !%arg%
  osend %actor% ��� �� ������ �������?
  halt
end
if (%arg.contains(���)% && (%self.vnum% == 10671))
  osend %actor% &G�� ������ ������ ������� ��������� ��� �� �������...&n
  oechoaround %actor% &G%actor.name% ������ ������ ������%actor.q% ��������� ������� ��� �� �������!&n
  set i 0
  while %i% < 5
    oload obj 10670
    calcuid ice 10670 obj
    %ice.owner(%self.owner%)%
    %ice.put(%actor%)%
    eval i %i%+1
  done
  wait 1
  opurge %self%
  halt
end
if (%arg.contains(������)% && (%self.vnum% == 10672))
  osend %actor% &G�� ������ ������ ������� ������ ����� �� �����...&n
  oechoaround %actor% &G%actor.name% ������ ������ ������%actor.q% ������ ��������� ������� �����!&n
  set i 0
  while %i% < 5
    oload obj 10671
    calcuid ice 10671 obj
    %ice.owner(%self.owner%)%
    %ice.put(%actor%)%
    eval i %i%+1
  done
  wait 1
  opurge %self%
  halt
end
~
#10655
�������� ������� (���� "������ ����)~
1 n 100
~
%self.val0(1)%
~
#10656
new trig~
0 f 100
~
say My trigger commandlist is not complete!
~
#10690
new trigger~
0 cfg 0
~

~
#10691
new trigger~
0 cfg 0
~

~
#10692
new trigger~
0 cfg 0
~

~
#10693
new trigger~
0 a 0
~

~
#10694
new trigger~
0 cfg 0
~

~
#10695
new trigger~
0 cfg 0
~

~
#10696
new trigger~
0 cfg 0
~

~
#10697
new trigger~
0 cfg 0
~

~
#10698
new trigger~
0 cfg 0
~

~
#10699
new trigger~
0 cfg 0
~

~
$~

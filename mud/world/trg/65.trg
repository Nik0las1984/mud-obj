#6500
����� ����~
2 f 100
~
*����� ���� | Rooms | Zone Reset | 100
wdoor 6510 east purge
wdoor 6501 east purge
wdoor 6501 east room 6502
calcuid izba 6501 room
attach 6501 %izba.id%
calcuid undertree 6504 room
rdelete camesouth %undertree% 
rdelete camenorth %undertree%
context 4000
set hunterstory 0
worlds hunterstory
~
#6501
����� � �������~
2 e 100
~
*����� � ������� | Rooms | Enter PC | 100
wait 1
wdoor 6501 east flags abcd
wdoor 6501 east description �����
*wdoor 6501 east name �����
%echo% ������ ����� ���� ����� �� �������, �� �������� ��� ������������ ������� �����.
%echo% ������ ������ �� ���������, �� ����� ������ ������ ��������� ������� ������.
%load% mob 6500
detach 6501 %self.id%
~
#6502
������ ���� ��������~
0 n 100
~
*������ ���� �������� | Mobiles | Load | 100
wait 2s
say �� ����������, ����� ���������-���������
detach 6502 %self%
~
#6503
������� �� ������ ������~
0 d 100
*~
*������� �� ������ ������ | Mobiles | Speech | 100 | *
if ((!%actor%) || (%actor.vnum% != -1))
  halt
end
wait 3
switch %speech%
  case ����������
    say ����������, ��������
    case ������
      if (%actor% == %quester%)
        say ����������� ��� ����
        say ��� ��������?
      else
        eval quester %actor%
        global quester
        if %actor.sex% == 2
          say ������, � �� �������� �� �� ���, �������?
        else
          say �������, � �� �������� �� �� ���, �������?
        end
        ������ .%actor.name%
        say ������ ������� � ����, �� ����� �� ����� ����
        say � ��� ����� �� � �������� ����� ������
        say �� ���������� �� ���-������ ����� ������� ����
        halt
      end
    break
    case ������
      if (%actor% == %quester%)
        eval temp %actor.wait(2)%
        say ��� � ������
        ����
        wait 5
        %echo% %self.iname% ��������� ��������� �������, ������� �� ����.
        %echo% %self.iname% ������ ��� � ��������.
        mdoor 6501 down room 6517
        down
        wait 3
        ����� all
        wait 1s
        up
        wait 1s
        %echo% %self.iname% ������ ���, ������ ������� �� ������� �����.
        mdoor 6501 down purge
        wait 5
        say ��� ������ ������� ������ �� � ����
        ����
        say ��-������, ����� ���������, �� ��������
        say ��-������, ����� � ���� ����������� �������
        say ���� �� ���� ���-������ ������ ����������
        say �-�������, ������ ���������� ����� ������ �������
        say �� ������ ��� ������� ������� ����� ��������
        say �� ����� ������� ����������
        say � �� �� ���� ��� �� �������� - ��� ����� ����
        wait 5
        say ������ ��� �����, � ��� ���� ��� �����������
        ���� all .%actor.name%
        ���� all
        wait 3
        %echo% %self.iname% ����� � ������ ����� � ����.
        mdoor 6501 east purge
        mdoor 6501 east room 6502
        detach 6503 %self.id%
      else
        ����
        say � ���� �� ����%actor.g%, ��� ��� ����� ������?
      end
    break
    default
      say �� �� � ����-�� �� ���������
      �����
      say �� �� �� ����-�� �� �� ������%actor.g%
      halt
    break
  done
~
#6504
����� �������~
1 c 100
������~
*����� ������� | Objects | Command | 100 | ������
wait 3
if (%exist.obj(6501)%)
  eval handone %actor.eq(16)%
  eval handtwo %actor.eq(17)%
  if ((!%actor.haveobj(6501)%) && (%handone.vnum% != 6501) && (%handtwo.vnum% != 6501))
    %send% %actor% ��� �� ������� ���������.
    halt
  end
else 
  %send% %actor% ��� �� ������� ���������.
  halt
end
if (((%self.vnum% == 6503) || (%self.vnum% == 6504)) && (!%arg.contains(������)%))
  %send% %actor% ��� �� ����������� ������?
  halt
end
if (%actor.move% < 10)
  %send% %actor% �� ������� ������ ��� �����, ���������.
  halt
else
  %send% %actor% �� ������ ������� ������ %self.vname% �������� ���������.
  %echoaround% %actor% %actor.iname% �����%actor.g% ������� ������ %self.vname%.
  eval temp %actor.move(-10)%
end
wait 3
if (%self.room% == 6510)
  if (!%podhod%)
    eval podhod 1
    global podhod
    calcuid axe 6501 obj
    exec 6523 %axe%
  elseif (%podhod% < 2)
    eval podhod %podhod%+1
    global podhod
    if (%exist.mob(6501)%)
      calcuid birdy 6501 mob
      %echo% %birdy.iname% ���� �������� ����� ������ ������ �� ������ ��������.
    end
  else
    %send% %actor% ������� �� �������� %self.vname% ������� ������.
    %echoaround% %actor% %actor.iname% �������%actor.g% %self.vname% ������� ������.
    %echo% ������ ����� ������ �� ������ �������.
    odoor 6510 east room 6511
    %load% obj 6508
    if (%exist.mob(6501)%)
      calcuid birdy 6501 mob
      exec 6506 %birdy.id%
    end
    %purge% %self%
  end
else
  if (%podhod% < 2)
    eval podhod %podhod%+1
    global podhod
  else
    %send% %actor% ������� �� �������� %self.vname% � �������� ��� � �����.
    %echoaround% %actor% %actor.iname% �������%actor.g% %self.vname% � �������%actor.g% ��� � �����.
    if (%self.vnum% == 6503)
      %load% obj 6506
    else
      %load% obj 6507
      %load% mob 6502
    end
    %load% obj 6508
    if (%exist.mob(6501)%)
      calcuid birdy 6501 mob
      exec 6506 %birdy.id%
    end
    %purge% %self%
  end
end
~
#6505
������ ����� ��� ��������~
1 h 100
~
*������ ����� ��� �������� | Objects | Drop | 100
if (%exist.mob(6501)%)
  calcuid birdy 6501 mob
  %teleport% %birdy% %self.room%
  exec 6506 %birdy.id%
else
  calcuid ohot 6500 mob
  set birdsaved 0
  remote birdsaved %ohot%
  wait 1
  %echo% ��-�� ����� �������������� ������ � ������ ������.
  %purge% %self%
end
~
#6506
������ ��������� �� ����������� ������~
0 z 100
~
*������ ��������� �� ����������� ������ | Mobiles | Auto | 100
wait 5
if (%exist.obj(6505)%)
  calcuid nest 6505 obj
  if (%nest.carried_by%)
    %echo% ��-�� ����� �������������� ������ � ������ ������.
    %purge% %nest%
    %echo% ����� ���������, ������ ������ ����, %self.iname% ��������� �����.
    %purge% %self%
  else
    %echo% ������������ %self.iname% ���������� ���������� � �������� � ������.
    calcuid ohot 6500 mob
    set birdsaved 1
    remote birdsaved %ohot%
    %purge% %self%
  end
else
  %echo% ����� ���������, ������ ������ ����, %self.iname% ��������� �����.
  %purge% %self%
end
~
#6507
��� ������ ��������~
0 n 100
~
*��� ������ �������� | Mobiles | Load | 100
%echo% %self.iname% �������� �� ���, ����� �������� ������.
foreach victim %self.pc%
  if (%victim.level% > 30)
  break
end
say �� �� ��� ����� ������� �������?! ������!
mkill %victim%
done
~
#6508
����, ������ ����~
0 b 100
~
*����, ������ ���� | Mobiles | Random | 100
if ((%self.position% != 8) || ((!%exist.mob(6503)%) && (!%exist.mob(6504)%)) || (%self.realroom% == 6525))
  halt
end
set dirfrom ������-������ ������ ������-������� ������ ��� ������� ���-������ ��� ���-�������
set dirto ������-����� ����� ������-������ ����� ��� ������ ���-����� �� ���-������
eval startroom %self.realroom%-6520
%echo% %self.iname% ���� �������� ������.
wait 1
%teleport% %self% 6525
wait 3
%echo% %self.iname% ��������� ���� � %dirfrom.words(%startroom%)%.
wait 2
if (%exist.mob(6503)%)
  calcuid deermom 6503 mob
  switch %random.2%
    case 1
      set wolfy �� ������ ������ ���� ������
    break
    default
      set wolfy �� ���� ������ ������� ������
    break
  done
  switch %random.2%
    case 1
      set deer �� �� ���� �� ������ ����
    break
    default
      set deer �� ������������
    break
  done
  %echo% %self.iname% ��������� ������� %deermom.vname%, %wolfy%.
  %echo% %deermom.iname% ���������� ������� %self.vname%, %deer%.
  wait 2
  eval rnd %random.9%
  if (%rnd% == 5)
    eval rnd 6
  end
  %echo% %self.iname% ������ �� %dirto.words(%rnd%)%.
  wait 3
  eval rndroom %rnd%+6520
  %teleport% %self% %rndroom%
  wait 1
  eval rnd 10-%rnd%
  %echo% %self.iname% �������� ���� � %dirfrom.words(%rnd%)%.
else
  calcuid deerson 6504 mob
  %echo% %self.iname% �������� � ����� %deerson.dname%, ������ ����������� ������.
  %echo% �������� ������ � ����� �� ������������� ����� %deerson.rname%.
  wait 1
  %echo% %self.iname% ������� ����������� ���� %deerson.rname% � ������ � ���.
  wait 1
  %purge% %deerson%
  %purge% %self%  
end
~
#6509
���� ����� ������~
0 f 100
~
*���� ����� ������ | Mobiles | Death | 100
%load% obj 6512
if ((!%exist.mob(6503)%) || (!%exist.mob(6504)%) || (!%exist.mob(6500)%))
  halt
end
calcuid deermom 6503 mob
set wolfkiller %actor%
remote wolfkiller %deermom%
exec 6511 %deermom%
~
#6510
���� ��� ����~
2 e 100
~
*���� ��� ���� | Rooms | Enter PC | 100
wait 1
if ((%direction% == south) && (%camesouth% != 1))
  set camesouth 1
  global camesouth
  %load% mob 6506
  %echo% �� ������� ���������� ����� �������� ��������� �����.
  wait 3
  calcuid holop 6506 mob
  %force% %holop% say ��-��!
  %force% %holop% say �������, ������� ���������� ����� �� ������
  %force% %holop% �����
  %echo% '��� ��, ������ ��, ��� ����-�� �����' - ���������� ���.
elseif (%camenorth% != 1)
  wat 6525 wload mob 6504
  wat 6525 wload mob 6503
  wat 6522 wload mob 6505
  set camenorth 1
  global camenorth
end
~
#6511
�������� ���������� �������~
0 z 100
~
*�������� ���������� ������� | Mobiles | Auto | 100
if ((!%exist.mob(6504)%) || (!%exist.mob(6500)%))
  halt
end
if (%arrowtaker%) && (%wolfkiller%)
  wait 2
  calcuid deerson 6504 mob
  calcuid ohot 6500 mob
  if (%wolfkiller.realroom% != %self.realroom%)
    %teleport% %deerson% %wolfkiller.realroom%
    %teleport% %self% %wolfkiller.realroom%
    wait 2
    %echo% ������� � ��������� ���������� �� ������ ������.
  end
  %echo% ������� ���������� ���������� ��� � �����.
  %force% %deerson% ������ .%wolfkiller.name%
  %echo% ������� � ��������� ������� � ���.
  set deersaver %wolfkiller%
  remote deersaver %ohot%
  wait 2
  %purge% %deerson%
  %purge% %self%
end
~
#6512
����� � �������~
0 bq 100
~
*����� � ������� | Mobiles | Random,Great PC | 100
if (!%arrowtaker%)
  if (%self.hitp% > 300)
    eval temp %self.hitp(300)%
  end
  wait 1s
  %echo% %self.iname% ���������, ������� �������� ��������� ������ �� ������ ����.
  %echo% ��� ����������, ��� ����� �� ����� �� ����������.
end
~
#6513
����������� ������ �� �������~
0 c 1
�������� ������~
*����������� ������ �� ������� | Mobiles | Command | 100 | �������� ������
if (!%arrowtaker%)
  if (!%arg.contains(�����)%)
    %send% %actor% ��� �� ������ %cmd.words(1)%?
  else
    wait 3
    %send% %actor% ��������� ������� � %self.dname%, �� ������ �� �� ���� ������.
    %echoaround% %actor% ��������� ������� � %self.dname%, %actor.iname% �����%actor.g% �� �� ���� ������.
    %send% %actor% �� �������� ������ ����-�� � ������� ����.
    %echoaround% %actor% %actor.iname% �������%actor.g% ������ ����-�� � ������� ����.
    %echo% �� ����� �� ������ ����������� ��������� ��������.
    calcuid ohot 6500 mob
    set arrowtaker %actor%
    global arrowtaker
    exec 6511 %self%
  end
else
  return 0
end
~
#6514
����� ������~
1 g 100
~
*����� ������ | Objects | Get | 100
wait 1
if (%exist.obj(6501)%)
  calcuid axe 6501 obj
  exec 6523 %axe%
else
  calcuid ohot 6500 mob
  set birdsaved 0
  remote birdsaved %ohot%
  %echo% ��-�� ����� �������������� ������ � ������ ������.
  %purge% %self%
end
~
#6515
��������� ������~
1 c 2
�������~
*��������� ������ | Objects | Command | 2 | �������
if ((!%arg.contains(���)%) || (%self.room% != 6514))
  return 0
else
  if (!%mavkashown%)
    set mavkashown 1
    global mavkashown
    %load% mob 6507
    %send% %actor% �� ����������� � ����� ����� ��������� ������.
    %echoaround% %actor% %actor.iname% ��������%actor.u% � ����� ����� ��������� ������.
    %echo% ����� �� ����� ���������� ������� ������.
    wait 3
    calcuid mavka 6507 mob
    if (%actor.sex% == 2)
      %force% %mavka% say ��������, ��� ��������, ����������
    else
      %force% %mavka% say ������, ��� ��������, ����������
    end
    %force% %mavka% say ����� �� ������� ���� ���� ��� �������
  elseif (%exist.mob(6507)%)
    %send% %actor% �� ����������� � ����� ����� ��������� ������.
    %echoaround% %actor% %actor.iname% ��������%actor.u% � ����� ����� ��������� ������.
    wait 3
    calcuid mavka 6507 mob
    %force% %mavka% say �� ���!? ����� �� ����������� �� ����!
    %force% %mavka% mkill %actor%
  else
    calcuid ohot 6500 mob
    set gotwater 1
    remote gotwater %ohot%
    %echo% �� ������� ���� �� ����� � %self.vname%.
    detach 6515 %self.id%
  end
end
~
#6516
����� ������� ���-��~
0 j 100
~
*����� ������� ���-�� | Mobiles | Receive | 100
wait 1
switch %object.vnum%
  case 6510
    say �! ����� �����, �������, ��� ��������
    say ��, ������ �����, �����, �� �����
    calcuid ohot 6500 mob
    set failedholop 1
    remote failedholop %ohot%
    mjunk all
    %purge% %self%
  break
  default
    say ����������
    ����
    %echo% %self.iname% ��������� � �����.
    %echo% %self.iname% �������� �������, �� ��� ��� %object.rname%.
  break
done
~
#6517
����� �������~
0 f 100
~
*����� ������� | Mobiles | Death | 100
%load% obj 6512
~
#6518
�� ���� ������ ������~
1 z 100
~
*�� ���� ������ ������ | Objects | Auto | 100
if (!%vnum%)
  halt
end
if (%exist.obj(%vnum%)%)
  switch %vnum%
    case 6502
      set salt 1
      global salt
    break
    case 6511
      set bread 1
      global bread
    break
  done
  calcuid food %vnum% obj
  %echo% �� �������� %food.vname% �� %self.vname%.
  wait 1
  %purge% %food%
end
wait 1
if ((!%bread%) || (!%salt%))
  %echo% '����-�� �� �������' - ����������, ���������� �������.
else
  %echo% '��� ������ ������ ����' - ���������� ����� � ��������.
  calcuid ohot 6500 mob
  set treba 1
  remote treba %ohot%
end
~
#6519
����-���� ������~
1 h 100
~
*����-���� ������ | Objects | Drop | 100
if (%self.room% == 6521)
  calcuid stub 6513 obj
  eval vnum %self.vnum%
  remote vnum %stub%
  return 0
  wait 1
  exec 6518 %stub%
else
  return 1
end
~
#6520
����� � ��������~
0 q 100
~
*����� � �������� | Mobiles | Great PC | 100
if (%actor% != %quester%)
  halt
end
wait 1s
if (%check%)
  say ��, ����� ���� ���� ������%actor.q%
  halt
end
�����
say ��� �������%actor.u%?
if (!%treba%)
  say � ������ ���� ��� ������ �� �������, �������
  say ������ ����� �� �� �������%actor.g% ��� ��������
  say ������ ����������
  halt
end
say ��� ������ ���� ������ �������...
if (!%gotwater%)
  say �� ������%actor.q%, �������, �� ��� ���� �� �����, ��� �� �������
elseif ((!%birdsaved%) || (!%exist.obj(6505)%))
  say �� ������%actor.g%, �������, �� � ������� ������, �� ��������%actor.u%
elseif (!%deersaver%)
  say �������, ������� ������ �� �����%actor.q% ������� �������
else
  say ������, ��� �����%actor.g% �� ��� ������� � ��� �������
  say ��, ����� ���� ���� ������%actor.q%
  set check 1
  global check
  attach 6521 %self%
end
~
#6521
�������� ���� ����~
0 j 100
~
*�������� ���� ���� | Mobiles | Receive | 100
wait 1
foreach thing %self.objs%
  if ((%thing.vnum% < 6500) || (%thing.vnum% > 6599))
    wait 4
    say �� ��� �� �����
    ���� %thing.iname%
  elseif (%thing.vnum% == 6500)
    say ���-�, �����, ��� � ��� � �����?
    ����� all ���������.�����
    %purge% %thing%
  end
done
wait 5
foreach item %self.objs%
  switch %item.vnum%
    case 6501
      wait 1s
      say ���� ����� ������ �� ����� �������? �� ��� ������
      wait 1
      %purge% %item%
    break
    case 6506
      wait 1s
      say �����... �������, ����� �����, �������
      eval wood %wood%+2
      global wood
      wait 1
      %purge% %item%
    break
    case 6507
      wait 1s
      say �����... �� ����� �� ���� ����� ������ ������? ����� ��, ������ � ����
      eval wood %wood%+1
      global wood
      wait 1
      %purge% %item%
    break
    case 6510
      wait 1s
      say ������... ��, � ������ �� ���� �� ����� �����!
      eval can 1
      global can
      wait 1
      %purge% %item%
    break
    case 6512
      wait 1s
      say ���, ������ �����, ����������, ��������� �� ����� ���������!
      eval food 1
      global food
      wait 1
      %purge% %item%
    break
    default
      wait 4
      say �� ��� �� �����
      ���� %thing.iname%
    break
  done
done
if (%food% == 1) && (%can% == 1) && (%wood% >= 5)
  attach 6522 %self%
  exec 6522 %self%
  detach 6520 %self%
  detach 6521 %self%
end
~
#6522
������� �� �����~
0 z 100
~
*������� �� ����� | Mobiles | Auto | 100
wait 1s
say ��������%quester.g% �� ��� ������ �������
if (!%quester.can_get_skill(������� ������)%)
  say �� ���%quester.g% �� ��� ������� ���� ��� ����� ������
  %echo% %self.iname% ����� ��� ������� � ������.
  eval temp %actor.gold(+1000)%
  say ����� ���� ������� �������, ���������� ������
else
  say ������� ���� ��� �����
  %echo% %self.iname% ������� ��� ��� ��������� ��������� ������.
  mskillturn %quester% ������.������ set
  eval temp %quester.setquest(6500 %date.yday%)%
end
~
#6523
������� ������ ������~
1 z 100
~
*������� ������ ������ | Objects | Auto | 100
wait 1
if (%exist.obj(6505)%)
  if (!%exist.mob(6501)%)
    if (!%birdshown%)
      %echo% ������ �� ��������, ��������� ������-��������� � ����� ������ ��� ������.
      %load% mob 6501
      calcuid birdy 6501 mob
      eval quester %self.carried_by%
      %force% %birdy% ���� .%quester.iname%
      calcuid nest 6505 obj
      set birdshown 1
      global birdshown
    else
      calcuid nest 6505 obj
      if (%nest.room% == %self.room%)
        calcuid ohot 6500 mob
        set birdsaved 0
        remote birdsaved %ohot%
        %echo% ��-�� ����� �������������� ������ � ������ ������.
        calcuid nest 6505 obj
        %purge% %nest%
      end
    end
  else
    calcuid birdy 6501 mob
    %echo% %birdy.iname% ���� �������� ����� ������ ������ �� ������ ��������.
  end
end
~
#6524
���� ���-�� �����~
0 j 100
~
*���� ���-�� ����� | Mobiles | Receive | 100
wait 1
foreach item %self.objs%
  if (%item.vnum% == 6514)
    say ��� ����������
    %echo% %self.iname% �������� � �����, ������ �� �������� �������.
    %purge% %item%
    %purge% %self%
    halt
  end
done
say �� ���!? ����� �� ����������� �� ����!
mkill %actor%
~
#6525
������� ���-�� �����~
0 d 1
��� ���� ��� ����~
*������� ���-�� ����� | Mobiles | Speech | 1 | ��� ���� ��� ����
wait 2
say �� ���!? ����� �� ����������� �� ����!
mkill %actor%
~
#6526
���� ��� ������~
0 m 1
~
*���� ��� ������ | Mobiles | Bribe | 1
if (%actor.gold% > 0)
  wait 3
  say �, ����������
  %self.gold(0)%
  %echo% %self.iname% ������ ���������� ������ ���� ������.
  %echo% ���� ������� �� ��� ��� ��� �� ����������.
  �����
  wait 3
  say �� ��� ������� �� ��� �� ���� ��������� �� ����
  ����
else
  wait 1s
  say ��� �, � �� ��� �������
  say ����� � �����, �����, �������
  ����
  %purge% %self%
end
~
#6527
������� ������~
0 f 100
~
*������� ������ | Mobiles | Death | 100
%load% obj 6514
~
$~

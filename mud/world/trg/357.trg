#35700
� ������~
0 r 100
~
if %actor.clan%==��
  wait 5
  say �� ��������� ������?
  say ��� ����� ������ ��� 100 ���.
else
  say ����� ����� �� �����!
end
~
#35701
���� ���� ������~
0 m 100
100~
if %actor.clan%==��
  tell %actor.name% ������!
  if %world.curobjs(35710)% < 50
    tell %actor.name% ����� ���� ��������!
    mload obj 35727
    give �������� %actor.name%
  else
    tell %actor.name% ���, ���� ����������.
  end
else
  say ����� ����� �� �����!
end
~
#35702
���� ������~
1 g 100
~
wait 1
if %actor.clan% == ��
  halt
endif
%purge% %self%
~
#35703
������~
0 m 0
~
wait 1
��� %actor.name%
halt
if %amount% < 20
  msend %actor.name% �� ����� ������ � ���� ������� �� ��������!
  halt
endif
switch %amount%
  case 20
    mecho �������� ������� ������.
    dg_cast '������ ���������' %actor.name%
  break
  case 30
    mecho �������� �������� ���������� �� �����.
    dg_cast '��������' %actor.name%
  break
  case 40
    mecho �������� ��������� � ���� � ���-�� �����������.
    dg_cast '�����������' %actor.name%
  break
  case 50
    mecho �������� ������� ������.
    dg_cast '������' %actor.name%
  break
  case 60
    mecho �������� ������� ������.
    dg_cast '�������������' %actor.name%
  break
  case 70
    mecho �������� ���������� ��� ���� �����.
    dg_cast '����' %actor.name%
  break
  case 80
    mecho �������� �������� ������.
    dg_cast '�����' %actor.name%
  break
  case 90
    mecho �������� �������� ������.
    dg_cast '���� �����' %actor.name%
  break
  case 350
    mecho �������� ������� ������
    dg_cast '��������' %actor.name%
    dg_cast '�����������' %actor.name%
    dg_cast '������' %actor.name%
    dg_cast '�������������' %actor.name%
    dg_cast '����' %actor.name%
    dg_cast '�����' %actor.name%
    dg_cast '���� �����' %actor.name%
  break
  default
    msend %actor% ��������, �� � �� ���� ��� �� ������ �� ���� �� ��� ������.
    msend %actor% ��� ��� � ���� ������� ��� ���:
    msend %actor%  �� 20 ��� - ������� ���� �����.
    msend %actor%  �� 30 ��� - ��� ����� � �����.
    msend %actor%  �� 40 ��� - ���������� ������.
    msend %actor%  �� 50 ��� - �� ������� ����� �������.
    msend %actor%  �� 60 ��� - ���� ���� ������ ��������.
    msend %actor%  �� 70 ��� - ������� �� ������� �������.
    msend %actor%  �� 80 ��� - ������� ������,��� ����� � ����.
    msend %actor%  �� 90 ��� - ������� ������� ����� � ������� ���������������.
    msend %actor%  �� 350 ��� - ���� ����� ��� ���������...
  done
~
#35704
������ � �������~
0 g 100
~
wait 1
msend %actor% ��� ��� � ���� ������� ��� ���:
msend %actor%  �� 20 ��� - ������� ���� �����.
msend %actor%  �� 30 ��� - ��� ����� � �����.
msend %actor%  �� 40 ��� - ���������� ������.
msend %actor%  �� 50 ��� - �� ������� ����� �������.
msend %actor%  �� 60 ��� - ���� ���� ������ ��������.
msend %actor%  �� 70 ��� - ������� �� ������� �������.
msend %actor%  �� 80 ��� - ������� ������,��� ����� � ����.
msend %actor%  �� 80 ��� - ������� ������� ����� � ������� ���������������.
msend %actor%  �� 350 ��� - ���� ����� ��� ���������...
end
~
#35705
���������� ��������~
1 c 3
����������~
oechoaround %actor% %actor.name% ���������%actor.g% ��������.
osend %actor% �� ��������� ���������� ��������.
oload mob 35710
calcuid cover 35727 obj
opurge %cover%
~
#35706
�������� ��������~
0 c 100
��������~
if (%actor.clan%==��)
  mechoaround %actor% %actor.name% ��������� ������%actor.g% ��������.
  msend %actor% �� ��������� ������� ��������.
  mload obj 35727
  wait 1
  mpurge %self%
else
  mechoaround %actor% %actor.name% �������%actor.u% ������� ��������, �� �� ��������� �� ���.
  msend %actor% �� ���������� ������� ��������, �� ��� ��������� �� ����� ���.
end
~
#35707
���������� � ������~
2 c 1
����������~
if (!%arg.contains(�����)%)
  %send% %actor% ���� ������ ����������?
  halt
end
%send% %actor% �� ���������� � ������ ��� ����������������.
%echoaround% %actor% %actor.iname% �������%actor.u% � ������ ��� ����������������.
%teleport% %actor% 35781 horse
wait 1
%echoaround% %actor% %actor.iname% ��������� ����.
~
#35708
�������� ������~
2 c 1
��������~
*�������� ������ : Rooms : Command : 1 : ��������
if (!%arg.contains(�����)%)
  %send% %actor% ��� ��������? ����?
  halt
end
%send% %actor% &Y�� �������� ���� � �������, ������ ����� ������� ���� ������.&n
%echoaround% %actor% &Y%actor.iname% ������%actor.q% ���� � �������, ������ ����� ������� %actor.s% ������.&n
wait 1s
foreach ob %self.objects%
  wait 1
  set name %ob.iname%
  if (%ob.val3% && (%name.contains(����)% || %name.contains(�������)%))
    %echo% ����� ����� ����������?
  elseif (%ob.effect(������� �������)%)
    %echo% ��� �������� ������ - � ������ �� ����������!
  elseif (%ob.name%)
    %echo% %ob.iname% ��������%ob.u% �� ������.
    %purge% %ob%
  end
done
set roomn 35700
while (%roomn% < 35782)
  wat %roomn% wecho &M���� �������� � ����� � ������� ���� ������ �� ���!&n
  wat %roomn% wecho &M������, %actor.iname% ������%actor.q% ��������� ������ ������ ����������!&n
  eval roomn %roomn%+1
done
~
#35733
������ ������� (������)~
1 c 4
������~
if ((!%arg.contains(������)%) && (!%arg.contains(�����)%))
  %send% %actor% ���? ���� ������?
  halt
end
%send% %actor% �� ��������� ������ ������ �������.
%send% %actor% ���������� ���� �� ���� ������� ����.
%echoaround% %actor% %actor.iname% ������%actor.u% �������� ����� ������ �������.
wait 3
%send% %actor% ������ ������� ���������� ���.
%echoaround% %actor% ������ ������� ���������� %actor.dname% � ������ ���������.
%echoaround% %actor% �����������, %actor.iname% ��������� ��������%actor.g% �� ��������.
if ((!%actor.canbeseen%) || (%actor.realroom% != %self.room%))
  halt
end
dg_cast '���������' .%actor.name%
~
#35734
������ ������� ��������~
1 b 5
~
eval victim %random.pc%
if (!%victim%)
  halt
end
%send% %victim% ������ ������� ������ ���������� ��� � ������� ��������� �������.
%echoaround% %victim% ������ ������� ������ ���������� %victim.dname% � ������� ��������� �������.
~
#35735
������ ���� � �����~
0 bq 100
~
foreach victim %self.pc%
  if ((%victim.affect(����������)%) && (%victim.realroom% == %self.realroom%))
    wait 1
    ���� .%actor.name%
    � �� ���� ���� ��� ��������.
    � ��������� � ���� ��� ���������� ���� � ������ �� ������!
    wait 30s
    if ((%victim.realroom% != %self.realroom%) || (!%victim.affect(����������)%))
      halt
    end
    calcuid vano 35715 mob
    detach 35737 %vano.id%
    � ��, � ���� ������������!
    ���� ����! ��� ������ ��� ���� ����!
    wait 2
    %echo% ��������� ������ ��������� � ������.
    %force% %victim% wake
    %force% %victim% stand
    %send% %victim% ��������� ������ ���������� ��� ��� ���� �������� � ����-�� ���������.
    %echoaround% %victim% ��������� ������ ���������� %victim.vname% ��� ���� �������� � ����-�� ���������.
    wait 2
    %force% %victim% west
    %force% %victim% north
    %force% %victim% west
    wait 2
    eval sinner %victim%
    remote sinner %vano.id%
    exec 35736 %vano.id%
  end
done
~
#35736
������ �� ���!~
0 z 100
~
wait 2
if ((!%sinner%) || (%sinner.realroom% != %self.realroom%))
  halt
end
set sinforgiven 0
global sinforgiven
eval temp %sinner.wait(3)%
%send% %sinner% ��������� ������ �������� ��� � ������� ���� %self.rname%.
%echoaround% %victim% ��������� ������ �������� %sinner.vname% � ���� %self.rname%.
wait 3
%send% %sinner% %self.iname% ������� ��� �� ������ ���, �������� ���������� �� �����.
%echoaround% %sinner% %self.iname% ������� %sinner.vname% �� ������ ���, �������� ���������� �� �����.
%send% %sinner% �� � ����� ������� ��� ������ ���� �� ���������...
%force% %sinner% ������� �� �� � ����-������! � ������ �� ������!
wait 1s
� �� ������, ��������? �� ����� ������... ����� �������!
����
attach 35737 %self.id%
~
#35737
������ � ������~
0 q 100
~
if (!%sinner%)
  halt
end
wait 3
if ((%sinner.realroom% == %self.realroom%) && (%actor% != %sinner%))
  %send% %actor% �� ��������, ��� %sinner.iname% ������%sinner.g% ����� �� ���.
  %send% %actor% �� ����� ��� �� ����� ���� ������!
elseif (%actor% == %sinner%)
  if (!%sinforgiven%)
    set sinforgiven 1
    global sinforgiven
  else
    halt
  end
  � ������%sinner.u% ��� ��������?
  � �� ��� ����� � ������!
  %send% %sinner% %self.iname% ��������� ��� �� ����.
  %send% %sinner% ������, ��� �� ������ ����������, �������� ���� �������� ���� ����!
  %echoaround% %sinner% %self.iname% ��������� %sinner.vname% � ����� ������ �� ���!
  switch %random.3%
    case 1
      set mess �-��-����!
    break
    case 2
      set mess �� ��� � ��� ��������! �� ��� ����� ���� �� ���� �� �����!
    break
    case 3
      set mess �! ������ ��!
    break
  done
  %force% %sinner% ������� %mess%
end
~
#35738
������� �� ����~
2 c 1
�����~
if (!%arg.contains(�� ����)%)
  return 0
  halt
end
if ((%attable.contains(%actor.iname%)%) && (%actor.position% <= 6))
  %send% %actor% �� ���� ��� �� ������!
  halt
else
  eval temp %actor.position(6)%
  %send% %actor% �� � ����������� ���������� � ������ ������.
  %echoaround% %actor% %actor.iname% �������%actor.u% �� ����.
  set tmp %actor.iname%
end
foreach guest %attable%
  if ((%guest.realroom% == %self.vnum%) && (%guest.position% <= 6) && (!%tmp.contains(%guest.iname%)%))
    set tmp %tmp% %guest.iname%
  end
done
set attable %tmp%
global attable
wait 5
%send% %actor% ��� �� ��� ����� �������� ��� �� �������� ��������� ����.
%echoaround% %actor% ��� �� ��� ����� �������� %actor.m% �� �������� ������ ����.
%echoaround% %actor% %actor.iname% ������%actor.u% �������� ���� ����� �� ������.
dg_cast '���������' .%actor.name%
~
#35739
����� � ������ �� ������~
2 e 100
~
if (!%attable%)
  halt
end
wait 1s
foreach guest %attable%
  if ((%guest.realroom% == %self.vnum%) && (%guest.position% <= 6))
    set tmp %tmp% %guest.iname%
  end
done
set attable %tmp%
global attable
if (!%attable%)
  halt
end
%send% %actor% �� ��������, ��� �� ������ ����� �� �����...
foreach sitter %attable%
  switch %random.10%
    case 1
      %send% %actor% %sitter% ����� �������� ��������� ���� ������� �����.
    break
    case 2
      %send% %actor% %sitter% �������� ������������ �����-�� ������� �� �����.
    break
    case 3
      %send% %actor% %sitter% ������ ��������� ��������.
      %send% %actor% � ���%sitter.g% �� ����� ��� ���� �������.
    break
    case 4
      %send% %actor% %sitter% ����� ������ �� ��������. ������, ���� ����������.
    break
    case 5
      %send% %actor% %sitter% ������ ��������� ������ ��������.
    break
    case 6
      %send% %actor% %sitter% ������������ � ����� �������� ��� � ���������.
      %send% %actor% ��������, ��� ���� ������� � ��������? � �� ����� ����?
    break
    case 7
      %send% %actor% %sitter% ������ ���������� � ����� ��������� �����.
    break
    case 8
      %send% %actor% %sitter% ����� ����� � ����, ���� � ����� ��������.
    break
    case 9
      %send% %actor% %sitter% ��������� ���������, ����� � �������.
      %send% %actor% ������, �������%sitter.g% �������.
    break
    case 10
      %send% %actor% %sitter% ����� �������� ���������� ������ �����.
    break
  done
done
~
#35740
���������� �� ������~
2 b 10
~
if (!%attable%)
  halt
end
foreach guest %attable%
  if ((%guest.realroom% == %self.vnum%) && (%guest.position% <= 6))
    set tmp %tmp% %guest.iname%
  end
done
set attable %tmp%
global attable
if (!%attable%)
  halt
end
%echo% ����� �������� ����� ����������� �� ������ ��������.
foreach sitter %attable%
  switch %random.8%
    case 1
      %send% %sitter% ��� ����� ���-�� ������ ����������.
      %send% %sitter% ����� �������, �� ��������� ������ �������� � �����.
      %echoaround% %sitter% ����� �������, %sitter.iname% ��������%sitter.g% ������ �������� � �����.
    break
    case 2
      %send% %sitter% ��������������, �� ����� �������� � ���� ���������.
      %echoaround% %sitter% ��������������, %sitter.iname% ����%sitter.g% �������� � ���� ���������.
    break
    case 3
      %send% %sitter% ���������� �������, �� ������ ����� ������� ������� � �����.
      %echoaround% %sitter% %sitter.iname% �������%sitter.g% �������� ����� � �����.
      %echo% _- ...�������, ��, ��� �������!
      %echo% _- � ������ - ����, ��� ������!
      %echo% _- �� �������� ������ �������,
      %echo% _- ������ ������� � �����...
    break
    case 4
      %echoaround% %sitter% %sitter.iname% ����� ������ �� ��������. ������, �����������%sitter.g%.
    break
    case 5
      %send% %sitter% ��� ����� ���������� ��������, �� ���� ��� �� ���������.
      %send% %sitter% ��� ���������� ���������� ������� �� ����, ������ �� �����... �����.
      %echoaround% %sitter% ���� %sitter.rname% ����� ������� %sitter.s% � ����.
      %echoaround% %sitter% ��� %sitter.s% ����������� ������� �� ���� ����� �� ���������... �����.
    break
    case 6
      %send% %sitter% �� ����� ������ ���� ��������, ��� ����� �� ����� ���� �������.
      %echoaround% %sitter% ������� ������ ������, %sitter.iname% ����%sitter.g% ����������, ��� ����� �������.
    break
  done
done
~
#35741
��������� ���� �� �������� � �����~
0 c 0
������ ����� ���� ��� ren rent~
*��������� ���� �� �������� � ����� : Mobiles : Command : 0 : ������ ����� ���� ��� ren rent
if ((%actor.vnum% != -1) || ((%cmd.mudcommand% != ������) && (%cmd.mudcommand% != rent)))
  return 0
  halt
end
*������ ������������ ��� ����� �����
set banlist 30625 79657 91521 91523 91524 91525 91529
*set poslist 121714+1514+153+43+43+4
*��������� ��������� ���� �� ������
foreach vnum %banlist%
  if (%actor.haveobj(%vnum%)%)
    calcuid item %vnum% obj
    set havestuff %havestuff% %item.vname%,
  end
done
*� ��������� ��������� ������� ���������� �� ���������� �������
set item %actor.eq(3)%
*���
if ((%item.vnum% == 91524) || (%item.vnum% == 91525) || (%item.vnum% == 91529))
  set havestuff %havestuff% %item.vname%,
end
set item %actor.eq(4)%
*���
if ((%item.vnum% == 91524) || (%item.vnum% == 91525) || (%item.vnum% == 91529))
  set havestuff %havestuff% %item.vname%,
end
set item %actor.eq(12)%
*�����
if (%item.vnum% == 30625)
  set havestuff %havestuff% %item.vname%,
end
set item %actor.eq(14)%
*��������
if ((%item.vnum% == 91521) || (%item.vnum% == 91523))
  set havestuff %havestuff% %item.vname%,
end
set item %actor.eq(15)%
*��������
if ((%item.vnum% == 91521) || (%item.vnum% == 91523))
  set havestuff %havestuff% %item.vname%,
end
set item %actor.eq(17)%
*���
if (%item.vnum% == 79657)
  set havestuff %havestuff% %item.vname%,
end
if (%havestuff.words% > 0)
  *���� ����-�� ������� - ������ � ��������
  tell %actor.name% �� ������� �� ����� �� �� ���� ������, ����� �� ������ %havestuff% a?
end
%cmd.mudcommand%
return 0
~
#35742
��������� ���� ��� ����������� �����~
0 c 0
o of off offe offer ��� ���� ����� ������ ������� �������� ��������� ���������� �����������~
*��������� ���� �� �������� � ����� : Mobiles : Command : 0 : o of off offe offer ��� ���� ����� ������ ������� �������� ��������� ���������� �����������
if ((%actor.vnum% != -1) || ((%cmd.mudcommand% != �����������) && (%cmd.mudcommand% != offer)))
  return 0
  halt
end
*������ ������������ ��� ����� �����
set banlist 30625 79657 91521 91523 91524 91525 91529
*set poslist 121714+1514+153+43+43+4
*��������� ��������� ���� �� ������
foreach vnum %banlist%
  if (%actor.haveobj(%vnum%)%)
    calcuid item %vnum% obj
    set havestuff %havestuff% %item.vname%,
  end
done
*� ��������� ��������� ������� ���������� �� ���������� �������
set item %actor.eq(3)%
*���
if ((%item.vnum% == 91524) || (%item.vnum% == 91525) || (%item.vnum% == 91529))
  set havestuff %havestuff% %item.vname%,
end
set item %actor.eq(4)%
*���
if ((%item.vnum% == 91524) || (%item.vnum% == 91525) || (%item.vnum% == 91529))
  set havestuff %havestuff% %item.vname%,
end
set item %actor.eq(12)%
*�����
if (%item.vnum% == 30625)
  set havestuff %havestuff% %item.vname%,
end
set item %actor.eq(14)%
*��������
if ((%item.vnum% == 91521) || (%item.vnum% == 91523))
  set havestuff %havestuff% %item.vname%,
end
set item %actor.eq(15)%
*��������
if ((%item.vnum% == 91521) || (%item.vnum% == 91523))
  set havestuff %havestuff% %item.vname%,
end
set item %actor.eq(17)%
*���
if (%item.vnum% == 79657)
  set havestuff %havestuff% %item.vname%,
end
if (%havestuff.words% > 0)
  *���� ����-�� ������� - ������ � ��������
  tell %actor.name% �� ������� �� ����� �� �� ���� ������, ����� �� ������ %havestuff% a?
end
%cmd.mudcommand%
return 0
~
$~

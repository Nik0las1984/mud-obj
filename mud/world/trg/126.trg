#12600
����� � �����~
2 c 0
�����~
wait 1
wechoaround %actor% %actor.name% ���%actor.y% � ���� � �����%actor.q%.
wsend %actor.name% ����� ������� �������� ��� �� ���������.
wait 1
wteleport %actor.name% 12664
wsend %actor.name% �� ��������� � ������� �� �����.
~
#12601
����� � ������� ������ ��������~
0 q 100
~
wait 1
if %actor.name%==�����
  ����������� %actor.name%
elseif %actor.clan%==�� && %actor.clanrank% < 6
  ������ %actor.name%
end
tell %actor.name% ����������� ���� %actor.name%!
tell %actor.name% ����� ������� �� ����� ������ "&R�����&C".&n
if %actor.clan%==�� && %actor.clanrank% < 4
  tell %actor.name% ���� ������, ����� � ����-������ ������ �� ����� ����� "&R��&C".&n
  tell %actor.name% ���� ������, ����� � ����� ����� � ����� ����� "&R������&C".&n
end
~
#12602
���� ���������� �� ������� ���� �����~
1 c 2
���������~
wait 1
if %actor.clan%==�� && actor.clanrank < 4
  osend %actor.name% �� ��������� ������������ %self.vname% �����������.
  detach 12613 %self.id%
  detach 12602 %self.id%
end
~
#12603
����� � ������~
0 r 100
0~
wait 1
if (%direction%==west || %direction%==south)
  mecho ����� ����� �������� �� ���, � ��������:
  mecho _- ������, ���� ������ ������ - ������ ������!
  mecho ��� ������ ����, ����������� ������.
  * attach 12604 %self.id%
end
~
#12604
���� ������� �����~
0 j 100
~
if (%object.vnum% == 12400)
  wait 1
  mpurge %object%
  wait 1s
  tell %actor.name% ��, ��� ��� ����� ����, %actor.name%!
  tell %actor.name% �� �� ���������... ��� �� ������ ������� ���?!
  �����
  wait 2s
  mkill %actor.name%
  halt
else
  wait 1
  say ������� ��� �������, ��� �� ������ ������� ������.
  say �� ��� �� �� ��� ����.
  eval getobject %object.name%
  ����� %getobject.car%.%getobject.cdr%
end
~
#12605
������� � �������� ������ ��������~
0 d 1
*~
wait 1
if %actor.vnum% != -1 || %actor.clan%!=�� || %actor.clanrank% > 3
  halt
end
switch %speech%
  case ��
    tell %actor.name% ��, ����, ��� ���� ������ ����������:
    tell %actor.name% 1.  ���� �������
    tell %actor.name% 2.  ���� ������� � 3 ������
    tell %actor.name% 3.  ���� ������� � 6 �������
    tell %actor.name% 4.  ������������ ��������
    tell %actor.name% 5.  ������� ����������� ����
    tell %actor.name% 6.  ������� ����������� ����
    tell %actor.name% 7.  ����� ����������� ����
    tell %actor.name% 8.  ���������� ����
    tell %actor.name% 9.  ������� � ������� ������
    tell %actor.name% 10. ������� ������ � �����������
    tell %actor.name% 11. ������� ������ � �����������
    tell %actor.name% 12. ������� ����� � �����������
    tell %actor.name% 13. ������ + ������ + ����� �������� (�2)
    tell %actor.name% 14. �����
    tell %actor.name% 15. �������
    tell %actor.name% 16. ��������
    tell %actor.name% 17. ���� ���
    tell %actor.name% 18. ���� � �������
    tell %actor.name% 19. ������
    tell %actor.name% 20. �������� ����
    tell %actor.name% ����� ��������� �����: "&R��������� <�����>&C"&n
  break
  case ������
    emote �������� �����
    eval room126 %world.room(12602)%
    foreach vict126 %room126.npc%
      mat 12602 mpurge %vict126%
    done
    say ����� ����� � �����.
  break
done
if %speech.contains(���������)%
  if  %world.people(12602)% != 0 
    say ��, �� ����� ��� ��� ����!
    halt
  end
  if %speech.contains(20)% 
    emote �������� �����
    mat 12602 mload mob 12646
    say �������� ���� ���� ��� �� �����.
  elseif %speech.contains(19)% 
    emote �������� �����
    mat 12602 mload mob 12644
    say ������ ���� ��� �� �����.
  elseif %speech.contains(18)% 
    emote �������� �����
    mat 12602 mload mob 12632
    mat 12602 mload mob 12633
    mat 12602 mload mob 12634
    mat 12602 mload mob 12635
    mat 12602 mload mob 12636
    say ���� � ������� ���� ��� �� �����.
  elseif %speech.contains(17)% 
    emote �������� �����
    mat 12602 mload mob 12637
    mat 12602 mload mob 12638
    mat 12602 mload mob 12638
    say ����-��� ���� ��� �� �����.
  elseif %speech.contains(16)%
    emote �������� �����
    mat 12602 mload mob 12631
    say �������� ���� ��� �� �����.
  elseif %speech.contains(15)% 
    emote �������� �����
    mat 12602 mload mob 12630
    say ������� ���� ��� �� �����.
  elseif %speech.contains(14)%
    emote �������� �����
    mat 12602 mload mob 12629
    say ����� ���� ��� �� �����.
  elseif %speech.contains(13)%
    emote �������� �����
    mat 12602 mload mob 12626
    mat 12602 mload mob 12627
    mat 12602 mload mob 12628
    say ������, �����, ������ �������� ���� ��� �� �����.
  elseif %speech.contains(12)%
    mat 12602 mload mob 12624
    mat 12602 mload mob 12625
    mat 12602 mload mob 12625
    mat 12602 mload mob 12625
    emote �������� �����
    say ������� ����� � ����������� ���� ��� �� �����.
  elseif %speech.contains(11)%
    emote �������� �����
    mat 12602 mload mob 12619
    mat 12602 mload mob 12623
    mat 12602 mload mob 12623
    mat 12602 mload mob 12623
    say ������� ������ � ����������� ���� ��� �� �����.
  elseif %speech.contains(10)%
    emote �������� �����
    mat 12602 mload mob 12617
    mat 12602 mload mob 12618
    mat 12602 mload mob 12618
    mat 12602 mload mob 12618
    say ������� ������ � ����������� ���� ��� �� �����.
  elseif %speech.contains(9)%
    mat 12602 mload mob 12620
    mat 12602 mload mob 12621
    emote �������� �����
    say ������� � ������� ������ ���� ��� �� �����.
  elseif %speech.contains(8)%
    emote �������� �����
    mat 12602 mload mob 12600
    say ��������� ���� ���� ��� �� �����.
  elseif %speech.contains(7)%
    emote �������� �����
    mat 12602 mload mob 12616
    say ����� ����������� ���� ���� ��� �� �����.
  elseif %speech.contains(6)%
    emote �������� �����
    mat 12602 mload mob 12615
    say ������� ����������� ���� ���� ��� �� �����.
  elseif %speech.contains(5)%
    emote �������� �����
    mat 12602 mload mob 12614
    say ������� ����������� ���� ���� ��� �� �����.
  elseif %speech.contains(4)%
    emote �������� �����
    mat 12602 mload mob 12639
    say ������������ �������� ���� ��� �� �����.
  elseif %speech.contains(3)%
    emote �������� �����
    mat 12602 mload mob 12612
    mat 12602 mload mob 12613
    mat 12602 mload mob 12613
    mat 12602 mload mob 12613
    mat 12602 mload mob 12613
    mat 12602 mload mob 12613
    mat 12602 mload mob 12613
    say ���� ������� � 6 ������� ���� ��� �� �����.
  elseif %speech.contains(2)%
    emote �������� �����
    mat 12602 mload mob 12612
    mat 12602 mload mob 12613
    mat 12602 mload mob 12613
    mat 12602 mload mob 12613
    say ���� ������� � 3 ������ ���� ��� �� �����.
  elseif %speech.contains(1)%
    emote �������� �����
    mat 12602 mload mob 12612
    say ���� ������� ���� ��� �� �����.
  else
    say � �� �����, � ��� �� ������ ���������?
    ������ %actor.name%
  end
end
~
#12606
���� �� �����~
2 c 0
�����~
wait 1
if !%actor.rentable%
  %send% %actor.name% � ������ ������ �������� ������ �� ����� �������� � ������� �����������...
  halt
end
wechoaround %actor% �������� �� ��������� �������, %actor.name% ������%actor.g% � �������� ����.
wsend %actor.name% ���������� ��������, �� ������� � �������� ����.
wait 1
switch %random.4%
  case 1
    wteleport %actor% 12604 horse
    wat 12604 %echoaround% %actor% %actor.name% ������%actor.u% �� ��������.
  break
  case 2
    wteleport %actor% 12624 horse
    wat 12624 %echoaround% %actor% %actor.name% ������%actor.u% �� ��������.
  break
  case 3
    wteleport %actor% 12646 horse
    wat 12646 %echoaround% %actor% %actor.name% ������%actor.u% �� ��������.
  break
  default
    wteleport %actor% 12656 horse
    wat 12656 %echoaround% %actor% %actor.name% ������%actor.u% �� ��������.
  break
done
wait 1
%send% %actor.name% �� ��������� �� ��������� ��������� ������.
~
#12607
���������� ���������~
2 c 0
��������~
wait 1
if !(%arg.contains(�����)%)
  wechoaround %actor% %actor.name% �����%actor.g% ���-�� ���������� �� �����.
  wsend %actor.iname% �� ��� �� ������ ��������?
  return 0
  halt
end
%actor.wait(2)%
wechoaround %actor% %actor.name% �������%actor.g% ���-�� �� �����, ����� ���� �������� ����� ������.
wsend %actor.iname% �� ��������� �����, �������� ������ ������, ������ �� ���� ��������. �������� ����� ������.
detach 12609 %world.room(12666)%
detach 12609 %world.room(12667)%
detach 12609 %world.room(12668)%
end
~
#12608
��������� ���������~
2 e 100
~
wait 1
%actor.wait(2)%
wait 2
if ( %world.people(12666)% == 0 ) && ( %world.people(12667)% == 0 ) && ( %world.people(12668)% == 0 )
  wecho ������ %actor.dname% ��������� �� ���� �� ������ ��� ���������� ������ ������.
  attach 12609 %world.room(12666)%
  attach 12609 %world.room(12667)%
  attach 12609 %world.room(12668)%
end
~
#12609
������� �� �������~
2 g 100
~
wait 1
%actor.wait(2)%
wecho �������� �� ��������������� � ����� ������ ������� ��� ��������.
wecho ���������� ����������� ����������, �� ��������� ������...
foreach victim %self.all%
  if (%victim.maxhitp% < %victim.hitp%)
    eval dam126 %victim.hitp%*17/20
  else
    eval dam126 %victim.maxhitp%*17/20
  end
  wdamage %victim% %dam126%
done
~
#12610
from trap~
2 c 0
�����~
wait 1
if (%actor.clan% == �� ) && %actor.rentable%
  wteleport %actor% 12662
end
~
#12611
�������� ��������~
1 c 3
��������~
wait 1
if (%actor.clan%!=��)
  oechoaround %actor% %actor.name% �����%actor.u% ������ ������ ��������. � ��� ��� � �������?
  osend %actor% �� ������ ������ ��������. ��������� �������.
  halt
end
if %world.curmobs(12611)% < 50
  oechoaround %actor% %actor.name% �����%actor.g% ������ �������� � ��� ����������� � �������� �����������.
  osend %actor% �� ������� �������� � �� ����������� � �������� �����������!
  oload mob 12611
  wait 1
  opurge %self%
else
  osend %actor% �� ������� �������� �� ������ �� ���������.
end
~
#12612
��������� �����������~
0 c 0
���������~
wait 1
if (%actor.clan%!=��)
  mechoaround %actor% %actor.name% ����������%actor.g% �������� �����������, �� �� ���������� ������� ��� �� �����.
  msend %actor% �� ����������� ��������� �����������, �� ��� ���������� ������� ��� �� �����!
  halt
end
mechoaround %actor% %actor.name% ��������� ��������%actor.g% �����������. ����������� � ������� ������� �������.
msend %actor% �� ��������� ��������� �����������. ����������� � ������� ������� �������.
mload obj 12635
wait 1
mpurge %self%
~
#12613
���� ���� �� ������� � ����� ��� ����� �� ����������~
1 g 100
~
* ���� ������ ����-���� ��� ������� ����� ��� ������� ����������-���������� � ����� ��
if ( %actor.vnum% != -1 )
  halt
end
wait 1
* �������� ���� ����� ���� -- ����� ������
if %actor.clan% == ��1 || %actor.clan% == ��2 || %actor.clan% == ��3
  halt
end
* �� �� � �� �������� -- �� �����
if ( %actor.clan% != �� )
  oecho �������� %self.iname% �����%self.q% � ����� �������.
  wait 1
  opurge %self.id%
end
~
#12614
���������� ������ �������~
0 k 40
~
%echo%  \&r����� ������ %self.rname% ��������� � ������� �������� ��������.\&n
~
#12615
����������� �����~
0 k 100
~
eval sniper %random.pc%
if (%sniper.class% == 9)
  eval value %sniper.cha%-5
elseif (%sniper.class% == 3)
  eval value %sniper.cha%-9
elseif (%sniper.class% == 11)
  eval value %sniper.cha%-13
elseif (%sniper.class% == 10)
  eval value %sniper.cha%-17
elseif (%sniper.class% == 5)
  eval value %sniper.cha%-21
else 
  eval value 1+1
end
if (%value% < 2)
  eval value 1+1
end
if (%random.100% < %value%)
  msend %sniper.name% �� ������ ������ ��������� ���� �����.
  mechoaround %sniper.name% %sniper.name% ������ ������ ��������%sniper.g% ����� ����.
  detach 12615 %self.id%
end
unset value
unset sniper
if %random.9% == 1
  eval target %random.pc% 
  dg cast '�������' %target.name%
  unset target
end
~
#12616
����������� ������ (3 ������)~
0 k 100
~
eval sniper %random.pc%
if (%sniper.class% == 9)
  eval value %sniper.cha%
elseif (%sniper.class% == 3)
  eval value %sniper.cha%-4
elseif (%sniper.class% == 11)
  eval value %sniper.cha%-8
elseif (%sniper.class% == 10)
  eval value %sniper.cha%-12
elseif (%sniper.class% == 5)
  eval value %sniper.cha%-16
else 
  eval value 1+1
end
if (%value% < 2)
  eval value 1+1
end
if (%random.100% < %value%)
  msend %sniper.name% �� ������ ������ ������ ������ ����� ������!
  mechoaround %sniper.name% %sniper.name% ������ ������ ����%sniper.g% ������ ����� ������!
  attach 12617 %self.id%
  detach 12616 %self.id%
end
unset value
unset sniper
if %random.20% == 1
  dg cast '�����' ������
  dg cast '�����' �����
  dg cast '�����' ������
  mecho ������ ������ ������ ���������� ���������� ����������!
end
if %random.15% == 1
  dg cast '���� ����' 
  mecho ����� ������ ������ ���������� ����������� ����������!
end
~
#12617
����������� ������ (2 ������)~
0 k 100
~
eval sniper %random.pc%
if (%sniper.class% == 9)
  eval value %sniper.cha%-3
elseif (%sniper.class% == 3)
  eval value %sniper.cha%-7
elseif (%sniper.class% == 11)
  eval value %sniper.cha%-11
elseif (%sniper.class% == 10)
  eval value %sniper.cha%-15
elseif (%sniper.class% == 5)
  eval value %sniper.cha%-19
else 
  eval value 1+1
end
if (%value% < 2)
  eval value 1+1
end
if (%random.100% < %value%)
  msend %sniper.name% �� ������ ������ ������ ������ ������ ������!
  mechoaround %sniper.name% %sniper.name% ������ ������ ����%sniper.g% ������ ������ ������!
  detach 12617 %self.id%
end
unset value
unset sniper
if %random.20% == 1
  dg cast '�����' ������
  dg cast '�����' �����
  dg cast '�����' ������
  mecho ������ ������ ������ ���������� ���������� ����������!
end
~
#12618
����������� ������ (6 �����)~
0 k 100
~
eval sniper %random.pc%
if (%sniper.class% == 9)
  eval value %sniper.cha%
elseif (%sniper.class% == 3)
  eval value %sniper.cha%-4
elseif (%sniper.class% == 11)
  eval value %sniper.cha%-8
elseif (%sniper.class% == 10)
  eval value %sniper.cha%-12
elseif (%sniper.class% == 5)
  eval value %sniper.cha%-16
else 
  eval value 1+1
end
if (%value% < 2)
  eval value 1+1
end
if (%random.100% < %value%)
  msend %sniper.name% �� ������ ������ ������ ������ ������ ������!
  mechoaround %sniper.name% %sniper.name% ������ ������ ����%sniper.g% ������ ������ ������!
  attach 12619 %self.id%
  detach 12618 %self.id%
end
unset value
unset sniper
if %random.20% == 1
  mecho ������ ������ ������ ���������� ���������� ����!
  dg cast '��� ���' 
end
if %random.19% == 1
  mecho ����� ������ ������ ������� �����!
  dg cast '��� ���' 
end
if %random.18% == 1
  mecho ��������� ������ ������ ������� ����������� �����!
  dg cast '������ ���' 
end
if %random.17% == 1
  mecho ������ ������ ������ ������������!
  eval target %random.pc% 
  dg cast '��� ���' %target.name%
  unset target
end
if %random.16% == 1
  mecho ������ ������ ������ ������� �������� �����!
  eval target %random.pc% 
  dg cast '��� ���' %target.name%
  unset target
end
~
#12619
����������� ������ (5 �����)~
0 k 100
~
eval sniper %random.pc%
if (%sniper.class% == 9)
  eval value %sniper.cha%-1
elseif (%sniper.class% == 3)
  eval value %sniper.cha%-5
elseif (%sniper.class% == 11)
  eval value %sniper.cha%-9
elseif (%sniper.class% == 10)
  eval value %sniper.cha%-13
elseif (%sniper.class% == 5)
  eval value %sniper.cha%-17
else 
  eval value 1+1
end
if (%value% < 2)
  eval value 1+1
end
if (%random.100% < %value%)
  msend %sniper.name% �� ������ ������ ������ ������ ����� ������!
  mechoaround %sniper.name% %sniper.name% ������ ������ ����%sniper.g% ������ ����� ������!
  attach 12620 %self.id%
  detach 12619 %self.id%
end
unset value
unset sniper
if %random.18% == 1
  mecho ����� ������ ������ ������� �����!
  dg cast '��� ���' 
end
if %random.17% == 1
  mecho ��������� ������ ������ ������� ����������� �����!
  dg cast '������ ���' 
end
if %random.16% == 1
  mecho ������ ������ ������ ������������!
  eval target %random.pc% 
  dg cast '��� ���' %target.name%
  unset target
end
if %random.15% == 1
  mecho ������ ������ ������ ������� �������� �����!
  eval target %random.pc% 
  dg cast '��� ���' %target.name%
  unset target
end
~
#12620
����������� ������ (4 ������)~
0 k 100
~
eval sniper %random.pc%
if (%sniper.class% == 9)
  eval value %sniper.cha%-2
elseif (%sniper.class% == 3)
  eval value %sniper.cha%-6
elseif (%sniper.class% == 11)
  eval value %sniper.cha%-10
elseif (%sniper.class% == 10)
  eval value %sniper.cha%-14
elseif (%sniper.class% == 5)
  eval value %sniper.cha%-18
else 
  eval value 1+1
end
if (%value% < 2)
  eval value 1+1
end
if (%random.100% < %value%)
  msend %sniper.name% �� ������ ������ ������ ������ ��������� ������!
  mechoaround %sniper.name% %sniper.name% ������ ������ ����%sniper.g% ������ ��������� ������!
  attach 12621 %self.id%
  detach 12620 %self.id%
end
unset value
unset sniper
if %random.16% == 1
  mecho ��������� ������ ������ ������� ����������� �����!
  dg cast '������ ���' 
end
if %random.15% == 1
  mecho ������ ������ ������ ������������!
  eval target %random.pc% 
  dg cast '��� ���' %target.name%
  unset target
end
if %random.14% == 1
  mecho ������ ������ ������ ������� �������� �����!
  eval target %random.pc% 
  dg cast '��� ���' %target.name%
  unset target
end
~
#12621
����������� ������ (3 ������)~
0 k 100
~
eval sniper %random.pc%
if (%sniper.class% == 9)
  eval value %sniper.cha%-3
elseif (%sniper.class% == 3)
  eval value %sniper.cha%-7
elseif (%sniper.class% == 11)
  eval value %sniper.cha%-11
elseif (%sniper.class% == 10)
  eval value %sniper.cha%-15
elseif (%sniper.class% == 5)
  eval value %sniper.cha%-19
else 
  eval value 1+1
end
if (%value% < 2)
  eval value 1+1
end
if (%random.100% < %value%)
  msend %sniper.name% �� ������ ������ ������ ������ ������ ������!
  mechoaround %sniper.name% %sniper.name% ������ ������ ����%sniper.g% ������ ������ ������!
  attach 12622 %self.id%
  detach 12621 %self.id%
end
unset value
unset sniper
if %random.14% == 1
  mecho ������ ������ ������ ������������!
  eval target %random.pc% 
  dg cast '��� ���' %target.name%
  unset target
end
if %random.13% == 1
  mecho ������ ������ ������ ������� �������� �����!
  eval target %random.pc% 
  dg cast '��� ���' %target.name%
  unset target
end
~
#12622
����������� ������ (2 ������)~
0 k 100
~
eval sniper %random.pc%
if (%sniper.class% == 9)
  eval value %sniper.cha%-4
elseif (%sniper.class% == 3)
  eval value %sniper.cha%-8
elseif (%sniper.class% == 11)
  eval value %sniper.cha%-12
elseif (%sniper.class% == 10)
  eval value %sniper.cha%-16
elseif (%sniper.class% == 5)
  eval value %sniper.cha%-20
else 
  eval value 1+1
end
if (%value% < 2)
  eval value 1+1
end
if (%random.100% < %value%)
  msend %sniper.name% �� ������ ������ ������ ������ ������ ������!
  mechoaround %sniper.name% %sniper.name% ������ ������ ����%sniper.g% ������ ������ ������!
  detach 12622 %self.id%
end
unset value
unset sniper
if %random.12% == 1
  mecho ������ ������ ������ ������� �������� �����!
  eval target %random.pc% 
  dg cast '��� ���' %target.name%
  unset target
end
~
#12623
������� ������� ����� ����~
0 c 1
�������~
wait 1
say ��� ���� � ���� ������ ���, ���������� � ����������.
halt
wait 1
* if %arc.contains(�������)%
if %actor.clan%!=��
  msend %actor.name% �������� ������� � ������ �����!
  halt
end
if %actor.bank%<1050
  msend %actor.name% ����� ����� � ����� �� ������� �� �������!
  halt
end
%actor.bank(-1050)%
* ���������� ���� = 80 ���
mload obj 12602
* ������� ����� = 50 ���
mload obj 12603
* ������� ������ = 60 ���
mload obj 12604 
* ������� �������� = 35 ���
mload obj 12605 
* ������� ������ = 70 ���
mload obj 12606 
* ������� ���� = 30 ���
mload obj 12607 
* ������� ������ = 60 ���
mload obj 12608 
* ������ ���� = 35 ���
mload obj 12609 
* ������� ���� = 35 ���
mload obj 12619 
* ������ 2 ��. = 15+15=30 ���
mload obj 12628 
mload obj 12628 
* ������� ������� 2 ��. = 35+35=70 ���
mload obj 12632 
mload obj 12632 
* ������� ������ 2 ��. = 5+5=10 ���
mload obj 12637 
mload obj 12637 
* ������ �������� 3 ��. = 25+25+25=75 ���
mload obj 12621 
mload obj 12621 
mload obj 12621 
* ������� ����������� ������ = 100 ���
mload obj 12623 
* ������� �������������� ��� = 300 ���
mload obj 12624 
* ����� � ����� ��������� = 20 ���
mload obj 142
* ����� = 10 ���
mload obj 12620 
give all %actor.name%
*end
~
#12624
������ ����� ����-���~
0 k 100
~
if %random.3% == 1
  eval spell %random.18%
  if %spell% == 1
    dg_cast '��� �����'
  elseif %spell% <4
    eval target %random.pc% 
    dg_cast '���� �����' %target.name%
    unset target
  elseif %spell% <7
    dg_cast '�� ��'
  elseif %self.hitp% < 15000
    mecho ����-��� ����� ������� ����� � ����� ����.
    mecho ����-��� ������� ������� �����.
    dg_cast '���� ���'
    dg_cast '���� ���'
    dg_cast '���� ���'
    dg_cast '���� ���'
    dg_cast '���� ���'
  end
elseif %random.30% == 1 && %self.hitp% < 12000
  dg_cast '���������'
  mecho ����-��� ����� ������� ����� � ����� ����.
  mecho ����-��� ������� ������� �����.
end
~
#12625
������ ���� ������ �����~
0 k 100
~
dg_cast '��� ���' 
eval target %random.pc% 
dg_cast '����' %target.name%
unset target
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
if %world.curmobs(12638)% <5 && %self.hitp% > 3000
  mecho ������ ����� ����������!
  mload mob 12638
  mload mob 12638
  mpurge %self%
end
~
#12626
� ��� � ������������� ��������~
0 k 50
~
switch %random.6%
  case 1
    if %world.curmobs(12640)% < 10
      mecho _������������ �������� ����� ��������� �� ���� �������������� �������.
      mload mob 12640
    end
  break
  case 2
    if %world.curmobs(12641)% < 10
      mecho _������������ �������� ����������, � ��������� �� ���� ��������� �������.
      mload mob 12641
    end
  break
  case 3
    if %world.curmobs(12642)% < 10
      mecho _������������ �������� � ��������� ��������� �� ���� �������-�����.
      mload mob 12642
    end
  break
  case 4
    if %world.curmobs(12643)% < 10
      mecho _������������ �������� ����������, � � ����� ���� ������ ������� �����.
      mload mob 12643
    end
  break
  default
  break
done
end
~
#12627
������������ �������� �������~
0 f 100
~
mecho _�� ����� ������������ �������� ���������� ��������� ����������.
mload mob 12640
mload mob 12640
mload mob 12641
mload mob 12642
mload mob 12643
~
#12628
�����������  �������~
0 k 100
~
eval wai %random.4%*2+4
wait %wai%s
if %self.vnum% == 12644
  mtransform 12645
else
  mtransform 12644
end
~
#12629
������ ����� ��������� ����~
0 k 100
~
set i 0
if %self.hitp% < 10000
  eval i (%self.hitp%)/1000+4
  if !%self.affect(��������)% && %self.position% > 6 && %random.%i%% < 2
    mecho _�������� ����� ������� ��������� ����!
    dg_cast '��� ���'
    dg_cast '�����'
  end
end
eval wai %random.3%*2+4
wait %wai%s
mtransform 12646
wait 2s
mtransform 12647
~
#12630
��������� ���� �����~
1 c 3
���������~
* ��� ����� ������� ����� (12619) ������������ � ����� (12653)
if %actor.clan% == ��
  osend %actor% �������� &K%self.iname%&n ���� ��������%self.g%.
  if (%self.vnum% == 12619)
    otransform 12653
  else
    otransform 12619
  end
end
~
#12631
������ �� ����� ������ ��~
1 c 4
*~
if (%cmd.mudcommand% == ������ || %cmd.mudcommand% == read)
  if (%actor.clan% != �� || !%actor.name%)
    wait 1
    if %actor%
      osend %actor% ��� �� ��������� ������ ��� ����� ���������!
    end
  end
end
return 0
~
#12632
����� ��~
1 c 3
���������~
wait 1
if %actor.clan% == �� && %actor.clanrank% < 4
  set ndmember %arg%
  if %ndmember.clan% == ��
    set memberlocation %ndmember.realroom%
    if %ndmember.rentable%
      osend %actor% %ndmember.name% %ndmember.hitp%/%ndmember.maxhitp%H %ndmember.move%/%ndmember.maxmove%M %ndmember.level%L ���������: %memberlocation.name%
    else
      osend %actor% %ndmember.name% %ndmember.hitp%/%ndmember.maxhitp%H %ndmember.move%/%ndmember.maxmove%M %ndmember.level%L [��!] ���������: %memberlocation.name%
    end
  end
end
~
$~

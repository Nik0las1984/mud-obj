#79600
����������� �����~
0 r 100
~
wait 1
say ������ ����!
mecho _- ������� � ����� ������, ��������.
wait 1
say ��� ������� ���� ����? ��������� ��� �����, ���������.
mecho _- ������ ������, ���������� ����� ����� � ���� � ��.
mecho _- ��������� ��� �� ������� � ���� ������.
���
wait 1
say ����� �� �������?
���� .%actor.iname%
attach 79601 %self.id%
~
#79601
������ "�� �����"~
0 d 3
�� �����~
wait 1s
say � �� ����� �� ������� �������!
mecho _- ���� ��������, ��� ����� ������ ������?
wait 1
say �� �� �� ����� ��� ����...
wat 1s
say ����� �, ��� ��� ���� ����
mecho _- ����� ��� �����, ���� �������� ������ ���� �����.
mecho _- ����� ������� ���� �����, ����� ������ ���� �������...
���
wait 1
say ��� � ����� ���� ������. �����, �����, ������� ����.
mecho _- ��� ������� ���� �� ������� �������, ������� ���� ����.
mecho _- � ���� ����� ������ ������ �� � ��������� ��������.
mecho _- � ��� ��� � ������ ���� ���, �����.
wait 1
say ����� ��� ��������. ������� ���, ������� ������, ��� �����, �� � ����� �� ������� ������ �����.
say �� ��� ���� ������. ������ � ����, ����� ����� ������� ���� ������ � ��� ����.
wait 1
���
say �������� ��� ��������, ������. 
mecho _- ������... �� � ��������. ����� �� ������� �� ���������, ������ �� �����.
mecho _- ��� �� ����, ��������� ��� ����������. 
wait 1
say ��������� ��� ���� � ������, ������ ��������, � ����� �������� �������, ��� �� �������.
mecho _- ���������, ������ ��� ���� ����� �������.
����
say �� ������ ���� � ����. ����� ������ �� ������? ������ ���... �� � ��� �� ��������.
emot ������ �� ������������ ����
say ���, �� ��������� ���.
mecho _- �� ����-�� ���� �� �����, �� �������, ���� �� ��������, �� � ���������, � �����.
mecho _- ��������? � �� �������, ��� ���� �������� �������, ���� �����.
mecho _- ���� �� ����� �����.
������ .%actor.name%
attach 79615 %self.id%
detach 79600 %self.id%
detach 79601 %self.id%
~
#79602
���� ��� ������~
2 g 40
~
wait 1
wecho _�� �������� ������� � ��������� ������-�� �����!
~
#79603
���� ������~
2 e 20
~
wait 1s
wecho _������ �������� ��������, ������� ����� �������� ����� � �������� ��� ������.
~
#79604
������� � ������~
1 c 100
��������� �������~
wait 1s
oecho %actor.iname% �����%actor.q% ��������� � ������.
wait 2s
oecho _������, ������ �����, �������� �� ������ � ���� �����.
oload obj 79601
detach 79604 %self.id%
**��� �� ��� ���� ������?
*�� �����, ���� �� ���������.
~
#79605
����� ����� � �������.~
0 q 100
~
context 796
wait 1
say �, ����� ���������!
���
wait 1
mforce %oldwitch% say �������. ���� ���� �������� �� ����� �����, � ����� ����.
mforce %oldwitch% say ��� �� ������ ����, � ������ ����?
mforce %oldwitch% ��� .%actor.name%
wait 2
emot ������ ������� � ������� ������� ������ �� ������
set quest 0
foreach target %self.pc%
  if (%target.id% == %quest796%)
    set quest 1
  end
done
if (%quest% == 0)
  mforce %youngwitch% say ��� ���� �������, �������.
  mforce %youngwitch% say ������ ���, ������ �������, ����� �� ���� �� ������.
  wait 1
  mforce %oldwitch% ��� ��� ���...
  mforce %oldwitch% ����
  mforce %oldwitch% emot �������-���������, � ����� ����� ������� ��� ����������� � ����������
  foreach victim %self.pc%
    dg_cast '����� ��������' .%victim.name%
  done
  halt
end
wait 2s
mforce %youngwitch% say ������� ��� ����, �������.
mforce %youngwitch% say ���, ��� �� ���������, ����� ������ ��������, ������ ���������.
mforce %youngwitch% emot �������� � ������� ��������� ����-��, �������� �� ��������� ����
wait 3
mforce %oldwitch% say ��� ��, ���� ��, ��� �����.
mforce %oldwitch% say ������ �������� ���-��� ��� �����.
wait 2s
mforce %oldwitch% say ������� ������, ��� �� ����� �������� �����.
wait 2
mforce %youngwitch% say ����� � ���������, ��� ��-�� ������ ���������!
wait 2
mforce %oldwitch% shout ����� ��������, ��� ����� �� �����!
wait 2
mforce %youngwitch% shout ���� �����, ������ �����������!
wait 2
mforce %oldwitch% shout ������ ����, ������� �� ���������!
wait 4
shout � ����! ����!!!
mforce %oldwitch% emot ��������� � ����� ������ ������
wait 1
say �� ����� ����, ��� ����� ������� ������.
���
wait 1
say ����� �������, �� �����, �� ������, �� ��������, �� � �� ���������...
say ��� ������, ��� � �������! � ��� - � ���� ��������!
�����
mforce %youngwitch% �����
mforce %oldwitch% �����
wait 1
say ��� �� ����? �� � ����������... � �� � �������������.
emot ����� ������������ ����������� � ������
detach 79605 %self.id%
~
#79606
����� - ���� ����� �������� + ����~
0 f 100
~
*���� ��� ���������
if (%world.curmobs(79602)% == 1)
  mload obj 79602
  set werewolfisdead 1
  global werewolfisdead
  calcuid warrior 79600 mob
  remote werewolfisdead %warrior%
end
if (%world.curobjs(79625)% < 4) && (%random.100% < 9)
  mload obj 79625
end
~
#79607
����� - ���� ������ ������� + ����~
0 f 100
~
*���� ��� ���������
if (%world.curmobs(79605)% == 1)
  mload obj 79603
  set vampireisdead 1
  global vampireisdead
  calcuid warrior 79600 mob
  remote vampireisdead %warrior%  
end
if (%world.curobjs(79622)% < 4) && (%random.100% < 9)
  mload obj 79622
end
~
#79608
����� - ���� ������� ������ + ����~
0 f 100
~
*���� ��� ���������
if (%world.curmobs(79606)% == 1)
  mload obj 79604
  set ghostisdead 1
  global ghostisdead
  calcuid warrior 79600 mob
  remote ghostisdead %warrior%  
end
if (%world.curobjs(79611)% < 4) && (%random.100% < 9)
  mload obj 79611
end
~
#79609
����� - ���� ������ ����� + ����~
0 f 100
~
*���� ��� ���������
if (%world.curmobs(79607)% == 1)
  mload obj 79606
  set wormisdead 1
  global wormisdead
  calcuid warrior 79600 mob
  remote wormisdead %warrior%
end
if (%world.curobjs(79626)% < 4) && (%random.100% < 9)
  mload obj 79626
end
~
#79610
����� - ���� ����� �������� + ����~
0 f 100
~
*���� ��� ���������
if (%world.curmobs(79608)% == 1)
  mload obj 79607
  set undeadisdead 1
  global undeadisdead
  calcuid warrior 79600 mob
  remote undeadisdead %warrior%
end
if (%world.curobjs(79627)% < 4) && (%random.100% < 9)
  mload obj 79627
end
~
#79611
����� - ���� ������ ����~
0 f 100
~
eval serbes %world.curmobs(79609)%+%world.curmobs(79610)%
*���� ��� ���������
if (%serbes% == 1)
  mload obj 79608
  set devilisdead 1
  global devilisdead
  calcuid warrior 79600 mob
  remote devilisdead %warrior%
end
~
#79612
����� ����� �������~
0 j 100
~
context 796
if (%actor% != %quest796%)
  msend %actor% _�� �����, � �� �������� ����� ��� ��������, ��� ������...
  return 0
  halt
end
wait 1
switch %object.vnum%
  case 79602
    set eye796 1
    worlds eye796
  break
  case 79603
    set fang796 1
    worlds fang796
  break
  case 79604
    set shroud796 1
    worlds shroud796
  break
  case 79606
    set tail796 1
    worlds tail796
  break
  case 79607
    set edge796 1
    worlds edge796
  break
  case 79608
    set heart796 1
    worlds heart796
  break
  default
    say ����� �� ��� ����� ���?
    mecho _- ��� ����� ����������, � �� ���������� ����, �������� ����!
    ����
    give all .%actor.name%
    halt
  done
  switch %random.5%
    case 1
      say �������!
    break
    case 2
      say ���� �����, ������ ������ ����� ������ ����? �����, ������.
    break
    case 3
      say � ������� ����� -- ������ �������, ������ ���������... 
    break
    case 4
      say ������ ����, ����� ����!
      ���
    break
    case 5
      say ��, �������!
      ���
    break
  done
  set ingr %object.name%
  mjunk all
  wait 2s
  emot ������� %ingr% � ������� � �������� ������
  mecho �� ��� ������� �������� �������
  eval result %eye796%+%fang796%+%tail796%+%edge796%+%heart796%+%shroud796%
  *�� ��� ����� �����
  *say ����� ����� ������ - %result%
  *say %eye796% %fang796% %tail796% %edge796% %heart796% %shroud796%
  if (%result% < 6)
    halt
  end 
  *���� ��� ���� �����, ��������� �����
  exec 79628 %redwitch.id%
  detach 79612 %self.id%
~
#79613
������ � ����� ����� ������~
0 q 100
~
if (%actor.id% != %quest796%)
  halt
end
wait 1
say �� ���, ������� ����?
������
attach 79614 %self.id%
detach 79613 %self.id%
~
#79614
������ "������" � �����~
0 d 0
�� ������ ������� �������~
wait 1
if (%actor.id% != %quest796%)
  halt
end
eval monsters %werewolfisdead%+%wormisdead%+%undeadisdead%+%vampireisdead%+%ghostisdead%+%devilisdead%
if (%monsters% < 6)
  say ������ ��?
  wait 1s
  mecho _��� �� ���� ������� ������ ���.
  emot ��������� � ��������� �� ������
  wait 3
  ����
  say �������%actor.g% - ��� � �����, � ����� ����!
  halt
end
wait 1s
say ��� � ������!
*������� 1 -- ������ �����
if (%witchesisdead% == 1)
  say � ������� ���� ����������� ���%actor.g% � ������ ������%actor.q%?
  wait 1s
  say ������ ������! ��� � ������� ���������.
  wait 3
  *��������� ������� ������� -- �� �������� �����
  eval treasures 79628 79629 79630 79631 79632
  set prize
  foreach item %treasures%
    *���������� ������ ������ ���������, ������� ������ ��������� � ����
    if (%world.curobjs(%item%)% < %world.maxobj(%item%))
      eval prize %prize% %item%
    end
  done
  %prize.trim%
  *����� ��������� � ������� "�� ����� ���"
  set maxitems 2
  set numofitems %prize.words%
  if (%maxitems% > %numofitems%)
    set maxitems %numofitems%
  end
  while (%maxitems% > 0)
    eval n %random.num(%numofitems%)%  
    eval itemnum %prize.words(%n%)%
    *�� ������ ���� ������ ����� ���� � ��� �� �����
    if ((%world.curobjs(%itemnum%)% < %world.maxobj(%itemnum%)) && (%random.100% < 21))
      mload obj %itemnum%
    end
    eval maxitems %maxitems%-1
  done
  mload obj 79613
  give all .%actor.name%
  say � ��� ��������� ���... ������� ����, ����� �� ������, �� � ����� ������� ����.
  ���
  halt
end
*������� 2 -- ������� �����
say � ������� ����, ����� ��������� -- �������%actor.q%?
wait 1s
say ��� ���?
emot � ������� �������
wait 1s
say �� ��, � ��� �� ������ ����� ����� ����! ������ ��� -- �� ��� ����, �� �����.
mecho _- ���� ��� ������� -- ��� ����� ������ ��������, �� �������, ��� ����� �� ����!
����
wait 1s
say �����, ������, ��� �������. �������� �������, �� �� ��������.
*����������� ������� - ����� ���
mload obj 79613
give all .%actor.name%
say ��� �����...
mecho ���� �����, �������� ���� �������, � ����������� ���������� � ������ �� ����.
%self.action(-!���������)%
wait 10s
mecho ���� ������� �� ���� �� ���������.
wait 1
mpurge %self%
~
#79615
������ "������" � �����.~
0 d 0
�� �������� �������� ������ ������~
wait 1
if ((%actor.vnum% != -1) || %quest796%)
  halt
end
set quest796 %actor%
global quest796
calcuid witch 79623 mob
remote quest796 %witch.id%
calcuid witch 79624 mob
remote quest796 %witch.id%
calcuid witch 79625 mob
remote quest796 %witch.id%
mecho _���� ������������� � ����������� ���.
wait 1
say �����.
wait 1
say ���� �� �����������.
mecho _- ������� ��������� ���������� �� �������.
mecho _- ��������� ����, �� �������� ����� � ��� �������.
mecho _- ���� ������ � �� �������, �� ���� ��������� ������� �� �������.
mecho _- ������ ���, ���� ���� ����������.
wait 1
mecho ������ ���� ������� �� ������ � �������� ��� ����������� ���.
mload obj 79636
give �����������.��� %actor.name%
drop all
attach 79613 %self.id%
detach 79615 %self.id%
~
#79616
������ �����~
0 f 100
~
eval witches %world.curmobs(79623)%+%world.curmobs(79624)%+%world.curmobs(79625)%
if (%witches% > 1)
  halt
end
mecho _������, %self.name% ����� � ���������� ������� � ������� � ������.
set witchesisdead 1
global witchesisdead
calcuid warrior 79600 mob
remote witchesisdead %warrior%
~
#79617
������������ ���� 796 -- ������ ��~
2 f 100
~
context 796
*������ ������� ����������
unset eye796
unset fang796
unset tail796
unset edge796
unset heart796
unset shroud796
*��������� ��������� ������� �������
wdoor 79674 west purge
wdoor 79668 east purge
wdoor 79669 west purge
*������� ���� �� ��������� ������� ������
calcuid treasure 79669 room
rdelete quest796 %treasure.id%
detach 79643 %treasure.id%
*** ��������� ������ �� �������
if (%world.curmobs(79620)% < 2)
  calcuid hideout 79678 room
  attach 79647 %hideout.id%
  switch %random.4%
    case 1
      set qroom 79682
    break
    case 2
      set qroom 79626
    break
    case 3
      set qroom 79639
    break
    case 4
      set qroom 79658
    break
  done
  wat %qroom% wload obj 79650
  calcuid qroom %qroom% room
  attach 79621 %qroom.id%
end
*** ������� ����� �� ������� ��������
wait 1
calcuid qroom 79693 room
attach 79632 %qroom.id%
calcuid qroom 79643 room
attach 79632 %qroom.id%
calcuid qroom 79628 room
attach 79632 %qroom.id%
calcuid qroom 79668 room
attach 79636 %qroom.id%
*�������� ������ ������ �� ������
set rooms 79604 79607 79613 79616 79618 79621 79624 79626 79629 79628 79643 79649 79659 79663 79682 79690
set i 0
set roomlist
while (%i% < 4)
  set numofrooms %rooms.words%
  eval n %random.num(%numofrooms%)%  
  eval roomnum %rooms.words(%n%)%
  *��������, ��� � ���� ������� ��� ��� ������
  if !%roomlist.contains(%roomnum%)%
    eval roomlist %roomnum% %roomlist%
    set skull 0
  else
    set skull 1
  end
  if !%skull%
    wat %roomnum% wload mob 79632
    eval i %i%+1
  end
  wait 5
done
calcuid swampghost 79612 mob
detach 79659 %swampghost.id%
detach 79658 %swampghost.id%
attach 79657 %swampghost.id%
*������ ������ � ������ �� �������
calcuid hideout 79678 room
exec 79662 %hideout.id%
~
#79618
�������� �����~
0 n 100
~
context 796
wait 1s
*�� ���� � ��������� ���� �� ���������, �� ���� �����... ����� �����.
%self.action(+!���������)%
calcuid oldwitch 79623 mob
calcuid youngwitch 79624 mob
calcuid redwitch 79625 mob
global oldwitch
global youngwitch
global redwitch
~
#79619
��������� �����~
0 k 100
~
detach 79614 %self.id%
shout �� ��, ����� ������������!
shout �� ���, ������!
mload mob 79629
mload mob 79630
mload mob 79631
detach 79619 %self.id%
~
#79620
���� ���� ������ �� �����~
0 k 30
~
set target %random.pc%
if !%target%
  halt
end
*���� �� ������ 2 ���� ������ � 1 ����
if (%target% == %memtarget%)
  rdelete memtarget %self.id%
  halt
end
set memtarget %target%
global memtarget
msend %target% _&G����� ����� ����������� � ���� �������, � ��� ������� �� ������ �����.&n
mechoaround %target% _&G����� ����� ����������� � ������� %target.vname%, � ��� ������� �� ������ �����.&n
mecho &R_�������� �������� ����� ��������� ��� ��� ������!&n
dg_cast '�������� ���' .%target.name%
dg_cast '�������� ���' .%target.name%
~
#79621
�������� ������� (��������� ������ �� �������)~
2 c 0
������� �������� ������� ������� ��������� ��������~
wait 1
if !%arg.contains(������)%
  wsend %actor% _�� �� ������ ������ ��������.
  halt
end
wsend %actor% _�� �����������, ��������� ���������� ������� � ��������� � ��� �����.
wechoaround %actor% %actor.name% ��������%actor.u%, ��������%actor.q% ������� � ��������%actor.q% � ��� �����.
wload obj 79651
calcuid bag 79651 obj
wait 1
*������� �����
wload obj 2092
calcuid vodka 2092 obj
%vodka.put(%bag%)%
*������� ����� � ��������� �������
wload obj 2004
calcuid bread 2004 obj
%bread.put(%bag%)%
*�������
wload obj 79652
calcuid letter 79652 obj
%letter.put(%bag%)%
wait 1
%bag.put(%actor%)%
*** �������� ��� �� ��� � ������ ���������
calcuid pit 79650 obj
wpurge %pit%
wload obj 79653
switch %self.vnum%
  case 79682
    set rooms 79682 79683 79684 79685
    set dirs ������ ����� ������ �����
    set roomdir north
    set roomdir2 south
  break
  case 79626
    set rooms 79626 79627 79625 79624 79623 79622 79621
    set dirs ����� ����� ����� ������ ������ �� �����
    set roomdir west
    set roomdir2 east
  break
  case 79639
    set rooms 79639 79630 79640 79642 79644 79647
    set dirs �� ����� �� ����� �� ��
    set roomdir south
    set roomdir2 north
  break
  case 79658
    set rooms 79658 79659 79662 79661 79663 79665 79664 79667
    set dirs ������ ������ ����� ������ ������ ������ �� ������
    set roomdir east
    set roomdir2 west
  break
done
*** ������ ���������� ������������ ��� ������� ������
global rooms
global dirs
global roomdir
global roomdir2
*** �������� �� ������ ������ � ������� ���� �� ����� ������
set i 1
foreach k %rooms%
  calcuid qroom %k% room
  set dir %dirs.words(%i%)%
  attach 79644 %qroom.id%
  remote dir %qroom.id%
  eval i %i%+1
done
*** ��������� ������� ��������� ����������� ������ � ������� ������� � ��������
remote roomdir %qroom.id%
remote roomdir2 %qroom.id%
if (%self.id% != %qroom.id%)
  rdelete roomdir2 %self.id%
  rdelete roomdir %self.id%
end
*** ������� ������� ������� ������
attach 79645 %self.id%
*** ������� ���� ��������� ������
detach 79621 %self.id%
~
#79622
���� � �����~
0 f 100
~
if (%world.curobjs(79633)% < 2) && (%random.100% < 20)
  mload obj 79633
end
~
#79623
����� �����������~
1 tz 100
~
wait 1
set weapon %actor.eq(18)% 
if (%weapon.vnum% != 79636)
  halt
end
wait 5
oecho _����� ����� �����������, � � �������� ������ ����, ���������� �� ���.
oecho _������ ������ ��� ��������, ������� -- ������.
odoor 79674 west room 79676
calcuid bigpole 79636 obj
detach 79627 %bigpole.id%
wait 1
opurge %self%
~
#79624
��������� �����~
1 c 4
���������~
wait 1
if !%arg.contains(�����)%
  osend %actor% _��� �� ������ ���������?
  halt
end
set weapon %actor.eq(18)% 
if (%weapon.vnum% != 79636)
  osend %actor% _��� �� ����� ������� �����, ��� ���.
  osend %actor% _� �� � ������ ���������� �������.
  halt
end
~
#79625
���� � ������~
0 f 100
~
if (%world.curobjs(79634)% < 1) && (%random.100% < 20)
  mload obj 79634
end
~
#79626
�������������� ���������~
0 q 100
~
wait 1s
say ��� �� ����� ���� ?
wait 1s
��� �������� �������� ��� � ������ �� ���.
wait 1s
say ������ ���� ������, ��� ������� !
wait 1s
mecho _�������� ��������� ��������� �� ���.
detach 79626 %self.id%
~
#79627
����������� �����~
1 j 100
~
wait 1
if (%actor.realroom% != 79674)
  halt
end
calcuid zaval 79637 obj
exec 79623 %zaval.id%
~
#79628
�����!!! (���� ��� ����� �������)~
0 z 0
~
context 796
wait 1
emot �������� � ������� ������ ����� ��������� �������
shout ������ ������!
wait 1s
mforce %youngwitch% shout ������� �� �����!
wait 1
mforce %oldwitch% say �������� �����...
mforce %youngwitch% say ����� ����������!
say � ����� ������!
wait 1
mecho &Y_"������� �������, ������ � �����, ������ ����� -- ������� �����!" -- ������� ������ ��� ������.&n
wait 1s
%self.action(-!���������)%
exec 79629 %oldwitch%
exec 79629 %youngwitch%
mecho &G������ � �����, ������ ����������� ������ �������.&n
mecho &G����� ����� ������� �� ���, ���� ��� ���� �� ������!&n
wait 4s
say ������ �� ������ ������ � �������?
����
wait 4s
mforce %youngwitch% say ������ �������� ��������� ��������?
���
wait 4s
mforce %oldwitch% say ������ ��������, �� ����� �����?
mforce %oldwitch% ���
wait 4s
say ��� �������� ����� ��������?
mecho _������ ������ ���������� � ���� �������.
wait 3s
mecho &Y_"����� ���� ����� ������� ����, ������� ����� -- �� ������ ����" -- �������� ��������, ������� � ��������� �����.&n
wait 1s
mload obj 79644
calcuid potion 79644 obj
calcuid bowler 79639 obj
%potion.put(%bowler.id%)%
mecho _������� ������ �������� �� ���� ����� ����� �� �������, � ��� �� ������ ��� ������ ����� ������� � �����.
mpurge %youngwitch%
mecho _������ ������ �������� �� ���� ����� �����, � ����������, ������� ������� ������ ����� ������.
mpurge %oldwitch%
mecho _����� ������ �������� �� ���� ����� ����� -- � ���������� ����� ���������� � ������.
mpurge %self%
~
#79629
������ !��������� � �����~
0 z 100
~
%self.action(-!���������)%
~
#79630
��������� ������ - ���������� �����~
0 v 100
~
detach 79628 %redwitch.id%
detach 79630 %self.id%
~
#79631
��������� ����� ������~
0 v 100
~
detach 79628 %self.id%
~
#79632
�������� ������� ������~
2 c 0
�������� ������ �������� ������� ��������~
wait 1
if (!%arg.contains(�������)% && !%arg.contains(������)%)
  wsend %actor% ��� �� ����������� ��������? ����?
  halt
end
if !%arg.contains(�����)%
  wsend %actor% ��� �� ��� �������� ���������? �� �������, �����...
  halt
end
if ((%actor.vnum% != -1) || !%actor.haveobj(79644)%)
  wsend %actor% _� �����-�� �� �������� �� ������, ��� ��������!
  halt
end
wsend %actor% �� ��������� ���������� ������ ����� �� �����.
wechoaround %actor% %actor.name% ��������� �������%actor.g% ������ �� ������������ �����.
eval skeletons %world.curobjs(79641)%+%world.curobjs(79642)%+%world.curobjs(79643)%
switch %skeletons%
  case 1
    wsend %actor% _� ������� ������ �� �������� �����.
    calcuid potion 79644 obj
    wpurge %potion%
  break
  case 2
    wsend %actor% _��������� ����� ����� �������� �� ��� �������.
  break
  case 3
    wsend %actor% _������� � ������� �������� ��� ���� ������ �����.
  break
done
wait 1s
wecho ������� ������������, ����� ������ �� ����� ����.
wecho �������� ���� �� ��� ������� ���.
switch %self.vnum%
  case 79628
    wload mob 79626
    wload obj 79645
    calcuid skeleton 79641 obj
    wpurge %skeleton%
  break
  case 79643
    wload mob 79627
    wload obj 79646
    calcuid skeleton 79642 obj
    wpurge %skeleton%
  break
  case 79693
    wload mob 79628
    wload obj 79647
    calcuid skeleton 79643 obj
    wpurge %skeleton%
  break
done
detach 79632 %self.id%
~
#79633
���� �������� ��������~
0 n 100
~
wait 1
if (%self.realroom% != 79668)
  emot ������ ��������
  say � ���... ������. ������� ������, �������� ����� ���������� �� ����.
  say ��� �������� ����, �����?
  ����
  wait 1s
  say �������... ����� ����� �.
  mecho _- �� ������ ������? ��� ������ ���������� ������, �����, ������� � ����� �� ����������?
  mecho _- � ����� ���� �����, ��� ����� ����.
  emot ������ ����������
  wait 2
  say �� ������ ������ ��� ������� �����.
  emot ������ �� ������
  say � ���� ���������, ��� ���� ��������� ���, � ���� ��������� �����.
  mecho ������� ����������� � ������ � �������.
  mpurge %self%
else
  wait 1s
  calcuid archer 79627 mob
  calcuid conjurer 79628 mob
  say ����, ��������� ���������.
  mforce %conjurer% say ...���������.
  wait 1
  say ��� ����, �� � ������� ����, �� ������ ���� ������.
  mforce %archer% ������
  say �� ���� �����������. �� ������� � ����� ����, ���� ������� ��������, �������� �������.
  mecho _- ��-�� �����, ��-�� ������� �����. � �� ��� ������� ����.
  wait 1
  say �� ���������, ���, ��� ������ ����� �� �������������, �� ��� ��� ���.
  mecho _- �� ������ � ��� -- ����� ��� ����� ���� ������.
  mecho _- � �� ����� ��� �����, ���� ��������� ������� �� �����.
  wait 1
  say �� �� ����� ������� ���� ��� ������, ����� �� ������� ���.
  mforce %conjurer% say ...�� �����.
  say �� ����� ������.
  mforce %archer% �����
  wait 1
  mforce %archer% say �� ������� �� ������ ���� -- ��� ������ ������ ����� ����.
  mforce %conjurer% say �� ��� ���� �������� �� ���� ������.
  emot ������ ����������
  say �, ��� ��� ��� ������ �� ���, �� ���� ������������, ��� ����� ������ ���������.
  mecho _- �� ���� ���� � �����, �������� ��������� ���.
  mecho _- �������, ����� �� � ����� � ��� ���� ���������� ������, ������� �� ���� �����.
  wait 1
  say ��������� ������, � �������� ���. ����� ���, �������, � ����� �� ������� �����.
  wait 1
  mecho �������� ������������ � �������.
  mpurge %archer%
  mpurge %conjurer%
  mpurge %self%
end
~
#79634
���� �������� �������~
0 n 100
~
wait 1
if (%self.realroom% == 79668)
  halt
end
emot ������ ����� �� ����
say ��� �����... ��� ��?
wait 1s
say ���� �� ������? �����? ������� �����? �����?
emot ������� ����������
wait 2
say ��� ���� ���� ��������.
mecho _- �������� ��� �������.
emot ������ �� ������
say � ��� ���� �������, ���� ������� ��� ��� ����������.
mecho _- ������, �����, ������ ���� �����, �� � ����� �� ������.
mpurge %self%
~
#79635
���� �������� �������~
0 n 100
~
wait 1
if (%self.realroom% == 79668)
  halt
end
say ��� �������...
emot ��������� �� ��������
wait 1
say ��������... � ���� �� �� ������ �� �������� �� ��������� �����?
mecho _- ������ ������? ��������? �������� ���������� �����?
emot ����� ����������
wait 1
say � ����� ���� �����, ��� ����� ����.
mecho _- �� ������� ������ ��� ������� �����.
emot ������ �� ������
say � ��� ��� ���� ������ ���. ���� ��� ��������, ������ ������.
wait 1
say �����, � ��� ����� ���� ������� ����.
mecho _- ����� ����� ������ ���� ������, �� �� ������.
mecho _- ������ ���� ��� ��� ������ ���.
mecho _- ������� ������ ���, ����� ������ �� ��������� �� ���.
wait 1
mecho ������� ����������� � ������ � �������.
mpurge %self%
~
#79636
������� ������� �� ������� �����~
2 g 100
~
if !(%actor.haveobj(79645)% && %actor.haveobj(79646)% && %actor.haveobj(79647)%)
  halt
end
wait 1
attach 79637 %self.id%
detach 79636 %self.id%
~
#79637
������ ������~
2 c 0
���� ������ �������� ������~
wait 1
if !%arg.contains(�����)%
  wsend %actor%  ��� ������ ������?
  halt
end
wait 1
wsend %actor%  �������� �� ����, �� ��������� ������ ������.
wechoaround %actor%  �������� �� ����, %actor.name% ������%actor.u% ���� ������.
wait 1s
wecho ���-������ � ������.
wload obj 79648
if (%world.curobjs(79648)% == 3)
  wecho _�������, �� ��������� ������ -- ��� ��� ������ ������.
  detach 79637 %self.id%
end
~
#79638
�������� ������~
1 h 100
~
wait 1
if ((%actor.realroom% == 79668) && (%world.curobjs(79648)% == 3))
  osend %actor% �� �������� ������� � ������.
  oechoaround %actor% %actor.name% ������%actor.q% ������� � ������.
  eval skeletons %world.curobjs(79645)%+%world.curobjs(79646)%+%world.curobjs(79647)%
  if (%skeletons% == 1)
    *���� ������ ���������, ������� ���� �� �����������
    osend %actor% _�������� �������� ������.
    set troom %actor.room%
    attach 79640 %troom.id%
  end
  wait 1
  opurge %self%
else
  osend %actor% _�� ������� ������� ��� ����������.
  osend %actor% _����������� ���� �� ������� �����.
end
~
#79639
������� �������~
2 h 100
~
wait 1
eval skeletons %world.curobjs(79645)%+%world.curobjs(79646)%+%world.curobjs(79647)%
if (%skeletons% == 0)
  wsend %actor% _�������� �������� ������.
  attach 79640 %self.id%
  detach 79639 %self.id%
end
~
#79640
���������� ������~
2 c 0
�������� ������ ��������~
wait 1
if !%arg.contains(�����)%
  wsend %actor% _���� �������� ������?
  halt
end
wait 1
wsend %actor% _�� ��������� ���������� ������.
wechoaround %actor% _%actor.name% ������%actor.u% �������� ������ ������.
wait 1s
wecho ���-������ � ������.
calcuid grave 79648 obj
wpurge %grave%
calcuid grave 79648 obj
wpurge %grave%
calcuid grave 79648 obj
wpurge %grave%
wload obj 79649
wload obj 79649
wload obj 79649
wecho _�������-�� ��� ������� ���������� � �����.
wait 1s
wecho ������ �����������, � ������ ��������� �������� ����� ����.
wload mob 79626
wload mob 79627
wload mob 79628
detach 79640 %self.id%
~
#79641
���� ����~
0 f 100
~
return 0
mecho ��������� ���� ��������� �� ��� �������� �������.
mecho _"��... �� ������... ���������..." -- � ����� ������� ����������� ���� �������� ���.
*������� ���� �� �������� ����� �� �������
*���� ����� �� �������� ����� ������ � ���������� -- ����� �� �����
if (%world.curobjs(79649)% > 0)
  calcuid grave 79649 obj
  attach 79642 %grave.id%
  remote quest796 %grave.id%
end
mload obj 79612
~
#79642
��������� ������ � �����~
1 t 4
~
if (%actor.id% != %quest796%)
  halt
end
wait 1s
oecho ���� ������. �� ������, ��� �������� ����� �������� ���.
wait 1s
oecho ����� � ������� ��������� ��������, � ���������� ������ �������� ��� �������� ������ � ��������.
oecho ��������������, �� ������� ����������� ��������, �������� ������ �����.
calcuid treasure 79669 room
attach 79643 %treasure.id%
remote quest796 %treasure.id%
odoor 79668 east room 79669
odoor 79669 west room 79668
detach 79642 %self.id%
~
#79643
���������� ����~
2 c 0
������ ��������� ��������~
wait 1
if (%actor% != %quest796%)
  halt
end
if (!%arg.contains(����)% && !%arg.contains(��������)% && !%arg.contains(�����)%)
  wsend %actor% �� ��������� ��������� ������������ �����.
  halt
end
*������� �������
*��������� �������
wecho _&Y��-��� ����� ��������� ������� ������!!!&n
wload obj 79610
calcuid chest 79610 obj
eval treasures 79614 79615 79616 79617 79618 79619 79620 79621 79622 79623 79624
set prize
foreach item %treasures%
  *���������� ������ ������ ���������, ������� ������ ��������� � ����
  if (%world.curobjs(%item%)% < %world.maxobj(%item%))
    eval prize %prize% %item%
  end
done
%prize.trim%
*����� ��������� � � ����� "�� ����� ���"
set maxitems 2
set numofitems %prize.words%
if (%maxitems% > %numofitems%)
  set maxitems %numofitems%
end
while (%maxitems% > 0)
  eval n %random.num(%numofitems%)%  
  eval itemnum %prize.words(%n%)%
  *�� ������ ���� ������ ����� ���� � ��� �� �����
  if ((%world.curobjs(%itemnum%)% < %world.maxobj(%itemnum%)) && (%random.100% < 31))
    wload obj %itemnum%
    calcuid item %itemnum% obj
    %item.put(%chest%)%
  end
  eval maxitems %maxitems%-1
done
*���� � ������ ��������� ����� ���
wload obj 79613
calcuid item 79613 obj
%item.put(%chest%)%
wait 1
*** ������ ������
if (%random.100% < 16)
  wload obj 534
  calcuid item 534 obj
  %item.put(%chest%)%
end
detach 79643 %self.id%
~
#79644
����������� ������.~
2 c 0
������ ����������� ����������~
wait 1
if !%arg.contains(����)%
  return 0
  halt
end
wsend %actor% _�� ��������� ��������� �����, ������ ���, � �����.
switch %random.5%
  case 1
    wsend %actor% _&Y������� �� �������� ��������� ��������� �����.&n
  break
  case 2
    wsend %actor% _&Y�� �������� ���������� � ������ ������� �����.&n
  break
  case 3
    wsend %actor% _&Y�� ������� ��������� �������, ������� ���������� �������� ��������.&n
  break
  case 4
    wsend %actor% _&Y��������� ������ �� ����� ��������� �������� � �����.&n
  break
  case 5
    wsend %actor% _&Y�� ����� ������ ����� ����������� ��������� ����������� ������.&n
  break
done
wsend %actor% _���� �� �����, �������� �������� �� %dir%.
*** ���� ���� �������� ��� ����������, ������ ��� ��������� ������� ��������.
if %roomdir%
  wsend %actor% _�� ������ ������, ��� ������ ����� ���.
  wsend %actor% _ ��������������, �� ������� ������� ��������� ������.
  wdoor %self.vnum% %roomdir% room 79678
  wdoor %self.vnum% north flags e
  wdoor 79678 %roomdir2% room %self.vnum%
end
detach 79644 %self.id%
~
#79645
������� ������ �� �������~
2 f 100
~
foreach k %rooms%
  calcuid qroom %k% room
  detach 79644 %qroom.id%
  rdelete dir %qroom.id%
  wait 1
done
*** � ��������� ������� ������� �����, ���� �� ��� ������
attach 79646 %qroom.id%
exec 79646 %qroom.id%
~
#79646
������� ���������� � ������ �� �������~
2 z 100
~
*** ������ ����������
rdelete roomdir %qroom.id%
rdelete roomdir2 %qroom.id%
detach 79646 %self.id%
~
#79647
����� �������~
2 d 0
������ ������ ��������� ������ �����~
wait 1
if !%speech.contains(�����)%
  switch %random.6%
    case 1
      wecho _&Y���-�� � ������ ���� �������: "�-�-�!!! �����-�����, �������!!!"&n
    break
    case 2
      wecho _�� ������ ��������: "�����, ��������! � �� ������� ����!"
    break
    case 3
      wecho _�� ������ �����������:
      wecho _"�-����! �-�������! �� �������, ����������!"
    break
    case 4
      wecho _�� ������ �����������:
      wecho _"�������-�����, ���� ������� � ����� ���������� ������� - ���� ��� ������! ����������!&n"
    break
    case 5
      wecho _�� ������ ���������� ������� �������� ����.
    break
    case 6
      wecho _�� ������ �����������:
      wecho _"�����! �� ��������! ��� ����� �� �������!!!"
    break
  done
  halt
end
wecho _� ������ ����������� ������� �������.
wait 2s
wecho _���-�� ����� ��������� ��������: "����� �������?"
wecho _���������� ���, ����� � �� ������ �������� ����������� ������.
wload mob 79620
calcuid kust 79654 obj
wpurge %kust%
detach 79647 %self.id%
~
#79648
���� ������~
0 f 100
~
return 0
mecho _������ �������� �� ����� ������ ������.
mload obj 79655
calcuid bones 79655 obj
set killer %actor%
global killer
remote killer %bones.id%
~
#79649
������ �����~
1 n 100
~
wait 5
attach 79650 %self.id% 
if (%random.100% < 34)
  attach 79650 %self.id% 
  detach 79649 %self.id%
  halt
end
wait %random.180%s
oecho _&Y����� ����������� ����� � ����������.&n
oecho _&Y����� ������� ����������� � �������� � �������.&n
oload mob 79633
calcuid skull 79633 mob
remote killer %skull.id%
detach 79650 %self.id%
detach 79649 %self.id%
~
#79650
��������� �����~
1 c 4
���������~
wait 1
if !%arg.contains(�����)%
  osend %actor% _�� ��������� ������ ����.
  halt
end
osend %actor% _�� ����� ��������� � ��������� ����� �� ��� �������.
oechoaround %actor% %actor.name% ����� ��������%actor.q% � ��������%actor.q% ����� �� ��� �������.
detach 79649 %self.id%
if (%random.100% < 26)
  oecho _&Y����� ����������� ����� � ����������.&n
  oecho _&Y����� ������� �����������, �������, � � �������� ������ ����� �� ���.&n
  set room %random.68%
  eval room 79600+%room%
  oat %room% oload mob 79633
  calcuid skull 79633 mob
  remote killer %skull.id%
end
wait 1
opurge %self%
~
#79651
����-������� ��������� ������~
0 n 100
~
wait 1
mremember %killer% mkill %killer%
~
#79652
Memory-������� ��������� ������~
0 o 100
~
*** ������� ��������� ��� ���������� ������ ������� mremember
nop
~
#79653
�������� ����� ����~
0 b 14
~
switch %random.4%
  case 1
    shout �����������!
  break
  case 2
    shout �-�����������-�����!
  break
  case 3
    shout ���-���-���!!!
  break
  case 4
    shout ������-����������!!!
  break
done
~
#79654
���������� � ������~
2 e 25
~
wait 1
if ((%world.curmobs(79612)% > 0) || (%direction% == down))
  halt
end
eval target %random.pc%
wsend %target% &G�� ������� ������, ����������� �� ��������.&n
wsend %target% &G����� ����� ������ ��� ������ ������ �����������, � �� � ������� ���� � ������� ������.&n
wechoaround %target% &G%target.name% ������%target.q% ������, ����������� �� ��������.&n
wechoaround %target% &G����� ����� ������ ��� ������ %target.rname% �����������, � ��%target.q% � ������� ��%target.y% � ������� ������.&n
wteleport %target% 79681 horse
~
#79655
���� �����������~
1 n 100
~
wait 1
switch %random.10%
  case 1
    case 2
      case 3
        %self.val2(15716)%
      break
    break
  break
  case 4
    case 5
      %self.val2(96340)%
    break
  break
  case 6
    case 7
      %self.val2(26007)%
    break
  break
  case 8
    case 9
      %self.val2(85033)%
    break
  break
  case 10
    %self.val2(20526)%
  break
done
%self.val3(1)%
oecho _&G���-�� ��������� ������� �� �������, ������ ����������� � ������� � ����.&n
~
#79656
������ �� �����~
1 c 1
������~
wait 1
if !%arg.contains(� �����)%
  osend %actor% _���� ������? ���� ������? ���� ������? ���������!
  halt
end
osend %actor% _&G�� �������� �������� ����� � ����� � ������ � ���.&n
oechoaround %actor%  &G%actor.name% ������%actor.g% �������� ����� � ����� � �����%actor.q% � ���.&n
oecho &G_���������� ������ ����������� ���, ��� ������ ���� �������.&n
%actor.wait(3)%
wait 3
eval rname1 ������. ����
eval rname2 ������. ����
eval rname3 ��� �����
set croom %actor.room%
set croom %croom.sectortype%
if !((%croom% == %rname1%) || (%croom% == %rname2%) || (%croom% == %rname3%))
  oecho _&G� ������ �� ���������...&n
  wait 1s
  osend %actor% _&G�� � ������ ��� ������� ������� �� ���������� -- �� ������� �����, �� ������...&n
  halt
end
if (%world.curobjs(79658)% >= %world.maxobj(79658)%)
  oecho _&G� ������ �� ���������...&n
  halt
end
oload obj 79658
~
#79657
������ ����� � ���������~
0 q 100
~
wait 1
set questor %actor%
global questor
mecho _&G��� ���� ���, �������� ������ ��� ���� ������, � ����������� �� ����� ��������� �� ��� ������ ���������.&n
say ��������� ��� ����� ����� �� �����... � ��� ���� ��, ����� �� ������. �� ��� ��� �������%actor.g%, ���?
wait 1s
say �� �����, ����%actor.q%, ��� ���� ��������.
emot ����� ���������� � ����������, ������� ������ �����
wait 1s
say �����? �����-�� �����, ������! �� ����� ������ �������� ����� �����.
mecho _- ��� ��� ��� � �������. ��� �� ��� � ������ ��� ���������� -- �� ��� ����.
mecho _- �� � ���� ����������� �� ������, ��� � ���������� -- ������������ � ���� ���� � ��������.
���
attach 79658 %self.id%
attach 79659 %self.id%
detach 79657 %self.id%
~
#79658
������ ����� � ����������~
0 q 100
~
wait 1
mcho _�������� ��������� �� ����� ����� � ������������ ��������� �� ���.
if (%actor% == %questor%)
  say �� ���, ������%actor.q%?
else
  ����
  say �� ��� ���? ���������� ��-��������, ��� � ����, ������� �� ����� �� �����.
end
~
#79659
����� ����� ���������~
0 j 100
~
if ((%object.vnum% != 79644) || (%actor% != %questor%))
  msend %actor% _�� ����� ��� ���������� �� ��������. ������ � ������ � ������� ��� �����.
  return 0
  halt
end
wait 1
mpurge %object%
emot ������� ������� � �������� ����������
wait 1
say ��������, �? ����� �����!
wait 1
say ����, ������ ��������� ���� �������.
say ������ �� ���� ���� �� ��������. ������ � ������� -- ������ ���� � ������.
mecho �������� � ������� ������� � ������ -- ������ ����� �� ���� �����.
exec 79660 %self.room%
wait 1
mpurge %self%
~
#79660
��������� ������� ���������~
2 z 100
~
wait 1s
wload obj 79659
calcuid chest 79659 obj
set books 1745 1750 1725 1758 1759 1760
set numofitems %books.words%
eval n %random.num(%numofitems%)%  
eval itemnum %books.words(%n%)%
wload obj %itemnum%
calcuid item %itemnum% obj
%item.put(%chest%)%
if (%ranfom.100% < 21) && (%world.curonjs(79657)% < %world.maxobj(79657)%))
  wload obj 79657
  calcuid item 79657 obj
  %item.put(%chest%)%
end
set i 0
while %i% < 3
  eval potion 801+%random.59%
  wload obj %potion%
  calcuid bottle %potion% obj
  wait 1
  %bottle.put(%chest%)%
  eval i %i%+1
done
wecho _&G����� ���� ������� ��������� � �� ����������� ������ ��������� ��������.&n
wecho _&G����� ������� ������� �� �����������, ���� ������ �� ���������.&n
~
#79661
����� ���������~
0 f 100
~
if ((%world.curobjs(79609)% < %world.maxobj(79609)%) && (%random.100% < 21))
  mload obj 79609
end
~
#79662
������� ������ � 79678 �������~
2 z 100
~
wait 1
if %self.north%
  wdoor %self.north% south purge
  wdoor 79678 north purge
end
if %self.west%
  wdoor %self.west% east purge
  wdoor 79678 west purge
end
if %self.south%
  wdoor %self.south% north purge
  wdoor 79678 south purge
end
if %self.east% 
  wdoor %self.east% west purge
  wdoor 79678 east purge
end
~
#79663
����� ����������� ����������~
0 f 100
~
if ((%world.curobjs(79660)% < %world.maxobj(79660)%) && (%random.100% < 41))
  mload obj 79660
end
~
#79664
���� ���������~
0 b 20
~
if (%self.realroom% == 79699)
  halt
end
shout �-�-�-�-�-�-�-�-�-�-�-�-�!!!
~
#79665
����-������� ����������� ����������~
0 k 100
~
if (%random.100% > 20)
  halt
end
set victim %random.pc%
msend %victim% &Y_���������� ����� ��������� ��������� �� ���, � ������� �� �����!&n
mechoaround %victim%  &Y_���������� ����� ��������� ��������� �� %victim.vname%, � ������� �� �����!&n
msend %victim% &Y_���������� ����� ��������� ������ ������� � ���� ����!&n
mechoaround %victim%  &Y_���������� ����� ��������� ������� %victim.vname% ������!&n
%victim.position(6)%
%victim.wait(3)%
mdamage %victim% 150
~
$~

#63700
������ ���� ������������~
0 q 100
~
if %questor637.name% != %nil%
  halt
end
wait 1s
������ %actor.iname%
wait 1s
say ��� ���� ��� �����?
say ���������� �������-���������, ������ ���%actor.g%!
wait 3
�����
say �����.
say �����, ��� ����... ������ �� �����.
emot ����������� � ������� �� ���� � ����������
wait 2s
say ���� � ������ ����� ������������ - ��� ������ ����.
say ������ �� �����. ���� �� ���� ��� ��� - ��� ����.
say �� � �������� �� ��������.
say ��� �������-�� - �� ����� ������������ �� ������.
emot ������ ����� ����-�� �� �����
wait 3s
say ������ �� ����� ���� - ��������, ���� �� �������� ��� ������� �����.
say �������� ��� ���� ���������, � �����, ��� �����-�� ���������� �������� �����, ��� � ��� ��� �������, � �����.
say �������� ���� � ���, ��� � ������ ����� ����� �� ��� ���� ����� ������ � ������ ������� � ��� ����.
say � ����� ������� - ������� � ����� � ������...
wait 3s
���
say ��� � ����� � ���� - ��������� � � ���� ���� �������...
say �� �� ������ � ��������� - ��� ������, �����������... � ������ � ����� ���� �����.
say ��� � ���� ������... � ������ ���� ���� ���, � ����� ��������� - ���� ��������.
say ��� � �����-�� ������� � ������������� �����?
say � ����� ���� � ���������, ��� ������ �� ������� ����� �� ������ �����.
wait 2s
emot �������� ������ ������ � ����� �������� � ��������
*������ ��������� ���� - �� ������� �������� - �� ���� :)
attach 63701 %self.id%
~
#63701
������ ���� ���� �������~
0 d 100
������~
if (%quest637.name% = %nil%)
  eval quest637 %actor%
  global quest637
  remote quest637 %world.mob(63701)%
  wait 1s
  emot ������ ������ � ��������� �� ���
  wait 1s
  � ��������... ���? ���%actor.g% ���� �����������?
  � �������, ������ ��� ������� ���� ������?
  ���
  wait 2s
  say ��� ���.... ��� � ���� ���� ������.
  say � ������ ������� ������ ��� ������ - ���� �� ������ ���� �������.
  say ������ ���� ������ �� ��������� � ����� ����.
  wait 2s
  say ����� � �������� ����...
  wait 3
  mload obj 63726
  give ������ %actor.name%
  wait 1s
  say ��� ������, �� ������� ������ ���� �������
  stand
  emot �������� ���� ����� � ������� ���� ������
  mecho _�� ������� ��������� ������, ������� �� ������.
  mdoor 63704 e room 63771
  wait 3
  rest
  say ����� ����...
  �����
  detach 63700 %self.id%
  attach 63720 %self.id%
  detach 63701 %self.id%
else
  say ��������� ��� � �� ���� ����... ���� � �� ���������.
  say ����� - �������... �� ���� � ��� � ���� �� ���� �������.
end

~
#63702
������ ���� ��������� ������� (2)~
0 d 0
�������� ��������� ����� ~
wait 1
if (%actor.id% != %quest637.id%)
  halt
end
wait 5
emot ����������� ��������� �� ����� � ������� � ������������� ����������.
say ������, ��� ����� ����� �������� ��� �����, ��� ��������� �� ��� �����?
wait 1s
say ������� ����....
������ %actor.name%
say ��� ��� ������������� ����?
switch %random.2%
  case 1
    mecho _������ ���� ������ �� ������� ������.
    wait 1s
    mload obj 63739
    ���� ���� %actor.iname%
    � ���, ����� ������ ��� ��� ����� �� �����, ����� ���� ����������.
  break
  default 
    mecho _������ ���� ������ ��������� ����� �����.
    wait 1s
    mload obj 63701
    ���� ����  %actor.iname%
    � ��� ���, ��� ������ � �� ���� �����, ������, ���� ����������. 
  break 
done
detach 63702 %self.id%
~
#63703
��������� ������ ������������~
0 r 100
~
if (%actor.vnum% != -1)
  halt
end
wait 1s
����
� ��� �� ����%actor.q% ����c�� ���� ?
� ��� �� ����%actor.y% ����� ��� ������ ?
���
if (%actor.id% != %quest637.id%)
  halt
end
wait 1s
msend %actor% _�� ������� ������ �� ������� ����� � �������� ��� ��������.
mechoaround %actor% _%actor.name% ������%actor.g% ������ � �������%actor.g% ��� ��������.
mecho _������� ������ ������� �����, ������������� �� �������.
wait 3s
� �������...
� ������, ������, ������ �������... � �������...
wait 1s
� � ����� ����� ������� ����, ����� � ���� �������?
���
wait 1s
say ��� ��� - � ���� �������... ��������� ��� ���� �������.
say ���������� - ������ � ����.
say �� � ���� �� ���������� - ��� � ��������� �� ����������, �� � ������ ��� ����� ������.
���
wait 1s
say �� ��� - �����%actor.g%?
calcuid delete_trig 63701 mob
detach 63703 %delete_trig.id%

~
#63704
��������� ������ ���� 1 �������~
0 d 1
����� ������ �� �������� ��������~
wait 1s
� ��� ���� ������ ���������.
� ���� ��� � ���� ����� ��������
� ����� ��� ���������� ���� ��� ��������, � ������ ��� �������� ���.
wait 2s
� ���� �� ����, �� ��� ������ � �������������� �������.
� ������ � �������� ���� � �� ���������, �� ������ � ������� ������ �� �����������!
wait 3s
mecho _������� �������� ����� � ��� ��������� �������� ����.
mat 63720 mecho ���-�� �������� ����� � ������ ������ ����.
mteleport all 63720
calcuid delete_trig 63701 mob
detach 63704 %delete_trig.id%

~
#63705
������ ������� �� 1 ������� � ���� 2 �������~
0 j 100
~
if (%object.vnum% !=  63708)
  say ��� ��� �� ��� ������?
  halt
end
wait 1s
mpurge %object%
� ��, �� ��������� � ���� ��������.
� ����� ��� ����� ��� ����� �������.
���
wait 1s
� ��...  ������ �� ���� �� ��������.. � ��� ������� ��������� - ��� ��.
���
wait 2s
� �� ��, ��� ��������� ���� �� �������� ����, �� ������ � �������.
switch %random.10%
  case 1
    mecho _������� �������� ����� � ����� ����, �����, ��������� ����������� ���� ����.
    wait 1s
    � ��� ������, �� ���� ������.
    wait 1s
    mload obj 63709
    ���� ��� %actor.iname%
  break
  case 2
    mecho _������� �������� ����� � ����� ����, �����, �������� ����������� ���� ������.
    wait 1s
    mload obj 63710
    ���� ���� %actor.iname%
    � ��� ������, �� ���� ������.
  break
  case 3
    mecho _������� �������� ����� � ����� ����, �����, ��������� ����������� ���� ������.
    wait 1s
    mload obj 63711
    ���� ���� %actor.iname%
    � ��� ������, �� ���� ������.
  break
  default
    mecho _������� �������� ����� � ����� ���� �������� ��������� ��������, ��������� ������� ���������������.
    wait 1s
    mload obj 63712
    ���� ���  %actor.iname%
    � ��� ������, �� ���� ������.
  break
done
wait 3s
� � ������ �������� �� ���������, ��� ���� ������.
wait 1
� � ���� ���� ���� �������, � � ��� ������ ��������.
wait 1
� � ����� ��� ����� �����, ����� ��������, ����� �������.
wait 1
� � ������ �����, ��� � ����� ��� ������ ������, � �� ������ ���� ����������.
wait 1
� ��� ������� ��� ���, � ��� ����� �����, ����� � ������ ����.
wait 4s
mecho _������� �������� ����� � ��� ��������� �������� ����.
mat 63737 mecho ���-�� �������� ����� � ������ ������ ����.
mteleport all 63737
detach 63705 %self.id%
end

~
#63706
�������� �� ������� � ������~
2 e 100
~
wait 1
wportal 63769 2
wecho ����� ������� �������� ��� � � ������� ���� ������ ������� ������.

~
#63707
���� ��������� ��������~
0 f 100
~
msend %actor.name% ��������� ��������, ���-�� ������� �� �������� �, ������� �� ��� �������� ������, ���������� � ������� ����.
mechoaround %actor.name% %actor.iname% ������� ��� ����� �� ��������� �������.
mload obj 63708

~
#63708
�������� �� ���� � ������~
2 e 100
~
wait 1
wportal 63769 2
wecho ����� ������� �������� ��� � � ������� ���� ������ ������� ������.

~
#63709
������� ����~
1 c 100
�������~
if  !%arg.contains(����)%
  osend %actor.iname% _��� �� ������ �������?!
  halt
end
oechoaround %actor.iname% _%actor.iname% ����������%actor.a% � ����%actor.a% ���������� ���� � �����.
osend %actor.iname% _�� ����������� � ����� ���� � �����.
oload obj 63716
oforce %actor% ����� ����
opurge %self%

~
#63710
������ ������� �� 2 ������� � ���� 3 �������~
0 j 100
~
if (%object.vnum% == 63716) 
  wait 1s
  mpurge %object%
  � ��... �������%actor.u%, ������?
  wait 1s
  � �� �������...
  ���
  wait 2s
  � ��, � ������ ���������, � �����, ��� �� �� �������� ��, ��� �������.
  wait 1s
  say ������ ��� ����%actor.u% �� �������.
  emot ������ ��������
  say ��� ����, ������ �� �������� �� ����%actor.u% ������� � �� � ������!
  mecho _-��� ��� ��� ������ � ����� ���������.. �� � ������ �� ������� ������ � ���� ������...
  mecho _-� ������ � ��� � �������� �������, �� ������ ������!
  mecho _-� ���� ����� ������ - � ����� �� ������, ��� �� ������ �����!
  �����
  mecho _������� �������� ����� � ��� ��������� �������� ����!
  mat 63705 mecho ���-�� �������� ����� � ������ ������ ����.
  mteleport all 63705
  wait 1
  calcuid delete_trig 63701 mob
  mload mob 63712
  wait 3
  if ((%world.curobjs(63734) < 10%) && (%random.3%) == 1)
    mload obj 63734
  end
  if ((%world.curobjs(63735) < 10%) && (%random.3%) == 1)
    mload obj 63735
  end
  if ((%world.curobjs(63736) < 10%) && (%random.3%) == 1)
    mload obj 63736
  end
  if ((%world.curobjs(63737) < 10%) && (%random.3%) == 1)
    mload obj 63737
  end
  if ((%world.curobjs(63738) < 10%) && (%random.3%) == 1)
    mload obj 63738
  end
  wait 3
  ���� ��� �������
  mpurge %self%
  detach 63710 %delete_trig.id%
end
~
#63711
�������� �� ����� ������� � �������~
2 z 100
~
wait 1
wportal 63703 2
wecho � ������� �������� ����� ������� � � ������� ���� ������ ������� ������.

~
#63712
���� ������ �������~
0 f 100
~
msend %actor.name% _������� ���� ��� ������������ � ������������.
mechoaround %actor.name% %actor.iname% ����� ��������� �������.
mecho _���� � ������� ������ ����������.
mecho _�� ����� �������� ������� �� ������ ��������� ����, ������� � �������.
mdoor 63769 e room 63770
mdoor 63770 w room 63769

~
#63713
�����~
2 f 100
~
*detach 63701 %deletetrig.id%
*detach 63702 %deletetrig.id%
*detach 63720 %deletetrig.id%
*attach 63700 %deletetrig.id%
wdoor 63769 e purge
wdoor 63770 w purge
wdoor 63792 n purge
wdoor 63704 e purge
*calcuid deletetrig 63701 mob
*attach 63703 %deletetrig.id%
*attach 63704 %deletetrig.id%
*attach 63705 %deletetrig.id%
*attach 63710 %deletetrig.id%
*calcuid deletetrig 63704 mob
*attach 63707 %deletetrig.id%
*calcuid delete_trig 63712 mob
*attach 63712 %deletetrig.id%
*calcuid deletetrig 63715 obj
*attach 63709 %deletetrig.id%
calcuid crypt 63761 room
detach 63721 %crypt.id%
attach 63721 %crypt.id%
calcuid monstrum 63718 mob
detach 63729 %monstrum.id%
detach 63731 %monstrum.id%
attach 63729 %monstrum.id%
~
#63714
����������� ������� ����~
1 j 0
~
osend %actor% _�� �������� ������ ��������� ���� �� ������� � ���� ��� ��������� ��.
oechoaround %actor% _%actor.name% �������%actor.g% ������ ��������� ���� �� ������ � ���� ��� �� ������� ��������%actor.g% ��.

~
#63715
����� ������ ����~
1 g 0
~
if %actor.int% < 21
  return 0
  osend %actor% _�� ���������� ����� ������ ��������� ����.
  oechoaround %actor% _%actor.name% �������%actor.u% ����� ������ ��������� ����.
  oecho _�������� ������ ������� ����� � �������� ������!
  osend %actor% _�� ���� ������ ��������� ����.
  oechoaround %actor% _%actor.name% ����� ��������%actor.g% ����, �������%actor.u% � ���� �� �������%actor.u% ������.
end

~
#63716
���� ��������� ����~
0 f 100
~
if ((%world.curobjs(63717)% < 4) && (%random.200% <= 40))
  mload obj 63717
end
~
#63717
������ ���� ������� ����~
1 j 0
~
oecho _���� ������� ���� �������� �������� �������.
oechoaround %actor% _�� �������������, ��� ���� �������� ���� ����������� ��� � �������� ����.

~
#63718
����� ����� � ������~
2 e 100
~
wait 1
if (%direction% != west)
  halt
end
wait 1
wecho _�� �������� ��������� �� �����...
wecho ...�������, ���� �� ������� ����, � ������, ��� �� ����� ��� ������...
if (%actor.affect(�����)% == 1)
  wsend %actor% _������� ����� ��������� ��� �� ���� � �� ���������� �� �����!
  wechoaround %actor% _������� ����� ��������� �� %actor.name% ���� � ��%actor.g% �������%actor.u% �� �����!
end
wsend %actor% _�� ������� ������� � ���� ���� ������������ �� ������.
wechoaround %actor% _%actor.name% ������� ������%actor.g%, � ������� ���� �� �������� �����.
wecho _�� �����������, ������� ��������� ����������...
wecho            ....������������ �� ������ ����-�� � �������!
wteleport all 63776
wat 63776 wecho ����... !
wteleport all 63776
wat 63776 wecho ���... !
wteleport all 63776
wat 63776 wecho �������... !
wat 63776 wecho ��, ����... !!!
wait 4
run 63719 %world.room(63776)%

~
#63719
��������� ������� � ������~
2 z 0
~
wecho ���... ����� ��������, ����� ����� �� ����� � �� ������...
wecho � �� �������...
wecho �� ������...

~
#63720
���� ����� �����~
0 j 100
~
if (%actor.id% != %quest637.id%)
  say ��� ��� ���? ����� �� ��� ��� ������%actor.g%?
  eval objectname %object.name%
  halt
end
say ��... ��� ��� ���?
say ��� ��� ��� ������ �����?
���� %actor.name%
if (%object.vnum% == 63700)
  attach 63702 %self.id%
  detach 63720 %self.id%
  mpurge %object%
end
drop %objectname.car%.%objectname.cdr%

~
#63721
������ � �����~
2 e 100
~
return 0
wsend %actor% �� ������� � ����� � ����������.
wechoaround %actor% _%actor.name% ������%actor.g% �� ����� � ����������.
wechoaround %actor% _�������� ������ ������ ������������ � ���������� �� ����!
wechoaround %actor% _������� ����� � ������ ������ ��������� ��������� ����� ����.
wsend %actor% _�������� ������ ������ ������������ � ���������� �� ����!
wsend %actor% _������� ����� � ������ ������ ���������� ��������� ����� ����.
wload mob 63716
wload mob 63716
wteleport ��������.����� 63775
wteleport ��������.����� 63775
detach 63721 %self.id%

~
#63722
����� ��������� ������~
0 f 100
*~
if (%world.curobjs(63730)% < 5) && (%random.10% <= 2)
  mload obj 63730
end
if (%world.curobjs(63731)% < 5) && (%random.10% <= 2)
  mload obj 63731
end

~
#63723
���� ������� �������� ������~
0 b 5
~
halt
if ((%self.position% == 7) || (%self.position% == 1))
  halt
end
if (%random.2% == 1)
  if (%world.curmob(63702)% < 5)
    mecho _~~%self.name% ����� ������ ��������� ������...
    mecho _...~~%self.name% ������ ��������� �����!
    mload mob 63702
  end
else
  if (%world.curmob(63703)% < 5)
    mecho _~~%self.name% ����� ������ ��������� ������...
    mecho _...~~%self.name% ������ ��������� ������!
    mload mob 63703
  end
end

~
#63725
����������� � ������~
0 z 100
~
mkill %random.pc%

~
#63727
�������� �������� �2~
0 n 100
~
if ((%random.100% < 5) && (world.curobjs(63720) < 4))
  mload obj 63720
end
if ((%random.100% < 5) && (world.curobjs(63721) < 4))
  mload obj 63721
end
if ((%random.100% < 5) && (world.curobjs(63722) < 4))
  mload obj 63722
end
if ((%random.100% < 5) && (world.curobjs(63723) < 4))
  mload obj 63723
end
if ((%random.100% < 5) && (world.curobjs(63724) < 4))
  mload obj 63724
end
if ((%random.100% < 5) && (world.curobjs(63725) < 4))
  mload obj 63725
end
����� ���

~
#63728
� �������� �2~
0 q 100
~
say ����� ��? �� ��� �.. ������ �������� ���! � �� ����� ������ � ������ �����!
detach 63728 %self.id%

~
#63729
����� � ����-���~
0 q 100
~
wait 4s
if (%self.position% == 7)
  halt
end
say �� ���� ���-�� � ����� �� �����...
wait 1s
say � �� ��� ������� - ����, ����, ���, �����, ����....
say ��� ���� ���� ������ �� ������������... �����! �, �����, � ������� ����� ��������!
emot ��������� ���������� �� ����������� �� �������� ������ �������.
wait 1s
say ���� �� ��� ��������� ������� ��������, �������...
emot ����������� � ����� ������ ������������� ���������� �������
attach 63731 %self.id%
~
#63730
������ �� ������~
0 p 100
~
mecho ����� ������: ��� �� �������?!
mecho - �  �� - ����� ��� ��� �� ����� ����!!!!
foreach char %self.pc%
  dg_cast '���� ����' %char.name%
done

~
#63731
� ����-��� �2~
0 c 1
����� �������~
if !%arg.contains(����-���)%
  msend %actor% _���� ����-��?
  halt
end
if ((%time.month% > 11) || (%time.month% < 3))
  msend %actor% _�� ������� ���, ����������� ����������� �����.
  mechoaround %actor% _%actor.name% ������ %actor.g% ���, ����������� ����������� �����.
end
msend %actor% _�� ������� ������ ����-���.
mechoaround %actor% _%actor.name% ������%actor.g% ������ ����-���.
say ��� �������!
���
say ����-���� ���� �������� �������...
��� %actor.name%
���� %actor.name%
eval friend %actor.id%
calcuid leshak 63719 mob
attach 63732 %leshak%
remote friend %leshak%
detach 63731 %self%

~
#63732
����� � ������~
0 q 100
~
if (%actor.id% != %friend%)
  ��� %actor.name%
end
wait 1s
say ������%actor.g% ����, %actor.name%!
say ��, �����, �� ���� ��������� �� ������?
say ��, ������, ������� ������... ������ � ����.
emot ������ ����� ����-�� �� ������-������.
say ��� ���� ���� ����������...
���
mecho ������� ������������ � ����������� �� �������� ������ �� ������-������.
mdoor 63792 n room 63775
detach 63732 %self.id%

~
#63733
purge objects~
1 z 0
~
opurge %self%

~
#63734
������ ������~
0 f 100
~
mload obj 63733

~
#63736
�������� ������ �� ������~
1 c 2
������������~
if (%actor.realroom% != 63770)
  return 0
  halt
end
if !%arg.contains(������)%
  osend %actor% _��� �� ������ ������������?
  halt
end
if !%arg.contains(������)%
  osend %actor% _���� �� ������ ��� ��������?
  halt
end
osend %actor% _�� �������� ������ �� ������� ����� �� ������ ������.
oechoaround %actor% _%actor.name% �������%actor.g% ������ �� ������� ����� �� ������ ������.
oecho _������ �������� � ���������� �� �������.
wait 1
oecho _�� ������������� ���-�� �������� �����������.
wait 3s
oecho _����� ��������:
oecho - � ����������� ����... ��, � ���� , ����� �� ������.
wait 1
oecho - � ���� �� �� ���� �����, �� �� ����%actor.q% ����� ������� ���������, ����� ������ ����� ����.
oecho - ������� � ��� ���� �����.
wait 1s
oecho - ������ ��� ����� �� ����, ��� ����� �� ��������� ������ ����
oecho - ��� �������� ������� ��������� �����.
wait 1s
oecho - ������, � �� ����� � ����� �����...
oload obj 63700
exec 63711 %world.room(63770)%
wait 1
opurge %self%

~
#63737
������� ������~
1 h 100
~
if (%actor.realroom% != 63719)
  halt
end
osend %actor% _�� ��������� ���������� ������ �� ���������� ����� � �����������.
oechoaround %actor%  %actor.iname% �������%actor.g% �������� �������� � �����������.
oecho _�������� ����������� ��������� ������������� ������� �����.
exec 63733 %world.obj(63732)%
exec 63738 %world.room(63719)%
wait 1
opurge %self%

~
#63738
������ �� ������ � ���� �������~
2 z 0
~
wportal 63765 2

~
#63739
load set on master of clouds~
0 f 100
~
mload obj 63733

~
#63740
load set on great sevenwings~
0 f 100
~
if %world.curobjs(3371)% < 2 && %random.10000% < 100
  mload obj 3371
end

~
$
$

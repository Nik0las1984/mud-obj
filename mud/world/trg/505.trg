#50500
�������~
0 r 100
~
wait 1
msend %actor% ����������, %actor.name%!
msend %actor% ���� � �� ����� ������%actor.a% �� ����� � ������� ���� �������.
msend %actor% ����� ������, ������ ������ ������ ������ ������� ��������
msend %actor% ���� �� ���������� �������
���� %actor%
msend %actor% ����� 50 ���, � �� ������� ������������ � ��������� �������.
~
#50501
�������~
0 m 0
~
wait 1
if %amount% < 50
  ��
  msend %actor% ��������, �� �� ��� ������ � ���� ������ ������ ��������� �� ���� �������.
  msend %actor% ������������� ������....
  �� %actor%
  halt
end
wait 1s
switch %random.5%
  case 1
    mecho ������ ������ ���� �������������� �� ������ �������.
    mecho �� ��������� ����� �������� ���������� � ��������� ���������� ������ ������� � ������� ������� ���� ���� ����������� ����.
    mecho - ������.. ���.. ��.. ������ �������?
    mecho - ���... ��� �����?
    mecho - ������� ���� ����� ���������� ������ �������... ������� ��� ����� � �������� ����� ����������...
    mecho - ����... �� ����.. � �� ����� ��� ��� ����� ����������... ������� ��� �������...
    mecho ��� �� �� �������� ������ ������ ������������ �� �� ��������.
  break
  case 2
    mecho ������ ������ ���� �������������� �� ������ �������.
    mecho �� ��������� ����� �������� ���������� � ��������� ���������� ������ ������� � ������� ������� ���� ���� ����������� ����.
    mecho - ��... ������ ������� ��� ���� ����������... �� ������� ����� �� ��������� � ������������ � �������...
    mecho - ���.. �� �� ����� �� �� ��� �� ���� ������?
    mecho - �� ����... ����� ���� � �����... �� ����� ��� �� �� ���� �� � �������.. ������ ��� ���� ���...
    mecho ��� �� �� �������� ������ ������ ������������ �� �� ��������.
  break
  case 3
    mecho ������ ������ ���� �������������� �� ������ �������.
    mecho �� ��������� ����� �������� ���������� � ��������� ���������� ������ ������� � ������� ������� ���� ���� ����������� ����.
    mecho - ����� ������� �������?
    mecho - ���... � ��� � ���?
    mecho - ������ ��� ������� �����... ����� ����� �������� �� ��������� �������� �����...
    mecho - � ��� �� ����? � ���� ��� ���� ���� ��� ��� ����� � ������...
    mecho - ��� ����� �, ��� ��� �� ������� � ��� �����... ��� �� �� �����������...
    mecho ��� �� �� �������� ������ ������ ������������ �� �� ��������.
  break
  case 4
    mecho ������ ������ ���� �������������� �� ������ �������.
    mecho �� ��������� ����� �������� ���������� � ��������� ���������� ������ ������� � ������� ������� ���� ���� ����������� ����.
    mecho - ��... ������ ���� ������ �� ��� �����... ������� ��� � ������������ ������� ������� ������ �� �������...
    mecho - �� �� ������ �� ���... ������ ���� ��� ���� ���� ����� �������, ��� � �������� ������ �������...
    mecho - � �� ������... ��� �� ������ ����� � ����� - ����� ������... ��� ����������� ��� ���� �� ������� ��� ����� ����������...
    mecho ��� �� �� �������� ������ ������ ������������ �� �� ��������.
  break
  case 5
    mecho ������ ������ ���� �������������� �� ������ �������.
    mecho �� ��������� ����� �������� ���������� � ��������� ���������� ������ ������� � ������� ������� ���� ���� ����������� ����.
    mecho - ����.. � ��� ����� ��� ������� ������, ��� ��� ��� ������ ���������� ����� �� ����...
    mecho - ���... ��� ������ � �� ��������� ��� ������ 2.... � �� ��� ��� ����� ���� ������?
    mecho - � �� ������� � �����?... ����� ������ ��� ������ ����� ��������.. � ����� ����� ������������ � � ���������...
    mecho - � ��� ���� �����?
    mecho - ��� ���.. ���� ����... � ���� �� ������� ����.. ��� ����.. �� ����� �����.. ����� ������� ������...
    mecho ��� �� �� �������� ������ ������ ������������ �� �� ��������.
  break
  default
  break
done
wait 1s
~
#50502
���������� ����~
0 r 100
~
wait 1
�  ���-���...
�  ���-�� ���������� ���������� ����������� ��� �����...
�  � ���������, � ��� ���� �������...
�  �� ������... � ��� �������� ����, ���� �� ������� �� ���� ���� ��������...
�  ���� �� ��������� - �� ���������� ������...
�  ���� ���... 
wait 1s
mecho ��� ���������.
wait 1s
�   ��� �� � ����� ������� ����������������.. ���� � � ���� ����������...
eval firstchar %self.people%
eval num 0
while %firstchar% && (%num% < 10)
  eval pc %firstchar.next_in_room%
  if %firstchar.vnum% == -1   		
    switch %random.8%
      case 1
        eval dest_room 50536
      break
      case 2
        eval dest_room 50537
      break
      case 3
        eval dest_room 50538
      break
      case 4
        eval dest_room 50539
      break
      case 5
        eval dest_room 50541
      break
      case 6
        eval dest_room 50542
      break
      case 7
        eval dest_room 50543
      break
      case 8
        eval dest_room 50544
      break
      default
        eval dest_room 50544
      done
      mechoaround %firstchar% %firstchar.name% ������ � ������ ����.
      mteleport %firstchar% %dest_room%
      eval num %num%+1
      if %firstchar_realroom% == %dest_room%
        mat %dest_room% mechoaround %firstchar% %firstchar.name% �������� � ������ ����.
        msend %firstchar% �������� �� ������������� ��� ����� �� ���� ���������� ��� � ������ �����.
      end
    end
    if %pc%
      makeuid firstchar %pc.id%
    else
      set firstchar 0
    end
  done 
~
#50503
������������~
0 r 100
~
wait 1
mecho ���������� ����� ������� ���������� ������.
mecho ���������� ���������.
wait 1s
� ����� ����... � � �� ����� ��� � ������� �� ����� ������ ��� ����� ��������...
msend %actor% ���������� �������� �������� ���.
mechoaround %actor% ���������� �������� �������� %actor.rname%.
wait 1s
� ��������� ���������.. �� ���� �� �������? 
� ����� ��� �������� ������ �� �������� � ���, ��� ����� ����������...
� �������� ��� � ����, ��� ������� ������ ���� � ����, 
� ����� ��� ����� �� ����� �� �����...
� �� ���� ��� ����� �� ��������.. �����-������� ������, 
� ����� ������� � �����...
� ����� ����� ������� ��������� ��� ������ �� ������ �� �����... 
� � ������ � ������ ���� ��������� �������, ��� � ���� �� ����� ����������...
mecho ���������� ������� ��������.
wait 1s
� � ������� �������� � �� ���... ������ � �������� ��� ����� ������������...
� � ���������, �� ��� �������� � �����, � ������������ ������� ������������ 
� � �������...
� ����� ���� ����� ������ ���� � � ��� ��� ��� �� �������...
wait 3s
� ��� ����� � ��� ����, ����������,.. �� ����� �������� ������ �, 
� ��� ��� ����, �� �����... ���� �� �� ��� ��� ���� � ����� ��...
� ���� ��� ������, ���-�� � ���� �������...
msend %actor% ���������� ��������� �� ��� ��������, ������ ������.
mechoaround %actor% ���������� ��������� �� %actor.vname% ��������, ������ ������.
~
#50504
������~
0 d 1
����� ������~
if (%actor.vnum% != -1)
  halt
end
context 505
� ������� ��� �������... ��� ������� ����� - �������������.
eval c505 4
eval h505 %actor.name%
calcuid load_room 50522 room
attach 50506 %load_room.id%
exec 50506 %load_room.id%
detach 50506 %load_room.id%
calcuid load_room 50551 room
attach 50507 %load_room.id%
exec 50507 %load_room.id%
detach 50507 %load_room.id%
calcuid load_room 50548 room
attach 50508 %load_room.id%
exec 50508 %load_room.id%
detach 50508 %load_room.id%
calcuid quest505 50511 mob
remote h505  %quest505.id%
remote c505  %quest505.id%
calcuid quest505 50512 mob
remote h505  %quest505.id%
remote c505  %quest505.id%
calcuid quest505 50513 mob
remote h505  %quest505.id%
remote c505  %quest505.id%
global h505
global c505
detach 50503 %self.id%
attach 50526 %self.id%
detach 50504 %self.id%
~
#50505
����� ����~
2 f 100
~
context 505
unset c505
unset h505
wdoor 50545 down purge
~
#50506
���� �������� ����~
2 z 100
~
wload mob 50511
calcuid var 50511 mob
attach 50513 %var.id%
~
#50507
���� �������� ����~
2 z 100
~
wload mob 50512
calcuid var 50512 mob
attach 50510 %var.id%
~
#50508
���� �����~
2 z 100
~
wload mob 50513
calcuid var 50513 mob
attach 50511 %var.id%
~
#50509
���������� � �������~
2 c 100
��������~
if (%actor.vnum% != -1)
  return 0
  halt
end
if !(%arg.contains(�������)%)
  return 0
  halt
end
if (%world.curobjs(50501)% == 1)
  wsend %actor% �� �������� � �������.
  if %actor.sex%==1
    wechoaround %actor% %actor.name% ������� � �������.
  else
    wechoaround %actor% %actor.name% �������� � �������.
  end
  wteleport %actor% 50551
  if %actor.sex%==1
    wat 50551 wechoaround %actor% %actor.name% �������� ������.
  else
    wat 50551 wechoaround %actor% %actor.name% ��������� ������.
  end
end
~
#50510
������������ ��������~
0 c 1
����������~
wait 1
context 505
if (%h505%==%actor.name%) && (%c505%>1)
  * Say  �������� ��������: %h505% ���� ��������
  � ������� ��� ��������...
  � ������ � � ����, ���� �� �� ����� ������������...
  mecho ������� �������� ����� �� �������.
  eval c505 %c505% - 1
  calcuid krest505 50510 mob
  remote c505 %krest505.id%
  if %world.curmobs(50511)%==1
    calcuid quest505 50511 mob
    remote h505  %quest505.id%
    remote c505  %quest505.id%
  end
  if %world.curmobs(50513)%==1
    calcuid quest505 50513 mob
    remote h505  %quest505.id%
    remote c505  %quest505.id%
  end
  mpurge %self%
end
~
#50511
������������ �����~
0 c 1
����������~
wait 1
context 505
if (%h505%==%actor.name%) && (%c505%>1)
  � ������� ��� ��������...
  � ������ � � ����, ���� �� �� ����� ������������...
  eval c505 %c505%-1
  calcuid krest505 50510 mob
  remote c505 %krest505.id%
  if %world.curmobs(50511)%==1
    calcuid quest505 50511 mob
    remote h505  %quest505.id%
    remote c505  %quest505.id%
  end
  if %world.curmobs(50512)%==1
    calcuid quest505 50512 mob
    remote h505  %quest505.id%
    remote c505  %quest505.id%
  end
  mpurge %self%
end
~
#50512
���������~
0 f 100
~
if (%world.curmobs(50515)%==1) && (%world.curobjs(50510)%==0)
  if %world.curmobs(50513)%==1
    mload obj 50510
  end
end
~
#50513
������������ ��������~
0 c 1
��������� ������~
wait 1
context 505
if (%h505%==%actor.name%) && (%c505%>1)
  eval c505 %c505%-1
  calcuid krest505 50510 mob
  remote c505 %krest505.id%
  if %world.curmobs(50512)%==1
    calcuid quest505 50512 mob
    remote h505  %quest505.id%
    remote c505  %quest505.id%
  end
  if %world.curmobs(50513)%==1
    calcuid quest505 50513 mob
    remote h505  %quest505.id%
    remote c505  %quest505.id%
  end
  �����
  ���
  � �� �� ���� ��������...
  � ������ ���� ��������... �� ������... �� ������ �� ����� � �� ��� �������...
  mecho ���������� ������.
  if (%exist.mob(50516)%)
    calcuid load_mob 50516 mob
    mforce %load_mob% � �� �������� ���... ������ �� ����� ������������ � �����, %actor.name%!
    attach 50520 %load_mob.id%
    exec 50520 %load_mob.id%
  end
  mpurge %self%
end
~
#50514
���������� �����~
2 c 1
����� �������~
if (%actor.vnum% != -1)
  return 0
  halt
end
if !(%arg.contains(����)%)
  return 0
  halt
end
if ( %var_505_pech% != 1)
  halt
end
if (%world.curobjs(50503)% == 1)
  wsend %actor% �������� ����� ���� ������� ��� � ����� ���� ����.
  wteleport %actor% 50552
end
~
#50515
���������� ����~
2 c 1
�����~
if (%actor.vnum% != -1)
  return 0
  halt
end
if !(%arg.contains(�����)%)
  return 0
  halt
end
wait 1
wsend %actor% �������� �� ����������� ������ �����!
wteleport %actor% 50552
wechoaround %actor% %actor.name% ��� �� �����... � ��� �� ����������.
~
#50516
�������~
0 c 1
�������� ������ �������� ~
wait 3
if (%exist.mob(50516)%)
  � � ���� �� �����.
  halt
end
� ����������, ������, �� ���� ������� ����...
� � ���� ���� � ����������...
� � ����, �� ������ ������� ����...
� ������������ ����������... ��� ����� �������� ������� ��������...
wait 3s
mecho � ����� ������� ������� ����������� � ����� �� ����������� � ������ �� ��������.
mecho �� �������� ����������� �� ���.
wait 3s
mat 50545 mecho ���-�� ������ ���� � �������� �������.
mteleport all 50545
mteleport %self% 50545
wait 1
� ��� � ��� � �����.. � ������ ��� ����� ����� �������.
mdoor 50545 down flags a
mdoor 50545 down room 50550
mkill %actor.name%
attach 50523 %self.id%
~
#50517
�����~
2 b 100
~
set firstchar %self.people%
while %firstchar%
  set pc %firstchar.next_in_room%
  if %firstchar.vnum% == -1
    wdamage %firstchar% 30
    wsend %firstchar% _�� ������ ���� ����� �������� ���� �������. �� ���� �� ������� ������?
  end
  if %pc%
    makeuid firstchar %pc.id%
  else
    set firstchar 0
  end
done 
unset firstchar
unset pc
~
#50518
����� �� �����~
2 c 4
�������~
wsend %actor% _�� ��������� � ����� � ���������� �� �����.
wteleport %actor% 50550
~
#50519
���� �����~
0 k 5
~
mechoaround %actor% ����� ������ ���� ������ ���� � ��� %actor.rname%!
msend %actor% ����� ������ ���� ������ ���� ��� � ���!
mdamage %actor% 150
dg_cast '��' %actor.name%
~
#50520
�����~
0 z 100
~
������
��������� %actor.name%
~
#50521
������ - ����~
0 d 1
�� ����~
if (%actor.vnum% != -1)
  halt
end
if (%actor.class% == 10) || (%actor.class% == 5)
  if ((%actor.class% == 5) && %actor.can_get_skill(������� ������)%)
    mskillturn %actor% �������.������ set
    � � ���, ��� ���� ���������� � ���-�� ������ ��������.
    � ������� ������ - �������� ������.
  end
  if ((%actor.class% == 10) && %actor.can_get_skill(�����)%)
    mskillturn %actor.name% ����� set
    � � ���, ��� ���� ���������� � ���-�� ������ ��������.
    � ������ �� ������ ������� ������������� ��� ��������� ������.
  end
  if (!%actor.can_get_skill(�����)% && !%actor.can_get_skill(������� ������)%)
    � ���%actor.g% �� ��� ��� ���� �����.
    ���
  end
else
  � ������, �� � �� ������ ��������� ����� ����...
end
mecho ���������� ����������� � ����.
mpurge %self%
~
#50522
���������������~
0 n 100
~
context 505
unset c505
unset h505
~
#50523
���������~
0 f 5
~
switch %random.2%
  case 1
    if %world.curobjs(564)%<1
      mload obj 564
    end
  break
  default
    if %world.curobjs(550)%<1
      mload obj 550
    end
  break
done
~
#50524
��������~
0 f 100
~
switch %random.20%
  case 1
    if %world.curobjs(50511)% == 0
      mload obj 50511
    end
  break
  case 2
    if %world.curobjs(50517)% == 0
      mload obj 50517
    end
  break
  default
    if (%world.curobjs(529)% == 0) && (%random.100% < 51)
      mload obj 529
    end
  break
done
~
#50525
�����������~
0 f 100
~
if %world.curobjs(572)% < 1 && %random.15% == 1
  mload obj 572
end
~
#50526
�����������~
0 r 100
~
wait 1
context 505
if %h505%!=%actor.name%
  halt
end
switch %c505%
  case 1
    wait 3
    � ������� ���.
    � ������� ��� ���� ������ �� ����.
    � � ������ ������� ��� �������� ���� �����... 
    � �� ��� ����� �������� �������� ���� �� ��� ��������...
    � ������� � ����� ��� ��� ��� ����� ��������, ���� �� ����� ��� ���...
    wait 1s
    mecho ���������� ������ ����� �������� ����� ����������.
    � ������� ������� ������� ���, ��� ����� �������� ��� ��, 
    � ��� ��������� ����� ���� ����� ��������� ��� ����.
    � �� ������ � ���� �� ��� ��� ����� �� �����, � ��� ����� ������ - 
    � ��� ����� �� �����������...
    wait 1s
    � ����� ��������, ��� � ����� ���� 3 ����: ����� ������ �� ������� ����, 
    � ����� ������ �� �������, ������� ������ �� ��������...
    � � ����� ��� ���� ���� ���������� � �����... 
    � ��� ������ ���� ����� �������... 
    � ����� ����� ����� ��������� ������ �� �������� ���...
    � ������ ���� ����� �� ���� ��������...
    wait 2s
    � ��... ������� ���� ���� ����...
    � ������� ��� ���.
    wait 2s
    � ��... ���...
    set firstchar %self.people%
    while %firstchar%
      set pc %firstchar.next_in_room%
      if %firstchar.vnum% == -1
        ���� '���' %firstchar%
        ���� '���������' %firstchar%
        ���� '��������������' %firstchar%
      end
      if %pc%
        makeuid firstchar %pc.id%
      else
        set firstchar 0
      end
    done 
    unset firstchar
    unset pc
    ���� '������ �����' %actor%
    � ���� �� �����...
    � � ����� ���� � ������ � ������� � ��������� �������... 
    � ���� ������� ��� �� ��, �� ��� ������ ��������...
    � ���� ����� ��� ��������� ��������� ������, �� � ����� ��� ���������� �������...
    calcuid load_mob 50510 mob
    attach 50521 %load_mob.id%
  end
break
case 2
  wait 3
  � ������� ���.
  � �� ������� ����� ���� �����.
  � ���� ��� �� ������, �� ������� ���������� � �������������.
end
break
case 3
  wait 3
  if %h505%==%actor.name%
    � ������� ���.
    � �� ������� ��� ����.
    � ���� ��� �� ������, �� ������� ��������� ����� � �������������.
  end
break
case 4
  wait 1
  � � ��������� ��� ���� ��� � �� ��������� ���.
end
break
default
  �����
break
done
~
$~

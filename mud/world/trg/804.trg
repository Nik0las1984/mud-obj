#80400
��������� ���� ���� �����_1~
0 r 100
~
wait 1s
���   
say ����������� ���� %actor.iname%!
���
if %quest804%
  halt
end
wait 2s
say ��� �� ���� ���%actor.y%. 
say ������ ����� �����, ���������.
say ������� ��� ����� ����� �����������.
say ����� ��� ��� ����������, � ���� ���������� ������ ������ �������.
say ��� ������ � ���� � ������.
wait 1s
say ��... ����� �� ����� ��� ������� �������, � ���, � ����� � �����!..
say �� �� ������...
���� %actor.iname%
wait 1s
say ������ �� ���� ����� �� ������ �������������!
say �� ���� � ������ � �����, � ����� ���������... �� ����. 
say � ������ ���� ���� �� �����...
����
*���� %actor.iname%
say ������ ���, ����� � ������� �������, ���� ������� ������������!
say ������ ��� � ���� ��������� ����� �����.
say � � �� ���� ����������� ��� �����.
wait 2s
say �������� �� �� ���?
~
#80401
��������� ���� ���� �����_2~
0 d 0
�� ������ ������ ������ ��������~
if %actor.level% < 24
  say ���... �� ���� � ����� ���� ����� �� ����...
  say ���� �� ������ �� ������ �������
  �����
  halt
end
if !%quest804.name%
  set quest804 %actor%
  global quest804
  wait 1s
  �����
  say ��� � ������.
  say ��� ���� ���� �� �����. 
  say � ��� ���������, ����� �� ������� �����.
  mload obj 80426
  give ���� %actor.iname%
  wait 1s
  say �� ��, ��� ����� ���� �������.
  say ��� ����� ������ ���� ������, ��� ��� ��� ���...
  ������
  say �� ��� �� �����. �� ������ ����� ���� ����� ������ ������!
  say ����� ��� ������ ���� ������� ������, ���� ������.
  say �� � �������-�� ������ ��������� - ��������.
  say � �� � ��������, �� ������ �� �� ����� ��� ���...
  say ��� ��� %actor.iname%, ���������� ���.
  wait 1s
  ����� %actor.iname% 
  calcuid for_mb 80400 mob
  detach 80400 %for_mb.id%
  detach 80401 %for_mb.id%
end
~
#80402
��������� ���� ��������� �����~
0 h 100
~
if %actor% != %Killer%
  halt
end
wait 1s
say �������-�� ��������� � �� ���� ���!
say %actor.iname%, ����� ���� �������.
if (( %world.curobjs(591)% < 1 :) && ( %random.4% == 1 :))
  mload obj 591
  give all %actor.name% 
  say � ��� ���� ��� ��������, � ���� ���� ������ ���, ����� ������ ��.
  say �� �� ������� ������ ������� ����� ������� � �������...
elseif (( %world.curobjs(588)% < 1) && ( %random.4% == 1))
  mload obj 588
  give all %actor.name% 
  say � ��� ���� ��� ��������, � ���� ���� ������ ���, ����� ������ ��.
  say �� �� ������� ������������ ����� ���� �� ������...
else
  %self.gold(10000)%
  give 10000 ��� .%actor.name%
end
say ��� ���, ��� � ���� ��������� ����...
wait 10
say � ������ ������.
mecho ���� ������ ��������� � ����� � ������� �����!
wait 5
mpurge %self%
~
#80403
����� �������� �������~
2 f 100
~
calcuid for_mb 80400 mob
rdelete quest804 %for_mb.id%   
detach 80400 %for_mb.id%
detach 80401 %for_mb.id%
detach 80402 %for_mb.id%
attach 80400 %for_mb.id%
attach 80401 %for_mb.id%
*������ ��� ����� � ����������...
wdoor 80484 w purge
wdoor 80484 e purge
wdoor 80470 w purge
wdoor 80470 e purge
wdoor 80489 w purge
wdoor 80489 e purge
wdoor 80490 w purge
wdoor 80490 e purge
wdoor 80485 w purge
wdoor 80485 e purge
wdoor 80486 w purge
wdoor 80486 e purge
wdoor 80469 w purge
wdoor 80469 e purge
wdoor 80483 w purge
wdoor 80483 e purge
wdoor 80482 w purge
wdoor 80482 e purge
*... � ������� �� ������ ��������� �������
*������� �������� � ����������, ������� ���
*... � ����� �������, ��� ��� ��� �������� :-)
set room1_west no
set room1_east no
set room2_west no
set room2_east no
set room3_west no
set room3_east no
eval dungeon 0  
foreach %i% 1 2 3 4 5 6
  switch %dungeon%
    case 0
      eval dungeon 80484
    break
    case 80484
      eval dungeon 80470
    break
    case 80470
      eval dungeon 80489
    break
    case 80489
      eval dungeon 80490
    break
    case 80490
      eval dungeon 80485
    break
    case 80485
      eval dungeon 80486
    done
    eval doors no_ok
    while !(%doors% == ok) 
      switch %random.3%
        case 1
          if %room1_west% == no
            wdoor 80469 w room %dungeon%
            wdoor 80469 w flags ab
            wdoor %dungeon% e room 80469
            wdoor %dungeon% e flags ab
            eval room1_west yes
            eval doors ok
          elseif %room1_east% == no
            wdoor 80469 e room %dungeon%
            wdoor 80469 e flags ab 
            wdoor %dungeon% w room 80469
            wdoor %dungeon% w flags ab
            eval room1_east yes
            eval doors ok
          end
        break
        case 2
          if %room2_west% == no
            wdoor 80482 w room %dungeon%
            wdoor 80482 w flags ab 
            wdoor %dungeon% e room 80482
            wdoor %dungeon% e flags ab 
            eval room2_west yes
            eval doors ok
          elseif %room2_east% == no
            wdoor 80482 e room %dungeon%
            wdoor 80482 e flags ab 
            wdoor %dungeon% w room 80482
            wdoor %dungeon% w flags ab 
            eval room2_east yes
            eval doors ok
          end
        break
        default
          if %room3_west% == no
            wdoor 80483 w room %dungeon%
            wdoor 80483 w flags ab
            wdoor %dungeon% e room 80483
            wdoor %dungeon% e flags ab
            eval room3_west yes
            eval doors ok
          elseif %room3_east% == no
            wdoor 80483 e room %dungeon%
            wdoor 80483 e flags ab
            wdoor %dungeon% w room 80483
            wdoor %dungeon% w flags ab
            eval room3_east yes
            eval doors ok
          end
        done
      done
    done
~
#80404
��� � �������� �����~
0 k 50
~
msend %actor% ����� ������ ����� �������� ���� �������� ��� ������� ��� �� �����!
msend %actor% � ��� � ������ ����������...
mechoaround %actor% ����� ������ ���� �������� ��� ���� %actor.vname% �� �����!
mdamage %actor% 50
%actor.position(6)%
%actor.wait(5)%
if %random.3% == 2
  cast !��� �����! %actor.name%
end
~
#80405
������������ ����������� ���������~
0 k 35
~
wait 1
dg_cast '������� ����' ����
eval target %random.pc%
if (%random.3% == 2)
  say �� ������, �����, �������� � ��������!
  say �� ������, ������� � ���� ����, ����������� ����!!!
end
if %target%
  ������ ��� ����� %target.name%
else
  ������ ��� ������ %self.name%
end
~
#80406
������������ ��������� �����~
0 z 0
~
*��������� ���� ����� ����������������
wait 1s
if %random.10% < 7
  dg_cast '������� ����'  ����
else
  dg_cast '���� ����'  ����
  dg_cast '������� ����'  ����
end
~
#80407
���������� ���� � ������� ����������� 2/5~
0 f 0
~
eval leader %random.5%
if %leader% == 4
  if %exist.mob(80408)%
    calcuid necro 80408 mob
  else
    halt
  end
elseif %leader% == 3
  if %exist.mob(80409)%
    calcuid necro 80409 mob
  else
    halt
  end
else
  halt
end
mecho �������� ���� ����� ���������� ���� %self.rname% � ������ �������� ����!
set target_room %necro.realroom%
mteleport %self% %target_room%
mechoaround %necro% �������������� ������ ���� ����� ����� �� �������!
exec 80406 %necro.id%
detach 80407 %self.id%
~
#80408
����� ����� ���������~
0 f 20
~
if %random.5% == 3
  return 1
  halt
end
return 0
mecho _������, ����� ��������� ������: Pestis eram vivus - moriens tua mors...!!!
*��� ����� � ��� (����) ����� - ������, ����� (�����) ������� (�) ������ �����
msend %actor% _����� ����� ��������� �������� ��� �� ������� ���� � �� ������������ �� ����!
mechoaound %actor% _%actor.name% ����������� �� ����, ������� ��������� ������ ���������.
eval damage %actor.hitp%/3
*������ 1/3 �����
mdamage %actor% %damage%
~
#80409
������� ����� (�������� �� ��������)~
0 c 0
� � ���~
return 0
if !(%cmd.mudcommand% == ���������) || !(%cmd.mudcommand% == cast) || !(%cmd.mudcommand% == �������)
  halt
end
if %random.100% < 50
  switch %random.2%
    case 1
      cast !sielence! %actor.name%
      default
        cast !blind! %actor.name%
      done
    end
~
#80410
������� ������ (����� ��������)~
0 c 0
� � ���~
return 0
if !(%cmd.mudcommand% == ���������) || !(%cmd.mudcommand% == cast) || !(%cmd.mudcommand% == �������)
  halt
end
if %random.100% < 75
  ���������
  mkill %actor%
end
~
#80411
����� � �������� �������~
0 q 40
~
wait 2s
emot �������� ��������
say � ��� ��� ����� � ������...
say �����!!! ����� �� ��� �����... ��������� �� ���� ��� �� ����!...
wait 3s
say �����, ���� �������� �������? ��� �� ���...
wait 3s
say ���� ���...
say ���... �� ���... �� �����!!!
wait 4s
say ���� �� �������, ������!
say ����� �� � ���� � ������ � ���� , �� �����-������ � ��� ������� � ����������...
wait 2s
emot ����� ��������
emot ���������� � ������ ��������, � �������� �������� �������� �� ����������
~
#80412
������ "������" � ���������� (������ ���������� ������)~
0 d 100
������~
if (%actor.religion% == 0) || !(%actor.vnum% == -1)
  halt
end
wait 2s
emot ������������ � ��������� �� ���
say ��? �� ��� ��������?!
emot ������� ���������..
if %actor.level% < 24
  say ���... ���� ��� �� �� �����...
  if %actor.sex% ==  1
    say ������, ��� ���... �� ����� ���� ����� � ����� ������.
  else
    say ������, ���� ���... �� ����� ���� ����� � ����� ������. 
  end
  emot ���������� � ���� ����������� ������������ ������� ��������� ������
  halt
end
wait 1s
say ������...  ������...
mecho _- ����� ��� ����� ������ ���������, � ���� �� ������� ��������� ����������...
mecho _- ������� ���� ������ � ���� ������� - �������� � �������� �������, � ���� �������� �������.
mecho _- �� �� ������ ��� �� �� �� ����... ���� ������� ������... �� � ����� ����, ������.
wait 5
say ������� �� ����������� ���� ������������ ������� � ���������� ����� ��� - ��� ������.
mecho _- � � ���� ����� ������ ��������� ������ - � ����� � ��� �������� �������������� � �������.
mecho _- ���� � ���� ������ ���� �������� ��, �� � ������ - ��� �� ��������...
wait 3
say ���� ���� �� ������... �� - ����� �� ����...
mecho _- ����� ����� ������ ���������, � ����������� �� �������� ��������.
mecho _- �� ������� ��� �������, � ������� ��������� �� ����� �������.
wait 1s
say ���� ����� �� ��� ������� - ����� � �����  �� � ����� ��������� ��.
wait 1s
if %actor.sex% ==  1
  say ������, ��� ���, ����� ��... � �� �������� � ����� �������� ����...
else
  say ������, ���� ���, ����� ��... � �� �������� � ����� �������� ����...
end
emot ����������� ���
dg_cast '�����' %actor.name%
*������ ������� 1 � �����
calcuid tun1 80434 obj
calcuid tun2 80435 obj
calcuid tun3 80436 obj
switch %random.3%
  case 1
    attach 80414 %tun1.id%
    attach 80415 %tun2.id%
    attach 80415 %tun3.id%
  break
  case 2
    attach 80415 %tun1.id%
    attach 80414 %tun2.id%
    attach 80415 %tun3.id%
  break
  default
    attach 80415 %tun1.id%
    attach 80415 %tun2.id%
    attach 80414 %tun3.id%
  done
  *������ ����� � �������� 
  *������ ������� ��� ����� ����� � ������� �� ���� �� ��� � �����
  eval room1 80407+%random.26%
  calcuid tiun %room1% room
  attach 80417 %tiun.id%
  exec 80417 %tiun.id%
  *�������� ������� ��� ������
  switch %random.10%
    case 1
      set otr1 "����, �� ������� "
      set otr2 "�� �������� ���"
      set otr3 "�������� ����"
      set otr �� �������� ��� ����, �� ������� �������� ����
    break
    case 2
      set otr1 "�����, ��� �� ����"
      set otr2 "���� � �� "
      set otr3 "�� ����� ����"
      set otr �� ����� ���� ���� � �� �����, ��� �� ����
    break 
    case 3
      set otr1 "������� ��������� �����"
      set otr2 "...� ������ ��� ����� ����,"
      set otr3 "��� � �� "
      set otr � ������ ��� ����� ����, ��� � �� ������� ��������� �����
    break
    case 4
      set otr1 "���������, �� "
      set otr2 "...� �� ����� ��� �� "
      set otr3 "������ ��� �� ��������"
      set otr � �� ����� ��� �� ���������, �� ������ ��� �� ��������
    break
    case 5
      set otr1 "� ����� ������"
      set otr2 "�������� � ����,"
      set otr3 "��� ���� ���� "
      set otr ��� ���� ���� �������� � ����, � ����� ������
    break
    case 6
      set otr1 "��� �����"
      set otr2 "�� ����������"
      set otr3 "���, � ���������"
      set otr �� ���������� ���, � ��������� ��� �����
    break
    case 7
      set otr1 "�����, �����������"
      set otr2 "��������� ������, �������! "
      set otr3 "���������� ����"
      set otr ���������� ���� �����, ����������� ��������� ������, �������!
    break
    case 8
      set otr1 "�������� ������"
      set otr2 "�� ��� ����"
      set otr3 "��������� ����"
      set otr �� ��� ���� �������� ������ ��������� ����
    break
    case 9
      set otr1 "������, ����� "
      set otr2 "�������� ����"
      set otr3 "� �������"
      set otr ������, ����� � ������� �������� ����
    break
    default
      set otr1 "����"
      set otr2 "� �����,"
      set otr3 "�����������, ���� "
      set otr � �����, �����������, ���� ����
    done
    set crash 0
    global crash
    global otr1
    global otr2
    global otr3
    global otr
    calcuid warrior 80431 mob
    remote otr %warrior.id%
    attach 80418 %self.id% 
    detach 80412 %self.id%
~
#80413
������ �� ������� ����������~
0 l 100
~
say �� ���� �� ������� �� ���� �����, ���������� �������!
dg_cast '�������' %actor.name%
*����� ������ ������, ����� � �� ������� ��� ������, ��� �� ��������� ������ �����
detach 80413 %self.id%
~
#80414
������� ����� � ��������~
1 c 4
�������~
if !%arg.contains(����)%
  osend %actor% ��� �� �������-�� �������?
  halt
end
osend %actor% �� ������������ ����� � ������ ����� �����!
oechoaround %actor% _%actor.name% ���������%actor.u% ����� � ��� ���� ���� ����%actor.g% ����� ������� �����!
if %actor.str% < 25
  osend %actor% ��� �� �������, �� ������ ����� ���.
  oechoaround %actor%  _������ %actor.name% ������ �� ����� ���� � ������ ������������ �����.
  if %actor.hitp% > 50
    odamage %actor% 50
  end
  halt
end
oecho ����� �������� � �����������
oecho ������� ���������� �� ����... ����������!
oecho �� �������� ����� ������ ���-��, ���������� �������.
oload obj 80433
opurge %self%
~
#80415
������� ����� � �������~
1 c 4
�������~
if !%arg.contains(����)%
  osend %actor% ��� �� �������-�� �������?
  halt
end
osend %actor% �� ������������ ����� � ������ ����� �����!
oechoaround %actor% _%actor.name% ���������%actor.u% ����� � ��� ���� ���� ����%actor.g% ����� ������� �����!
if %actor.str% < 25
  osend %actor% ��� �� �������, �� ������ ����� ���.
  oechoaround %actor%  _������ %actor.name% ������ �� ����� ���� � ������ ������������ �����.
  if %actor.hitp% > 50
    odamage %actor% 50
  end
  halt
end
oecho ����� �������� � �����������
oecho ������� ���������� �� ����... ����������!
oecho ���-�� ��������� �� �������� �����!
switch %random.3%
  case 1
    oload mob 80410
    oload mob 80425
    oload mob 80411
  break
  case 2
    oload mob 80411
    oload mob 80426
    oload mob 80423
  break
  default
    oload mob 80412
    oload mob 80427
    oload mob 80424
  done
  opurge %self%
~
#80416
�������� ������� �����~
0 f 0
~
mload obj 80438
~
#80417
�������� �������� �����~
2 z 0
~
wload mob 80433
wecho  ������� ����� �������� ������ �����!
detach 80417 %self.id%
~
#80418
���� ������� ����������~
0 j 100
~
if !(%object.vnum% == 80433) || (%actor.religion% == 0)
  drop %object.name%
  halt
end
wait 3
eval crash %crash%+1
global crash
switch %crash%
  case 1
    say ��, ��� �� �����!
    say ��� �� ��� ��������....
    wait 1s
    say ���, ��� ��� ���������: %otr1% 
    say �������, ����� ����...
    mpurge %object%
    halt
  break
  case 2
    say �� ���%actor.y% ��� ����?
    say ���������...
    wait 1s
    say ���-�� ��������... : %otr2% 
    say ���... ����� ��� ���� �� ����
    mpurge %object%
    halt
  break
  default
    say �� ���%actor.y% ������ �������?
    say ��� ��� ������������� ����...
    wait 1s
    say ��� ��� ��� �������: %otr3%
    wait 2
    say �� ��� ��� ��� ������ �������? �� ����� �... ����� �� ����������?
    attach 80419 %self.id%
    mpurge %object%
  done
  detach 80418 %self.id%
~
#80419
������� ������� ����������~
0 d 0
*~
if (%actor.religion% == 0) || !(%actor.vnum% == -1)
  halt
end
if %speech% == %otr%
  say ��! ������ ���... 
  wait 4
  emot ������������� ���������
  say %otr%
  emot �������� �������� ������
  wait 1s
  say ��������� ����...
  say ����� ��� ���� ���������...
  say �� ����� ���� ����� - ������� ������� ��� ��������� ������� � ����������� ������,
  say �� � ��� ������� ������ ���� ������� ����� � �������� �������� ������������ � ���� �����.
  say �������� � ��� ���� - � �������� ��� ���� � �� �������, � �� �����.
  wait 2
  emot ��������� ��������� � �������� ����� ������ � �������� ������ � �������..
  calcuid warrior 80431 mob
  attach 80420 %warrior.id%
  mpurge %self%
else
  if %random.3% == 2
    say ���.... ��� ���-�� �� ��....
    emot ������ ���������
  end
end
~
#80420
������� ������� �������~
0 d 0
*~
if !(%actor.vnum% == -1)
  halt
end
if %speech% == %otr%
  emot ����������� � ��������� ���� ��������
  detach 80411 %self.id%
  wait 2s
  emot ���������� ��������� �� ���
  say ?... 
  wait 4
  emot �������� ������������ � ����������, ���������� ��������� �����
  wait 1s
  say ��... ��� ���! � ��� ��������!
  say ������� ����
  ���
  emot ��������� �� ������ � ��������� �������� �������
  wait 5
  emot ��������� ��������� � �������� ����� ������ � �������� ������ � �������..   
  if %actor.level% > 24
    msend %actor% _�� ��� ������ ���� �� �������� 80000 ����� �����.
    %actor.exp(+90000)%  
  end
  mpurge %self%
end
~
#80421
����� �������� �����~
0 f 0
~
if (%random.5% == 2) && (%world.curobjs(80430)% < 7)
  mload obj 80430
end
~
#80422
����� ������� �����~
0 f 0
~
if (%random.5% == 2) && (%world.curobjs(80429)% < 7)
  mload obj 80429
end
~
#80423
����� ����������~
0 f 0
~
mload obj 80439
calcuid dark 80400 mob
attach 80402 %dark.id%
makeuid Killer %actor.id%
remote Killer %dark.id%
~
#80424
������� ������ � ������������~
1 o 100
~
*�������� ���, �� ������� ��������� ������ ����, ���� ����� ��������
wait 1
calcuid key 80439 obj
exec 80426 %key.id%
osend %actor% _�� ������ ��������� �������� ���������� ���� ����������� �������.
oechoaround %actor% _%actor.name% ������� ��������%actor.g% ����, � ��� �������� �������... �������!
~
#80425
��������� ���������� ~
1 c 4
���������~
if !(%actor.vnum% == -1)
  halt
end           
if !%arg.contains(����������)%
  osend %actor% _��� �� ������� ���������?
  halt
end
osend %actor% �� ������� ����������� ���������� �� �����... ��������� - ��� ������ �����?
oechoaround %actor% _%actor.name% ��������%actor.g% �������� �� ����� ���������� � ����%actor.g% ���������� ����������.
osend %actor%  �������� ��� ��� ���� ���������� � �� �������� ����-�� � �������!
oechoaround %actor%  �������� ��� ��� %actor.tname% ���������� � ��%actor.g% � ����� ������ ����� �� ����.                 
oteleport %actor% 80404
~
#80426
������ ����~
1 z 0
~
opurge %self%
~
#80427
��� � ����������� (99%)~
0 l 100
~
mecho _%self.iname% �������� ������ ������ �����, � ��� ��������� ���� ����!
dg_cast 'dark' %self.name%  
attach 80432 %self.id%
detach 80427 %self.id%
~
#80428
�������� ����c�� �� �������~
0 z 0
~
calcuid temn %self.realroom% room
if (%temn.west% == west)
  west
else
  east
end
~
#80429
������ �������� 80428 � 80430~
2 j 100
~
if %exist.mob(80418)%
  calcuid nechto1 80418 mob
  exec 80428 %nechto1.id%
end
if %exist.mob(80421)%
  calcuid nechto2 80421 mob
  exec 80428 %nechto2.id%   
end
if %exist.mob(80434)%
  calcuid fire 80434 mob
  exec 80430 %fire.id%
end
if %exist.mob(80438)%
  calcuid fire2 80438 mob
  exec 80430 %fire2.id%
end
~
#80430
������� � �������� ������~
0 rz 100
~
wait 2
calcuid temn %self.realroom% room
if %temn.west%
  west
else
  east
end
if (%self.realroom% == %temn.vnum%)
  halt
end
mecho _�������� ����� ��������� ������������� �������, ������ ��� ������!
mecho _��� ������������� ������!
eval firstchar %self.people%
eval secondchar %firstchar.next_in_room%
mdamage %firstchar% 200
while %secondchar%
  eval firstchar %secondchar%
  eval secondchar %firstchar.next_in_room%
  mdamage %firstchar% 200
done
mpurge %self%
~
#80431
������� � ������ ������~
1 t 100
~
wait 1
oload mob 80410
oecho _�������� ���� ������� ������ ������������ � ���������� �����!
oecho _�������� ��� ������ �� ����� ������.
eval target %random.pc%
oforce ��������.��� kill %target.name%
opurge %self%
~
#80432
��� � ����������� (50%)~
0 l 50
~
mecho _���������� ���� �������: "�� ���, ���� ���� � �������! �������� ������ �������!!!"
wait 1s
mecho _���� � ������� ���������, ������� ��������.... 
mecho _������ ���� ����� ������������, ������� �����, � �������� �� ���!
mload mob 80436
mload mob 80427
mecho  ��������� �������� ��������� ��������� �� �������!
mload mob 80437
mload mob 80437
detach 80432 %self.id%
~
#80433
� ��� � ����������~
0 k 30
~
eval meat %random.pc%
if (!%meat.name%)
  halt
end
msend %meat% _�������� �������� �� ��� � �������� ��� � ������!
msend %meat% _������� �������� ����� ����� ����� � ������� �� ������.
mechoaround %meat% _������� �������� �������� �� %meat.vname% � �������� � �����!
mechoaround %meat% _�������� ����� ����� %meat.rname% � ��� ���� ��������� ����������.
eval blood %random.200%
mdamage %meat% %blood%
%self.hitp(+%blood%)%
~
#80434
����� ����� �� ������� � ���� �����~
2 f 100
~
*������� ���� ������, ���������� �� �������� � ������ �����
wpurge 
wload obj 80434
wload obj 80435
wload obj 80436
~
#80435
����� ����������~
0 f 100
~
if ( %actor.vnum% ==  -1 )
  set Killer %actor.id%
else
  eval owner %actor.leader%
  set Killer %owner.id%
end
calcuid dark 80401 mob
attach 80402 %dark.id%
remote Killer %dark.id%
~
#80436
����� ���������� ���������~
0 f 100
~
if (%world.curmobs(80402)% <= 1)
  mload obj 80450
end
~
$~

#91500
����������~
2 c 1
����������~
if !(%arg.contains(���������)%) && !(%arg.contains(���������)%)
  wsend %actor% �� ������ ���������� �� ������.
  wechoaround %actor% %actor.name% �����%actor.q% ����������.   
  wait 1s
  if (%random.5% < 3) 
    wsend %actor.name% ������ ���� �� ��� ����� ����, � �� �����, ������ ���������� �������.
    wechoaround %actor% %actor.name% �������%actor.u% � ������� ����.
    wteleport .%actor.name% 91574  
    wdamage %actor% %actor.hitp%
    if (%random.5% == 1) 
      wecho ������ ���� �������� �� ���.
      wait 3s
      wat  91574 wload mob 91506
    end
  else
    wsend %actor.name% �� ���������� �� ��������.
    wteleport .%actor.name% 91574  
    if (%random.40% == 1) 
      wecho __������ ���� �������� �� ���.
      wait 1s
      wload mob 91506
    end
  end
else 
  wsend %actor% �� ������ ��������� ���������� �� ������.
  wechoaround %actor% %actor.name% ����� ��������� ���������� ����.   
  wait 1s
  if (%random.50% == 1) 
    wsend %actor.name% ������ ���� �� ��� ����� ����, � �� �����, ������ ���������� �������.
    wechoaround %actor% %actor.name% ��������� � ������� ����.
    wteleport .%actor.name% 91574  
    wdamage %actor% %actor.hitp%
    if (%random.5% == 1) 
      wecho __������ ���� �������� �� ���.
      wait 3s
      wload mob 91506
    end
  else
    wsend %actor.name% �� ��������� ���������� �� ��������.
    wteleport .%actor.name% 91574  
  end
end
~
#91501
���� ������� ���� � ������~
0 f 100
*~
unset greendragonraid915
if (%world.curobjs(91505)% < 2) && (%random.10% <= 4)
  mload obj 91505
end
if (%world.curobjs(91506)% < 2) && (%random.10% <= 4)
  mload obj 91506
end
if (%world.curobjs(91508)% < 2) && (%random.10% <= 4)
  mload obj 91508
end
~
#91502
����� �������� ����~
2 ab 0
~
if (%random.500% == 1)
  wait 10s
  calcuid zelen 91502 mob
  attach 91503 %zelen.id%
  exec 91503 %zelen.id%
  wait 5s
  *calcuid glashat 27017 mob
  *attach 91525 %glashat.id%
  *exec 91525 %glashat.id%
end
~
#91503
������ ������� �������� ����~
0 z 100
~
wait 1s
if (%random.4% != 1)
  mteleport ���_91502 80266
  unset greendragonraid915
  set greendragonraid915 1
  worlds greendragonraid915
else  
  mteleport ���_91502 91523 
end
mecho ������ ���� ������� ���� � �� �������� �������� ���������� �������.
attach 91501 %self.id%
attach 91505 %self.id%
wait 1000s
detach 91505 %self.id%
detach 91501 %self.id%
attach 91504 %self.id%
exec 91504 %self.id%
~
#91504
����������� �������� ����~
0 z 100
~
wait 2s
mecho ������� ���� ��������� �������, ����� ����� � ������.
detach 91503 %self.id%
unset greendragonraid915
mteleport ���_91502 91585
��� ���.�����
��� ���.����
��� ��� 1.����
��� 1000 ��� 1.����
��� ��� 2.����
��� 1000 ��� 2.����
��� ��� 3.����
��� 1000 ��� 3.����
��� ���
mteleport ���_91502 91583
calcuid grterror 91583 room
attach 91502 %grterror.id%
detach 91504 %self.id%
~
#91505
����������� �������� ����~
0 k 100
~
if (%self.hitp% < 2000) && (%random.5% == 1)
  attach 91504 %self.id%
  exec 91504 %self.id%
  detach 91505 %self.id%
  detach 91501 %self.id%
end
~
#91506
���� ����� ���� � ������~
0 f 100
*~
unset whitedragonraid915
unset raid499
if (%world.curobjs(91512)% < 2) && (%random.10% <= 2)
  mload obj 91512
end
if (%world.curobjs(91513)% < 2) && (%random.10% <= 2)
  mload obj 91513
end
if (%world.curobjs(91509)% < 2) && (%random.10% <= 2)
  mload obj 91509
end
~
#91507
����� ������ ���� (��������� ������)~
2 ab 100
~
if %exist.mob(91501)%
  calcuid white 91501 mob
  if ((%random.4000% == 5) &&(%white.fighting% == 0)) 
    unset execwhiteraid915
    attach 91508 %white.id%
    exec 91508 %white.id%
    detach 91507 %self.id%
  end
end
~
#91508
����� ������ ���� (������ �������)~
0 z 100
~
%teleport% %self% 91500
set whitedragonraid915 1
worlds whitedragonraid915
set raid499 1
worlds raid499
%echo% ������ ���� ������� ���� � �� �������� �������� ���������� �������.
attach 91506 %self.id%
attach 91510 %self.id%
wait 1100s
detach 91506 %self.id%
detach 91510 %self.id%
attach 91509 %self.id%
exec 91509 %self.id%
~
#91509
����������� ������ ����~
0 ab 100
~
wait 1s
mecho ����� ���� ��������� �������, ����� ����� � ������.
detach 91508 %self.id%
unset whitedragonraid915
unset raid499
%teleport% %self% 91579
��� ���.�����
��� ���.����
��� ��� 1.����
��� 1000 ��� 1.����
��� ��� 2.����
��� 1000 ��� 2.����
��� ��� 3.����
��� 1000 ��� 3.����
��� ��� 4.����
��� 1000 ��� 4.����
��� ���
%teleport% %self% 91577
calcuid wtterror 91577 room
attach 91507 %wtterror.id%
detach 91509 %self.id%
~
#91510
����������� ������ ����~
0 k 100
~
if (%self.hitp% < 2500) && (%random.6% == 1)
  attach 91509 %self.id%
  exec 91509 %self.id%
  detach 91510 %self.id%
  detach 91506 %self.id%
end
~
#91511
���� ������� ���� � ������~
0 f 100
*~
unset reddragonraid915
unset raid499
if (%world.curobjs(91514)% < 2) && (%random.10% <= 2)
  mload obj 91514
end
if (%world.curobjs(91515)% < 2) && (%random.10% <= 2)
  mload obj 91515
end
if (%world.curobjs(91516)% < 2) && (%random.10% <= 2)
  mload obj 91516
end    
if (%world.curobjs(91510)% < 2) && (%random.10% <= 2)
  mload obj 91510
end
if ( %self.realroom% < 90000 ) && (%random.100% > 95 )
  mload obj 91517
end
~
#91512
����� �������� ���� (��������� ������)~
2 ab 100
~
if %exist.mob(91500)%
  calcuid redz 91500 mob
  if ((%random.3000% == 5) && (%redz.fighting% == 0)) 
    unset execredraid915
    attach 91513 %redz.id%
    exec 91513 %redz.id%
    detach 91512 %redz.id%
  end
end
~
#91513
����� �������� ���� (������ �������)~
0 z 100
~
%teleport% %self% 91500
set reddragonraid915 1
worlds reddragonraid915
set raid499 1
worlds raid499
%echo% ������ ���� ������� ���� � �� �������� �������� ���������� �������.
attach 91511 %self.id%
attach 91515 %self.id%
wait 1200s
detach 91515 %self.id%
detach 91511 %self.id%
attach 91514 %self.id%
exec 91514 %self.id%
~
#91514
����������� �������� ����~
0 ab 100
~
wait 1s
mecho ������� ���� ��������� �������, ����� ����� � ������.
detach 91513 %self.id%
unset reddragonraid915
unset raid499
%teleport% %self% 91582
��� ���.�����
��� ���.����
��� ��� 1.����
��� 1000 ��� 1.����
��� ��� 2.����
��� 1000 ��� 2.����
��� ��� 3.����
��� 1000 ��� 3.����
��� ��� 4.����
��� 1000 ��� 4.����
��� ��� 5.����
��� 1000 ��� 5.����
��� ���
%teleport% %self% 91580
calcuid grterror 91580 room
attach 91512 %grterror.id%
detach 91514 %self.id%
~
#91515
����������� �������� ����~
0 k 100
~
if (%self.hitp% < 3000) && (%random.7% == 1)
  attach 91514 %self.id%
  exec 91514 %self.id%
  detach 91515 %self.id%
  detach 91511 %self.id%
end
~
#91518
���������� ������ �������~
0 k 40
~
%echo%  \&r����� ������ %self.rname% ��������� � ������� �������� ��������.\&n
dg_cast '��� �����' %actor.name%
~
#91519
������ ������ �������� ����~
2 c 100
����� �������� ����~
*exec 91502 %world.room(91583)%
%echo% test
~
#91520
������ ������ ������ ����~
2 c 100
�����_������_����~
if (%raid499% == 1)
  %echo% ����� ��� ����.
else
  set execwhiteraid915 1
  worlds execwhiteraid915
  %echo% ��������� ����� ������ ����.
  calcuid raidroom 91577 room
  exec 91507 %raidroom.id%
end
~
#91521
������ ������ �������� ����~
2 c 100
�����_��������_����~
if (%raid499% == 1)
  %echo% ����� ��� ����.
else
  set execredraid915 1
  worlds execredraid915
  %echo% ��������� ����� �������� ����.
  calcuid raidroom 91580 room
  exec 91512 %raidroom.id%
end
~
#91522
����� ����� ������ �������� ���� ��� �����~
0 n 100
~
unset greendragonraid915
~
#91523
����� ����� ������ ������ ���� ��� �����~
0 n 100
~
unset whitedragonraid915
~
#91524
����� ����� ������ �������� ���� ��� �����~
0 n 100
~
unset reddragonraid915
~
#91525
�������� ���� � ������ ����~
0 b 12
~
calcuid snake 91502 mob
if ( %snake.realroom% < 80000 ) && %snake%
  mshou ��������!!! ����������! ������� ������ ����� �� ��� ��������� ���������!
  wait 1
  mshou ��� ��������� �������!!! �� ��� �� ����� ���� ������?!
  wait 3
  mshou ������� �� ���������, � ����� ��� ����� ������������� - �������� ��� �����!!!
else
  detach 91525 %self.id%
end
~
#91526
����� ������� �������� ����~
0 k 30
~
set target %random.pc%
if %target%
  dg_cast '��� �����' %target.name%
end
~
#91530
����� ������� ����~
0 n 100
~
set dir 0
calcuid room %self.realroom% room
switch %random.6%
  case 1
    set dir %room.north%
    set napr north
  break
  case 2
    set dir %room.east%
    set napr east
  break
  case 3
    set dir %room.south%
    set napr south
  break
  case 4
    set dir %room.west%
    set napr west
  break
  case 5
    set dir %room.up%
    set napr up
  break
  default
    set dir %room.down%
    set napr down
  break
done
if %dir%
  mecho ����� ������� ������� ��������� ���� ���!
  %napr%
  wait 2
  set target %random.pc%
  if %target%
    mkill %target%
  end
  wait 7s
  mpurge %self%
else
  calcuid zmey 91510 mob
  if %zmey.fighting%
    set target %zmey.fighting%
    mkill %target%
    wait 3s
  end
  wait 2
  mpurge %self%
end
~
#91531
��������� ����� ��� ��������~
0 r 25
~
wait 1
context 915
if %target1%
  set target2 %actor%
  worlds target2
elseif %target2%
  set target3 %actor%
  worlds target3
elseif %target3%
  set target4 %actor%
  worlds target4
elseif %target4%
  set target5 %actor%
  worlds target5
else %target2%
  set target1 %actor%
  worlds target1
end
~
#91532
���� ������� ����~
0 n 100
~
wait 1
mload obj 91533
wait 1
wear �����
wait 1s
detach 91532 %self.id%
~
#91533
��� ���� ������� - ���������� �����~
0 ab 100
~
context 915
���
��� ��� ���.���
if %self.fighting% && %random.pc% 
  set target %random.pc%
  dg_cast '���� ����' %target.name%
  dg_cast '���� �����' %target.name%
  mecho &r������������ ��� �� ����� ���� ����� ������� �������� �� ������ ������������ ������� ����!&n
  mload mob 91512
  mload mob 91512
elseif %self.realroom% < 90000  
  mecho &r������������ ��� �� ����� ���� ����� ������� �������� �� ������ ������������ ������� ����!&n
  mload mob 91512
  mload mob 91512
end
if %random.100% <= 12
  switch %random.5%
    case 1
      if %target1%
        cast !portal! %target1.name%
      end
    break
    case 2
      if %target1%
        cast !portal! %target2.name%
      end
    break
    case 3
      if %target3%
        cast !portal! %target3.name%
      end
    break
    case 4
      if %target4%
        cast !portal! %target4.name%
      end
    break
    case 5
      if %target5%
        cast !portal! %target5.name%
      end
    break
  done
end
if (%self.fighting% || (%self.realroom% != 91589) || (%random.1000% <= 900))
  halt
end
stand
north
���� ��� 1.������ ���
���� ��� 2.������ ���
���� ��� 3.������ ���
���� ��� 4.������ ���
���� ��� 5.������ ���
south
~
#91534
������ ������ ������������ ������� ����~
0 z 100
~
mecho ����������� ������ ���� �������� �����, � ������� � ������ �� ������.
mteleport ���_91510 49927
mecho �������� ������ ���� ������� ����!
calcuid nabl 49907 mob
attach 91535 %nabl.id%
exec 91535 %nabl.id%
set i 0
wait 100s
while %i% < 20
  if !%self.fighting%
    set return %self.realroom%
    mteleport ���_91510 91590
    ��� ���.�����
    ��� ���.�����
    ��� ���.������
    ��� ���.������
    ��� ���.�����
    ��� ���.���
    ����� ��� 5.������_91500
    ����� ��� 4.������_91500
    ����� ��� 3.������_91500
    ����� ��� 2.������_91500
    ����� ��� 1.������_91500
    mteleport ���_91510 %return%
  end
  wait 50s
  eval i %i%+1
done
mteleport ���_91510 91590
���� ��� 1.������_91500
���� ��� 2.������_91500
���� ��� 3.������_91500
���� ��� 4.������_91500
���� ��� 5.������_91500
mteleport ���_91510 91589
~
#91535
������ � ����!!~
0 b 12
~
calcuid blacksnake 91510 mob
if %blacksnake.realroom% < 90000 && %blacksnake%
  mshou ���� ������ �������� � ���� � ����!
  wait 2s
  mshou ������ ������ ���� ��� ���� - ���� �������� ������ ������ ����� �������!
  mshou ��� �� ��, ������ ��������? ����� ��� ��� ����� �������� �������� ���� ��������� �� ���� �����!
else
  detach 91535 %self.id%
end
~
#91536
������� �� �������� ������� ����~
0 z 100
~
if %object.vnum% == 91522
  ���
  wait 1
  mpurge %object%
  say �� �� �����! ����� �� ������ ������� ����!
  say �������� ��� ���� � �������! �� ���� ������ ��������!
  switch %actor.class%
    case 0
      case 9
        if (%world.curobjs(91529)% < 2)
          mload obj 91529
        else
          mload obj 91528
        end
      break
      case 2
        case 4
          if (%world.curobjs(91523)% < 2)
            mload obj 91523
          else
            mload obj 91528
          end
        break
        case 6
          case 8
            if (%world.curobjs(91526)% < 2)
              mload obj 91526
            else
              mload obj 91528
            end
          break
          case 5
            case 10
              if (%world.curobjs(91521)% < 2)
                mload obj 91521
              else
                mload obj 91528
              end
            break
            case 3
              case 11
                if (%world.curobjs(91524)% < 2)
                  mload obj 91524
                else
                  mload obj 91528
                end
              break
              case 7
                case 12
                  if (%world.curobjs(91525)% < 2)
                    mload obj 91525
                  else
                    mload obj 91528
                  end
                break
                case 1
                  case 13
                    if (%world.curobjs(91527)% < 2)
                      mload obj 91527
                    else
                      mload obj 91528
                    end
                  break
                  default
                    mload obj 91528
                  break
                done
                wait 1s
                ���� ��� %actor.name%
              end
              %self.gold(+10000)%
              wait 1
              say �� � 10000 ��� �� ������. 
              ���� 10000 ��� .%actor.name%
~
#91537
���� ������ ����  � ������~
0 f 100
~
*if %self.realroom% < 90000
mload obj 91522
*end
~
#91538
������ ������ ������� ����!~
2 ab 100
~
if %world.curmobs(91510)%
  calcuid blaksnake 91510 mob
end
wait 2s
if %blacksnake.realroom% < 90000
  halt
elseif %random.4000% == 1
  if %blacksnake.realroom% > 91575
    east
    north
    ��� ��� ������
    ��� ��� 2.������
    ��� ��� 3.������
    ��� ��� 4.������
  end
  calcuid nabl 49907 mob
  exec 91535 %nabl.id%
  exec 91534 %blacksnake.id%
end
~
#91539
���� ����� ������� ����~
0 n 100
~
mload obj 91533
wait 1
����� �����
~
#91540
��������� ������������� �����~
1 gj 100
~
if %actor.vnum% != 91510
  osend %actor% ���, ���� �������! �� � ��� ����� ����� ����� ��� �� ��������� �����!
  return 0
  halt
end
~
#91541
���� ������� �����~
2 f 100
~
*TRIG 91541 ���� �������� ���� � ���������
wload mob 91503
wload mob 91503
wload mob 91503
wload mob 91500
attach 91542 %self.id%
detach 91541 %self.id%
~
#91542
�������������� ��������� ������� ����� :-)~
2 f 100
~
*���� ��� ���� ���������� �������� �������
*�� ������ ������� ���� �� ��������
if !%exist.mob(91503)% && !%exist.mob(91500)%
  detach 91542 %self.id%
  halt
end
if !%number%
  set number 0
end
eval number %number%+1
global number
if %number% < 48
  halt
end
eval number 1
global number
*���� ������� ���� ����, �� ��������� ���� - ������ �������� ���� )
if %exist.mob(91503)% && !%exist.mob(91500)%
  calcuid litredsnake 91503 mob
  wpurge %litredsnake%
  wecho _��������� ������� ������� ����� ����� ��������.
  wecho _����� � ������ ������� � ���� � �� ����� ���������� � ��������!
  wecho _����������� ������� ���� �������� ����� ����!
  wload mob 91500
  halt
end
*���� �������� ��������, �� ��� ������� ���� - �������� ����������� ������
if !%exist.mob(91503)% && %exist.mob(91500)%
  wecho _������� ����� ������ ������� ���� ����� ����������� � ��������.
  wecho _��������� ������� ������� ������ �� �������� ��������.
  wload mob 91503
  wait 3s
  wecho _������� ����� ������ ������� ���� ����� ����������� � ��������.
  wecho _��������� ������� ������� ������ �� �������� ��������.
  wload mob 91503
  wait 3s
  wecho _������� ����� ������ ������� ���� ����� ����������� � ��������.
  wecho _��������� ������� ������� ������ �� �������� ��������.
  wload mob 91503
end
~
#91543
�������� ����� �����~
2 f 100
~
*TRIG 91543 ���� ������ ���� � ���������
wload mob 91504
wload mob 91504
wload mob 91504
wload mob 91501
attach 91544 %self.id%
detach 91543 %self.id%
~
#91544
�������������� ��������� ����� �����~
2 f 100
~
*���� ��� ���� ���������� �������� �������
*�� ������ ����� ���� �� ��������
if !%exist.mob(91504)% && !%exist.mob(91501)%
  detach 91544 %self.id%
  halt
end
if !%number%
  set number 0
end
eval number %number%+1
global number
if %number% < 24
  halt
end
eval number 1
global number
*���� ������� ���� ����, �� ��������� ���� - ������ �������� ���� )
if %exist.mob(91504)% && !%exist.mob(91501)%
  calcuid litwhitsnake 91504 mob
  wpurge %litwhitsnake%
  wecho _��������� ����� ������� ����� ����� ��������.
  wecho _����� � ������ ������� � ���� � �� ����� ���������� � ��������!
  wecho _����������� ����� ���� �������� ����� ����!
  wload mob 91501
  halt
end
*���� �������� ��������, �� ��� ������� ���� - �������� ����������� ������
if !%exist.mob(91504)% && %exist.mob(91501)%
  wecho _������� ����� ������ ������� ���� ����� ����������� � ��������.
  wecho _��������� ����� ������� ������ �� �������� ��������.
  wload mob 91504
  wait 2s
  wecho _������� ����� ������ ������� ���� ����� ����������� � ��������.
  wecho _��������� ����� ������� ������ �� �������� ��������.
  wload mob 91504
  wait 2s
  wecho _������� ����� ������ ������� ���� ����� ����������� � ��������.
  wecho _��������� ����� ������� ������ �� �������� ��������.
  wload mob 91504
end
~
#91545
�������� ������� �����~
2 f 100
~
*TRIG 91545 ���� �������� ���� � ���������
wload mob 91505
wload mob 91505
wload mob 91505
wload mob 91502
attach 91546 %self.id%
detach 91545 %self.id%
~
#91546
�������������� ��������� ������� �����~
2 f 100
~
*���� ��� ���� ���������� ������� �������
*�� ������ ������� ���� �� ��������
if !%exist.mob(91505)% && !%exist.mob(91502)%
  detach 91546 %self.id%
  halt
end
if !%number%
  set number 0
end
eval number %number%+1
global number
if %number% < 12
  halt
end
eval number 1
global number
*���� ������� ���� ����, �� ��������� ���� - ������ �������� ���� )
if %exist.mob(91505)% && !%exist.mob(91502)%
  calcuid litgresnake 91505 mob
  wpurge %litgresnake%
  wecho _��������� ����� ������� ����� ����� ��������.
  wecho _����� � ������ ������� � ���� � �� ����� ���������� � ��������!
  wecho _����������� ������� ���� �������� ����� ����!
  wload mob 91502
  halt
end
*���� �������� ��������, �� ��� ������� ���� - �������� ����������� ������
if !%exist.mob(91505)% && %exist.mob(91502)%
  wecho _������� ����� ������ ������� ���� ����� ����������� � ��������.
  wecho _��������� ������� ������� ������ �� �������� ��������.
  wload mob 91505
  wait 2s
  wecho _������� ����� ������ ������� ���� ����� ����������� � ��������.
  wecho _��������� ������� ������� ������ �� �������� ��������.
  wload mob 91505
  wait 2s
  wecho _������� ����� ������ ������� ���� ����� ����������� � ��������.
  wecho _��������� ������� ������� ������ �� �������� ��������.
  wload mob 91505
end
~
#91548
����� ����� � �������~
0 ab 100
~
nop
~
$~

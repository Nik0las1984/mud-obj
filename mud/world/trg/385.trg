#38500
������ ������ 38511~
1 c 4
�������~
if !%arg.contains(������)%
  osend       %actor% ��� �� ������ ���������???
  halt
end
osend       %actor% _�� ������ ������ ������� ������.
oechoaround %actor%  %actor.name% ������ ������ ������%actor.g% ������.
wait 1s
if !%world.curmobs(38511)%
  oecho _������� �������� ������� ����� � ��� �� ���������.
  oload mob 38521
else
  oecho _������� �������� ������ ����� � ��� �� ���������.
  oload mob 38509
end
opurge  %self%
~
#38501
������ ������ 38508~
1 c 4
�������~
if !%arg.contains(������)%
  osend       %actor% ��� �� ������ ���������???
  halt
end
osend       %actor% _�� ������ ������ ������� ������.
oechoaround %actor% _%actor.name% ������ ������ ������%actor.g% ������.
wait 1s
if !%world.curmobs(38511)%
  oecho _������� �������� ������� ����� � ��� �� ���������.
  oload mob 38522
  calcuid mouse 38522 mob
  global mouse
  if %exist.mob(38521)%
    calcuid human 38521 mob
    remote mouse %human.id%
  end
else
  oecho _������� �������� ������ ����� � ��� �� ���������.
  oload mob 38510
end
opurge  %self%
~
#38502
�������  ���� ����� ������  ������� � ������� �����~
2 z 100
~
set fmob 38502
while %fmob% < 38535
  set i %world.curmobs(%fmob%)%
  while %i% > 0  
    calcuid pm %fmob% mob %i%
    exec 38517 %pm%
    eval i %i%-1
  done
  eval fmob %fmob%+1
done    
wait 3t
if %world.curmobs(38511)%
  halt
end
wait 5t
if !%world.curmobs(38511)%
  %world.zreset(385)%
end
~
#38503
�������� � �������� ~
0 q 100
~
if %actor.class% == 8
  wait 1s
  ������ %actor.name%
  if %actor.sex% == 2
    wait 1s
    say ������� � �����, ���� ����.
  else
    wait 1s
    say ��� ������ ����, ������.
  end
end
~
#38504
�������� � �����������~
0 q 100
~
if !(%actor.class% == 8)
  wait 1s
  ������
  msend %actor% _������ ������ ��������� �� ��� ����� � ��� ��������� ��� ��������� �� �����.
  wechoaround %actor% _������ ������ ��������� �� %actor.rname% ������ ����!
  mkill %actor%
else
  wait 1s
  ������ %actor%.
end
end
~
#38505
���� ����� ������ 386-� ����~
2 bz 100
~
if !%world.curmobs(38511)%
  wait 3t
  halt
end
set i 0
set j %random.7%
switch %random.8%  
  case 1
    set vnum 38527
  break
  case 2
    set vnum 38528
  break         
  case 3
    set vnum 38529
  break
  case 4
    set vnum 38534
  break 
  default         
    set vnum 38534
    set i 10
  break
done       
foreach mogila 38512 38515 38523 38527 38531 38536 38553   
  if %world.curmobs(%vnum%)% > 2
  break
end
eval i  %i%+1
if %i% == %j%
  wload mob %vnum%
  wdoor 38597 up room %mogila%
  wforce ���_385 ���
  wforce ���_385 �����  
  wait 1s
  wdoor 38597 up purge
end
done
wait 3s
switch %random.4%  
  case 1
    set j %random.4%
    set spis 38524 38525 38537 38552
    set vnum 38533
  break         
  default                  
    set j %random.5%
    set spis 38585 38565 38579 38588 38592
    set vnum 38530
  break
done  
if %world.curmobs(%vnum%)% > %j%
  halt
end
set i 0     
foreach mogila %spis%
  eval i  %i%+1
  if %i% == %j%
    wload mob %vnum%
    wdoor 38597 down room %mogila%
    wforce ���_385_2 ���
    wforce ���_385_2 ����
    wait 1s
    wdoor 38597 down purge
  end
done
~
#38506
�������� � �����������!~
0 q 100
~
if !(%actor.class% == 8)
  ������
  if (%world.curobjs(38501)% < 20) && (%random.2% == 1)  
    mload obj 38501
    mecho _���������� ������ ������� � ���� �����.
    ������ �����
    ������� %actor.name%
  end
  mkill %actor%
else
  wait 1s
  ������ %actor%.
end
end
~
#38507
�������� � ����� ���� ~
0 q 100
~
if !(%actor.class% == 8)
  ������
  mkill %actor%
else
  wait 1s
  ���� %actor%.
end
end
~
#38508
������ �������� � �����~
0 s 100
~
if %self.realroom% == 38562
  if %world.curobjs(38511)%
    wait 1s
    mecho _������������ ����������� �������� ������.
    mecho _���������� � �� ����������� �� ��������� � ���� ����� ����������� ����.
  else
    wait 1s
    mecho _������������ ����������� �������� �����,
    mecho _�, �� ����� ������ ������� �� ������!
    mecho _���� ����� �� ���� ������ � ������ ����.
    wait 2s
    mecho _����� ������������ �������� � ����� ������ ���������� ������.
    if %random.pc%
      set target %random.pc%
      mkill %target%
    end
  end
end
~
#38510
������� �������~
1 c 4
�������~
if !(%arg.contains(�������)%)
  osend       %actor% ��� �� ������ �����������???
  return 0
  halt
end
osend       %actor% _�� ����� ���� �� ����� ������� � ������ �� �������.
oechoaround %actor%  %actor.name% ����%actor.g% ���� �� ����� ������� � �����%actor.g% �� �������.
wait 1s
oecho _������ �������� ������� ������������ ����, � ���� ������ ����� �������� ���� �������.
oload mob 38508
wait 1
opurge %self%
~
#38511
������ �������� � �����~
0 s 100
~
if %self.realroom% == 38547
  if %world.curobjs(38508)% 
    wait 1s
    wecho _������ ��������� ��������� ������ � ��������� ���� ��� ���-��.
  else
    wait 1s
    wecho _������ �� ����� ������, ����������, � ����� ���������� ���������.
  end
end
~
#38512
����� ����������~
0 f 100
~
if (%world.curobjs(38500)% < 10) && (%random.4% == 1)
  mecho _���������� ���� ������ ����� ������ �� ����� � ���������� � ����.
  mload obj 38500
end
~
#38513
����� ������~
0 f 100
~
if (%world.curobjs(38513)% < 15) && (%random.2% == 1)
  mload obj 38513
end
~
#38514
������� �����~
1 c 4
����������~
if !(%arg.contains(����)%) 
  osend       %actor% ��� �� ������ ���������� ?!!
  return 0
  halt
end
osend       %actor% _�� ���������� ���������� ���� ����� , �� ���� �� �����, � ������� ���� ������.
oechoaround %actor%  %actor.name% ������� ���������%actor.g% ���� �����, �� ���� �� ���%actor.y%.
oecho _��������� ������ ������ ���� �� �������� ���.
oload obj 38515
wait 1
opurge %self%
~
#38515
����� ����~
0 f 100
~
if !%world.curobjs(559)% && %random.10%==1
  mload obj 559
end     
mload obj 38528
~
#38516
����� �������~
0 f 100
~
while %exist.mob(38532)%
  calcuid badwind 38532 mob
  %purge% %badwind%
done
mload obj 38516
mecho _���� ����, ����������� ������, ����������. 
calcuid komn 38595 room
exec 38502 %komn.id%  
~
#38517
������ ����~
0 z 100
~
wait 1
mpurge %self%
~
#38518
�����  ��������� ������~
0 k 100
~
wait 1s   
if ((%random.100% < 51) && (%world.curmobs(38532)% < 3))
  mecho _��������� ����� ������ � ����!
  mload mob 38532                                 
end
~
#38520
���� ��� ��������~
0 n 100
~
if %world.curmobs(38522)%
  calcuid mouse 38522 mob
  global mouse
end
wait 1s
���
say ������� �� ������������! �� ������ ��� �� ��������....
wait 1s
say �� ����������... ���� ���, ����� ���������... ��� ��?
wait 1
say �� ���� �� ����� ��� ��� �� ����, ������� ����� ����, ����� ����...
wait 1
say �������� �� ������ �� ����, � ������� �������� � �������� ��������.
wait 1
say ��� �� ���, ��� �������, ������ ������, ��� ���������...
wait 1
say �� �� ����� �� ��� ��� ����������, �� �� ������� �� ������������..?
���
calcuid chelow 38521 mob
detach 38520 %chelow.id%
~
#38521
������� ������ ��� ��������~
0 d 0
������ ��� ����� �������~
wait 1s
say ������� �� ����...
���� %actor.name%
detach 38521 %self.id%
~
#38522
������ ���~
0 c 0
�������� ������� ������ ������� �������~
if !(%arg.contains(�����)%) 
  msend %actor% ���� �� ������ �������???
  return 0
  halt
end
msend %actor% �� ������������ � �����.
mechoaround %actor% %actor.name% ����� ������%actor.g% ����������� �����.
wait 1s
mecho _�������� ���� ����� ����������� � ������������ � ������� ���������..
mload mob 38524
mpurge %self%
~
#38523
������� ���� ��� ���� ������~
0 d 0
����� ������ ������ ������ ������� ~
if ((%self.realroom% != 38547) || !%world.curmobs(38522)%)
  wait 1s
  mecho ��� ������� ���������.
  say ��� �� � ���� �� �����...
  return 0
  halt
end
detach 38522 %mouse.id%
wait 1s
mecho _��� ������� ���������, �������� �� �����.
mecho _�� ��� ���� ������������� ���� ��������...
wait 2s
say ��, ���� - �� ����!
wait 1s
mecho  _�� �������� � �����, �������� �� � �������� ����������� ������ � �� ������.
mecho _���������� ����� ����� ����������� � ���������� ������� ����������!
wait 1s
���
mload mob 38523
calcuid miska 38522 mob
if %miska%
  mpurge %miska%
end
mecho _���������� ��������, ������������ ���������� (�� ��� �����)... � ��������� ��� �������..
mecho _�� ��� ��� �������� � ����� ���������-����������!
mecho _���������� ����������, �������� ���������� (�� ���� ��� ����� ���������� ���� �����)..
mecho _� ���� ���� �� ��� �����, ������ �� ����� ������� �����...
mecho _�� �������� ��� � ���� ��������� ���-�� ��������� ������� �������.
mecho _����� �� ��������� �� ������� ���� ������...
wait 1s
say ����� �� ���, ��� ������� �� �����!!
mload obj 38502
���� ����� %actor.name%
calcuid a2mfor 38523 mob
if %a2mfor%
  mpurge %a2mfor%
end
switch %random.10%
  case 1
    if (%world.curobjs(566)% < 1)
      mload obj 566
      say �� � ��� ��� ��� ������, ������ �����, ����� ����������...
      ���� ���� .%actor.name%
    end
  break
  case 2
    if (%world.curobjs(540)% < 1)
      mload obj 540
      say �� � ��� ��� ��� ������, ������ �����, ����� ����������...
      ���� ���� .%actor.name%
    end
  break
  case 3
    if (%world.curobjs(573)% < 1)
      mload obj 573
      say �� � ��� ��� ��� ������, ������ �����, ����� ����������...
      ���� ���� .%actor.name%
    end
  break
done
����
wait 1
mpurge %self%
~
#38524
����� ������� ���������~
0 f 100
~
*����� ����
nop
~
#38527
��������� ����~
1 p 100
~
wait 1
oecho _�� ����� �������� ��������� ������� �����.
oload mob 38525
oecho _��������� ������� ����� ������ ���������.
detach 38527 %self.id% 
~
#38528
����������� �������~
1 j 100
~
osend       %actor% _�� ���������� ����� ������ � ����� ������� �� �������� �� ��������.
oechoaround %actor% _%actor.name% ���������%actor.g% ����� ������ � ����� ������%actor.g% �� �� ������ ��������.
~
#38529
����������� ������~
1 j 100
~
if %world.curobjs(38517)% < 4
  if (%actor.class% == 8) ||  (%actor.class% == 0) ||  (%actor.class% == 1) ||  (%actor.class% == 6) ||  (%actor.class% == 7)
    osend  %actor% _������ ����� ������� ����� ������� ������!
    osend  %actor%  �������� ��� ����� ����������, ������������ �..
    osend  %actor% _������������ � ��������� ���������� �����!
    oload obj 38517
    oforce %actor% ��� ����
    wait 1
    opurge %self%
  end
end
~
#38530
����� ������������ �������~
0 f 100
~
mecho _��� ������������� ������� �� ������� � ����� ����� ������������ ���!
mload mob 38526
~
#38535
����� ������ �� ��������~
0 f 100
~
if (%world.curobjs(38518)% < 15) && (%random.2% == 1)
  mload obj 38518
end
~
#38537
����� ������� � �������~
0 f 100
~
if (%world.curobjs(38519)% < 11) && (%random.2% == 1)
  mload obj 38519
end
~
#38538
����� ����� � ��������~
0 f 100
~
if (%world.curobjs(38520)% < 10) && (%random.2% == 1)
  mload obj 38520
end
~
#38539
����� ��������~
0 f 100
~
if (%world.curobjs(38521)% < 15) && (%random.2% == 1)
  mload obj 38521
end
~
#38540
����� ���������~
0 f 100
*~
if (%world.curobjs(38522)% < 10) && (%random.2% == 1)
  mload obj 38522
end
~
#38542
�������� � ���������~
0 q 100
~
if !(%actor.class% == 8)
  ������
  kill %actor%
else
  wait 2s
  mecho �������� ������ ��������� ����������� �� ���� ������� ������� � �����...
end
~
#38543
�������� � �������~
0 q 100
~
if !(%actor.class% == 8)
  ������
  mecho _�������� ������ ����������� ������ ������!
  kill %actor%
else
  wait 1s
  mecho _�������� ������ ������� ������� ��� �������.
end
~
#38544
���� ��������� ����~
0 i 100
~
if %actor.vnum% == 38528
  wait 1s
  mecho _������ ������ ����������� ��� ������� ��� ���� ����� ���!
  calcuid gniloi 38528 mob
  mpurge %gniloi%
  wait 1s
  mecho _�� ��������� �������� ��� � ���� � �������� ������ ������.
  mload mob 38531
  mpurge %self%
end
~
#38545
���� ��������� ����~
0 i 100
~
if %actor.vnum% == 38529
  wait 1s
  mecho _������ ������ ����������� ��� ������� ��� ���� ����� ���!
  calcuid gniloi 38529 mob
  mpurge %gniloi%
  wait 1s
  mecho _�� ��������� �������� ��� � ���� � �������� ������ ������.
  mload mob 38531
  mpurge %self%
end
~
#38546
���� ��������� ����~
0 q 100
~
if %actor.vnum% == 38529
  wait 1s
  mecho _������ ������ ���������� ��� ���� ���.
  say �� ���!
  ����
end
~
#38547
�������� � ������� 2~
0 q 100
~
if !(%actor.class% == 8)
  ������
  kill %actor%
else
  wait 2s
  mecho _������ ������ ��������� ����� ���� � �������� ���������.
end
~
#38548
����� �������~
0 f 100
~
if (%world.curobjs(38529)% < 15) && (%random.3% == 1)
  mload obj 38529
end
~
#38549
����� ������~
0 f 100
~
if (%world.gameobjs(38530)% < 15) && (%random.2% == 1)
  mload obj 38530
end
~
$~

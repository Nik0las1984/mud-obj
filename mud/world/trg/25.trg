#2500
�������� �������~
2 c 100
��������������~
*�� ������� 2500 ��������� ���� ������� ������� �������, �������� � ������� ���� ������
wait 1
unset mobpozdravitel
calcuid mobpozdravitel 2500 mob
if (%mobpozdravitel% && (%mobpozdravitel.position% != 7))
  wteleport %mobpozdravitel% %self.vnum%
  wecho �������� � ������� ����� ����� �����, ���-�� ������ ���������.
  wait 1 s
  wforce %mobpozdravitel% ������
  wait 2 s
  wforce %mobpozdravitel% ������ .�������
  wait 1 s
  wforce %mobpozdravitel% ���� ��� .�������
  wait 1 s
  wforce %mobpozdravitel% � ����������� � ����� �����!
  wait 1 s
  wforce %mobpozdravitel% �������
  wait 3 s
  wecho ����� �� ������������ ���������� �� ������ (����� ��������, �� ��� �� �����������) ����������.
  wpurge %mobpozdravitel%
  %world.zreset(25)%
else
  wecho ������-�� ����������� ����� ���������� �������� � ������.
end
~
#2501
���� �� ������~
1 c 3
*~
* ���� ����������� ������� "����" ��� "drink" � �������� ����� �� ���� ������ -- �� ���������
if (%cmd.mudcommand% == ���� || %cmd.mudcommand% == drink || %cmd.mudcommand% == ��������� || %cmd.mudcommand% == taste)
  if (%arg.contains(���)% || %arg.contains(���)%)
    osend %actor% �� �������� &C���� �����&n �� &W������� &Y������ &R�����&n.
    osend %actor% �� ������������� ������ &G��������� ���&n!
    osend %actor% �������� ���������� ��������� ���!
    osend %actor% ������-�� �� �������� ������: "&R����� � ����� ���� ���� ������!&n"
    if !%actor.name%
      oechoaround ������� ����� ������� &C���� �����&n �� &W������� &Y������ &R�����&n.
    else
      oechoaround %actor% %actor.name% �����%actor.g% ������� &C���� �����&n �� &W������� &Y������ &R�����&n.
    end
    wait 1
  end
end
return 0
~
#2502
���� �� ������� �����������~
1 c 2
*~
* ���� ����������� ������� "����" ��� "drink" � �������� ����� �� ���� ������ -- �� ���������
if !%actor.name%
  return 0
  halt
end
if (%cmd.mudcommand% == ���� || %cmd.mudcommand% == drink || %cmd.mudcommand% == ��������� || %cmd.mudcommand% == taste)
  if (%arg.contains(���)% || %arg.contains(���)%)
    osend %actor% �� ������ ����������� �� &K��&g����� &K��&g���������&n.
    oechoaround %actor% %actor.name% �����%actor.g% ����������� �� &K��&g����� &K��&g���������&n.
    wait 1
    %actor.wait(2)%
  end
end
return 0
~
#2503
������ ���������� ������~
0 c 4
������~
wait 1
mechoaround %actor% %actor.name% �����%actor.g% ������ &G���������� ���������� ������&n.
msend %actor% �� ������ ������ &G���������� ���������� ������&n.
%actor.wait(5s)%
wait 5
if %random.100% < 20
  mecho �������� &R�&Y�&G�&C�&B� &R�&Y�&G� &R�&Y�&G��&C��&B��&M��&R �&Y�&G�&C�&n ���� � &G���������� ���������� ������&n!
end
~
#2504
������ ���������� ����� �� ������~
0 j 100
~
wait 1
if %object.vnum% == 2504
  wait 1
  mpurge %object%
  mechoaround %actor% %actor.name% �������%actor.g% &R�&Y�&G�&C�&B� &R�&Y�&G� &R�&Y�&G��&C��&B��&M��&R �&Y�&G�&C�&n �� &G���������� ���������� ������&n.
  msend %actor% �� �������� &R�&Y�&G�&C�&B� &R�&Y�&G� &R�&Y�&G��&C��&B��&M��&R �&Y�&G�&C�&n �� &G���������� ���������� ������&n.
  * ������ ����� �� ���� ���������� �������
  eval randomnum2504 %random.1000%
  if %randomnum2504% < 10
    mload obj 1144
    log &Y��������: &R%actor.name%&G ������� � ���������� ���� (&W�����-���� :)&G): &M���� ����&G
  elseif %randomnum2504% < 50
    switch %random.6%
      case 1
        mload obj 1130
        log &Y��������: &R%actor.name%&G ������� � ���������� ����: &M������ ���������� ����&G
      break
      case 2
        mload obj 1131
        log &Y��������: &R%actor.name%&G ������� � ���������� ����: &M��������� ���������� ����&G
      break
      case 3
        mload obj 1132
        log &Y��������: &R%actor.name%&G ������� � ���������� ����: &M������ ���������� �����&G
      break
      case 4
        mload obj 1133
        log &Y��������: &R%actor.name%&G ������� � ���������� ����: &M������ ���������� ����&G
      break
      case 5
        mload obj 1134
        log &Y��������: &R%actor.name%&G ������� � ���������� ����: &M������ ���������� �������&G
      break
      case 6
        mload obj 1135
        log &Y��������: &R%actor.name%&G ������� � ���������� ����: &M��������� ���������� ������&G
      break
    done
  elseif %random.1000% < 300
    * ������� ����������� + ������� � ��������� - 10% ����
    mload obj 2506
    mload obj 2505
    mload obj 11225
    mload obj 11225
    mload obj 11225
    mload obj 11225
    mload obj 11225
    �������� ���.���� ������
    * ������ ������������� ����� 
  elseif %random.10% < 5
    mload obj 2508 * �������� ���������
  else
    mload obj 11225 * ������� ����� � �����
  end
  give all .%actor.name%
  drop all
else
  tell %actor.name% ���� � ��� ���� &R�&Y�&G�&C�&B� &R�&Y�&G� &R�&Y�&G��&C��&B��&M��&R �&Y�&G�&C�&n �� ��������� ���.
  wait 2
  drop all
end
~
#2505
���� ������ ��������~
0 q 100
~
wait 1
if !%actor.name%
  halt
end
if %actor.remort% == 0 && %actor.level% < 29 && %actor.age% < 25
  wait 3
  mload obj 2506
  mload obj 2505
  mload obj 11225
  mload obj 11225
  mload obj 11225
  mload obj 11225
  mload obj 11225
end
�������� ���.���� ������
give all .%actor.name%
~
#2506
������� ����~
0 c 1
�������~
wait 1
log %actor.name% &C ������ ���������� ����.
mecho &G���������� ���������� ����&n � �������� ����� �� �����!
if %random.5% > 3
  mecho &R�&Y�&G�&C�&B� &R�&Y�&G� &R�&Y�&G��&C��&B��&M�� &R�&Y�&G�&C�&n ���� �� �����.
  mload obj 2504
end
%purge% %self%
~
#2507
����� �������� �������~
0 z 100
~
*����������, ���� �����
set target 27015
switch %random.25%
  case 1
    set city �������
    set target 27015
  break
  case 2
    set city ������
    set target 24027
  break
  case 3
    set city ����
    set target 49974
  break
  case 4
    set city ������� ��������
    set target 60029
  break
  case 5
    set city �����
    set target 76067
  break
  case 6
    set city �����
    set target 34420
  break
  case 7
    set city ������
    set target 66027
  break
  case 8
    set city ��������
    set target 18212
  break
  case 9
    set city ��������
    set target 63605
  break
  case 10
    set city �����������
    set target 13570
  break
  case 11
    set city �����
    set target 63040
  break
  case 12
    set city ������
    set target 30211
  break
  case 13
    set city �����
    set target 69075
  break
  case 14
    set city �����
    set target 77047
  break
  case 15
    set city �����������
    set target 25001
  break
  case 16
    set city ������
    set target 72008
  break
  case 17
    set city �����
    set target 75066
  break
  case 18
    set city �������
    set target 64033
  break
  case 19
    set city ������
    set target 85125
  break
  case 20
    set city �����
    set target 35031
  break
  case 21
    set city ������
    set target 73085
  break
  case 22
    set city �����
    set target 60265
  break
  case 23
    set city ������
    set target 62027
  break
  case 24
    set city �����
    set target 32408
  break
  case 25
    set city ��������
    set target 68078
  break
done
if (%where% == %target%)
  halt
end
����� ���������, ���� ������, ����������!
����� ��� ������� ������� ������������ � ����� �������, %city% ����������!
����� � ���� ������� � ���� � ����-������ ��������� - ��� � �����������.
wait 30s
mdoor 2501 d purge
mdoor %where% u purge
calcuid ladder 2598 obj
mpurge %ladder%
set where %target%
global where
mecho ���������� ��������� ������, ����� ���������� ��������, � ������� �������� � ����.
wait 10s
set i 0
while (%i% < 12)
  switch %random.17%
    case 1
      mecho &R���� ���� � ��������� ������� ���������� ����� � �����!&n
    break
    case 2
      mecho &W������� ������� ���������� �������� �����.&n
    break
    case 3
      mecho &C����� ����� �������� � �������� �����.&n
    break
    case 4
      mecho &W����� ������� � �������.&n
    break
    case 5
      mecho &G����� ������� ��������, � �� ������ �������� �������������� ��������. &n
    break
    case 6
      mecho &Y��������� ���� ����������� ������, ������ ������.&n 
    break
    case 7
      mecho &C���� � ������ ������������ ������� � ����.&n 
    break
    case 8
      mecho &G�� ����������� ������ ������� �������, � ���� �������� ������������� ������ ��� ������.&n
    break
    case 9
      mecho &R���� �������� ������� ����� ���������� ���� �� �������, �� �������� �������� �� �������� � ���������.&n
    break
    case 10
      mecho &C���������� ������ ��������� ������ � ����.&n 
    break
    case 11
      mecho &G������ ����� ������ �� ������� �� ������� � ������� ���������� ����.&n 
      mecho &G���� �� ��� ������ ��� ���������� ������, �� ���� �� ��� ��������� - �� ���������� ����� ����.&n 
    break
    case 12
      mecho &Y����� ����� ���� ������-�� ������.&n 
    break
    case 13
      mecho &W���� ������� ����� ���� ��������� �� ��������.&n 
    break
    case 14
      mecho &C������� ��������� � ������� �������� �����.&n
    break
    case 15
      mecho &R�������� � �������� ��� ������ ����� ��� �������� �������, ����� �����.&n 
    break
    case 16
      mecho &K������ ������� ���� ��������� �����.&n
    break
    case 17
      mecho &Y������ ����� ���������� ����, ����, ������ � ����.&n
    break
  done
  eval i %i%+1
  wait 10s
done
mdoor 2501 d room %target%
mdoor %target% u room 2501
mload obj 2598
calcuid ratchet %target% room
calcuid ladder 2598 obj
%ladder.put(%ratchet%)%
mecho ������� �� ������� � ����� %city%.
mecho %self.name% �������� �������� ����� � ������� ���� ���������� ��������.
attach 2509 %ratchet%
exec 2509 %ratchet%
����� ������� ������� ������ � ����� %city%! ��������-�������!
~
#2508
������ ������ �������~
2 f 100
~
if !%shkiper%
  calcuid shkiper 2504 mob
  global shkiper
end
exec 2507 %shkiper.id%
~
#2509
���������� � �������� �������~
2 z 100
/ra 'wzoneecho' 'wzoneecho %self.vnum%'~
wzoneecho %self.vnum% &Y'���������� ���� ������, ���������!' - �������� ����������� �������.&n
wzoneecho %self.vnum% &Y'������� ������� ������ �� ���� ������ ����������, �������� �� ������!' - ��������� ��.&n
detach 2508 %self.id%
~
#2510
���������� �������~
1 h 100
~
wait 1
oecho &Y������� ����������� ������ �������!&n
calcuid target %self.room% room
attach 2511 %target%
exec 2511 %target%
opurge %self%
~
#2511
��������� �������.~
2 z 100
~
wait 1
wzoneecho %self.vnum% __________&M*  &Y*  &C*  &Y�����! ���-������! ���! ������! - ���������� ����� �������.  &C*  &M*  &C*&n
~
#2512
������ �������� �������~
1 c 4
�������~
if (%actor.vnum% != -1)
  halt
end
if ((%cmd% != �������) || (%arg% != �������))
  %send% %actor% ����-����?
  halt
end
if (%actor.level% < 25)
  %send% %actor% - ���%actor.g% �� ��� ������� �������.
  halt
end
*�������� ����� ����
if (%date.month% > 6)
  eval nyear %date.year%+1
else
  set nyear %date.year%
end
if (%actor.getquest(2500)% == %nyear%)
  %send% %actor% - �� ��� �������%actor.g% � ���� ���� �������!
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
%echoaround% %actor% %actor.iname% ���������%actor.g% ���� ������� � ��������%actor.g% �� �������!
set buf %actor.setquest(2500 %nyear%)%
log &G%actor.name% ������� ������� %present.vname%!&n
~
#2513
��������� �������~
1 c 3
������~
wait 1
set item %arg.words(1)%
set target %arg.words(2)% 
if ((%item% != ������) && (%item% != �������))
  osend %actor% ��� �� ����������?
  halt
end
if (!%target% || (%target.realroom% != %actor.realroom%))
  osend %actor% �� �� ������ ����.
  halt
end
%actor.wait(5)%
osend %actor% &C�� ����� ��������� ������� � %target.vname%!&n
osend %target% &C %actor.name% ����� �������� � ��� �������! ����! �������!&n
foreach inroom %self.pc%
  if (%inroom.name% != %actor.name%) && (%inroom.name% != %target.name%)
    osend %inroom% &C %actor.name% ��������%actor.g% ������� � %target.vname%!&n
  end
done
oecho &C������ ���������� ����� �������� ��������...&n
opurge %self%
~
#2514
������� �����������~
1 h 100
~
wait 1
oload mob 49965
opurge %self%
~
#2515
���������� ������ ���������, ����� ��������, ����� � �������~
0 j 100
~
if ((%object.vnum% != 10670) && (%object.vnum% != 10671) && (%object.vnum% != 10672))
  msend %actor%  ���� �� ��� ��� �����...
  return 0
  halt
end
wait 1
*��������� ������ �������
set i 0
foreach fake %self.objs%
  if (%fake.val0% != 1)
    mpurge %fake%
    eval i %i%+1
  end
done
if (%i% > 0)
  tell .%actor.name% �������� %i% ����, ���-��...
  msend %actor% _������ ������ ������� ���������� ������� � �������.
end
*������� ������� �������/�����/������
set debris 0
set sphere 0
set cluster 0
foreach item %self.objs%
  switch %item.vnum%
    case 10670
      eval debris %debris%+1
    break
    case 10671
      eval sphere %sphere%+1
    break
    case 10672
      eval cluster %cluster%+1
    break
  done
done
*������� ��� �� ��������
mjunk all
*������� ���� ������� ���� �� ����
wait 1
mecho %self.name% ��������� ����� �� ����������.
tell .%actor.name% ����, � ���� ��� �� ������%actor.q%:
if (%debris% > 0)
  tell %actor.name% �������� - %debris% ����.
end
if (%sphere% > 0)
  tell %actor.name% ����� - %sphere% ����.
end
if (%cluster% > 0)
  tell %actor.name% ������� - %cluster% ����.
end
tell %actor.name% �������, ������ ���.
*��������� � ������ ����� ������� ��������� � ����������
eval debris %debris%+%actor.getquest(2503)%
eval sphere %sphere%+%actor.getquest(2504)%
eval cluster %cluster%+%actor.getquest(2505)%
%actor.setquest(2503 %debris%)%
%actor.setquest(2504 %sphere%)%
%actor.setquest(2505 %cluster%)%
~
#2516
����������� �����~
0 d 1
���� �ޣ�~
wait 1
eval debris %actor.getquest(2503)%
eval sphere %actor.getquest(2504)%
eval cluster %actor.getquest(2505)%
if ((%debris% == 0) && (%sphere% == 0) && (%cluster% == 0))
  say � ��� �� ����� ������ ������ ������ ���...
  halt
end
tell %actor.name% �� ����� �����:
if (%debris% != 0) 
  tell %actor.name% �������� - %debris%.
end
if (%sphere% != 0)
  tell %actor.name% ����� - %sphere%.
end
if (%cluster% != 0)
  tell %actor.name% �������� - %cluster%.
end
wait 1s
~
#2517
������ ������� ������� �� ����������~
0 d 0
���~
wait 1
extract item 2 %speech%
if (%item% == �������)
  eval debris %actor.getquest(2503)%
  if (%debris% > 0)
    eval debris %debris%-1
    %actor.setquest(2503 %debris%)%
    mload obj 10670
    calcuid object 10670 obj
    %object.val0(1)%
    %object.owner(%actor.uniq%)%
    give ������� .%actor.name%
  else
    say ���������, �� ��� �� ������ ��������� �� ��������.
  end
  halt
end
if (%item% == ���)
  eval sphere %actor.getquest(2504)%
  if (%sphere% > 0)
    eval sphere %sphere%-1
    %actor.setquest(2504 %sphere%)%
    mload obj 10671
    calcuid object 10671 obj
    %object.val0(1)%
    %object.owner(%actor.uniq%)%
    give ��� .%actor.name%
  else
    say ���������, �� ��� �� ������� ������ �� ��������.
  end
  halt
end
if (%item% == ������)
  eval cluster %actor.getquest(2505)%
  if (%cluster% > 0)
    eval cluster %cluster%-1
    %actor.setquest(2505 %cluster%)%
    mload obj 10672
    calcuid object 10672 obj
    %object.val0(1)%
    %object.owner(%actor.uniq%)%
    give ������ .%actor.name%
  else
    say ���������, �� ��� �� ����� ������ �� ��������.
  end
  halt
end
~
#2518
���������� ��������� � ��������� ����~
0 b 12
~
wait 1
switch %random.5%
  case 1
    mecho _&W������ �������� �������� ��������� ����� �� ����������.&n
  break
  case 2
    mecho _&W������ �������� �������� �������, � ��������� ��� ������ �������� ������.&n
  break
  case 3
    mecho _&W������ �������� ���������� ���������� � �������� ���������� ������� ����, ������� ���-�� ��� ���.&n
  break
  case 4
    mecho _&W������ �������� �������, ��������� ��� ������, ������ �� ���� ������� �������� � ������ ������� ������.&n
  break
  case 5
    mecho _&W������ �������� �������� � ������, ����������� "����-��..." � ����� ������ �� ����.&n
  break
done
~
#2519
���������� ��������� � ���������� ������~
0 b 16
~
wait 1
switch %random.5%
  case 1
    mecho "��� ������ ��������..," -- ��������� ���� ����������, ������� � �������.
  break
  case 2
    mecho _"��� ��������� ������ ��������� ���.. �����... � ��� ��������� � ����, ����� ��� �����" -
    mecho _���� ���������� ������� ����� �� ����������.
  break
  case 3
    mecho _���� ���������� ������ ������ �� ������ � ������ ��������� ���������.
  break
  case 4
    mecho _���� ���������� �������: "������, �������� ��� ������, � ��� �����! ����� ��������� ������� ���������!
  break
  case 5
    mecho _"� ���� ���� ���� ���������..." - ��������� ���� ���������� � �������� ��������.
  break
done
~
#2520
������ ������ �� ���~
0 d 0
�����~
wait 1
set clustercost 0
set spherecost 0
set debriscost 0
set item %speech.cdr%
set itamname ����� ������� �����
if (%item% == %itamname%)
  set itemvnum 2550
  set debriscost 5
  set spherecost 0
  set clustercost 0
end
set itamname ������ ������� �����
if (%item% == %itamname%)
  set itemvnum 2551
  set debriscost 5
  set spherecost 0
  set clustercost 0
end
set itamname ���� ������� �����
if (%item% == %itamname%)
  set itemvnum 2552
  set debriscost 5
  set spherecost 0
  set clustercost 0
end
set itamname ������ ������� �����
if (%item% == %itamname%)
  set itemvnum 2553
  set debriscost 5
  set spherecost 0
  set clustercost 0
end
set itamname ������ ��������� �� �����
if (%item% == %itamname%)
  set itemvnum 2554
  set debriscost 5
  set spherecost 0
  set clustercost 0
end
set itamname ������� ��������� �� �����
if (%item% == %itamname%)
  set itemvnum 2555
  set debriscost 5
  set spherecost 0
  set clustercost 0
end
set itamname ���� ��������� �� �����
if (%item% == %itamname%)
  set itemvnum 2556
  set debriscost 5
  set spherecost 0
  set clustercost 0
end
set itamname ����� ��������� �� �����
if (%item% == %itamname%)
  set itemvnum 2557
  set debriscost 5
  set spherecost 0
  set clustercost 0
end
set itamname ������� �� ������ ����
if (%item% == %itamname%)
  set itemvnum 2558
  set debriscost 0
  set spherecost 5
  set clustercost 0
end
set itamname ������ �� ������ ����
if (%item% == %itamname%)
  set itemvnum 2559
  set debriscost 0
  set spherecost 5
  set clustercost 0
end
set itamname ������� �� ������ ����
if (%item% == %itamname%)
  set itemvnum 2560
  set debriscost 0
  set spherecost 5
  set clustercost 0
end
set itamname �������� �� ������ ����
if (%item% == %itamname%)
  set itemvnum 2561
  set debriscost 0
  set spherecost 5
  set clustercost 0
end
set itamname ������� ������ �����
if (%item% == %itamname%)
  set itemvnum 2562
  set debriscost 0
  set spherecost 5
  set clustercost 0
end
set itamname ���� ������ �����
if (%item% == %itamname%)
  set itemvnum 2563
  set debriscost 0
  set spherecost 5
  set clustercost 0
end
set itamname ������ ������ �����
if (%item% == %itamname%)
  set itemvnum 2564
  set debriscost 0
  set spherecost 5
  set clustercost 0
end
set itamname �������� ������ �����
if (%item% == %itamname%)
  set itemvnum 2565
  set debriscost 0
  set spherecost 5
  set clustercost 0
end
set itamname ������ ������� ������
if (%item% == %itamname%)
  set itemvnum 2566
  set debriscost 0
  set spherecost 0
  set clustercost 5
end
set itamname ������� ������� ������
if (%item% == %itamname%)
  set itemvnum 2567
  set debriscost 0
  set spherecost 0
  set clustercost 5
end
set itamname ������� ������� ������
if (%item% == %itamname%)
  set itemvnum 2568
  set debriscost 0
  set spherecost 0
  set clustercost 5
end
set itamname ����� ������� ������
if (%item% == %itamname%)
  set itemvnum 2569
  set debriscost 0
  set spherecost 0
  set clustercost 5
end
set itamname ������ C�������� ������
if (%item% == %itamname%)
  set itemvnum 2570
  set debriscost 0
  set spherecost 0
  set clustercost 5
end
set itamname ������ C�������� ������
if (%item% == %itamname%)
  set itemvnum 2571
  set debriscost 0
  set spherecost 0
  set clustercost 5
end
set itamname ������ C�������� ������
if (%item% == %itamname%)
  set itemvnum 2572
  set debriscost 0
  set spherecost 0
  set clustercost 5
end
set itamname ������� C�������� ������
if (%item% == %itamname%)
  set itemvnum 2573
  set debriscost 0
  set spherecost 0
  set clustercost 5
end
set itamname ��������� �����
if (%item% == %itamname%)
  set itemvnum 519
  set debriscost 3
  set spherecost 0
  set clustercost 0
end
set itamname ����� ���������
if (%item% == %itamname%)
  set itemvnum 541
  set debriscost 3
  set spherecost 0
  set clustercost 0
end
set itamname ������� � ����������
if (%item% == %itamname%)
  set itemvnum 415
  set debriscost 3
  set spherecost 0
  set clustercost 0
end
set itamname ���������������� ������� �����
if (%item% == %itamname%)
  set itemvnum 531
  set debriscost 3
  set spherecost 0
  set clustercost 0
end
set itamname ����� ������������
if (%item% == %itamname%)
  set itemvnum 561
  set debriscost 3
  set spherecost 0
  set clustercost 0
end
set itamname ����� �����
if (%item% == %itamname%)
  set itemvnum 525
  set debriscost 3
  set spherecost 0
  set clustercost 0
end
set itamname ����� ����
if (%item% == %itamname%)
  set itemvnum 526
  set debriscost 3
  set spherecost 0
  set clustercost 0
end
set itamname ����� ����������
if (%item% == %itamname%)
  set itemvnum 540
  set debriscost 7
  set spherecost 0
  set clustercost 0
end
set itamname ����� � ������ � �����
if (%item% == %itamname%)
  set itemvnum 414
  set debriscost 7
  set spherecost 0
  set clustercost 0
end
set itamname ����� � ������ �������
if (%item% == %itamname%)
  set itemvnum 578
  set debriscost 7
  set spherecost 0
  set clustercost 0
end
set itamname ����� � ������� � ���������
if (%item% == %itamname%)
  set itemvnum 529
  set debriscost 7
  set spherecost 0
  set clustercost 0
end
set itamname ������� � ��������� �����
if (%item% == %itamname%)
  set itemvnum 405
  set debriscost 7
  set spherecost 0
  set clustercost 0
end
set itamname ����� �� ������� �������
if (%item% == %itamname%)
  set itemvnum 534
  set debriscost 0
  set spherecost 1
  set clustercost 0
end
set itamname ����� � ��������� ��������� ������
if (%item% == %itamname%)
  set itemvnum 417
  set debriscost 0
  set spherecost 0
  set clustercost 1
end
set itamname ����� � ���������� �������
if (%item% == %itamname%)
  set itemvnum 416
  set debriscost 0
  set spherecost 0
  set clustercost 2
end
*set itamname ��������� ���������
*if (%item% == %itamname%)
*  set itemvnum 50024
*  set debriscost 0
*  set spherecost 2
*  set clustercost 0
*end
set itamname ������������ �����
if (%item% == %itamname%)
  set itemvnum 50041
  set debriscost 0
  set spherecost 3
  set clustercost 0
end
wait 1
if ((%debriscost% == 0) && (%spherecost% == 0) && (%clustercost% == 0))
  tell .%actor.name% ��� ������ ������ � �������, ����� �����.
  halt
end
eval debris %actor.getquest(2503)%
eval sphere %actor.getquest(2504)%
eval cluster %actor.getquest(2505)%
if ((%debriscost% > %debris%) || (%spherecost% > %sphere%) || (%clustercost% > %cluster%))
  *say ((%debriscost% > %debris%) || (%spherecost% > %sphere%) || (%clustercost% > %cluster%))
  tell .%actor.name% �������� ����-�� � ��� �� �����... ������ ������.
  halt
end
eval debris %debris%-%debriscost%
eval sphere %sphere%-%spherecost%
eval cluster %cluster%-%clustercost%
%actor.setquest(2503 %debris%)%
%actor.setquest(2504 %sphere%)%
%actor.setquest(2505 %cluster%)%
mload obj %itemvnum%
calcuid object %itemvnum% obj
if ((%object.vnum% >= 2500) && %object.vnum% <= 2599))
  %object.owner(%actor.uniq%)%
end
tell .%actor.name% � ������ ����� �������:
tell %actor% ���, ��������.
if (%debriscost% > 0)
  tell %actor.name% �������� - %debriscost% ����.
end
if (%spherecost% > 0)
  tell %actor.name% ����� - %spherecost% ����.
end
if (%clustercost% > 0)
  tell %actor.name% ������� - %clustercost% ����.
end
give all .%actor.name%
~
#2521
���������� ��������� ��������� ��������~
0 j 100
~
msend %actor% _&R� ����� �� ��� ������� �� ���?!&n
return 0
halt
~
#2522
���������� ������ - ������� �����~
1 c 2
����������~
wait 1
if !%arg.contains(���)%
  osend %actor% ��� �� ������ ����������?
  halt
end
oechoaround %actor.name% ���������%actor.g% ���������� ���, � ������ ���������� ������� �����!
osend %actor% �� ���������� ���������� ��� � ������ ���������� ������� �����!
set charmis %self.val0%
if ((%self.val0% == 0) || !%charmis.vnum%))
  wait 1s
  oecho ����� ������ ������� ������ � �����.
  wait 1s
  oecho ������� ����� ����� ����� ����, � � ��� �������� ��������� ���� ���������� ����.
  oechoaround %actor% ������� ����� ����� ����� %actor.vname%
  oload mob 2510
  calcuid tornado 2510 mob
  oforce %tornado% � �� �������� ����������
  %self.val0(%tornado.id%)%
  halt
end
set charmis %self.val0%
if ((%charmis.realroom% == %charmis.realroom%) && !%charmis.leader%)
  wait 1s
  oecho ������� ����� ������� ����������, � ���������� � �������.
  wait 1
  opurge %charmis%
  halt
end
if ((%charmis.realroom% == %actor.realroom%) && (%charmis.leader% == %actor%))
  wait 1s
  oechoaround %actor% ������� ����� �������� ������ %actor.vname%
  oecho ������� ����� ���������� ������ ���.
  halt
end
if ((%charmis.realroom% == %actor.realroom%) && (%charmis.leader% != %actor%))
  wait 1s
  oecho ������� ����� � ����� ���������� �� �����.
  oforce %charmis% follow �
  wait 3
  oechoaround %actor% ������� ����� �������� ����� � %actor.dname%
  oecho ������� ����� �������� ������� � ���.
  halt
end
if (%charmis.realroom% != %actor.realroom%)
  wait 1s
  oechoaround %charmis% ������� ����� ����� ������� � ������� � �������.
  oecho ������� ����� �� ������� �������� ������-��, � �������� � ���.
  oteleport %charmis% %actor.realroom%
end
~
#2523
������ �������������� � ���������~
0 j 100
~
if ((%object.vnum% < 2550) || (%object.vnum% > 2573))
  msend %actor% �� ��������� �� ���������� ������ ����������� ��������� � ��������� �����������.
  return 0
  halt
end
wait 1
��� .%actor.name%
set objname %object.name%
set objname %objname.car%
if %object.owner%
  mecho ����������� ������� �������� �������� � ����� ������� ���������� � �������� ����� �������.
  %object.owner(0)%
else
  mecho ����������� ������� ���������� ������� �������� ������� � �������� ����� ���������.
  %object.owner(%actor.uniq%)%
end
say ���� �� ��������!
give %objname% .%actor.name%
~
#2524
������� �������������� ��������~
0 j 100
~
*������� �������������� �������� : Mobiles : Receive : 100
if ((%object.vnum% < 10630) || (%object.vnum% > 10633))
  msend %actor% ���� �� ��� ��� �����...
  return 0
  halt
end
wait 1
set size0 0
set size1 0
set size2 0
set size3 0
*������ ����� ������� ��������
set i 30
while (%i% < 34)
  if %actor.quested(25%i%)%
    set it %actor.getquest(25%i%)%
    %actor.unsetquest(25%i%)%
    while (%it% > 0)
      %load% obj 106%i%
      eval it %it%-1
    done
  end
  eval i %i%+1
done
*������� ��� ��������
foreach item %self.objs%
  switch %item.vnum%
    case 10630
      eval size0 %size0%+1
    break
    case 10631
      eval size1 %size1%+1
    break
    case 10632
      eval size2 %size2%+1
    break
    case 10633
      eval size3 %size3%+1
    break
  done
done
wait 1
*������� ������� � ����� �������� ���� ���������
eval amount0 %size0%/10
eval amount1 %size1%/10
eval amount2 %size2%/10
eval amount3 %size3%/10
*��������� �������� �������� ������������ ��������
eval size0 %size0%-10*%amount0%
eval size1 %size1%-10*%amount1%
eval size2 %size2%-10*%amount2%
eval size3 %size3%-10*%amount3%
eval tmp %size0%+%size1%+%size2%+%size3%
if (%tmp% > 0)
  tell %actor.name% �������� �������� ������ ���������!
  if (%size0% > 0)
    give %size0% ����.���� .%actor.name%
  end
  if (%size1% > 0)
    give %size1% ����.���� .%actor.name%
  end
  if (%size2% > 0)
    give %size2% ����.���� .%actor.name%
  end
  if (%size3% > 0)
    give %size3% ����.���� .%actor.name%
  end
end
*���� ������ ������� ��� �� ���������
mjunk all
*������ ������ ����� ������� �������� ���� ����
eval tmp %amount0%+%amount1%+%amount2%+%amount3%
if (%tmp% > 0)
  while (%amount0% > 0)
    %load% obj 10631
    mecho %self.iname% ������ ��������� ��������� �������� � ���� ���������.
    eval amount0 %amount0%-1
  done
  while (%amount1% > 0)
    %load% obj 10632
    mecho %self.iname% ������ ��������� ��������� �������� � ���� ���������.
    eval amount1 %amount1%-1
  done
  while (%amount2% > 0)
    %load% obj 10633
    mecho %self.iname% ������ ��������� ��������� �������� � ���� ����� �������.
    eval amount2 %amount2%-1
  done
  while (%amount3% > 0)
    %load% obj 10644
    mecho %self.iname% ������ ��������� ������� �������� � ���� �������.
    eval amount3 %amount3%-1
  done
  mecho %self.iname% ������� ����, ����������� ���-�� � ���.
  give all .%actor.name%
  tell %actor.name% ����, �� � ����ޣ��!
  tell %actor.name% ������� ���!
end
~
$~

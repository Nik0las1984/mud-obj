#96300
������ ���������� ����~
2 e 100
~
wait 1
if %exist.mob(96319)%
  eval victim %random.pc%
  %echo% ���������� ������-�� ������ ����������� ������� ������.
  %echo% ��-�� ������ ��������� ��������� ������, ������� ����� �� ���!
  %send% %victim% ������ ������ ������� ������ ������� ��� ������ ������� �������� ����� ����� �����! 
  %echoaround% %victim% ������ ������ ������� ������ ������� %victim.vname% ������ ������� �������� ����� ����� �����!
  wait 1
  %send% %victim% ������ ���� ����� ������ ������ ����� � �� ������� ��������� � ������.
  %teleport% %victim% 96388
  detach 96300 %self.id%
end
~
#96301
������ ����� ��� ���-�� ������� � �����~
0 e 0
�����������.~
wait 1s
� !��� ���!
~
#96302
����� �������~
0 b 50
~
wait 1
set victim %random.pc%
if !%victim%
  halt
end
if (%random.100% <= 51)
  msend %victim% �������� ������������, �� ������� ����� � ����� �������������� �����!
  mechoaround %victim% �������� ������������, %victim.name% ������ ����� � ����� ������������ ��������� �����!
  mteleport %victim% 96391
end
~
#96303
����� �����~
0 f 100
~
calcuid troom 96391 room
foreach target %troom.pc%
  mteleport %target% %self.realroom%
  mechoaround %target% ������%actor.w% ������ ������ %target.name% �������%actor.u% �� ����������� ���������� �����!
  msend %target% ���-�� ������� �������� ����� ���������� ����� � �� ���������� ������!
done
%door% 96300 north room 96303
%door% 96303 south room 96300
if %random.10% <= 3
  %load% obj 96316
end
~
#96304
�������� �����������~
0 v 1
~
if (%world.curmobs(96313)% < 1) 
  mecho �������� �������� ����� � ���������� : '����� ����� ����� ����'.
  mecho �������� ����������� !
  mload mob 96313
end
if (%world.curmobs(96314)% < 1) 
  mecho �������� �������� ����� � ���������� : '����� ����� ����� ����'.
  mecho �������� ����������� !
  mload mob 96314
end 
if (%world.curmobs(96315)% < 1) 
  mecho �������� �������� ����� � ���������� : '����� ����� ����� ����'.
  mecho �������� ����������� !
  mload mob 96315
end
if (%world.curmobs(96328)% < 1) 
  mecho �������� �������� ����� � ���������� : '����� ����� ����� ����'.
  mecho �������� ����������� !
  mload mob 96328
end
~
#96305
����� �� �����~
2 c 1
����� ������ �������� ��������~
wait 1
if (!%arg.contains(���)% && !%arg.contains(������)% && !%arg.contains(�����)% && !%arg.contains(������)%)
  wsend %actor% ���� ��� �� ������?
  halt
end
if (%actor.move% < 45)
  wsend %actor% �� ������� ������...
  halt
end
wsend %actor% �� ������ �� ������� � �������� � ����.
wechoaround %actor% %actor.name% ����� �� ������� � �������� �������������� � ������������ �����.
wait 2s
if ((%random.100% < 90) && %exist.mob(96311)%)
  wsend %actor% �� ����� ������� �� ������� �����, �� ��� ������ � �� ������!
  halt
end
wsend %actor% �������-�� �� ��������� ������! �� � ����� ����...
wteleport %actor% 96303
~
#96306
����� ��������� ���� �� ������� ����~
0 k 100
~
if (%random.100% <= 15)
  msend %actor% ������ ������ ������� ����� ��������� ��� �� ����� ���� ������.
  msend %actor% �� ������� ����������, �� � ������ ��������, ��� ������� � �������!
  mechoaround %actor% ������ ������ ������� ����� ��������� %actor.rname% �� ����� ���� ������.
  mechoaround %actor% �� ������� ����������, %actor.name% ����� ��������� ������ ����!
  mteleport %actor% 96322
  wait 1
  mdamage %actor% 100 
  msend %actor% � �������, �� ����� �� ����� ������� ����, ����������� ���� ����� ������.
end
~
#96307
��� ����� �� ������ (���� �����)~
0 f 100
~
eval rnd %random.200%
if (%rnd% < 10) && (%world.curobjs(96302)% < 5)
  mload obj 96302
elseif  (%rnd% < 20) && (%world.curobjs(96303)% < 5)
  mload obj 96303
elseif (%rnd% < 30)  && (%world.curobjs(96304)% < 5)
  mload obj 96304 
elseif (%rnd% < 40) && (%world.curobjs(96312)% < 5)
  mload obj 96312
elseif (%rnd% < 50) && (%world.curobjs(96313)% < 5)
  mload obj 96313
end
~
#96308
��� �������~
0 f 100
~
if (%random.100% <= 7) && (%world.curobjs(96308)% < %world.maxobj(96308)%)
  mload obj 96308
end
~
#96309
��������� ������ � ���� � ������~
0 w 100
~
wait 1
if (%actor.vnum% == -1)
  dg_cast '%castname%' .%actor.name%
else
  dg_cast '%castname%' %actor.name%
end
~
#96310
��������� ������� �����~
0 k 100
~
if %random.20% < 15
  mecho ��������� ������������ ���������, �������� �� ������!
  mecho ������ ��� �������� �������� �� �������.
  mload mob 96331
end
~
#96311
��� ������~
0 b 100
~
if %exist.mob(96334)% && %exist.mob(96301)%
  calcuid abc 96334 mob
  %force% %abc% ������
  %force% %abc% � '���' ������
  %force% %abc% �����
end
~
#96312
���������� ��������~
0 w 100
~
if %castname% == ���
  %echo% ������ ������� ������� �������� �������� �������! �� �� ��� �������!
  %load% mob 96335
end
if %castname% == ��������
  %echo% ����� ������� ��������� �������� �������! �� �� ��� �������!
  %load% mob 96335
end
~
#96313
������� ����~
0 k 100
~
if %random.20% < 3
  foreach victim %self.char%
    %send% %victim% ������� ������������ ����������, �� ����� ������� ���!
    %victim.position(6)%
    %victim.wait(3)%
  done
end
~
#96314
����� ����~
2 f 100
~
wdoor 96300 north purge
wdoor 96303 south purge
~
#96315
������ � ������~
0 q 100
~
wait 1s
makeuid questor963 %actor.id%
global questor963
calcuid volhv 96000 mob
remote questor963 %volhv.id%
�� � ���������� ��������� �� ���
wait 1s
����
� ��� ������ ����� ��������?!
wait 1s
%echo% �� �������� ���������� � ���� ������ ��������.
wait 1
����
wait 1
���
� ����� ���� � ��������� ������ ���� �����.
� �� ����� ���, ����� ��� �� ���������.
� �� ���� ����� ������� ���� �����, � ������ ������ �� �������� �� ����� ����.
� �����, � ������ ���� �������, ���� ����� � ����� �����.
wait 1s
����
� �������, ��� �� ��� ���, �� ������ ������ � ����� ����.
� � ���������, ��� ����, ��� ��������, �������� ������ �� ������ �������,
� ����� ����� ���, ����� ��������� ����� �������, ���������� �������, � ���� �������.
� ���� ��� �������� ��������...
����
� ������� ��� ���, ��������, � �������� �� ��� ������� ������.
� ������ ��! ����� ������ ��� ����.
calcuid voron 96339 room
attach 96319 %voron.id%
calcuid voron2 96558 room
attach 96321 %voron2.id%
detach 96315 %self.id%
~
#96316
������ �� �������~
1 c 1
�������~
wait 1
if !%arg.contains(�������)%
  osend %actor% ��� �� ������ �������?
  halt
end
oechoaround %actor.name% %actor.name% ������%actor.q% ������� � ����� � ������ ����� � ���.
if (%world.curmobs(96339)% < 1)
  wait 1s
  oecho ����������� ������������ ������� �������.
  wait 1s
  oecho ������ ����� �������� ��������� �� �������, ����������� ����� �� ���.
  oechoaround %actor% ������ ����� �������� ��������� �� �������, ����������� ����� �� %actor.vname%
  oload mob 96339
  halt
end
calcuid moonanimal 96339 mob
if ((%moonanimal.realroom% == %actor.realroom%) && !%moonanimal.leader%)
  wait 1s
  oecho ����������� �������� ���������� �������.
  oecho ������ ����� �������� ����� � ������� � �������.
  wait 1
  opurge %moonanimal%
  halt
end
if ((%moonanimal.realroom% == %actor.realroom%) && (%moonanimal.leader% == %actor%))
  oecho ����������� ������������ ���������� �������.
  wait 1s
  oechoaround %actor% ������ ����� ������� � �������, ����������� ����� �� %actor.vname%.
  oecho ������ ����� ������� � �������, ����������� ����� �� ���.
  halt
end
if ((%moonanimal.realroom% == %actor.realroom%) && (%moonanimal.leader% != %actor%))
  oecho ����������� ������ �������� �������.
  wait 1s
  oecho ������ ����� ���������� �����.
  oforce %moonanimal% follow �
  wait 3
  oechoaround %actor% ������ ����� �������� ����� � %actor.dname%.
  oecho ������ ����� �������� ������� � ���.
  halt
end
if (%moonanimal.realroom% != %actor.realroom%)
  oecho ����������� ����������� ������� �������.
  wait 1s
  oechoaround %moonanimal% ������ ����� ����� ���������� ����� � ������� � �������.
  oecho ������ ����� �� ������� �������� ������-��, � �������� � ���.
  oteleport %moonanimal% %actor.realroom%
end
~
#96317
������� ��������� �����~
0 k 100
~
wait 1
%echo% ������� �������� �������� ���������� ������� �� ���, � ������ ��������.
%echo% ����������� ������������ ������� �������.
wait 1
%echo% ������ ����� �������� ��������� �� �������, ����������� ����� �� ���.
%load% mob 96338
calcuid abc 96338 mob
%force% %abc% ��� �������
detach 96317 %self.id%
end
~
#96318
������ ������~
1 c 2
�������~
wait 1
if !%arg.contains(�������)%
  %send% %actor% ��� �� ������ �������?
  halt
end
eval skl %actor.remort%*5+86
wait 1
if %actor.class% == 3
  if !%actor.skill(������ ����)%
    %send% %actor% ����������� ������ �������, �� �������� ������ "������ ����".
    %skillturn% %actor% ����.���� set
    %purge% %self.id%
  elseif %actor.skill(������ ����)% < %skl%
    %send% %actor% ����������� ������ �������, �� ����� ������� ������� � ������ "������ ����".
    %skilladd% %actor% ����.���� 5
    %purge% %self.id%
  else
    %send% %actor% ���, ������ ������ � ���� �������� �� �� ����������.
    %purge% %self.id%
  end
else
  %send% %actor% �����-�� ���������� �� ���������� ��� �������.
end
~
#96319
����� ���������� � ���� ����~
2 e 100
~
wait 1s
%echo% ����� ���������� �������� �� ���.
%echo% ����� ������ : '���-�-�-�-�-�!' 
%portal% 96558 1
~
#96320
����� ����~
2 f 100
~
calcuid voron 96339 room
detach 96319 %voron.id%
calcuid voron2 96558 room
detach 96321 %voron2.id%
~
#96321
����� ���������� �����~
2 e 100
~
wait 1s
%echo% ����� ���������� �������� �� ���.
%echo% ����� ������ : '���-�-�-�-�-�!' 
%portal% 96339 1
~
#96322
���� ������� ������~
0 j 100
~
wait 1
if %object.vnum% != 96411
  ����
  ���� ���
else
  %purge% %object%
  ���
  �� ��������� �������� ����� � �����
  � ��, ��� ���!
  wait 1s
  � ����� ���� �������.
  wait 1
  %echo% ����� ��������� � ����.
  eval rnd %random.100%
  if (%rnd% < 25) && (%world.curobjs(96412)% < 2)
    %echo% ����� ������ ����� ������������ ����!
    %load% obj 96412
    ���� ����� .%actor.name%
  elseif (%rnd% < 50) && (%world.curobjs(96416)% < 2)
    %echo% ����� ������ ������ ������������� ������������!
    %load% obj 96416
    ���� ������ .%actor.name%
  elseif (%rnd% < 75) && (%world.curobjs(96417)% < 2)
    %echo% ����� ������ �������� ������������ ��������!
    %load% obj 96417
    ���� ������� .%actor.name%
  else
    %load% obj 96413
    %echo% ����� ������ ������ %actor.vname% �� ������� ������!
    ���� ����� .%actor.name%
    ���� �����
  end
end
~
#96323
������� ����� ��� �����~
0 n 100
~
eval rnd %random.50%
if (%rnd% < 10) && (%world.curobjs(96301)% < 5)
  mload obj 96301
elseif (%rnd% < 20) && (%world.curobjs(96309)% < 5)
  mload obj 96309
elseif (%rnd% < 30) && (%world.curobjs(96310)% < 5)
  mload obj 96310
end
~
#96324
������� �������� ��� �����~
0 n 100
~
if (%random.100% <= 5) && (%world.curobjs(96307)% < 5)
  %load% obj 96307
end
if %self.vnum% == 96325
  ���� �����
end
if %self.vnum% == 96324
  ���� ���.����
end
~
#96325
���� ������ �������~
0 j 100
~
wait 1
if (%object.vnum%==753)
  �� �������� � �������� ��������.
  wait 1s
  %echo% � ����� ������� ���������� �� �������� ��� ����� ������� %object.vname%.
  wait 1s
  �� ���������� ��������� �� ��������.
  wait 1s
  %echo% ��������� ���������� � ���� �� ����, ����� �������� � �������� ������ ���� �����.
  %purge% %object%
  %load% obj 96317
  ���� ����.���
  wait 1
  � ���-�-�-�-�-�-�!
  detach 96325 %self.id%
end
~
$~

#70300
����� ������ �����~
2 c 0
�����~
if !(%arg.contains(�����)%) 
  wsend %actor% ���� ��� �� ������ ��������?
  return 1
  halt
end
wsend %actor% ������ � ����, �� ������� ����� ������. �� � ������ �� ���!
wechoaround %actor% %actor.name% �����%actor.q% ����� ������.
wait 1s
wsend %actor% �� �� �������� ������� ������.
wteleport %actor% 70306
%actor.wait(1)%
wechoaround %actor% ���-�� ������ ����.
~
#70301
����� ������ ��~
2 c 0
�����~
if !(%arg.contains(�����)%) 
  wsend %actor% ���� ��� �� ������ ��������?
  return 0
  halt
end
switch %random.3%
  case 1
    wsend %actor% �� ������� ����� ������.
    wechoaround %actor% %actor.name% �����%actor.g% ����� ������. 
    wait 1s
    wsend %actor% �� ������������ ����������� ����� ������� ������.
    wteleport %actor.name% 70305
    wat 70305 wechoaround %actor% ���-�� ������ ����.
  break
  case 2
    wsend %actor% �� ������� ����� ������.
    wechoaround %actor% %actor.name% �����%actor.g% ����� ������.
    wait 1s
    wsend %actor% �������� �� ��������������� �� ��������� ����� � ��������� ����.
    wteleport %actor.name% 70306
    wdamage %actor% 50
    wat 70306 wechoaround %actor% _%actor.name% �������� �������. ��� ����!
  break
  case 3
    wsend %actor% �� ������� ����� ������.
    wechoaround %actor% %actor.name% �����%actor.g% ����� ������.
    wait 1s 
    wsend %actor% ����� ����, �������, ��������� ������� ������ � ������� ����� � ���.
    wteleport %actor.name% 70306
    wdamage %actor% 50
    wat 70306 wechoaround %actor% _%actor.name% �������� �������. ��� ����!
  break
  default
  break
done
~
#70302
����� ��������~
2 e 50
~
wait 1
switch %random.5%
  case 1
    wsend %actor% ����� ������ ��������� ���-�� � ������ ������� ��� �� ������. ��� ���� �����!
    wechoaround %actor% _%actor.name% �������%actor.g% ������� �� ������! 
    wdamage %actor% 60
    wait 1
    wecho ���� ������ ������:"��������! ��������! � �� ������!"
  break
  case 2
    wsend %actor% ����� ��� ��� ������ ������� ���-��, ����������� ������. ��� ���� �����������!
    wechoaround %actor% %actor.name% ������%actor.g% ����� ������� ������ �� ��������� �����. 
    wdamage %actor% 50
    wait 1
    wecho ���� ������� ������:"��������! ����� ���������.."
  break
  case 3
    wsend %actor% ����� �� ��� ������ ��������� ����� �������... ������ �� ������ �� �������...
    wechoaround %actor% _%actor.name% �������%actor.g% ���� �� ������. 
    wdamage %actor% 100
    wait 5
    wecho ������� �������� ������:"��.. �-�-� ��������, ��� ��!"
  break
  case 4
    wsend %actor% ����� ��� ������� ����� ������, ����������� ������. �! ��� �������!
    wechoaround %actor% _%actor.name% �������%actor.g% � ���� ������ �� �������. 
    wdamage %actor% 30
    wait 5
    wecho ���� ��������� ������:"����������� �����.. ��� ���������!"
  break
  case 5
    wecho _���� ��� ��������� ���������� ����� � �������."����� ������ �������������!",-�������� ��. 
  break
done
~
#70303
���1~
0 q 100
*~
wait 5
say �������...
wait 10
����
wait 5
say ��� ��������������...
wait 10
�� ���������� ���� ��������
wait 5
say ��������, ���� ������, ��������� ��������� ������, ������ ��� ���������� ����.
wait 10
����
wait 5
Mecho "���! ��������� ����� ���..." - ������ ��� �� ��.
Mecho ���� �����-��.
Mecho �������, ���� �� ������ ��������.
~
#70304
������� ���������������~
0 n 100
*~
if (%world.curobjs(70310)% < 5) && (%random.10% == 1)
  mload obj 70310
end
~
#70305
����� � ����~
2 c 0
����� ��������~
if !(%arg.contains(���)%) 
  wsend %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
wsend %actor% �� ������� � ����� ���.
wechoaround %actor% %actor.name% �����%actor.q% � ���. 
wait 2s
wsend %actor% �� ������� �� �����������.
wteleport %actor.name% 70350
wechoaround %actor% ���-�� ������ ����
~
#70306
����� �� �����~
2 c 0
����� ��������~
if !(%arg.contains(���)%) 
  wsend %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
wsend %actor% �� ������� � ����� ���.
wechoaround %actor% %actor.name% �����%actor.q% � ���. 
wait 2s
wsend %actor% �� ������� �� �����������.
wteleport %actor.name% 70333
wechoaround %actor% ���-�� ������ ����.
~
#70307
����� �� ����� � ����~
2 c 0
����� ��������~
if !(%arg.contains(����)%) 
  wsend %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
if (%actor.move%<200)
  wsend %actor% _� ��� �� ������ ��� ��� �����.
  return 0
else
  wsend %actor% �� ������� � ����� ����. �� � ������ �� ��� ������!
  wechoaround %actor% %actor.name% �����%actor.q% � �������. 
  wait 1s
  eval buf %actor.move(-100)%
  wsend %actor% ���� �������� ���� �� ��������? �� �������� � ���������� ������� ���� �� ����������.
  wteleport %actor.name% 70386
  wechoaround %actor% ���-�� ������ ����.
end
~
#70308
����� �� ���� � ����~
2 c 0
����� ��������~
if !(%arg.contains(����)%) 
  wsend %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
if (%actor.move%<200)
  wsend %actor% _� ��� �� ������ ��� ��� �����.
  return 0
else
  wsend %actor% �� ������� � ����� ����. �� � ������ �� ��� ������!
  wechoaround %actor% %actor.name% �����%actor.g% � ����� ����. 
  wait 1s
  eval buf %actor.move(-200)%
  wsend %actor% �� �������� � ����.
  wteleport %actor.name% 70351
  wechoaround %actor% ���-�� ������ ����.
end
~
#70309
��������� ������ � ���~
2 c 0
�������� ������ ������ �������~
if !(%arg.contains(������)%) 
  wsend %actor% ��� ��� �� ������ �������???
  return 1
  halt
end
wait 1
wsend %actor% �� ������� ������.
wechoaround %actor% %actor.name% ������%actor.g% ������.
wait 1s
wecho �� ����� ��������� ������ � ���� �����. �������� ��������� ����� ����������, 
wecho ������ ��������� ������.
wdoor 70351 north flags a
wdoor 70351 north room  70352
wdoor 70352 south   flags a
wdoor 70352 south room  70351
calcuid proxod 70351 room
detach 70309 %proxod.id%
~
#70310
����� �� �������~
2 c 0
����� ��������~
if !(%arg.contains(�������)%) 
  wsend %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
wsend %actor% �� ������� ��� �������, ����� ������ ����������� ��� ��� �����.
wechoaround %actor% %actor.name% �����%actor.q% ��� �������.
wait 2s
wsend %actor% �� �������� �� ������ ������� ��������.
wteleport %actor.name% 70371
wechoaround %actor% ���-�� ������ ����
~
#70311
����� �� ������� �������~
2 c 0
����� ��������~
if !(%arg.contains(�������)%) 
  wsend %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
wsend %actor% �� ������� ��� �������, ����� ������ ����������� ��� ��� �����.
wechoaround %actor% %actor.name% �����%actor.g% ��� �������. 
wait 2s
wsend %actor% �� �������� �� ������ ������� ��������.
wteleport %actor.name% 70363
wechoaround %actor% ���-�� ������ ����
~
#70312
�������1~
0 d 100
����������~
if %actor.vnum% != -1
  halt
end
���
wait 5
� ����������� ����!
wait 1
� ��� ������� ����� ������� ���� � �������� �� �������.
wait 5
� ���� �� ������� ����� � ������������� ��������.
� ���, ���������, ������� �������� ���� ����� �������� �� ����������� ��������!
wait 5
� �� � �� ������!
���
wait 5 
���
wait 5
� � ������ �� ��������... ��������� !
� �� ����! ��������� ���� ���.
wait 5 
mecho ������� �������� ������ ����� ������� � �������� ��������� �������� ����.
mload obj 70302
�� ����
wait 5
mecho %actor.name% ��������� ������ ���� ����������� ��������.
mecho ������� ������� � ��������� � �������������� ����.
calcuid tolst 70371 room
attach 70314 %tolst.id%
run 70314 %tolst.id%
%purge% %self%
~
#70313
������� �����~
0 f 0
~
if %world.curobjs(70301)% == 0
  mload obj 70301
end
~
#70314
������ ������~
2 z 100
~
wload mob 70318
calcuid room63 70363 room
detach 70310 %room63.id%
calcuid room71 70371 room
detach 70311 %room71.id%
calcuid tolst 70318 mob
attach 70315 %tolst.id%
run 70315 %tolst.id%
if (%exist.mob(70317)%)
  calcuid vorobey 70317 mob
  wpurge %vorobey%
end
~
#70315
������� ���� ������ � ������~
0 z 100
~
mecho ���������� ������ � ����� � � ������� �������� ������� �����.
say "���� �� �����!!!"
say "����� ���!!!"
wait 1
say ������� �����?!!!
say ����� ������!!!
mecho ������� �������� ������� ��� �� ������� � ������� � ������.
*������� ��� ��� ���� ����� �� ���� foreach
foreach c %self.pc%
  mechoaround %c% %c.name% ���������%actor.g% � ������! 
  mteleport %c% 70370
  if %c.realroom% == 70370
    msend %c% �� ������ �����������! ��� ���������!
  end
done
calcuid zveri 70371 room
attach 70317 %zveri.id%
run 70317 %zveri.id%
~
#70316
����� ������� �����~
2 z 0
~
wait 70
wecho ������ ������� �������.
wait 35
wecho ������ ��� ������� �������.
wait 35
wecho ������ � ��� ������� �������.
wait 30
wecho ��� ��� ������ ��� ���������.
wait 30
wecho ����� ������� ���������� ���: "�-�-�-�-�-�!"
wait 15
wecho ����� ���������� ������� ����, �� �������� �� ���� ������ ���������� �������.
wait 15
wecho �������, ���-�� �� ��������� ��� ���� ����� �����.
wait 15
wecho "��� ���� ����!",- ������ ����� ���-�� �����.
wait 15
wecho "����!",- ����� ���������� ��.
wait 15
wecho ���������� ���� ����������� �� ����� ����� � �����:"�������� ��� �����?!!"
wecho ��� �������� ����� �������:"����� ������!!!"
wait 25
wecho "���������!!!",- �������� ���-�� �������.
wecho ����� �����-�� ������ � �����:"������ �� ����!!!"
wait 25
wecho ���� �������� �������� ������ ������������ ������.
wait 10
wecho "������ �����, ��� ���� �� ����� �������!",- ������ ���-�� ������� �������.
wait 25
wecho ��� ����������, ��� ����� ��� ����� � �����.
wait 25
wecho ������ ����� ��� ����� ������... ���� �����... 
wecho ������� �� ������ ���� ����� � ���-�� ������� ����� ������...
wecho ����� ���� �����-�� ���� � �����, ���� �� ������ �� � ������...
wait 25
wecho ���-�� ����� ��������� ���-�� ������� �� ����-��: "������� �� ��������?!!"
wecho ������ ������ ���� �� ���� �� �����, � ����� ���� ������ �������� �������.
wait 25
wecho �� ��������� ������ ����� ������� ���������� ���� ������ ����������� ����.
wecho "����� ������!!!",- ����� ������ �������� �����.
wecho "����� ��� �����?!!",- ������� ��� �� ���.
wait 25
wecho ������ ���� �������� ���� � ��������� ����� ����� ������� ���� �� �������.
wecho ��� ������� ��������� ���������... ��-�� ���� ������ �� �����.
wait 25
wecho ����� ���� ���������� �� ���������� ������ � ��������� �����.
wdoor 70374 west flags a
wdoor 70374 west room  70370
wdoor 70370 east   flags a
wdoor 70370 east room  70374
wdoor 70371 west flags a
wdoor 70371 west room  70366
wdoor 70366 east   flags a
wdoor 70366 east room  70371
calcuid zverik 70306 room
detach 70302 %zverik.id%
calcuid zveriyug 70306 room
detach 70301 %zveriyug.id%
calcuid zveriyug2 70306 room
attach 70345 %zveriyug2.id%
calcuid zveri 70374 room
attach 70318 %zveri.id%
run 70318 %zveri.id%
~
#70317
������� �������� ������ � ��������������� �������~
2 z 0
~
calcuid gobelen 70363 room
attach 70310 %gobelen.id%
calcuid gobelen 70371 room
attach 70311 %gobelen.id%
calcuid strag 70318 mob
wpurge %strag%
calcuid zveri 70370 room
attach 70316 %zveri.id%
run 70316 %zveri.id%
~
#70318
���� ������~
2 z 0
~
if %world.curmobs(70319)% == 0 then
  wload mob 70319
end
if %world.curmobs(70320)% == 0 then
  wload mob 70320
end
if %world.curmobs(70321)% == 0 then
  wload mob 70321
end
if %world.curmobs(70322)% == 0 then
  wload mob 70322
end
calcuid medv 70319 mob
attach 70319 %medv.id%
~
#70319
�������~
0 q 100
~
wait 1
� �� ��!
� �� ���� ������� ������, � �� �� ����� ��������...
����
wait 10
� ��� ��������, ��� ������� ���������...����� ����� ��� ���������!
� ��������� ��� �����, �� ���������!
wait 10
� �� ������ �� ��� � ������ ���� ���� ��������, ����� ���� ����������.
mload obj 70303
��� ���� %actor.name%
calcuid lisa 70320 mob
attach 70320 %lisa.id%
run 70320 %lisa.id%
~
#70320
����~
0 z 100
~
wait 1
� ������ �������!
� � ����� �� ���� �������.
mecho ���� ������� �� ��.
wait 15
� � ��������� ��� ����.
���� ����
wait 15
���� ����
wait 15
���� ���
wait 15
� ��� �������?
calcuid volk 70321 mob
attach 70321 %volk.id%
run 70321 %volk.id%
~
#70321
����~
0 z 0
~
wait 10
� � ���������� ��!
� ������� ��� ��� �� ����� �������.
wait 10
mecho ���� ���������� � �������: "�� ��! ����� �� ��� � ��� ��� ���������!".
wait 10
mecho ������� ������� ���� � �����: "���� ���� �������, � ��������� ����� �� ���"
wait 10
� � ����� ��������.
wait 15
���� ���
mecho ���� ����� �������:"�� ����� � ������?".
wait 10
� �� ��� � ��������!
wait 15
�
� ����
if (%exist.mob(70320)%)
  calcuid lisa 70320 mob
  attach 70322 %lisa.id%
  run 70322 %lisa.id%
end
~
#70322
���� �� ��~
0 z 100
~
��
�� �����
calcuid medved 70319 mob
attach 70323 %medved.id%
run 70323 %medved.id%
~
#70323
������� �� ��~
0 z 100
~
�
�� ����
if (%exist.mob(70322)%)
  calcuid zai 70322 mob
  attach 70324 %zai.id%
  run 70324 %zai.id%
end
~
#70324
���� ��~
0 z 100
~
�
� �������
calcuid medv 70319 mob
detach 70319 %medv.id%
~
#70325
REPOP~
2 f 100
*~
calcuid vorob 70317 mob
attach 70312 %vorob.id%
detach 70328 %vorob.id%
calcuid zverk 70307 room
attach 70302 %zverk.id%
wait 1
calcuid rasx 70355 room
attach 70340 %rasx.id%
calcuid gavrur1 70363 room
attach 70310 %gavrur1.id%
calcuid gavrur2 70371 room
attach 70311 %gavrur2.id%
wait 1
calcuid proxod 70351 room
attach 70309 %proxod.id%
calcuid lev 70300 mob
detach 70343 %lev.id%
attach 70303 %lev.id%
wait 1
*calcuid lev3 70300 mob
*attach 70304 %lev3.id%
calcuid vorota 70381 room
attach 70344 %vorota.id%
calcuid kapitan 70355 room
attach 70340 %kapitan.id%
wait 1
calcuid zverik 70306 room
attach 70302 %zverik.id%
attach 70301 %zverik.id%
detach 70345 %zverik.id%
wait 1
calcuid mish703 70316 mob
detach 70355 %mish703.id%
if %exist.mob(70352)%
  calcuid marb703 70352 mob
  detach 70349 %marb703.id%
  detach 70356 %marb703%
  detach 70357 %marb703%
  detach 70358 %marb703%
end
wdoor 70339 north purge
wdoor 70357 south purge
wdoor 70371 west purge
wdoor 70370 east purge
wdoor 70374 west purge
wdoor 70366 east purge
wdoor 70351 north purge
~
#70326
�������� ����~
2 c 100
�����������~
if !(%arg.contains(����)%)
  wsend %actor% ���� ��� �� ������ �����������???
  return 0
  halt
end
if (%actor.move%<200) && (%actor.level%<23) && (%actor.skill(�����������)%<80)
  wsend %actor% _� ��� �� ������ ��� ��� �����.
  return 0
else
  wsend %actor% �� ������� � ����� ����. �� � ������ �� ��� ������, �� ��� � ������������ ��������.
  wait 1s
  eval buf %actor.move(-200)%
  wsend %actor% �� ���� ������� ����� �� ������.
  wteleport %actor.name% 70396
  wechoaround %actor% ���-�� ���� ������ ����.
end
~
#70327
����� ���� �������~
2 c 1
����� �������� �����������~
if !(%arg.contains(����)%) 
  wsend %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
if (%actor.move%<200)
  wsend %actor% _� ��� �� ������ ��� ��� �����.
  return 0
else
  wsend %actor% �� ������� � ����� ����. �� � ������ �� ��� ������!
  wait 1s
  eval buf %actor.move(-200)%
  wsend %actor% �� �������� � ����� ����������.
  wteleport %actor.name% 70355
  wechoaround %actor% ���-�� ������ ����.
end
~
#70328
�������2~
0 c 100
����������~
if %actor.vnum% != -1
  halt
end
���
wait 5
� ����������� ����, ���������!
wait 1
� ��� ������� ����� ������� ���� � �������� �� �������.
wait 5
� ���� �� ������� ����� � ������������� ��������.
� ��� ���������, ������� �������� ���� �����, �������� �� ����������� ��������!
wait 5
� �� � �� ������!
���
wait 5 
���
wait 5
� � ������ �� ��������... ��������� ��������!
� ��������� ���� ���.
wait 5 
mecho ������� �������� ������ ����� ������� � �������� ��������� �������� ����.
mload obj 70302
�� ����
wait 5
mecho %actor.name% ������ ������ � �����.
mecho ������� ������� � ��������� � ����.
*calcuid vorob2 70371 room
*attach 70329 %vorob2.id%
*run 70329 %vorob2.id%
%purge% %self%
~
#70329
����� �������~
0 f 100
~
if %world.curobjs(70303)% == 0
  mload obj 70303
end
~
#70330
������� �������~
0 n 100
~
calcuid vorob1 70317 mob
detach 70312 %vorob1.id%
*calcuid vorob2 70317 mob
attach 70328 %vorob1.id%
~
#70331
�������� �������~
0 f 100
~
mload obj 70309
~
#70332
������� �������~
0 n 100
~
*mload obj 70362 ������� � ���� 70378
if (%world.curobjs(70359)% < 5) && (%random.10% == 1)
  mload obj 70359
end
if (%world.curobjs(70360)% < 5) && (%random.10% == 1)
  mload obj 70360
end
~
#70333
������� �����~
0 n 100
~
if (%world.curobjs(70356)% < 5) && (%random.10% == 1)
  mload obj 70356
end
if (%world.curobjs(70357)% < 5) && (%random.10% == 1)
  mload obj 70357
end
if (%world.curobjs(70358)% < 5) && (%random.10% == 1)
  mload obj 70358
end
~
#70334
������� ������~
0 n 100
~
if (%world.curobjs(70343)% < 3) && (%random.10% == 1)
  mload obj 70343
end
if (%world.curobjs(70344)% < 3) && (%random.10% == 1)
  mload obj 70344
end
if (%world.curobjs(70345)% < 3) && (%random.10% == 1)
  mload obj 70345
end
if (%world.curobjs(70346)% < 3) && (%random.10% == 1)
  mload obj 70346
end
if (%world.curobjs(70347)% < 3) && (%random.10% == 1)
  mload obj 70347
end
if (%world.curobjs(70348)% < 3) && (%random.10% == 1)
  mload obj 70348
end
if (%world.curobjs(70349)% < 3) && (%random.10% == 1)
  mload obj 70349
end
~
#70335
������� �������������~
0 n 100
*~
if (%world.curobjs(70316)% < 5) && (%random.10% == 1)
  mload obj 70316
end
~
#70336
������� ������~
0 n 100
~
if (%world.curobjs(70350)% < 3) && (%random.10% == 1)
  mload obj 70350
end
if (%world.curobjs(70351)% < 3) && (%random.10% == 1)
  mload obj 70351
end
if (%world.curobjs(70352)% < 3) && (%random.10% == 1)
  mload obj 70352
end
if (%world.curobjs(70353)% < 3) && (%random.10% == 1)
  mload obj 70353
end
if (%world.curobjs(70354)% < 3) && (%random.10% == 1)
  mload obj 70354
end
if (%world.curobjs(70355)% < 3) && (%random.10% == 1)
  mload obj 70355
end
if (%world.curobjs(70361)% < 3) && (%random.10% == 1)
  mload obj 70361
end
~
#70337
����� ������~
0 f 100
~
if (%world.curobjs(11604)% < 3) && (%random.10% == 1)
  mload obj 11604
end
if (%world.curobjs(11605)% < 3) && (%random.10% == 1)
  mload obj 11605
end
~
#70338
����� �����~
0 f 100
~
if (%world.curobjs(38216)% < 10) && (%random.10% == 1)
  mload obj 38216
end
~
#70339
������� � ����� ������~
2 z 100
~
***������ �����-����� �� 10 ��� � �������� ��� �������������� ����� �� ���
***������ �������� ����� � ������ ������
wait 1
if %exist.mob(70348)%
  calcuid mob1 70348 mob
  wteleport %mob1% 70377
  *wpurge %mob1%
  *calcuid kapit 70377 room
  *attach 70341 %kapit.id%
  *exec 70341 %kapit.id%
end
if %exist.mob(70347)%
  calcuid mob2 70347 mob
  wteleport %mob2% 70376
  *wpurge %mob2%
  *calcuid shpion 70376 room
  *attach 70342 %shpion.id%
  *exec 70342 %shpion.id%
end
~
#70340
������� � ����� ����������~
2 e 100
~
wait 5
wecho "���� �������!",- �������� ������ �����.
wecho "���??! ��� ��� ���� ��� �������� � � ���� #K@R@CHUN#!!!",- ������� ������ �����.
wecho �� ������ �� ��� ���������� ��� ���� �� ���������� �������� �������� ������.
wecho "��������, ������� �������.",- ������ ������ �����.
wait 10
wecho "� ���� ����� ���� ������� ���� �� �����������!",- ������ ������ �������.
wecho "��� ���� ����, �������?"
wait 10
wecho "�������� ��� ����� � ���������",- ������ ������. 
wait 10
wecho "����� ��� ����!",- ����� ������� �������.
wait 10
wecho ������ ���� ������.
wait 10
wecho "���, ������� �������! � ��������� ������ ����������� ���� ������� ��������, � ����� 
wecho �� �������� ���� �������� ���������� � ����� ����",- ����� ������ �����.
wait 10
wecho "� ���� ���� ��� �������: ���� ������, � ������ �������. � ����� ������?",- ���� �����.
wait 10
wecho "�������, ����� ������ � ������, � ��������� � �������",- ������ ������.
wait 10
wecho "������� �������. �� ������ ��� �����.",- ������� �������.
wait 10
wecho "������ ������� �� ������� ��������. ��� �� ����� ����������. ������� ������� ������ 
wecho �� ������ �� ���������� � ����...",- ������������ �����.
wait 15
wecho "���� �� �� ����������. �� �������, �� ��� ������ ��������� � ������. ��������� 
wecho �������� ������� � ���������, ������ �� ���� ���������. ���� ����� ����� �������� 
wecho ����� ����� ������ �������� �����!",- �������� �������� ������� �����.
wait 10
wecho "����... ������������� ������ �������. ��� ��������� �������� � �������� ������ ������ 
wecho ������� ���������� ������ ���� �� ���� ��������...",- ������ ����� �������.
wait 10
wecho "������� ������� �������� ������������!",- ������� ���� ����� �������.
wait 10
wecho "� ��� �� ������� �������?",- ����������� ������.
wait 10
wecho "���� ����� � ������������� �������� ���������� �������! �� ����� ������ ����������� 
wecho �������� ����������� ����. � ��� ����� ������� ����� �� ����������� ��������!",- ������ 
wecho ������� ������� �����.
wait 10
wecho "������ ��������, ��� �� ��� ������� ������ ��� ������������� ���� ��������� ���� � 
wecho ������ ��������� ��������...",- ������� �����.
wait 10
wecho "��� ��� ������� �������! ��� ������ ����� ������������� ���������� �� ������������ �� �������, ����� ����� ���������� � ��������������� ������� �� ����.  ��� �������� ���� ����� �������!"
wait 10
wecho "������� ���� �� ����, � � ����� ������� ��� ����������� �������...",- ����� ������ 
wecho �������.
wait 10
wecho "�� � ���! ������� �������� �� ������� � ������� ������. �� �� ����� ��������� ������!",- ����� ������������ �������.
wait 10 
wecho "����! �������!",- ������� ��� ������������� ������.
wait 10
wecho ������ ��������� ����� ����� � ���� ������ �������� �������.
calcuid kapit 70375 room
attach 70339 %kapit.id%
run 70339 %kapit.id%
detach 70340 %self.id%
~
#70341
���� ��������~
2 z 100
~
***�� ������������ ��� ������ ��� (trig 70339)
wload mob 70348
calcuid shpion 70376 room
attach 70342 %shpion.id%
run 70342 %shpion.id%
~
#70342
���� ������~
2 z 100
~
***�� ������������ ��� ������ ��� (trig 70339)
wload mob 70347
calcuid rasx 70355 room
detach 70340 %rasx.id%
~
#70343
��� �������������~
0 j 100
*~
switch %object.vnum%
  case 70301
    wait 1
    mpurge %object%
    wait 8
    say �� ��! ������%actor.g% ��������?!!
    wait 8
    say ���������!
    wait 8
    ��� %actor.name%
    wait 8
    mecho ��� ����������, ���-�� ������ � ����� ��������������� �����.
    mecho ��� ���������� ������� �� ���������� ����� � ����������� ����������� �������.
    � ����� ��������� �������!
    switch %random.3%
      case 1
        mload obj 70363
        ���� ��� %actor.name%
      break
      case 2
        mload obj 70364
        ���� �� %actor.name%
      break
      default
        mload obj 70365
        ���� ����� %actor.name%
      break
    done
  break
  case 70302
    wait 1
    mpurge %object%
    � �� ��! ������� ���������... � �����!
    wait 8
    � ���������!
    wait 8
    ��� %actor.name%
    wait 8
    if (%actor.class% == 4) && (%actor.level% > 19) && (!%actor.skill(���������� �����)%)
      wait 1
      ���� %actor.name% � ���� �� ��� ���, ������� �� ������ � ������ ���� ����� �� �����...
      ���� %actor.name% �������, � ����� ���� ���-���� �������... �� ��� ����� ������ ��� ���� ������ ����.
      wait 15
      ���� %actor.name% � ��� � ���� �������� ������� ������ ��������.
      ���� %actor.name% ������ ���������� ��� ��������� � ������ � ������� �������� ������.
      ���� %actor.name% ��������� �� ��� ������ ��� ������� �� �����... ����! ���..
      ���� %actor.name% �������� ��� �� ����... ����� ���� ����-������.
      calcuid mish703 70316 mob
      attach 70355 %mish703.id%
      wait 30
      � � ���...
      � ������� ������ ��� �� ������.
      mload obj 70366
      ���� ���� %actor.name%
    else
      if (%actor.skill(�����������)%>=80) && (%actor.skill(�����������)%<=90+%actor.remort%*5) && (%actor.level%>=25)
        ���� %actor.name% �� ��� � �������� ���� ��� ����� ��������.
        ���� %actor.name% � ����� ��������� ��� �����������...
        mskilladd %actor.name% ����������� %random.2%
        wait 30
        � � ���...
        � ������� ������ ��� �� ������.
        mload obj 70366
        ���� ���� %actor.name%
      else
        � ������� ������ ��� � �������.
        mload obj 70366
        ���� ���� %actor.name%
      end
    end
  break
  case 70368
    wait 1
    mpurge %object%
    if ((%actor.class% == 4) && %actor.can_get_skill(���������� �����)% && !%actor.skill(���������� �����)%)
      ���� %actor.name% �� ��! ����� ���� �� ��������!
      ���� %actor.name% ������, ��� ��� ������� ���� ������� ����� ������.
      ���� %actor.name% ������� ����! � ��� ������ � ����� ����...
      wait 10
      ���
      wait 10
      ����
      wait 15
      ���� %actor.name% ��������� �������! ��� ���� � ���� �����!
      mskillturn %actor% ����������.����� set
    end
  break
  case 70362
    wait 1
    mpurge %object%
    wait 8
    � ��� ��� �����?
    wait 8
    mecho ��� ��������� ���� �������� � ����� ��� �������.
    mecho "�� �������!",- �������� ������� ���.
    wait 8
    � ������� ���� �� ��, ��� ������� ��� �� ����� ������!
    ��� %actor.name%
    wait 8
    switch %actor.class%
      *������
      case 0
        if !%actor.quested(70301)%
          mskilladd %actor% ������ 10
          eval tmp %actor.setquest(70301)% 
        else
          %self.gold(+5000)%
          ���� 5000 ��� %actor.name%
          � ������ ������ �� �����,� ���� ����������...
        end
      break
      *������
      case 1
        if !%actor.quested(70301)%
          mskilladd %actor% ��������� 10
          eval tmp %actor.setquest(70301)% 
        else
          %self.gold(+5000)%
          ���� 5000 ��� %actor.name%
          � ������ ������ �� �����,� ���� ����������...
        end
      break
      *����
      case 2
        if !%actor.quested(70301)%
          mskilladd %actor.name% �������� 10
          eval tmp %actor.setquest(70301)% 
          ���� %actor.name% ������ ������ �������� ����� �������...
          wait 15
          ���� %actor.name% � ���...
          %self.gold(+5000)%
          ���� 5000 ��� %actor.name%
          � ������ ������ �� �����,� ���� ����������...
        else
          %self.gold(+5000)%
          ���� 5000 ��� %actor.name%
          � ������ ������ �� �����,� ���� ����������...
        end
      break
      *��������
      case 3
        if !%actor.quested(70301)%
          mskilladd %actor% ����.���� 10
          eval tmp %actor.setquest(70301)% 
        else
          %self.gold(+5000)%
          ���� 5000 ��� %actor.name%
          � ������ ������ �� �����,� ���� ����������...
        end
      break
      *�������
      case 4
        if (%actor.level% > 20) && (!%actor.skill(c������ ����)%)
          ���� %actor.name% � ���� �� ��� ���, ������� �� ������ � ������ ���� ����� �� �����... � ������ ����� ���������!
          mload obj 70367
          ��� ���� %actor.name%
          ���� %actor.name% � ��������� � �� ���� ���� ������� ���, �� ���� ������ ������� ������� ���� � ����� ������.
        else
          if !%actor.quested(70301)%
            mskilladd %actor.name% �������� 10
            eval tmp %actor.setquest(70301)% 
            ���� %actor.name% ������ ������ �������� ����� �������...
            wait 15
            ���� %actor.name% � ���...
            %self.gold(+5000)%
            ���� 5000 ��� %actor.name%
            � ������ ������ �� �����,� ���� ����������...
          else
            %self.gold(+5000)%
            ���� 5000 ��� %actor.name%
            � ������ ������ �� �����,� ���� ����������...
          end
        end
      break
      *����
      case 5
        if !%actor.quested(70301)%
          mskilladd %actor% ����� 10
          eval tmp %actor.setquest(70301)% 
        else
          %self.gold(+5000)%
          ���� 5000 ��� %actor.name%
          � ������ ������ �� �����,� ���� ����������...
        end
      break
      *��������
      case 6
        if !%actor.quested(70301)%
          mskilladd %actor% ��������� 10
          eval tmp %actor.setquest(70301)% 
        else
          %self.gold(+5000)%
          ���� 5000 ��� %actor.name%
          � ������ ������ �� �����,� ���� ����������...
        end
      break
      *����������!
      case 7
        if !%actor.quested(70301)%
          mskilladd %actor% ����� 10
          eval tmp %actor.setquest(70301)% 
        else
          %self.gold(+5000)%
          ���� 5000 ��� %actor.name%
          � ������ ������ �� �����,� ���� ����������...
        end
      break
      *������
      case 8
        if !%actor.quested(70301)%
          mskilladd %actor% ��������� 10
          eval tmp %actor.setquest(70301)% 
        else
          %self.gold(+5000)%
          ���� 5000 ��� %actor.name%
          � ������ ������ �� �����,� ���� ����������...
        end
      break
      *������
      case 9
        if !%actor.quested(70301)%
          mskilladd %actor% ����.��� 10
          eval tmp %actor.setquest(70301)% 
        else
          %self.gold(+5000)%
          ���� 5000 ��� %actor.name%
          � ������ ������ �� �����,� ���� ����������...
        end
      break
      *����
      case 10
        if !%actor.quested(70301)%
          mskilladd %actor% ���.���� 10
          eval tmp %actor.setquest(70301)% 
        else
          %self.gold(+5000)%
          ���� 5000 ��� %actor.name%
          � ������ ������ �� �����,� ���� ����������...
        end
      break
      *������
      case 11
        if !%actor.quested(70301)%
          mskilladd %actor% �������� 10
          eval tmp %actor.setquest(70301)% 
        else
          %self.gold(+5000)%
          ���� 5000 ��� %actor.name%
          � ������ ������ �� �����,� ���� ����������...
        end
      break
      *�����
      case 12
        if !%actor.quested(70301)%
          mskilladd %actor% ����������.����� 10
          eval tmp %actor.setquest(70301)% 
        else
          %self.gold(+5000)%
          ���� 5000 ��� %actor.name%
          � ������ ������ �� �����,� ���� ����������...
        end
      break
      *�����
      case 13
        if !%actor.quested(70301)%
          mskilladd %actor% �������� 10
          eval tmp %actor.setquest(70301)% 
        else
          %self.gold(+5000)%
          ���� 5000 ��� %actor.name%
          � ������ ������ �� �����,� ���� ����������...
        end
      break
      default
        %self.gold(+5000)%
        ���� 5000 ��� %actor.name%
        � ������ ������ �� �����,� ���� ����������...
      break
    done
  break
done
~
#70344
��������� ������~
2 c 0
������ �������� �������~
if !(%arg.contains(�����)%) 
  wsend %actor% ��� ��� �� ������ ��������???
  return 1
  halt
end
wait 1
wsend %actor% �� �������� ����� � �����.
wechoaround %actor% %actor.name% �������%actor.u% ����� � �����.
wait 1s
wecho ����� ������� ���� ����� � ������ ������� ������� ����� �����.
wechoaround %actor% ����� � �������� ����� ���� ����� ������� ����� �����, ���� �� ��������.
wdoor 70339 north flags a
wdoor 70339 north room  70357
wdoor 70357 south   flags a
wdoor 70357 south room  70339
calcuid vorot 70381 room
detach 70344 %vorot.id%
~
#70345
����� ������ �� 2~
2 c 0
�����~
if !(%arg.contains(������)%) 
  wsend %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
wsend %actor% �� ������� ����� ������.
wechoaround %actor% %actor.name% �����%actor.g% ����� ������.
wait 1s
wsend %actor% �� ������������ ����������� ����� ������� ������.
wteleport %actor.name% 70305
wechoaround %actor% ���-�� ������ ����.
~
#70346
�������� ������������~
0 r 100
*~
wait 1
� �������!
� ��� ������?
~
#70347
������� ����������� ������ �������~
1 h 100
~
if (%actor.class% == 4) && (%actor.level% > 15) && (!%actor.skill(������� ����)%) && (%actor.realroom% == 62138)
  osend %actor%  �� ������� ������ �������. �� ��������� � �����, ������ ����� �������� ����.
  oechoaround %actor%  %actor.name% ������%actor.g% ������ �������. �� �������� � �����, ������ ����� �������� ����.
  osend %actor% �� ��������, ��� ��� ������� � ���� � ���� ������...
  osend %actor% ���������� ������� � ���� ������, ����� ������������.
  osend %actor% ����� ����� ������� ����-�� ����:"�� � �������..�����.. ����.."
  calcuid m703 62163 room
  attach 70348 %m703.id%
  run 70348 %m703.id%
end
~
#70348
������ �����~
2 z 100
~
if %world.curmobs(62108)% == 1
  *������� ���������� �� �������
  calcuid marb2 62108 mob 
  wpurge %marb2%
  *�� ��� �� �� ��� �������� �� �����
  *� 621 �������� ���� ���� � ����� �� ���� ���� �� ������ ����� �������� ���� 
  * wait 5
  * wpurge ���
  * wpurge ����
  wload mob 70352
  calcuid marb703 70352 mob
  attach 70349 %marb703%
  calcuid mslug703 62143 room
  attach 70351 %mslug703%
  run 70351 %mslug703%
end
~
#70349
����� �������~
0 q 100
~
if (%actor.class% == 4) && (%actor.level% > 23) && (!%actor.skill(������� ����)%)
  wait 1
  msend %actor% ������� �������� ���������� �������� ���... 
  wait 15
  � ����� �������� ���... �� � � ��� ����� ���� ����.
  wait 15
  � ��� ���� ��� ��� ?
  wait 15
  ���� %actor.name%
  calcuid marb703 70352 mob
  attach 70356 %marb703.id%
else
  � %actor.name%
end
~
#70350
����� ����� � ����~
0 d 1
������ ������~
wait 5
say ������� ���� ������ � ����� �������� ���� ������� � ������. �� �����, ������ �� 
say �������� ������ �����-�� �����, � ��������� ������. � ����� ��� ����� � ������ ����� 
say ����. ��� ������������� � ���� ���������.
wait 5
say ������ ������ � ������ ������� ��������� �������� �����, ����������� �� �������� 
say ��������� ���� ��������, � �������� �������� ���� �����.
wait 5
say �� �� �������, �� ������, �� �� ���� ����� ��������� ���������� ���������, �������, 
say ������ �����, ��������� �� ����������� ��������. ����� ����, ��� ��� ������� �������, � 
say ����� �� �� ��� ���� ���-���.
wait 5
say �� ��� �������, �������� �����-�� ������ ������, � ������� ��� �� ���� ������.
���� %actor.name%
wait 5
say ��� ����� ���� ��� �� �������, ������ ���, ��� �� ������ �������� ����� �����, �� 
say ����, ��� ��� ����� ����. ��� �� ��������� �� ��� �������� �� ����� �� �����.
say ����� ���-���� � �������. �� � �������� ����� ���������, ��������, ��� ��� ���������, 
say � �� �� �� ��� ��� ����?
attach 70343 %self.id%
detach 70303 %self.id%
detach 70350 %self.id%
~
#70351
������� ����1~
2 z 100
~
*������� ����� ����� ������ ���� 62113 
*��� ����� �� ������ ������ ���������� 
*����� � ���� 2
*
if %exist.mob(62113)%
  calcuid m703 62113 mob
  %purge% %m703%
end
if %exist.mob(62113)%
  calcuid m703 62113 mob
  %purge% %m703%
end
calcuid m703 62163 room
detach 70348 %m703.id%
*wpurge ����
*wpurge ����
*calcuid mslug703 62144 room
*attach 70352 %mslug703.id%
*run 70352 %mslug703.id%
~
#70352
������� ����2~
2 z 100
~
*������� (�� 51)
halt
*
calcuid mslug703 62143 room
detach 70351 %mslug703.id%
wpurge ����
wpurge ����
calcuid mslug703 62145 room
attach 70353 %mslug703.id%
run 70353 %mslug703.id%
~
#70353
������� ����3~
2 z 100
~
*������� (�� 51)
halt
*
calcuid mslug703 62144 room
detach 70352 %mslug703.id%
wpurge ����
wpurge ����
calcuid mslug703 62146 room
attach 70354 %mslug703.id%
run 70354 %mslug703.id%
~
#70354
������� ����4~
2 z 100
~
*������� (�� 51)
halt
*
calcuid mslug703 62145 room
detach 70353 %mslug703.id%
wpurge ����
wpurge ����
calcuid mslug703 62146 room
detach 70354 %mslug703.id%
~
#70355
������ ������� ����~
0 f 100
~
if (%actor.class% == 4) && (%actor.level% > 10) && (!%actor.skill(���������� �����)%)
  mload obj 70368
end
~
#70356
�������� �����1~
0 d 100
���~
if %actor.vnum% != -1
  halt
end
if (%actor.class% == 4) && (%actor.level% > 23) && (!%actor.skill(������� ����)%)
  wait 1
  � ��� ?!!!
  � ���� ������ ?!!!
  wait 30
  ���
  wait 30
  � �� ����... ������ �� ��, ��� �� �� �����.
  wait 15
  msend %actor% ���������� ����� ��� � ����� � ����� ������! ����� ����!
  wait 30
  � ������ ���������� ���� �� ���� � �������������.. �� ��� ���� ��� ���� ���� �������� ������.
  � ��� ���� ���� �� ���� ?
  calcuid marb703 70352 mob
  attach 70357 %marb703.id%
  calcuid marb703 70352 mob
  detach 70356 %marb703.id%
else
  � %actor.name%
end
~
#70357
�������� ����� 2~
2 d 100
����~
if (%actor.class% == 4) && (%actor.level% > 23) && (!%actor.skill(������� ����)%)
  wait 1
  � ���� ?!!!
  � �� �� �������� ?!!!
  wait 15
  ���
  wait 15
  � �� ���� �� �� ����! ������ �� ����!
  wait 15
  � �� ���� ������� ����� � ���� ���� ����. ��������, �� ����� �� �������.
  msend %actor% ���������� ����� ������ ��������� �������� �������� � ������...
  wait 60
  � ����� �������!
  wait 20
  msend %actor% ���������� ��������� ��������, ���������� ����...
  wait 20
  msend %actor% "������!!!!",- ������ ������ ���������� ��� �����������.
  wait 20
  � ����� �� ����� �� ����� ����... ������ �� ����� ���! ��� ����!
  msend %actor% ���������� ������� ��� ��� ���� ���� � ����.
  wait 15
  � ������ ��� �������...����� �������. � �� ��������� ������! 
  calcuid marb703 70352 mob
  attach 70358 %marb703.id%
  calcuid marb703 70352 mob
  detach 70357 %marb703.id%
else
  � %actor.name%
end
~
#70358
�������� �����3~
0 c 100
�������~
if !(%arg.contains(����)%) 
  msend %actor% �� ��� ?!! �� ����� ���������� ���������� ���� ��� �������!
  return 0
  halt
end
if (%actor.class% == 4) && (%actor.level% > 23) && (!%actor.skill(������� ����)%)
  wait 1
  msend %actor% �� �� ����� ������� ������� �� ������ ���� ����������.
  msend %actor% "��������...����!!!!",- ����� ������ ������ ���������� ��� �����������.
  wait 15
  � ��� ������ �� �����! ��������� ���� ��� �� ����.
  wait 15
  � ��! �� �����!
  wait 20
  � �����! ������ �� ����.
  mload obj 62104
  ��� ���� %actor.name%
  wait 15
  � ������ ������! ��� ��� �������. ����������� ����. �� ������ �� ������ �������!
  � ���-�� ������������ �. ����� ����� �� ����� �����...
  msend %actor% ���������� �������� ������� ��������� �, ���� �� ������ ���� ����� � ������, ����� �� ���������.
  calcuid marb703 70352 mob
  detach 70349 %marb703.id%
  mpurge %marb703%
else
  � %actor.name%
end
~
#70359
���2~
0 r 100
~
wait 5
�� � ������� ��������� �� ���.
~
#70360
� �� ��������~
0 d 1
�� ����~
wait 5
mecho ������ �������������� ������� ������� �������, � ���������� �������� ������...
wait 10
mecho ������ ���������, ��� �� ����� �������, �� ������� �� ������� �� ����� ������, ���, 
mecho ���� ��� ��������, ������ ����� �� ������...
wait 5
mecho ����� �� ���������, ��� �����. 
mecho �� ������ ��� ������ ������, ��� ����� ����� � �����. ��� �������� �������� ���� 
mecho ����������� � ������ ���������, � ������� ����� ����������� �����, �� ������������� �� ����.
wait 10
mecho ����� ��� ��� �� ��� �������� � ���. � ��� ������� ���������� ����, �������� �� 
mecho ����� �����; � ��� ����������� �����, ��������� ���� ������; � ��� ���������, 
mecho ��������� � ������ ����; � ��� ��������, ������� ��������� � ������� �������� 
mecho ����������; � ��� ������ � ������ ������, ����� ������ ���� ������; � ��� ����������� 
mecho ������, ��� ��� �������� ��������� ����� ���������...
wait 15
mecho ����� ��������� ����, ������ ������ ����������� ��� ��������, ���������� �����:
mecho "����... �����! �� ���� �� ����� ��������? ��� � �� �����. ��� ��� �����! 
mecho �� ����� �� ������! �����!"
wait 10
mecho �� ����������� � ������ �������...
wait 5
mecho �������, �� ������...
mecho ���, �� �������. �� ������,  ����������� �������� ��������� �������.
mecho ���� ���������� ������. ���-�� �� ��������� ��������� � ��� �� �������� ������� �����. 
mecho ����� ��������� ������� ������.
mecho ���-�� �������� ��������...
mecho ������ ��� ����� �� �������� �������� ��� ����� ����� ������ � ������ ���������.
mteleport all 70304
detach 70346 %self.id%
detach 70360 %self.id%
~
#70361
������� �������������~
0 n 100
*~
if (%world.curobjs(70313)% < 5) && (%random.10% == 1)
  mload obj 70313
end
~
#70362
������� ����������������~
0 n 100
*~
if (%world.curobjs(70319)% < 5) && (%random.10% == 1)
  mload obj 70319
end
~
#70363
������� ���������������~
0 n 100
*~
if (%world.curobjs(70322)% < 5) && (%random.10% == 1)
  mload obj 70322
end
if (%world.curobjs(70325)% < 5) && (%random.10% == 1)
  mload obj 70325
end
if (%world.curobjs(70330)% < 5) && (%random.10% == 1)
  mload obj 70330
end
if (%world.curobjs(70331)% < 5) && (%random.10% == 1)
  mload obj 70331
end
if (%world.curobjs(70334)% < 5) && (%random.10% == 1)
  mload obj 70334
end
if (%world.curobjs(70337)% < 5) && (%random.10% == 1)
  mload obj 70337
end
if (%world.curobjs(70340)% < 5) && (%random.10% == 1)
  mload obj 70340
end
~
#70364
������� ��������������~
0 n 100
*~
if (%world.curobjs(70311)% < 4) && (%random.10% == 1)
  mload obj 70311
end
~
#70365
������� ������������~
0 n 100
*~
if (%world.curobjs(70317)% < 4) && (%random.10% == 1)
  mload obj 70317
end
~
#70366
������� ������������~
0 n 100
*~
if (%world.curobjs(70314)% < 4) && (%random.10% == 1)
  mload obj 70314
end
~
#70367
������� ���������������~
0 n 100
*~
if (%world.curobjs(70320)% < 4) && (%random.10% == 1)
  mload obj 70320
end
~
#70368
������� ��������������~
0 n 100
*~
if (%world.curobjs(70323)% < 4) && (%random.10% == 1)
  mload obj 70323
end
if (%world.curobjs(70326)% < 4) && (%random.10% == 1)
  mload obj 70326
end
if (%world.curobjs(70329)% < 4) && (%random.10% == 1)
  mload obj 70329
end
if (%world.curobjs(70332)% < 4) && (%random.10% == 1)
  mload obj 70332
end
if (%world.curobjs(70335)% < 4) && (%random.10% == 1)
  mload obj 70335
end
if (%world.curobjs(70338)% < 4) && (%random.10% == 1)
  mload obj 70338
end
if (%world.curobjs(70341)% < 4) && (%random.10% == 1)
  mload obj 70341
end
~
#70369
������� ��������������~
0 n 100
*~
if (%world.curobjs(70312)% < 3) && (%random.10% == 1)
  mload obj 70312
end
~
#70370
������� �������������~
0 n 100
*~
if (%world.curobjs(70318)% < 3) && (%random.10% == 1)
  mload obj 70318
end
~
#70371
������� �������������~
0 n 100
*~
if (%world.curobjs(70315)% < 3) && (%random.10% == 1)
  mload obj 70315
end
~
#70372
������� ����������������~
0 n 100
*~
if (%world.curobjs(70321)% < 3) && (%random.10% == 1)
  mload obj 70321
end
~
#70373
������� ���������������~
0 n 100
*~
if (%world.curobjs(70324)% < 3) && (%random.10% == 1)
  mload obj 70324
end
if (%world.curobjs(70327)% < 3) && (%random.10% == 1)
  mload obj 70327
end
if (%world.curobjs(70328)% < 3) && (%random.10% == 1)
  mload obj 70328
end
if (%world.curobjs(70333)% < 3) && (%random.10% == 1)
  mload obj 70333
end
if (%world.curobjs(70336)% < 3) && (%random.10% == 1)
  mload obj 70336
end
if (%world.curobjs(70339)% < 3) && (%random.10% == 1)
  mload obj 70339
end
if (%world.curobjs(70342)% < 3) && (%random.10% == 1)
  mload obj 70342
end
~
#70374
� �����~
0 r 100
*~
wait 5
��� %actor.name%
wait 10
say ��������� ��� ��.
say ��� ������� ��������� ������?
wait 10
���� %actor.name%
~
#70375
������� � �������� ���~
0 d 1
�� ����~
wait 1
mecho ��� ������ �� ��������� ����� ��� ������� ����� �������.
wait 10
mecho ����� ��������� ��������� �� ������������� ������� �������� ���� � �������� ���� �����.
mteleport %actor% 70397
~
#70376
��� �������������~
0 j 100
*~
switch %object.vnum%
  case 70301
    wait 5
    wait 8
    � �� ��! ������%actor.g% ��������?!!
    wait 8
    � ���������!
    wait 8
    ��� %actor.name%
    wait 8
    mecho ��� ����������, ���-�� ������ � ����� ��������������� �����.
    mecho ��� ���������� ������� �� ���������� ����� � ����������� ����������� �������.
    � ����� ��������� �������!
    wait 1
    mpurge %object%
    switch %random.3%
      case 1
        mload obj 70363
        ���� ��� %actor.name%
      break
      case 2
        mload obj 70364
        ���� �� %actor.name%
      break
      default
        mload obj 70365
        ���� ����� %actor.name%
      break
    done
  end
  if %object.vnum% == 70302
    wait 8
    � �� ��! ������� ���������... � �����!
    wait 8
    � ���������!
    wait 8
    ��� %actor.name%
    wait 1
    mpurge %object%
    wait 8
    if (%actor.class% == 4) && (%actor.level% > 22) && (%actor.skill(����������.�����)% == -1)
      wait 1    
      ���� %actor.name% � ���� �� ��� ���, ������� �� ������ � ������ ���� ����� �� �����...
      ���� %actor.name% ������� � ����� ���� ���-���� �������... �� ��� ����� ������ ��� ���� ������ ����...
      wait 15
      ���� %actor.name% � ��� � ���� �������� ������� ������ ��������... 
      ���� %actor.name% ������ ���������� ��� ��������� � ������ � ������� �������� ������.
      ���� %actor.name% ��������� �� ��� ������ ��� ������� �� �����... ����! ���..
      ���� %actor.name% �������� ��� �� ����... ����� ���� ����-������.
      calcuid mish703 70316 mob
      attach 70355 %mish703.id%
      wait 30
      � � ���...
      � ������� ������ ��� �� ������.
      mload obj 70366
      ���� ���� %actor.name%
    else
      if (%actor.skill(�����������)%>=80) && (%actor.level%>=25)
        ���� %actor.name% �� ��� � �������� ���� ��� ����� ��������.
        ���� %actor.name% � ����� ��������� ��� �����������...
        mskilladd %actor.name% ����������� %random.2%
        wait 30
        � � ���...
        � ������� ������ ��� �� ������.
        mload obj 70366
        ���� ���� %actor.name%
      else
        � ������� ������ ��� � �������.
        mload obj 70366
        ���� ���� %actor.name%
      end
    end
  end
  if %object.vnum% == 70368
    if (%actor.class% == 4) && (%actor.level% > 22) && (%actor.skill(����������.�����)% == -1)
      ���� %actor.name% �� ��! ����� ���� �� ��������!
      ���� %actor.name% ������, ��� ��� ������� ���� ������� ����� ������.
      ���� %actor.name% ������� ����! � ��� ������ � ����� ����...
      wait 10
      ���
      wait 10
      ����
      wait 15
      ���� %actor.name% ��������� �������! ��� ���� � ���� �����!
      mskillturn %actor.name% ����������.����� set
    end
  end
  if %object.vnum% == 70362
    wait 8
    � ��� ��� �����?
    wait 8
    mecho ��� ��������� ���� �������� � ����� ��� �������.
    mecho "�� �������!",- �������� ������� ���.
    wait 8
    � ������� ���� �� ��, ��� ������� ��� �� ����� ������!
    ��� %actor.name%
    mpurge %object%
    wait 8
    switch %actor.class%
      *������
      case 0
        %self.gold(+5000)%
        ���� 5000 ��� %actor.name%
        � ������ ������ �� �����,� ���� ����������...
      break
      *������
      case 1
        %self.gold(+5000)%
        ���� 5000 ��� %actor.name%
        � ������ ������ �� �����,� ���� ����������...
      break
      *����
      case 2
        if (%actor.skill(��������)%>=80) && (%actor.level%>25)
          mskilladd %actor.name% �������� %random.2%
          ���� %actor.name% ������ ������ �������� ����� �������...
          wait 15
          ���� %actor.name% � ���...
          %self.gold(+5000)%
          ���� 5000 ��� %actor.name%
          � ������ ������ �� �����,� ���� ����������...
        else
          %self.gold(+5000)%
          ���� 5000 ��� %actor.name%
          � ������ ������ �� �����,� ���� ����������...
        end
      break
      *��������
      case 3
        %self.gold(+5000)%
        ���� 5000 ��� %actor.name%
        � ������ ������ �� �����,� ���� ����������...
      break
      *�������
      case 4
        if (%actor.level% > 23) && (%actor.skill(C������ ����)% == -1)
          ���� %actor.name% � ���� �� ��� ���, ������� �� ������ � ������ ���� ����� �� �����... � ������ ����� ���������!
          mload obj 70367
          ��� ���� %actor.name%
          ���� %actor.name% � ��������� � �� ���� ���� ������� ���, �� ���� ������ ������� ������� ���� � ����� ������.
        else
          if (%actor.skill(��������)%>=80) && (%actor.level%>25)
            mskilladd %actor.name% �������� %random.2%
            ���� %actor.name% ������ ������ �������� ����� �������...
            wait 15
            ���� %actor.name% � ���...
            %self.gold(+5000)%
            ���� 5000 ��� %actor.name%
            � ������ ������ �� �����,� ���� ����������...
          else
            %self.gold(+5000)%
            ���� 5000 ��� %actor.name%
            � ������ ������ �� �����,� ���� ����������...
          end
        end
      break
      *����
      case 5
        %self.gold(+5000)%
        ���� 5000 ��� %actor.name%
        � ������ ������ �� �����,� ���� ����������...
      break
      *��������
      case 6
        %self.gold(+5000)%
        ���� 5000 ��� %actor.name%
      break
      *����������!
      case 7
        %self.gold(+5000)%
        ���� 5000 ��� %actor.name%
      break
      *������
      case 8
        %self.gold(+5000)%
        ���� 5000 ��� %actor.name%
      break
      *������
      case 9
        %self.gold(+5000)%
        ���� 5000 ��� %actor.name%
        � ������ ������ �� �����,� ���� ����������...
      break
      *����
      case 10
        %self.gold(+5000)%
        ���� 5000 ��� %actor.name%
        � ������ ������ �� �����,� ���� ����������...
      break
      *������
      case 11
        %self.gold(+5000)%
        ���� 5000 ��� %actor.name%
        � ������ ������ �� �����,� ���� ����������...
      break
      *�����
      case 12
        %self.gold(+5000)%
        ���� 5000 ��� %actor.name%
        � ������ ������ �� �����,� ���� ����������...
      break
      *�����
      case 13
        %self.gold(+5000)%
        ���� 5000 ��� %actor.name%
        � ������ ������ �� �����,� ���� ����������...
      break   
      default
        %self.gold(+5000)%
        ���� 5000 ��� %actor.name%
        � ������ ������ �� �����,� ���� ����������...
      break
    done
~
#70377
��� �������������~
0 j 100
*~
switch %object.vnum%
  case 70302
    wait 1
    mpurge %object%
    � �� ��! ������� ���������... � �����!
    wait 8
    � ���������!
    wait 8
    ��� %actor.name%
    wait 8
    if (%actor.class% == 4) && (%actor.level% > 22) && (%actor.skill(����������.�����)% == -1)
      wait 1    
      ���� %actor.name% � ���� �� ��� ���, ������� �� ������ � ������ ���� ����� �� �����...
      ���� %actor.name% ������� � ����� ���� ���-���� �������... �� ��� ����� ������ ��� ���� ������ ����...
      wait 15
      ���� %actor.name% � ��� � ���� �������� ������� ������ ��������... 
      ���� %actor.name% ������ ���������� ��� ��������� � ������ � ������� �������� ������.
      ���� %actor.name% ��������� �� ��� ������ ��� ������� �� �����... ����! ���..
      ���� %actor.name% �������� ��� �� ����... ����� ���� ����-������.
      calcuid mish703 70316 mob
      attach 70355 %mish703.id%
      wait 30
      � � ���...
      � ������� ������ ��� �� ������.
      mload obj 70366
      ���� ���� %actor.name%
    else
      if (%actor.skill(�����������)%>=80) && (%actor.level%>=25)
        ���� %actor.name% �� ��� � �������� ���� ��� ����� ��������.
        ���� %actor.name% � ����� ��������� ��� �����������...
        mskilladd %actor.name% ����������� %random.2%
        wait 30
        � � ���...
        � ������� ������ ��� �� ������.
        mload obj 70366
        ���� ���� %actor.name%
      else
        � ������� ������ ��� � �������.
        mload obj 70366
        ���� ���� %actor.name%
      end
    end
  end
  switch %object.vnum%
    case 70368
      wait 1
      mpurge %object%
      if (%actor.class% == 4) && (%actor.level% > 22) && (%actor.skill(����������.�����)% == -1)
        ���� %actor.name% �� ��! ����� ���� �� ��������!
        ���� %actor.name% ������, ��� ��� ������� ���� ������� ����� ������.
        ���� %actor.name% ������� ����! � ��� ������ � ����� ����...
        wait 10
        ���
        wait 10
        ����
        wait 15
        ���� %actor.name% ��������� �������! ��� ���� � ���� �����!
        mskillturn %actor.name% ����������.����� set
      end
    end
    switch %object.vnum%
      case 70362
        wait 1
        mpurge %object%
        wait 8
        � ��� ��� �����?
        wait 8
        mecho ��� ��������� ���� �������� � ����� ��� �������.
        mecho "�� �������!",- �������� ������� ���.
        wait 8
        � ������� ���� �� ��, ��� ������� ��� �� ����� ������!
        ��� %actor.name%
        wait 8
        switch %actor.class%
          *������
          case 0
            %self.gold(+5000)%
            ���� 5000 ��� %actor.name%
            � ������ ������ �� �����,� ���� ����������...
          break
          *������
          case 1
            %self.gold(+5000)%
            ���� 5000 ��� %actor.name%
            � ������ ������ �� �����,� ���� ����������...
          break
          *����
          case 2
            if (%actor.skill(��������)%>=80) && (%actor.level%>25)
              mskilladd %actor.name% �������� %random.2%
              ���� %actor.name% ������ ������ �������� ����� �������...
              wait 15
              ���� %actor.name% � ���...
              %self.gold(+5000)%
              ���� 5000 ��� %actor.name%
              � ������ ������ �� �����,� ���� ����������...
            else
              %self.gold(+5000)%
              ���� 5000 ��� %actor.name%
              � ������ ������ �� �����,� ���� ����������...
            end
          break
          *��������
          case 3
            %self.gold(+5000)%
            ���� 5000 ��� %actor.name%
            � ������ ������ �� �����,� ���� ����������...
          break
          *�������
          case 4
            if (%actor.level% > 23) && (%actor.skill(C������ ����)% == -1)
              ���� %actor.name% � ���� �� ��� ���, ������� �� ������ � ������ ���� ����� �� �����... � ������ ����� ���������!
              mload obj 70367
              ��� ���� %actor.name%
              ���� %actor.name% � ��������� � �� ���� ���� ������� ���, �� ���� ������ ������� ������� ���� � ����� ������.
            else
              if (%actor.skill(��������)%>=80) && (%actor.level%>25)
                mskilladd %actor.name% �������� %random.2%
                ���� %actor.name% ������ ������ �������� ����� �������...
                wait 15
                ���� %actor.name% � ���...
                %self.gold(+5000)%
                ���� 5000 ��� %actor.name%
                � ������ ������ �� �����,� ���� ����������...
              else
                %self.gold(+5000)%
                ���� 5000 ��� %actor.name%
                � ������ ������ �� �����,� ���� ����������...
              end
            end
          break
          *����
          case 5
            %self.gold(+5000)%
            ���� 5000 ��� %actor.name%
            � ������ ������ �� �����,� ���� ����������...
          break
          *��������
          case 6
            %self.gold(+5000)%
            ���� 5000 ��� %actor.name%
          break
          *����������!
          case 7
            %self.gold(+5000)%
            ���� 5000 ��� %actor.name%
          break
          *������
          case 8
            %self.gold(+5000)%
            ���� 5000 ��� %actor.name%
          break
          *������
          case 9
            %self.gold(+5000)%
            ���� 5000 ��� %actor.name%
            � ������ ������ �� �����,� ���� ����������...
          break
          *����
          case 10
            %self.gold(+5000)%
            ���� 5000 ��� %actor.name%
            � ������ ������ �� �����,� ���� ����������...
          break
          *������
          case 11
            %self.gold(+5000)%
            ���� 5000 ��� %actor.name%
            � ������ ������ �� �����,� ���� ����������...
          break
          *�����
          case 12
            %self.gold(+5000)%
            ���� 5000 ��� %actor.name%
            � ������ ������ �� �����,� ���� ����������...
          break
          *�����
          case 13
            %self.gold(+5000)%
            ���� 5000 ��� %actor.name%
            � ������ ������ �� �����,� ���� ����������...
          break   
          default
            %self.gold(+5000)%
            ���� 5000 ��� %actor.name%
            � ������ ������ �� �����,� ���� ����������...
          break
        done
~
#70378
��� ��������~
0 f 100
~
mload obj 70362
~
$~

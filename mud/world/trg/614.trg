#61400
1� ������� ���������~
0 g 0
~
wait 2
makeuid questor614 %actor.id%
worlds questor614
%actor.setquest(61400)%
� ���� ���, ������, ������ � ������, �� � ��� ��� � ������ ��� �� ����.
if (%actor.sex% == 1)
  � ������ ������. �� ������, ������ �������, � ������!
else
  � ������ ������. �� ������, ������ ������, � ������!
end
� ����� �� ��� �����, �� ������, ��� � �������� ������� ����, � ����� ����.
calcuid room61446 61446 room
attach 61410 %room61446.id%
exec 61410 %room61446.id%
wait 3
� ��� ������� ������ �����, ������ �� ���, � ���� ������ �����.
detach 61400 %self.id% 
~
#61401
������������� �������~
0 q 100
~
if !(%questor614.id% == %actor.id%)
  wait 1
  msend %actor% �������� �������� ���������.   
  halt 
end
if  !(%killer614.id% == %questor614.id%)
  wait 1
  msend %actor% �������� ��������.
  halt
end
wait 4
if (%actor.sex% == 1)
  say ������� ���� ��������, ������ �������. ������� ���� ���������,
else
  say ������� ���� ��������, ������ ������. ������� ���� ���������,
end
say ������ �� ���� ���� � �� ��.
say ��� ���� ���, ������, ���� �������? �� �� �������, � � ��� ����, ��� ��.
say ������ � ���������� �� �������, ����� ��� � ������������� ��� ��� ����������.
say � �� ������ �� �������� ����������� �����.
wait 2
msend %actor% �������� ��� ��� �������� ���� ���.
mechoaround %actor% �������� ��� %actor.dname% �������� ���� ���.
eval temp %actor.gold(+2000)%
calcuid mob61401 61401 mob
attach 61403 %mob61401.id%
detach 61401 %self.id% 
~
#61402
������ �������~
0 f 100
~
if (%actor.vnum% != -1) && (%actor.leader%)
  eval killer614 %actor.leader%
elseif (%actor.vnum% == -1)
  eval killer614 %actor.id%
end
calcuid questor 61408 mob
worlds killer614
calcuid mob61400 61400 mob
attach 61401 %mob61400.id%
detach 61402 %self.id%
~
#61403
2� ������ � ���������~
0 q 100
~
if !(%questor614.id% == %actor.id%)
  wsend %actor% ������!
  halt
end
wait 4
emot ������� ����������� ��� ����� ��������� 
say ������� ����, ��� ������ ����� �������%actor.g%... ���...  ���...
���
wait 3
say ��� ����� �������� ������� ���� ��������, �� ������ � ���� ����!
say ���� � ���� � ���� ��� ���� �������.
say ���������, �������� � ������ ����� ����� ���������� � ��������� �����.
say �� ������� � ���� ��������, �� ���� ����� � ����������� ����� �������� �� �������.
say ��� � ������� ��� ���� ������� ��������� ���� ����� ������.
say �� � ������ ������, ��� ��� ��� �������� ������ ������, ������ ����� - ����-���... 
say ����� �������� ��� ������� ��� �������? � �� �� �� ������� �� �������.
attach 61404 %self.id%
detach 61403 %self.id%
~
#61404
2� ������ � ���������(����� 2)~
0 d 0
������� ������ ��~
if !(%questor614.id% == %actor.id%)
  msend %actor% - ���� �� ������? �� � ����� �������������!!
  halt 
end
wait 2
say �������! ������ ����� ���-�� � ����� �����. �� ������ ����� �� ������� ����.
say ���� � ������� ��� ������ �� �������. ��� ����� ���������� �����.
say ����� ��� ��������� ���� ���� ���, ��� ����� ��� ��� ����, � ������ - �������� � ������� ������.
say �� ���� ��������� ����� ������� � ����, ����� ��� �����, �� � ��������� � ����������� 
say ������ �� �������, ��� ��� ����� ��� ������.
say � �����, ����� ���������� �� ������, �� ������ �� �����.
say ��� ��������� ��� � ������, ������ ���� ��� 
say ���� � ������� � ����� ����� ������.
say ���� ��� ������ �� ���� �� ���, ���� ��� �������� � - ������ ���� ����� ������� ����.
say ���� ������ ��� ������� ������...
say �� �����, ����� ����, � ���� ����� ���� � ������ � �����.
wait 1s
calcuid mob61411 61411 mob
attach 61405 %mob61411.id%
calcuid room61447 61447 room
attach 61411 %room61447.id%
exec  61411 %room61447.id%
mecho �������� �������� ����� �� ������.
mpurge %self.id%
detach 61404 %self.id% 
~
#61405
������ � ��������~
0 q 100
~
if !(%questor614.id% == %actor.id%)
  halt 
end
wait 1s
if (%actor.sex% == 1)
  say �� ���-�� �����, ����?
else
  say �� ���-�� �����, �������?
end
attach 61406 %self.id%
detach 61405 %self.id%
~
#61406
�������� � ���������(1)~
0 d 0
�� ������� ���~
if !(%questor614.id% == %actor.id%)
  msend %actor% - ���� �� ������? �� � ����� �������������!!
  halt 
end
wait 1
say � ��� �� �����? ������ ������ ���-��?
say ����� ���������� ����� �����...
wait 4
say � ����� �� 100 ��� � ����� ����� ����� �� ����� ���� ������.
wait 2
attach 61407 %self.id%
detach 61406 %self.id%
~
#61407
�������� � ���������(2)~
0 m 1
~
if !(%questor614.id% == %actor.id%)
  msend %actor% - ������� ���� ������� ����������, ������ �� �������.
  halt 
end
if (%amount% < 100)
  switch %random.6% 
    case 1
      ���
      � ������ ������ - ������ ������.
    break
    case 2
      ���� ����������
      � ����� �� ���� ������ ���� �� ������.
    break
    case 3
      ����
      � �� �������, ������ ��� ������.
    break
    case 4
      mecho ������� ����� ������������
      � �... ���... ��� ... ���... "��.. � ...."
    break
    case 5
      � ������ �����, ����� ������.
    break
    case 6
      � ����� ���� ��� � ����� ������?
    break
  done
  mecho �������� ���������� � �������� ��������� ������.
else
  switch %random.2% 
    case 1
      wait 1
      � �������� ���� � ������ �� ����, ��� ����� �� �� ���������.
      � ����� � ���� ��� �� ������� ������.
      � ��� ������� �� ������� ���������, ��� ����� ����� ����� ��� �����.
      mload obj 61414
      ���� ������� .%actor.name%
      calcuid room61460 61460 room
      attach 61408 %room61460.id%
      detach 61407 %self.id%
    break
    case 2
      � ���������� - �������� ����. ��� ������� �������� ������ ����������, ��� ������ �����.
      � ������� �� ��, ��� �� ������ �����, � ����� ��� 100 ���.
    break
  done
end
~
#61408
������ �������~
2 c 0
������ ��������� ��������~
if !(%arg.contains(�������)%)
  wsend %actor.name% ��� �� ������ ���������?
  halt
end
if !(%questor614.id% == %actor.id%)
  wsend %actor% �� ������ ������ ������ ����� �� �������, �� ������ ������� ��-�� �������������� ��������.
  wechoaround %actor% %actor.iname% �����%actor.g% ������ ������ ����� �� �������,
  wechoaround %actor% �� ����%actor.u% �� ������� ����� � ���������� ��� �� ����%actor.q%.
  return 1
  halt 
end
wsend %actor% �� ���������� ������� �������� � ������ ������ ������.
wait 1s
wforce %actor% � �������, �������,
wait 1s
wforce %actor% � ������ �� ��� �������,
wait 1s
wforce %actor% � � ���� �����.
wait 3s
wecho ������� �������: '�� ��� ��, � �� ��� ������ �� ������.'
wait 4s
wforce %actor% � �������, �������
wait 1s
wforce %actor% � ������ �� ��� �������
wait 1s
wforce %actor% � � ���� �����.
wait 3s
wecho ������� �������: '������� �� ����, ���� ��������.'
wait 1s
wecho ������� �������: '� ������ ���� ��� �����, �����-�� �������� �� ������ ���� �������?'
wait 4s
wforce %actor% � �������, �������,
wait 1s
wforce %actor% � ������ �� ��� �������,
wait 1s
wforce %actor% � � ���� �����.
wait 3s
wecho ������� �������: '�� �� - ���� �������!'
wecho ������� �������: '�� ����� ��� �� � ����.'
wait 4
wecho ����������� ����, ���������� �����,
wecho ��� � ������� ���������, ����� ��� ��� ������...
wforce %actor% ���� ������.�����.����
wecho ������� ���������� � �����, ���� ���������� �����.
calcuid abc 61414 obj
wait 1
wpurge %abc%
wait 1s
wdoor 61460 east room 61461 
wdoor 61461 west room 61440
detach 61408 %self.id%
~
#61409
������� �� ����~
2 c 0
�������� ��������� ��������~
if !%arg.contains(����)
  wsend %actor.name% ��� �� ������ ��� ���������?
  return 1
  halt
end
wsend %actor% �� ����������� ��������� ����.
wsend %actor% ����� �� ������, ������, �� � �������� �������, �� ��� �� ���� �������?
wechoaround %actor% %actor.iname% ����������� �������%actor.g% ����.
~
#61410
���� �������~
2 z 100
~
wload mob 61408
~
#61411
RE���� ���������~
2 z 100
~
wait 2s
wload mob 61401
calcuid mob61401 61401 mob
wait 2s
attach 61427 %mob61401.id%
detach 61400 %mob61401.id%
detach 61411 %self.id%
~
#61412
����� ����~
2 f 100
~
unset questor614
unset killer614
unset proklyatiy614
*�������� �����
wdoor 61452 down purge
wdoor 61470 up purge
attach 61421 %world.room(61452)%
*�������� ������ � ���
wdoor 61461 w purge
wdoor 61460 e purge
wait 1
wat 61438 wload mob 61401
*������� ���� � ��������
calcuid korch 61411 mob
attach 61405 %korch.id%
~
#61413
���� � ���������~
0 q 100
~
if !(%questor614.id% == %actor.id%)
  attach 61400 %self.id%
  exec 61400 %self.id%
  detach 61413 %self.id%
end
wait 3
����� .%questor614.name%
attach 61427 %self.id%
detach 61413 %self.id%
~
#61414
������ ���� ���~
0 f 100
~
calcuid room61464 61464 room
attach 61415 %room61464.id%
exec 61415 %room61464.id%
%purge% %self%
~
#61415
������ ���~
2 z 100
~
wload mob 61417
calcuid mob61417 61417 mob
wait 1s
wecho ���� ���� ��� ������ �����, ������ ��� ��� �� ������.
wait 1s
wecho %mob61417.iname% ������������ � ������ ����������� �� �����������.
wecho %mob61417.iname% �������� ���!
wecho %mob61417.iname% � ������ ���������� �� ��� � ����� ������ � ������.
wforce %mob61417% � �������� ����, � ��� ��� ���-��� ������! ��������� ������ ��������!
attach 61416 %mob61417.id%
exec 61416 %mob61417.id%
detach 61415 %self.id%
~
#61416
����������� ���~
0 z 100
~
wait 1s
�� ����� �����������
� ���� � �������� ������.
� ��� ������� ��������� �����, � ���� � ��� �� �������, � ���������.
� ���� ��������� ����, � ������ ���� ��� �����.
attach 61417 %self.id%
detach 61416 %self.id%
~
#61417
����������� ���(2)~
0 d 0
���� ������ ������ ���������~
wait 3
msend %actor% ���� ��� �������� ��� �� ���� � �������� � ������ �� �������.
mechoaround %actor% ���� ��� �������� %actor.vname% �� ���� � �������� � ������.
wait 1s
mecho �� ������������ ������ ������ ���� ����� �� ����� ����.
wait 6 
mecho �� ����� �� ��������� ������ �������.
mteleport all 61477
calcuid room61477 61477 room
attach 61418 %room61477.id%
exec 61418 %room61477.id%
wait 1
mpurge %self%
~
#61418
(!!!� ������� ��� � �����!!!)~
2 z 100
~
wload mob 61417
calcuid mob61417 61417 mob
attach 61419 %mob61417.id%
exec 61419 %mob61417.id%
detach 61418 %self.id%
~
#61419
��������� ����� ���~
0 z 100
~
wait 1s
� ��� ��, ������� ���������.
wait 3
� ����� ��������� �������, ��� �� ����� � ������� � ����� �������.
mecho ���� ���, ������ �������, �������� � ���� ����.
wait 1
mpurge %self.id%
~
#61420
����� � ����~
2 c 0
����� �������~
if !%arg.contains(����)%
  wsend %actor% ���� �� ������ �������?
  return 1
  halt
end
wait 5
wsend %actor% �� ������� �������� ���� � ������� ������.
wechoaround %actor% %actor% ������%actor.g% �������� ���� � ������ �����%actor.q% � ����.
wait 1s
wteleport %actor% 61462
~
#61421
����� � ����~
2 c 0
������� ~
if !%arg.contains(����)%
  wsend %actor% ��� �� ������ �������?
  return 1
  halt
end
wait 2
wsend %actor% �� ������ ��������� ����� � ������� �����, �� ������� ����� ��������� � ������� ���.
wechoaround %actor% %actor.iname% � ����� ������������� �����%actor.g% ������� ����.
wait 2
wechoaround %actor% %actor.name% ��������%actor.g%, ��� ������ ����� ������ � �������%actor.g% ���������� ���.
wsend %actor% ����� ����� �� �������� ��������� ��� � � ������ �������� ���������� ���.
wdoor 61452 down room 61470 
wdoor 61470 up room 61452
detach 61421 %self.id%
~
#61422
������� �������~
0 q 100
~
wait 4
��� .%actor.name%
~
#61423
����� ��������~
0 r 100
~
wait 3
� �� ��� ���� �������%actor.u%, ������?!!
wait 2
� ������! ������! �������� ����!
wait 2
mecho ��������� ��������� �� ����� ����������.
mload mob 61424
mload mob 61424
detach 61423 %self.id%
~
#61424
������� ������~
0 q 100
~
wait 2
� ����, ��� ����?!
wait 3
� ����������� �����, ���������� ������ ��� �� ����������.
~
#61425
��������~
0 b 100
~
wait 3
�� ������� ����� � ����� ������������ ����� ��� ����
~
#61426
������ �����~
0 b 20
~
� �����! ���� �����!
���
~
#61427
������ ������~
0 j 100
~
if (%object.vnum% != 61400)
  wait 2
  � ����� ��� ���?
  � � � ���� ����� ��������.
  drop all
  ���
  halt
end
if !(%questor614.id% == %actor.id%)
  mecho �������� �������� ���������.   
  wait 1s
  if (%actor.sex% == 2)
    � ������� ����, ������ ������.
  else
    � ������� ����, ������ �������.
  end
  wait 2
  mecho �������� �������� ��������� ���� ��� �� ��������� �����.
  mpurge %object%
  wait 4
  mecho ����� �������� ���������� � ����� � ��� �� ������ � ���� ������� ����.
  mtransform 61431
  �����
  mecho �������� ������� �������� ����� ������� �����.
  mecho ������ �������� � ��������� ������ � �����.
  mecho ������ �������� ������� � ���������� �� �������.
  calcuid abcd 61400 mob
  mpurge %abcd.id%
  mload mob 61432
  halt 
end
wait 2
� �� ����� ����!!
� � �� ���� ����� ������!
����� .%questor614.name%
� �� ������%questor614.g% ���?!
� ������ ��������, ��� �� ��� ������...
mecho �������� �������� ��������� ���� ��� �� ��������� �����.
mpurge %object%
wait 1s
� �-�...
� ������ �� �������%questor614.g% ���� ��������?!
� ��� ��� �� ��� ��������%questor614.g%, ��� ��� ����� ����?!
wait 4
mecho ����� �������� ���������� � ����� � ��� �� ������ � ���� ������� ����.
mtransform 61431
wait 2
�����
mecho �������� ���������� ���������.
� ������, ��� �� ������� ����, %questor614.iname%, ������� ���� ��������.
mecho �������� ������� �������� ����� ������� �����.
wait 2
mecho ������ �������� � ��������� ������ � �����.
mecho ������  �������� ������� � ���������� �� �������.
calcuid abcd 61400 mob
mpurge %abcd.id%
mload mob 61432
wait 4
switch %random.4%
  case 1
    set msg ������ � ������������� ��� ������, �� ������������ ����� �������!
    set prize 61421
  break
  case 2
    set msg ��� �������� - ��� ��������� �����, � � � �������� ���� �� ����!
    set prize 61404
  break
  case 3
    set msg �� - �������� �������� ����, �����, ��� ������ ���������� ����!
    set prize 61410
  break
  case 4
    set msg ���������� �� ����, ���� ���� ������������ ��� ����!
    set prize 61416
  break
done
if (%world.curobjs(%prize%)% < 2) && (%random.100% <= 10)
  � %msg%
  mload obj %prize%
  give all .%actor.name%
else
  � � ��������� ��� ����� ������������� ����, ����� �����.
  eval temp %actor.gold(+3000)%
  wait 2
  � ������ � ���, �� ������ �������� ������!
end
detach 61427 %self.id%
~
#61428
����� ����~
2 c 0
������� �������~
if !%arg.contains(����� ����)%
  wsend %actor% ��� �� ������ ������� ?  
  return 1
  halt
end
wait 4
wsend %actor% ����� ��������� �������� �� ������ � ������� ����� � �������� �������...
wsend %actor% �� ������� ������ ����� ����� ����.
wechoaround %actor% %actor.iname% ������%actor.g% ����� ���� �� ������� �������.
wload obj 61400
calcuid vedro 61400 obj
eval temp %vedro.put(%actor%)%
~
#61429
������~
0 b 100
~
wait 4
� ��� - ���!
~
#61430
����� � ����(� ���� �����)~
2 c 0
����� ������� ��������~
if !%arg.contains(����)%
  wsend %actor.name% ���� �� ������ �������?
  return 1
  halt
end
wait 5
wsend %actor% �� ���������� �� ���� ���������� ���� � ����� �������� �����.
wechoaround %actor% %actor.iname% �������%actor.u% �� ���� ���������� ���� � ������%actor.q% ������.
wait 1s
wteleport %actor% 61462
~
#61431
����� �� ����~
2 c 0
������� ����� ������~
if !%arg.contains(������)%
  wsend %actor% ���� �� ������ �������?
  return 1
  halt
end
wait 5
wsend %actor% �� ������� �������� ���� � ������� ������.
wait 1s
wteleport %actor% 61463
wechoaround %actor% %actor.iname% ������%actor.g% �������� � ������ �����%actor.q% �� ����.
~
#61432
����� �������~
1 j 100
~
wait 20
if (%actor.canbeseen%)
  *���� �� ���� no target found for osend
  oechoaround %actor% %actor.iname% ������%actor.u% � ������ �� ������� ������� ������ ������� �� ������.
  osend %actor% ������ ������ �����������, ������ ��� ��� ������.
end
~
#61433
������� �� ����~
2 c 0
�������� ���������~
if !%arg.contains(����)%
  wsend %actor% ���� �� ������ ���������?
  return 1
  halt
end
wait 5
wsend %actor% �� ��������� ����.
wait 1s
wteleport %actor% 61475
wechoaround %actor% %actor.iname% �������%actor.u% ������.
~
#61434
����� ������~
0 q 100
~
wait 4
���
~
#61435
����������� ������ �������~
0 q 100
~
makeuid proklyatiy614 %actor.id%
worlds proklyatiy614
attach 61437 %proklyatiy614.id%
wait 2
� ������ ����.
wait 1
� ������ ���, �������, ������, � ���� � ���������.
wait 2
� ������ ���, ������ � �� �����.
����
���
� �� ������ � ������, ��� ��� 50 ���, ���� � ���� � ���� ������.
attach 61436 %self.id%
detach 61435 %self.id%
~
#61436
���� ����� �������~
0 m 1
~
if (!%actor.name%)
  halt
end
if (%amount% > 49)
  wait 3
  if (%actor.sex% == 1)
    � �������, �����, ������ ������ ����� �������, � � ����� �����.
  else
    � �������, �����, ������ ������ ����� �������, � � ����� �����.
  end
  mecho ������ �������� �����.
  detach 61437 %actor.id%
  dg_cast '����' %actor% 
  dg_cast '������' %actor% 
  dg_cast '�����' %actor% 
  ����
  unset proklyatiy614
  attach 61435 %self.id%
  detach 61436 %self.id%
else
  wait 2
  ���
  wait 3
  � ����������%actor.g% ��� �������?!
  wait 2
  � �� ���� �� �������%actor.g% �����!
  attach 61437 %actor.id%
  attach 61435 %self.id%
  detach 61436 %self.id%
end
~
#61437
���������(�� ����������)~
0 b 0
~
���
****��� ��� ����� ��������� ����, � ������ ��� ���.****
~
#61438
������ �������~
0 f 100
~
detach 61437 %actor.id%
~
#61439
��� � �����~
2 c 100
����������� ����������~
wait 5
wsend %actor% � ����� ����������� ���������� ��� �� �����������.
wsend %actor% �� ����� ������������ ������ ���.
wsend %actor% �� ������ � ��� �� ����� ����� ����, � �� ����� ��� ������� ������������ �������.
wsend %actor% �� ��� ����� ���������, � �� ��� ������ �������, �������������� �� ��.
~
#61440
������ �������~
0 f 100
~
if (%random.100% < 15) && (%world.curobjs(61403)% < 2)
  mload obj 61403
end
~
#61441
������ �����~
0 f 100
~
if (%random.100% < 20) && (%world.curobjs(61412)% < 3)
  mload obj 61412
end
~
#61442
������ �����~
0 f 100
~
if (%random.100% < 15) && (%world.curobjs(61405)% < 3)
  mload obj 61405
end
~
#61443
������ ����~
0 f 100
~
if (%random.100% < 15) && (%world.curobjs(61407)% < 3)
  mload obj 61407
end
~
#61444
������ ������~
0 f 100
~
if (%random.100% < 15) && (%world.curobjs(61415)% < 3)
  mload obj 61415
end
if (%random.100% < 30) && (%world.curobjs(61419)% < 2)
  mload obj 61419
end
~
#61445
������ ������~
0 f 100
~
if (%random.100% < 15) && (%world.curobjs(61411)% < 2)
  mload obj 61411
end
~
#61446
���� ��������~
0 n 100
~
if (%random.100% < 10) && (%world.curobjs(61409)% < 2)
  mload obj 61409
end
if (%random.100% < 20) && (%world.curobjs(61413)% < 4)
  mload obj 61413
end
~
#61447
���� ���������~
0 n 100
~
if (%random.100% < 25) && (%world.curobjs(61406)% < 5)
  mload obj 61406
end
~
#61448
���� ������~
0 n 100
~
if (%random.100% < 15) && (%world.curobjs(61420)% < 3)
  mload obj 61420
end
~
#61449
new trigger~
0 g 100
~
if (%random.100% < 10) && (%world.curobjs(61408)% < 2)
  mload obj 61408
end
~
#61450
���� �������~
0 n 100
~
if (%random.100% < 15) && (%world.curobjs(61417)% < 3)
  mload obj 61417
end
~
#61451
���� ������~
0 n 100
~
if (%random.100% < 10) && (%world.curobjs(61418)% < 2)
  mload obj 61418
end
~
#61453
���� ���~
0 n 100
~
if (%random.100% < 10) && (%world.curobjs(61418)% < 2)  then
  mload obj 61418
end
~
$~

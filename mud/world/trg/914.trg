#91400
���� �������� ���~
0 f 100
~
if (%world.curobjs(91408)% < 4) && (%random.8% == 1)
  mload obj 91408
end
~
#91401
������ �������~
0 f 100
~
if (%world.curobjs(91413)% < 4) && (%random.9% == 1)
  mload obj 91413
end
if (%random.10% == 1)
  mload obj 590
end
~
#91402
���� ����~
0 f 100
~
if (%world.curobjs(91411)% < 21) && (%random.11% == 1)
  mload obj 91411
end
~
#91403
���� �������~
0 f 100
~
if (%world.curobjs(91414)% < 5) && (%random.14% == 1)
  mload obj 91414
end
~
#91404
���� ��������~
0 f 100
~
if (%world.curobjs(91415)% < 15) && (%random.6% == 1)
  mload obj 91415
end
~
#91405
���� ��������~
0 f 100
~
if (%world.curobjs(91416)% == 0) 
  mload obj 91416
end
~
#91406
���� �������� ���2~
0 f 100
~
if (%world.curobjs(91408)% < 4) && (%random.20% == 1)
  mload obj 91408
end
~
#91407
���� ������� ����~
0 f 100
~
if (%world.curobjs(91422)% < 10) && (%random.18% == 1)
  mload obj 91422
end
~
#91408
������� ����~
2 c 1
�������~
if !(%arg.contains(����)%)
  wsend %actor% ���� ��� �� ������ �������???
  return 0
  halt
else
  if %actor.fighting%
    wsend %actor% �� �� ������ ������� ���� ����������.
  end
  wsend %actor% �� ������� � ������ � ������  �������������� � ����.
  wechoaround %actor% %actor.name%, ������ � ������.
  wait 1s
  if %random.3% == 1
    wteleport ����������_91433 91421
  elseif %random.3% == 1
    wteleport ����������_91432 91421
  elseif %random.3% == 1
    wteleport ����������_91431 91421
  end
  wsend %actor.name% .- ������ �� �������� ��� ��������...
  wteleport %actor% 91421
  wat 91421 wforce ����������_ �� %actor.name%
  wat 91421 wechoaround %actor% ���-�� �������� �� ������.
  %actor.wait(8)%
end
~
#91409
����� � ���������~
0 q 100
~
mecho _��������� ���������� �� ��� � ������� ����������.
wait 1s
say ��� ���� ����� ������
say �� ������, ��� ���� �������
attach 91410 %self.id%
detach 91409 %self.id%
~
#91410
������ ��������� ��� ����~
0 d 1
���� ���� ��������� ������~
wait 1s
mecho _��������� ������� �� ������� ��������� ������ � �������� ��� ���.
wait 1s
say ���� ��� ��?
mload obj 91400
say � ������ ��� ��� ����?
wait 1s
mecho _��������� ����������
wait 2s
say �����, ��� ��� �������� ��� ����������, ����� �� ���� ��������
wait 1s
say ��� �����-�� ������� ������� ���� � ����, � ��� ���� � ������ ������� �� ����
say ������ �������, �����, � ���� �� ���� ����� ���� ��� � �������������
wait 1s
�����
say � � ���� ��� ������� �� ����� ������� ������� ��������
say ��������� ���� - � ����������.
attach 91411 %self.id%
detach 91410 %self.id%
~
#91411
���� ���� ���������~
0 j 100
~
if %object.vnum% == 91401 then
  wait 2s
  mecho _��������� ����������� ��������� ����
  wait 1s
  say ���� ��. ��� �����. 
  wait 1s
  say ��... ������� ���� �������...
  ���� ���� %actor.name%
  say � �������� ���������� ����
  wait 1s
  mecho _��������� ��������� � ����������� � ������.
  calcuid znak 91401 obj
  mpurge %znak%
  detach 91411 %self.id%
else
  wait 1s
  say �� �������� ���� �����!!!
  wait 2s
  mkill %actor.name%
  detach 91411 %self.id%
end
~
#91412
����� ���������~
2 f 100
~
calcuid velik 91412 mob
detach 91409 %velik.id%
detach 91410 %velik.id%
detach 91411 %velik.id%
attach 91409 %velik.id%
calcuid strazh 91400 mob
detach 91413 %strazh.id%
detach 91414 %strazh.id%
attach 91413 %strazh.id%
wdoor 91497 east purge
~
#91413
����� � ���������� ������~
0 q 100
~
wait 1s
mecho _�������� ��������� ����� ����� ���� ������������.
wait 1s
say ����������� ���!
say ����� ����� �� �������� ���� � ���� ������� �������.
wait 1s
say � ��� � ������ ������� ������� �������� ���� �������...
say �� ��� ����� �� ���������?
wait 2s
mecho _����� ����������� � ���������� ��������� �� ���.
say ������, ��� �� ���������� - ��� ��� ��������.
say � ��� �������� �� �������� ������, � �� ������� ������������ ��������.
say ������� ������, ����������� ����, � ������...
wait 1s
say � ��� ���� ������� ������ ����������.
wait 3s
say ���� ������, �� ����� ��������� ��� �����, ��� � ������� ���� �����.
say � ���� �� ��� �� ���������, ��������, � ��� �� ���� ��� ��� � ������.
wait 1s
say ���� ������, %actor.name%, ����� �����, �����, ������ � ���.
say ��� �� ����� �� � ����, ���� ������ ���������, �����, ����� � �� ������.
wait 1s
say ���� ��������� ������, � ������ ������.
attach 91414 %self.id%
detach 91413 %self.id%
~
#91414
��� ��������� ������ ������~
0 j 100
~
if %object.vnum% == 91400 then
  wait 1s
  msend %actor% �� �������� ��������� ������ ������.
  wait 1s
  say ��, ��� ��
  wait 1s
  say �����������, ������ � ������ ������
  wait 2s
  mecho ������� ����� �������� ������������.
  mecho ����� ���������� ����������� ����� ��������� ��� � ����� ������.
  mdoor 91497 east room 91550
  wait 1s
  mat 91550 mecho ���-�� �������� ���� �� ������� �����.
  mteleport all 91550
  detach 91414 %self.id%
else
  wait 2s
  say ���, ���� � ������ ������� �� �����
  wait 1s
  say ������� ���-������ ������
  ��� ���
  mjunk all
end
~
#91415
������� ����� �������~
0 q 100
~
wait 1
mecho _���� �������� � ������� � �������� �� ���.
mkill %actor.name%
wait 14s
if (%actor.realroom% == %self.realroom%)
  mechoaround %actor.name% ���� ����� ������� �� %actor.vname%, ������� %actor.vname% ��������� ������, � ������ � ���
  msend %actor.name% ���� ����� ������� �� ��� � ������.
  msend %actor.name% �� �������� ��������.
  mteleport %actor% 91457
  mteleport ���_91418 91456
end
detach 91415 %self.id%
~
#91416
������ ���������~
0 f 100
~
if (%world.curobjs(91400)% == 0)
  mload obj 91400
end
~
#91493
������� �������� ���� � �������~
2 z 100
~
log &R�������� ���������� ������ �� %self.vnum% � %eroom% !!!&n
wecho ________ &C ������������ ����� ��������� � [ &W%eroom%&C] !!! &n
wdoor %self.vnum% down room %eroom%
wait 7s
wdoor %self.vnum% down purge
unset eroom
detach 91493 %self.id%
~
#91494
������� ����������������~
1 c 1
������~
if !%actor.name%
  oecho �������� �������, �� ?
  halt
end
log &R%actor.name% �������������� ���������� ��������!&n
set sroom %actor.realroom%
calcuid rum %sroom% room
set eroom %arg% 
remote eroom %rum.id%
attach 91493 %rum.id%
exec 91493 %rum.id%
wait 7s
halt
set staff 110310
set i 2000
while %staff% < 110366
  while %i% > 1
    eval i %i% - 1
    wait 2
    calcuid stf %staff% obj
    opurge %stf%
  done
  eval staff %staff%+1
done
~
#91495
������ ��������~
2 c 100
���������~
halt
if %actor.name% == �����
  %actor.exp(+400000)%
end
~
#91496
����������� ��������� �������~
1 c 4
*~
if %actor.name% == %caster.name%
  oforce %actor% %cmd%
else
  halt
end
~
#91497
������ ��������� �������~
1 hi 100
~
set caster %actor%
remote caster %self.id%
attach 91496 %self.id%
if %victim%
  log &r%actor.name% �����������%actor.g% &W��������� �������&r �� %victim.name%!&g
else
  log &r %actor.name% �����������%actor.g% &W��������� �������&r � ������� %caster.realroom%!&g
end
wait 30s
opurge %self%
~
#91498
���������� � 91499~
1 c 1
�������~
*calcuid nabeg 91583 room
*exec 91502 %nabeg.id%
*calcuid glashat 27017 mob
*attach 91425 %glashat.id%
calcuid blakraid 91510 mob
exec 91534 %blakraid.id%
~
#91499
����� ����� ��������~
0 c 1
������~
if %cmd% == ������
  * %arg%
end
log &R%actor.name% ����������� ���-����! (%arg%)&n
~
$~

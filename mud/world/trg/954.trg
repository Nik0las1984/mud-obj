#95400
������ ����� (1)~
2 c 100
�����~
if !%arg.contains(�����)% 
  wsend %actor% � ���� ��?
  halt
end
wait 1
if %actor.move% < 80
  wsend %actor% _�� ������ ����������� �� �����, �� �� ������� ���� �������� ���, � �� ��������� ����.
  wechoaround %actor% %actor.name% �����%actor.q% ����� �� �����, �� ������%actor.u% � ������%actor.g% �� �����.
  %actor.position(2)%
  %actor.move(0)%
  wdamage %actor% 100
  halt
end
eval buf %actor.move(-80)%
wsend %actor% _�������� �� ����� �� ������ �������� ����������� �����.
wechoaround %actor% %actor.name% �����%actor.g% �������� ���������� �����.
wteleport %actor% 95411
wechoaround %actor% _���-��, �������� ������� ����� ����, ������ ��-�� �����.
end
~
#95401
������ ���� (1)~
2 c 100
����������~
wait 5
wsend %actor% �� ������ �������� ���������� ����.
wechoaround %actor% _%actor.iname% �����%actor.g% �������� ���������� ����.
wteleport %actor% 95410
wechoaround %actor% _���-�� � ����� ����� ���� ������.
~
#95402
������� ������ �� �����~
2 c 100
�������~
if !%arg.contains(������)%
  wsend %actor%  ��� �� ������ ��������?
  halt
end
if %actor.str% > 24
  wait 5
  wsend %actor%  �������� �� ���� ������ �� �������� ������...
  wechoaround %actor%  %actor.name% �������%actor.q% ������...
  wecho ___...����� ���� �� ����!!!
  eval dmg %actor.hitp%/3
  wdamage %actor% %dmg%
else
  wsend %actor%  �� ���������� �������� ������ �� ���� �� �����������.
  wechoaround %actor%  %actor.iname% �������%actor.u% �������� ������,
  wechoaround %actor%  �� ����� %actor.iname% ��� ����� ������� ����%actor.g%.
end
~
#95403
����� ������ ���� � �����~
0 f 100
~
mload obj 95405
~
#95404
����� � ��������� �������~
0 q 100
~
wait 5
mecho _�������� ������:
mecho _- � ����, ��� ���-�� ������ �� ����� ����� �������� ������� !
mecho _- � � ������������ � ���� �������...
mecho _- �� �����, ��� � ���� ������ �������, ��� ����� �� ����� !!!
detach 95404 %self.id%
~
#95405
������� � ����~
0 r 100
~
wait 1
mecho ������ ��� ��� ���������� ��������.
wait 3
say �� �������-��!
mecho _- ������� �� ����� ������� ���?!
���
say ����������, ������ �� ��� ��������� �� ����� �� ���� ������������
mecho _- ����� �������������� �������� ��� �.
mecho _- ��� ��� ���� ��� ���� � ����� ����.
wait 1s
���
say ���, � �������������� ����������...
mecho _- ��� � ��� ��������, ��� ������������ �����... ����� &K��������&n ��������
mecho _- � ����� ��������� �����-���� �������� � �����������.
wait 2s
���
say ����.. � �������.
mecho _- ����� ��������, ������ ������ �������, �������� ���� ������� �����.
mecho _- ������� ���� �������, �� �������� �������� � ���� ����� ����� �����.
mecho _- ��� ������ ��������� �������������� - ��� ��� ��������� ������ ������.
���
say ���� ����, ������� ��������� �������� ���� �� �������������� ������ �������!
����
wait 2s
say ����-�����, �������� �������� ������ ���� ��������...
mecho _- �������� �� ���������� ��������� ������������ ������������, �� ������ ��� ���� ������.
mecho _- ����� �������, � ������� ���.
wait 3
mecho _- ����� ������ ����� � ���� � �����, ���� ������... 
emot �������� ������������ �������� ����� �������...
mecho __________________&K... � � ������� ��������� &r�������� �����������.&n
mload obj 95480
say ������� ���� ������ � �����.
mecho ������ ��� ���������� � �����������, �� ���������� ���������� � ������ ����� ����� :
mecho _- �� ���� ����� �����, ��� �� ������� ������� ���� �������� �������� ����.
mecho _- �����, ���� ����� �������� ���.
emot ������ � ����������� � �����, ������� ������ ������� ����
wait 1
mpurge %self%
~
#95406
�����~
2 f 100
~
context 954
unset roundstones
eval roundstones 0
worlds roundstones
calcuid conj 95406 mob
detach 95436 %conj.id%
attach 95436 %conj.id%
~
#95407
����� ����� ���~
2 c 1
����� ��������~
if (!%arg.contains(���)%)
  wsend %actor% �� ���� ����, ������ ����?
  halt
end
if (%actor.fighting%)
  wsend %actor% ����, ��, ��������, ��������!
  halt
end
if (%actor.move% < 50)
  wsend %actor% _�� ������� � ����� ���, �� ������ ������, ��� ��� �� ������ ��� �������� �� �����.
  wsend %actor% _�� ��������� �����.
  wechoaround %actor% %actor.iname% �����%actor.q% ���� � ������ ���, ��, ����� �����������, �����%actor.q% �����.
  eval temp %actor.move(0)%
  halt
end
wsend %actor% _�� ������� � ����� ���.
wsend %actor% _��������� � �����, �� ���������� ��� �������.
wechoaround %actor% %actor.name% �����%actor.q% � ������ ���.
eval temp %actor.move(-50)%
wechoaround %actor%  %actor.name% ������%actor.u% �� ������� ����.
if (%actor.realroom% == 95418)
  wteleport %actor% 95480
else
  wteleport %actor% 95418
end
~
#95408
������� ����� �������� �� ������~
2 c 100
��������~
wait 1
wechoaround %actor% _%actor.name% ������%actor.u% �� ������� � � ������ �������%actor.g% ����� ������.
wsend %actor% _�� ��������� �� ������� � �������� ����� ������.
wteleport %actor% 95424
eval chanse %random.10%*(%actor.dex%+%actor.dexadd%)
if %chanse% < 92 
  wsend %actor% _�������� � ������ ������� ����� �� �� ������ ������� ��������� �������
  wsend %actor% _� � ������� ��������� � �������� ������ !
  wechoaround %actor% ~~%actor.name% ��������%actor.g% � ������, �� �� ����� ������� ��������� �������, ������%actor.u% � ������ !
  wdamage %actor% 200
else
  wsend %actor% _�� ������������ ������������ �� ������ ������� �������.
  wechoaround %actor% ~~%actor.name% ��������%actor.g% � ������ � ����� ���������%actor.u% ��� ������.
end
~
#95409
������� ����� �������� �� �����~
2 c 100
��������~
wait 1
wechoaround %actor% _%actor.name% ������%actor.u% �� ������� � � ������ �������%actor.g% ����� ������.
wsend %actor% _�� ��������� �� ������� � �������� ����� ������.
wteleport %actor% 95423
eval chanse %random.10%*(%actor.dex%+%actor.dexadd%)
if %chanse% < 95
  wsend %actor% _�������� � ������ ������� ����� �� �� ������ ������� ��������� �������
  wsend %actor% _� � ������� ��������� � �������� ������ !
  wechoaround %actor% ~~%actor.name% ��������%actor.g% � ������, �� �� ����� ������� ��������� �������, ������%actor.u% � ������ !
  wdamage %actor% 200
else
  wsend %actor% _�� ������������ ������������ �� ������ ������� �������.
  wechoaround %actor% ~~%actor.name% ��������%actor.g% � ������ � ����� ���������%actor.u% ��� ������.
end
~
#95410
����� � ��������� ���������~
0 r 100
~
wait 15
mecho _�������� ��������� ������ ��������� �� ���.
mecho _- ���� ��������!
mecho _- ��������!
mecho _- ����� �� ������� ����?
���
wait 20
mecho _- �� ������� �� ��, ��� ������� �������� ����?
���
detach 95410 %self.id%
~
#95411
����������� ���� � ��������� ���������~
0 p 30
~
msend %damager% ��� �������� �������� ��������� ��������� ���� ���� ���������� ������������ ���!
mechoaround %damager% %damager.iname% �� ����%damager.g% ��������� ����� ��������� ���������.
~
#95412
�������� ����� ��������� ���������~
0 k 100
~
* ���� �������� ���� �����, �� ������� �������
if %self.hitp% < 300
  mecho _�������� ��������� ������ ��������� �� ��������.
  mecho _- � ���� ��� ��� �� ���� �� ����.
  mecho _- ���� ��� ��� �� ��������.
  mecho _- �� �� ��� ���������� !
  mteleport %self% 95478
  detach 95411 %self.id%
  attach 95413 %self.id%
  detach 95412 %self.id%
end
~
#95413
������ ��� ��������� ��������� ���������~
0 r 100
~
wait 10
mecho _�������� ��������� ����������� ������ � ���� �������.
mecho _- ���� ���� ����� ����� ������ � ��������� �������!
mkill %actor%
detach 95413 %self.id%
~
#95414
������ ����� (2)~
2 c 100
�����~
wait 1
if !%arg.contains(�����)% 
  wsend %actor% � ���� ��?
  halt
end
wait 1s
wsend %actor% _�������� �� ����� �� ������ �������� ����������� �����.
wechoaround %actor%  %actor.name% �����%actor.g% �������� ���������� �����.
wteleport %actor% 95410
wechoaround %actor% _���-��, �������� ������� ����� ����, ������ ��-�� �����.
~
#95415
������ ���� (2)~
2 c 100
����������~
wait 5
wsend %actor% �� ������ �������� ���������� ����.
wechoaround %actor% _%actor.iname% �����%actor.g% �������� ���������� ����.
wteleport %actor% 95409
wechoaround %actor% _���-�� � ����� ����� ���� ������.
~
#95416
������ ���� ������������ �������~
0 k 40
~
flee
flee
wait 2
if %self.fighting%
  halt
end
calcuid selfroom %self.realroom% room
set roomnorth %selfroom.north%
set roomeast %selfroom.east%
set roomsouth %selfroom.south%
set roomwest %selfroom.west%
stand
set dir 0
if %roomnorth.pc% && !%dir%
  set dir north
end
if %roomeast.pc% && !%dir%
  set dir east
end
if %roomsouth.pc% && !%dir%
  set dir south
end
if %roomwest.pc% && !%dir%
  set dir west
end
sneak
%dir%
look
look
hide
set target %random.pc%
if %target%
  mkill %target%
end
~
#95417
�����-������ ��������� �����~
0 k 40
~
set victim %random.pc%
switch %random.3%
  case 1
    msend %victim% __�������� ���� ����� ����� � ��� ������ ��������.
    mechoaround %victim% __�������� ���� ����� ����� � %victim.vname% ������ ��������.
    msend %victim% __��������� �� ����� � �����, �� ������� �� �����!
    mechoaround %victim% __�������%victim.w% �� ����� � �����, %victim.name% ������%victim.g% �� �����.
    %victim.wait(8)%
    %victim.position(2)%
  break
  case 2
    *set victim %random.char%
    msend %victim% __�������� ���� ����� ������ � ��� ����!
    mechoaround %victim% __�������� ���� ����� ������ ���� � %victim.vname%!
    dg_cast '��' %victim%
    dg_cast '�������' %victim%
    dg_cast '�������' %victim%
  break
  case 3
    set victim2 %random.pc%
    set victim3 %random.pc%
    mecho __�������� ���� ������ �� ���� �������, � � ������� ������� ��������� �������� ����!
    mechoaround %victim%   ����� ����� ������� �� %victim.vname%!
    msend %victim% __�������� �������� ����� ������� �� ���!
    eval dmg 100+%random.100%
    mdamage %victim% %dmg%
    %victim.wait(2)%
    %victim.position(2)%
    mechoaround %victim2%   ����� ����� ������� �� %victim2.vname%!
    msend %victim% __�������� �������� ����� ������� �� ���!
    eval dmg 100+%random.100%
    mdamage %victim2% %dmg%
    %victim2.wait(2)%
    %victim2.position(2)%
    mechoaround %victim%   ����� ����� ������� �� %victim2.vname%!
    msend %victim% __�������� �������� ����� ������� �� ���!
    eval dmg 100+%random.100%
    mdamage %victim2% %dmg%
    %victim2.wait(2)%
    %victim2.position(2)%
  done
~
#95418
���� ����� � ������ �����~
2 z 100
�������� ������ � �����~
wload obj 95470
wload obj 95471
~
#95419
�������� ���� ������~
0 j 100
~
wait 1
if %object.vnum% != 95470
  wait 1
  mpurge %object%
  mecho ������� ������� %object.name% � ��������.
  halt
end
wait 1
mpurge %object%
wait 2s
sit
mecho _������� ������� � �������� ����������� ������ �� �����.
mtransform 95442
wait 12s
mecho _������� ����� ������� ���-��� ��������� ������ �� ������� ���.
wait 3
���
wait 4
emot �������� ������
mtransform 95443
stand
set target %random.pc%
if %target%
  mechoaround %target% __������� ������� %target.vname%!
  msend %target% __������� ������� ���!
  wait 1
  ���� 
  mkill %target%
end
wait 300s
if !%self.fighting%
  mjunk all
  mecho ������� �������, ����� �������� ���� �� ����� � �����.
  wait 1
  mpurge %self%
end
~
#95420
������� ����� �������� - 2~
0 b 20
~
kill blackgiant954
~
#95421
�������� ��������~
0 l 70
~
mecho __%self.name% �������� � ������� � ������ �� ����� ������� �����.
mecho %self.name% ���� ������� ����� � ����� ����.
mecho %self.name% ������ ������� �����.
%self.hitp(%self.maxhitp%)%
~
#95422
������� ����� ��������~
0 b 20
~
kill whitegiant954
~
#95423
������� ���� ������~
0 l 50
~
mecho __%self.name% �������� � ������� � ������� ��������� � ���������� ������.
���� potion954
%self.hitp(1000)%
detach 95423 %self.id%
~
#95424
������ ��������� � ���������~
0 k 10
~
switch %random.2%
  case 1
    mecho __%self.name% ������� �� ���������� ����������� ����!
    mecho __&Y��������� ����� ���������� � ����������.&n
    masound __���������� ������ ������� � ������!
  break
  case 2
    mecho __%self.name% �������� �������� ������ ����!
    mecho __&Y������� ������ ��������� � ��������� ������� ������.&n
    masound __���������� ����� � ������ ������ ��������� � ������.
  break
done
~
#95425
�������� ���� ������~
0 j 100
~
wait 1
if %object.vnum% != 95472
  drop %object.name%
  halt
end
detach 95421 %self.id%
attach 95423 %self.id%
~
#95426
���� �������~
0 f 100
~
if %self.vnum% == 95444
  calcuid giant 95445 mob
else
  calcuid giant 95444 mob
end
exec 95427 %giant.id%
if (( %world.curobjs(95457)% < 3 ) && (%random.100% < 12))
  mload obj 95457
end
~
#95427
������� ������~
0 z 0
~
wait 1
�����
����� �� ��� � ������ ���� �����!!!
wait 2
���
wait 2
�������
�����
wait 2
emot ����� ���������, �, �� �����������, ���� �� ����� ����
���� ���
mjunk all
wait 1
mpurge %self%
~
#95428
���� ���. ����~
0 f 100
~
mecho _&c���� ������ ������ � ������� � ������.&n
mecho _&c�������� ��������� ��� ����������� ��������� � �������� ����.&n
mecho _&c���-�� ������ �� ����.&n
calcuid spiderroom 95460 room
exec 95418 %spiderroom.id%
~
#95429
����� ������~
1 g 100
~
context 954
if (( %actor.vnum% != 95446 ) && !%actor.quested(95400)%)
  osend %actor% ��� ������� ��� ������ ����� ������� �������.
  return 0
  halt
end
eval roundstones %roundstones%+1
worlds roundstones
if %roundstones% > 3
  osend %actor% ��� ���� ������ - �� ������ ���� ������... �� ����� ��� ����� ����������.
  return 0
  halt
end
if (( %world.curobjs(95478)% == 1 ) && ( %actor.vnum% != 95446 ))
  calcuid deav 95446 mob
  exec 95434 %deav.id%
end
wait 1
osend %actor% ������� ������� �������� � ���������� � ����.
wait 1
opurge %self%
~
#95430
��������� ����~
0 l 100
~
����
stand
wait 2
����� � �� ��� - ������!
emot ������� �� ��� � �������� ������������� ���������
foreach target %self.pc%
  dg_cast '����� ��������' %target%
end
~
#95431
���� �� ���� � ����~
0 q 100
~
wait 1s
if %self.fighting%
  halt
end
���
say �������!
mecho _- ���, ���� ������ �������?
mecho _- � ���� ��� �������� ���, �� ��������� �� ������ ������.
���
wait 2s
emot ��������� ������� �������� ����� ����
say �� �����, ��� � ����... C����� ���.
mecho _- ������� � ���� � �����.
mecho _- ������� ���� �������, ��� � ���� - �������.
mecho _- �����?
attach 95432 %self.id%
detach 95431 %self.id%
~
#95432
������ ���� � �����~
0 d 0
����� �������� �������� �����~
wait 1
if %actor.vnum% != -1
  halt
end
say ��� ��� ������.
mecho _- ����� � �������� ������.
mecho _- ������ ���� �����, ��� ��� ��� ��� - �� �� �����.
mecho _- ����� � ����.
wait 1s
say ��� ��������� ������� - ��� � ��������.
mecho _- ��������� - ������� ���� �����������.
mecho _- ���������� - ����������, ������ ����%actor.y%.
mecho _- ��� �� �����%actor.g%? 
wait 4
say �� ��� � ����������.
foreach gamer %self.pc%
  %gamer.unsetquest(95400)%
done
%actor.setquest(95400)%
eval maxstones 18+%random.5%
eval i %maxstones%
while %i% 
  mload obj 95478
  eval i %i%-1
done
attach 95433 %self.id%
drop all
wait 1
if %random.100% < 51
  say �� ��� - �������.
  say ��� ��������, ������� �����%actor.g%, �������, ��� ��� ���.
else
  exec 95433 %self.id%
end
detach 95432 %self.id%
~
#95433
������� "���" (��� ����)~
0 d 1
���~
context 954
if %roundstones% == 0
  say ��� ���� �� ������, ������ ���� �����!
  halt
end
eval roundstones 0
worlds roundstones
eval worldstones %world.curobjs(95478)%
if %worldstones% == 0
  %actor.unsetquest(95400)%
  wait 3
  ���
  say ��� � � �������!
  wait 3
  ���
  say ������-�� �� ���� �� ����, �� � ����� ������� �� ����� �������.
  wait 3
  emot �������� ����� �������� ���������
  attach 95433 %self.id%
  detach 95431 %self.id%
  detach 95432 %self.id%
  detach 95433 %self.id%
end
if %worldstones% <= 4
  eval getstones %worldstones% - 1
else
  eval getstones %random.3%
end
switch %getstones%
  case 0
    get gamestone954
    %actor.unsetquest(95400)%
    say �� ��� �, �������� �...
    ���
    say ������ � �� ������� ������ �������,
    wait 1s
    say �������, ��� ��.
    emot ����������� � ��������
    attach 95433 %self.id%
    detach 95431 %self.id%
    detach 95432 %self.id%
    mtransform 95447
    detach 95433 %self.id%
    halt
  break
  case 3
    get gamestone954
    case 2
      get gamestone954
      case 1
        get gamestone954
      done
      eval roundstones 0
      worlds roundstones
      say ��� - ������ ���� �����.
~
#95434
��� �������~
0 z 0
~
foreach gamer %self.pc%
  if %gamer.quested(95400)%
    %gamer.unsetquest(95400)%
  break
end
done
wait 1s
���
say ��� � � �������!
wait 3
���
say ������-�� �� ���� �� ����, �� � ����� ������� �� ����� �������.
wait 3
emot �������� ����� �������� ���������
detach 95431 %self.id%
detach 95432 %self.id%
detach 95433 %self.id%
~
#95435
������� ����� ������ �� �����~
2 e 100
~
*�� ������ ������
wait 1
if %actor.quested(95400)%
  %actor.unsetquest(95400)%
end
~
#95436
���� � �����������~
0 q 100
~
wait 1
mecho _������ ���������� � ��������� �� ���.
emot ���������� ���������
mecho ����������� ��� �������� ������ : '��� � � ����... ��� ������ ������� �� ��� �������� ������������ �������.'
say �� ��� ��������� �� ����� ����-������ �������...
say &R����� ���!!&n
emot ������ �� ���!
mforce guard95400 mkill %actor%
mforce guard95401 mkill %actor%
cast '����' %actor.name%
detach 95436 %self.id%
~
#95437
���� �����������~
0 f 100
~
*mload obj 95481
if ((%random.1000% < 20) && (%world.curobjs(593)% < 1))
  mload obj 593
end
~
#95438
���� � ������~
1 c 2
�����~
wait 1
if !%arg.contains(�����������)%
  osend %actor% _���� �����-��? (������, ������.. �� ����, ��� �� ��������)
  halt
end
if %actor.realroom% != 95429
  osend %actor% �� �� ������ ����� �����������.
  halt
end
osend %actor% ������� � ����� �������� ������, �� ������� � �����������.
oechoaround %actor% ������� � ����� �������� ������, %actor.name% ������%actor.g% � �����������.
wait 1
eval dmg %actor.hitp%+10
oecho ����������� �������� ��������� ����� ������, � ����������!
osend %actor% ��� �� ������� ����� ���������� � ����� �����.
odamage %actor% %dmg%
oecho _��� �����, ������������� ��� ���-�� �������...
opurge redportal954
wait 1
opurge %self%
~
#95439
�������� ������~
0 f 0
~
if %world.curobjs(95446)% < 6
  mload obj 95446
end
~
#95440
����~
0 o 100
~
*test
~
#95441
���� ����~
0 n 100
~
mload obj 95405
������ ������
������� ������
��� ��� ���.����
��� ��� ������.�����
��� ��� ���.����
��� ��� ������.�����
��� ��� ���.����
��� ��� ������.�����
��� ���
��� ��� ������.�����
��� ���
��� ��� ������.�����
��� ���
��� ��� ������.�����
���� ���
���� ������
����� ������
calcuid key 95405 obj
mpurge %key%
mjunk all
~
#95442
���� �����~
0 ab 100
~
say �� ��������!
set target %random.pc%
backstab �����
wait 1
if !%self.fighting%
  say �� ���������� :(
  ����
end
~
$~

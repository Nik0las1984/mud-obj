#25500
���-�� ���� � ���~
2 e 95
~
wait 1
%echo% ������� ���������� ������ ����� � ����� ��������������� �������...
wait 2
foreach victim %self.pc%
  if (%random.100% < 26)
    eval dmg %victim.hitp%-1
    %send% %victim%  �������� ������ ���������� ������, ����������� ��� �������� ������!
    %echoaround% %victim%  �������� ������ ���������� ������, ����������� %victim.dname% �������� ������!
    %send% %victim%  ��� ��� ������� ���...
    %damage% %victim% %dmg%
    %victim.wait(30)%
    wsend %victim% �� ������!  H�� ����� ����...
    wsend �� �������� 6666666 ����� �����.
    wsend %victim% _
    wsend %victim% 0) �������������.
    wsend %victim% 1) ������ ����.
    wsend %victim% 2) ������ �������� ������ ���������.
    wsend %victim% 3) ������ �������.
    wsend %victim% 4) �������� ������.
    wsend %victim% 5) ������� ��������.
    *%victim.wait(30)%
  end
done
wait 30s
wecho �� ������ � ����...
~
#25501
� �����~
0 g 25
~
wait 1
����� %actor.name%
if %random.7% == 3
  kill %actor.name%
end
~
#25502
���������� ������� ����~
1 p 100
~
if %exist.mob(25502)%
  calcuid smith1 25502 mob 
end
if %exist.mob(25504)%
  calcuid smith2 25504 mob 
end
if %smith1%
  if %smith1.realroom% == 25531
    exec 25508 %smith1.id%
    return 0
    halt
  end
end
if %smith2%
  if %smith2.realroom% == 25531
    exec 25508 %smith2.id%
    return 0
    halt
  end
end
return 1
~
#25503
����� � �������~
0 q 100
~
wait 3s
mecho _������ �������� �������, ������� � �������, � ����� �� � ����.
wait 1s
emot ������ ������� ���� � �������� �������� � ��� � ������� ���������� ���������
wait 1
���
say �� ���... � ���� �� �� ���, �� ��������!
say � ���� ��� ���� � ������ ����������, ������ ���������?!
wait 1s
say �����, ��������, ����� ���� ���-������ ������� ���...
say ���� ������� �� ���������� � ��� ��� ��...
wait 1
�����
attach 25504 %self.id%
~
#25504
������ ������ � �������~
0 d 1
"� �����" "� ���������"~
if (%actor.vnum% != -1)
  halt
end
wait 3
���� %actor.name%
���
wait 1s
if (%actor.sex% ==  1)
  say �� ��, ������, �� ����� ����������
else
  say �� ��, �����, �� ������ ����������
end
say ����� ����, ���� ������ - �� ���, �����, ����� �����...
wait 1s
say � �������, ���� ����, ���� ������� - ������ �� ������, ��� ���� ���������, �� � ����� ����������.
say ���� � ������� ������������ �� ������ ������� - ������� ��� �����
makeuid questor255 %actor.id%
global questor255
detach 25503 %self.id%
calcuid druid1 25503 mob
attach 25505 %druid1.id%
detach 25504 %self.id%
~
#25505
����� � ������ ������~
0 g 100
~
wait 1s
emot ������� �� ��� � �������� : '... � ������������� ���� �������, � �� ����� �������� ����.'.
mecho \&R������� ����� ������ ��� ����� ������� ��������.\&n
mecho _��� ������������� ������ !
foreach victim %self.pc%
  eval dmg %victim.hitp%/2
  mdamage %victim% %dmg%
done
wait 1
����
say ���� ��, ��������... �� ��� ��� �����%actor.g% ������?!
say ������ ���������%actor.g%?
attach 25506 %self.id%
detach 25505 %self.id%
~
#25506
������ ����� � ������~
0 d 1
"�� �������" "������ �������" ~
if (%actor.vnum%!= -1)
  halt
end
wait 1
say �� ������ ������� ���?
wait 1
say � ����.. ������� � ����� �����...
���
wait 3
say ��� �� ��� ����� - ����� ������ �������
say � ����� - ���, � ������� ��������� ��������
say �� �������, �� ������
wait 2s
say ������ ��� ���� �� ������ - ��-��� ���� ����
say �� ���� �� ���� ������� � ���� ������ � ���� ������ �������
wait 1
say � ������ ������ - �� ���������� ������
emot ����������� ������� �����
wait 2s
say � ����� ���� �������� ����������� � ����-��, �� �������� ������!
emot ������� �������� ����-�� �������
wait 1s
say ��� ��� ��� �������-���������... 
say � ���� ����� ������ �� ����
calcuid druid2 25505 mob
attach 25507 %druid2.id%
detach 25506 %self.id%
~
#25507
����� � ������ ������~
0 q 100
~
wait 2
emot ����������� ��������� �� ���
�����
wait 1s
say ����� ���� ������ �����?
say �� ��� ��� ����� �� �� ����?
������ %actor.name%
wait 2s
say ������?? � ���� �����?
wait 1
say �� �� ��� ������� - ��� ������� ��-��� ����� ���� - ��� � �� ������ ����� ������?!
wait 3
say ���%actor.g% ����� �� ����� - ��� ��, ���� ���� �� ������
say ��� � ����� ������, ���� ������, � �� ���� ���������� ��������!
wait 1s
say � ���� �� ���� ������� � ������ �������� - ������� ��� ����� ����� ����
say ������ � ������� �� ���� ���� ������ �� ������ �������� ����������
wait 1
say ������ ��� ��������, �����
�����
eval questor255 %actor.id%
global questor255
calcuid stone 25501 obj
attach 25509 %stone.id%
detach 25507 %self.id%
~
#25508
������ ��������~
0 z 0
~
switch %random.3%
  case 1
    wait 1
    emot ������ ����������
    say �� ���� ��� ������, �?!
  break
  case 2
    wait 1
    ���� 
    ���
    say �����-�� ����! ����� ��� ������...
  break
  default
    say � ��-�� ��� ������!
    set target %random.pc%
    %send% %target% _������ ��������� �������� ��� �� ����� ��� ������ �������� �����.
    %teleport% %target% 25510
    emot �������� %target.vname% �� ����� ��� ������ �������� �����
    %echoaround% %target% _%target.name% � ������ �������%actor.g% �� ������ ������� � ��������%actor.u% �� �����.
    %damage% %target% %random.50%
  done
~
#25509
������� ������~
1 c 4
����������~
if (!%arg.contains(������)% && !%arg.contains(�����)%)
  %send% %actor% _���� �������-��?
  halt
end
if %actor.vnum% != -1
  halt
end
wait 1
%send% %actor% _�� �������������, ������� �������� �����.
%echoaround% %actor% _%actor.name% ����������%actor.u%, ������� �������� �����.
%echo% _����� ���������� ����� � �� ������ �� ������ ��������� ����� !!!
%load% mob 25510
makeuid questor255 %actor.id%
global questor255
calcuid leshiy 25510 mob
remote questor255 %leshiy.id%
exec 25510 %leshiy.id%
detach 25509 %self.id%
~
#25510
��� ��������� ������~
0 z 0
~
wait 1s
���
say �� ���� ��� ��� �������-��?!
say ��� �������� ����� ��������?
wait 1
���� %questor255.name%
wait 2s
���
say ��������, ����� �������.. �� ��, �������.. ��� � ��� �� �����������...
say ��� ��������� �����?
wait 1
emot ��������� ������� � ������, ������� �� ��� ������� �������� ���� � ������� � ����
wait 1s
say �����, �������� � ���� � ��� ����!
say ������� � ���� � ���� ����.
say �� ��� �������, ������� - � ��������.
say ���� ����� ������, �� � ������ �� ���� ����� ���� �������.
wait 2
say �� ������ ���� ���� �� � ���������� ��������!
say ����� ���� � ����� �� ���� ������! �� ��� � ���������� ����� - ������ �� ���, ��� ��������.
say ����� � ����, ��� ��� ���� ������, ������ ������ ����� �� ������ �����������, ���� ���������.
wait 2
say �� � ���� � ���� ��������� ������ - ���� �� ����� ��� �� �����.
say ��� � ����� � ����� � ���� � ����.
wait 1s
say ���� ������ ���� ����� ������� - ����� ������ �� ����.
say �� ������� �� ������� - �� ��� ���������� ���!
wait 1
say ��� �����, � � ��� �������.
���
~
#25511
���� �����~
0 l 30
~
wait 1
emot ������, ��� ���� ����� � ��������� ��������
say ��, �� ����� ����, �������� ����...
say ��� ������ ��������, ���� �� ���� ��������, ������ �� ��������!
�������
calcuid smith255 25502 mob
attach 25512 %smith255.id%
%load% mob 25507
%purge% %self%
~
#25512
����� � ������� ����� ��� �� �����~
0 q 100
~
if %actor.id% != %questor255.id%
  halt
end
wait 3
say ����� ��?
say �� � ���� ���� �� ���� ��� �������?
attach 25514 %self.id%
detach 25512 %self.id%
~
#25513
����������� ����~
0 c 1
��������� ������� ��������~
calcuid snake 25507 mob
if !%snake% || !%arg.contains(����)%
  msend %actor% ���� �� ������ �������?
  return 1
  halt
end
if !%exist.obj(25509)%
  msend %actor% � ��� �� ������ ��� �������?
  halt
end
calcuid chain 25509 obj
if %actor.eq(16)% != %chain%
  msend %actor% � ��� �� ������ ��� �������?
  return 1
  halt
end
wait 1
emot ������� ��������� ��� ��� ����.
����
mload mob 25508
mpurge %chain%
calcuid leshiy 25510 mob
attach 25515 %leshiy.id%
wait 1
mpurge %self%
~
#25514
������ ������� � �������~
0 d 1
���� �������~
wait 1s
say ���? ����? �� ��� �������, ������?
say �� ����� - ������ ����, �� ���� �������� - ��� ������ �����!
wait 1
%load% obj 25508
����� ����� ��
��� ����� ��
s
masound _�� ����� �������� ���������� ���� � ������.
emot ����� � �������� �������� � ����� �������
wait 10s
n
���� ����� ��
����� ����� ��
mjunk ����
%load% obj 25509
wait 1s
give ���� %actor.name%
say ��� ���� ���� ����, �����.
����
detach 25514 %self.id%
~
#25515
����� � ������ �� ���������� ������~
0 q 100
~
if %actor.id% != %questor255.id%
  halt
end
wait 2
if (!%exist.mob(25506)% && !%exist.mob(25507)% && !%exist.mob(25508)%)
  say � ���� ��� ������ - ���� �� �������!
  say � ��?
  say ������
  ������
  wait 1
  %echo% _����� ���������� � ����� � ��������.
  %purge% %self%
  halt
end
���
say ��, ������� - ��������%actor.g%-���� �� �����!
say ��, ����� ������ � ������ ������...
wait 2
emot ������, ��������, � ������ �����.
%echo% ����� ����� �������� ������� � �������� � ����.
%purge% �����.�����
calcuid magus 25505 mob
%purge% %magus%
calcuid magus 25503 mob
attach 25516 %magus.id%
calcuid smith 25502 mob
attach 25517 %smith.id%
%load% obj 25500
wait 1s
if (%random.100% < 6)
  say ��, ��� ���������� ��� � ���� ��� ��������� - ������, ����� ���� ����������.
  %load% obj 243
  give ��� %actor.name%
end
����
%echo% _����� ���������� � ����� � ��������.
%purge% %self%
~
#25516
smoke ))~
0 q 80
~
wait 2s
����
wait 2
�����
~
#25517
������� �� ����� � �������~
0 q 100
~
if %actor.id% != %questor255.id%
  halt
end
wait 8s
emot �������-�� ������� ���
say �, ��� ��! �������%actor.u%, ������, ������%actor.g%-���� ������?
say �� �������...
if ((%actor.class% == 11) && (%actor.skill(��������)% < 100))
  wait 1s
  say ��, ��� �����, ���� � ���� ���������� ���������... �� ��� ��, �����-�� ����.
  emot ���� �� ����� ������������ ������ �������� � �������� ��������� ����������� �������� �����
  %skilladd% %actor.name% �������� %random.3%
  wait 2
  %send% %actor% _�� ������ ����� �����...
  wait 2
  say �� ���, ���-���� �� ������%actor.u%, � ������ ���%actor.g% �����.
  ����
  detach 25517 %self.id%
  halt
end
switch %random.3%
  case 3
    if ((%world.curobjs(25515)% < 5) && (%randorm.100% <12))
      say �� ��� �, ������ ��� �� ������. 
      %load% obj 25515
      give ������� %actor.name%
    end
  break
  case 2
    if ((%world.curobjs(25516)% < 5) && (%randorm.100% <12))
      say �� ��� �, ������ ��� �� ������. 
      %load% obj 25516
      give �������� %actor.name%
    end
  break
  default
    say �� ��� �, ������ ��� �� ������. 
    %send% %actor% _������ ��������� ��� ��� ��������� ������� � ��������.
    %echoaround% %actor% _������ ��������� ��� %actor.dname% ��������� ������� � ��������.
    %actor.gold(+3000)% 
  done
  if %random.400% == 345
    wait 1s
    ���
    say ��� ���, ���-�� ��� ��� �����, ��� ����� ��� ����� - ������� � ���.
    say ����� �� ������ �����.
    attach 25518 %self.id%
  end
  detach 25517 %self.id%
~
#25518
������ ����� ������~
0 j 100
~
wait 1
if (%obj.type% != 5)
  say ���-�� �� ��� �� �� ���%actor.g%!
  eval getobject %object.name%
  give %getobject.car%.%getobject.cdr% %actor.name%
  halt
end
emot ����������� �������� %object.vname% � �������
wait 2s
emot �������� ������������ %object.vname%
wait 40s
dg_cast '������ ����' %object.name%
emot
wait 1s
say ��� ������ ��� ������� ����!
eval getobject %object.name%
give %getobject.car%.%getobject.cdr% %actor.name%
say ��, �����, ��� �������� ����.
detach 25518 %self.id%
~
#25519
����� ���� 255~
2 f 100
~
calcuid smith 25502 mob
rdelete questor255 %smith.id%
detach 25503 %smith.id%
detach 25504 %smith.id%
detach 25512 %smith.id%
detach 25514 %smith.id%
detach 25517 %smith.id%
attach 25503 %smith.id%
calcuid druid 25503 mob
detach 25516 %druid.id%
detach 25506 %druid.id%
detach 25505 %druid.id%
calcuid druid2 25505 mob
detach 25507 %druid2.id%
~
#25520
���� ����� � ������~
0 t 100
~
switch %random.4%
  case 1
    s
    w
    s
  break
  case 2
    n
    e
    n
  break
  case 3
    e
    n
    e
  break
  default
    w
    s
    s
  done
~
#25521
������ ����� :�(~
0 f 40
~
if (%world.curobjs(25511)% < 5) 
  %load% obj 25511
  %send% %actor% _�� ����� ������� ������ � �������� �������.
  %echoaround% %actor% %actor.iname% ������� ������%actor.g% ����� � ������� ��������...
end
~
#25522
����� � �����~
2 c 1
����� ������� ��������� ��������~
if !%arg.contains(�����)%
  %send% %actor% _�� ����, ���� �� ������!
  halt
end
%send% %actor% _�� ����������, � ������� � ������ ���.
%echoaround% %actor% %actor.name% �������%actor.u%, � �����%actor.q% � ������ ��� � ������ ���.
%teleport% %actor% 25591
%echoaround% %actor% ���-�� ������ ����.
~
#25523
����� ������~
2 c 1
����� ������� ��������� ��������~
if !%arg.contains(������)%
  %send% %actor% _�� ����, ���� �� ������!
  halt
end
%send% %actor% _�� ����������, � ������� � ������ ���.
%echoaround% %actor% %actor.name% �������%actor.u%, � �����%actor.q% ������.
%teleport% %actor% 25586
%echoaround% %actor% ���-�� ����� �� �����.
~
#25524
�� �������~
2 e 100
~
wait 1
if %actor.affect(������ ��� ��� ������)%
  %send% %actor% _��� ������ ���������, � �� �������� ����� � �������� �����!
  %echoaround% %actor% _%actor.name% ����%actor.g% � ���� � �����!
  %send% %actor% _�� ������ ��������!
  %echoaround% %actor% _���-�� � ������ ���� � �������!
  wteleport %actor% 25592
  %send% %actor% _�� ������ ��������!
  %echoaround% %actor% _���-�� � ������ ���� � �������!
  wdamage %actor% 50
  halt
end
~
#25525
����� ������~
2 c 1
����� ����������� ������� ����������~
if !%arg.contains()%
  %send% %actor% _���� �� ������ �������?
  halt
end
%send% %actor% _�� ��������� � �������� �������� ����� � ���������� ������� �� ������...
if ( %random.100% < 50 )
  %send% %actor% ...�� ������� ��� �� ������� - �� ����� ������� � ��������!
  %damage% %actor% %random.100%
  %echoaround% %actor% %actor.name% �������%actor.u% ������� ������, �� ������%actor.u% � ����%actor.g%!
else
  %send% %actor% _�� ���������� ������.
  %echoaround% %actor% _%actor.name% �������%actor.u% �� �������� �������� ����� � �������%actor.u% ������.
  %teleport% %actor% 25525
  %echoaround% %actor% _���-�� ����� �� ������.
end
~
#25526
����� �������~
0 f 100
~
if %world.curobjs(3368)% < 1 && %random.10000% < 50
  mload obj 3368
end
~
$~

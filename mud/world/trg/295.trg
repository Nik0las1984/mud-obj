#29500
����� �� ������ (������)~
2 c 100
e ea eas east  � �� ��� ���� ����� ������~
if !%actor.haveobj(29520)%
  wsend %actor% �� ���� �� ��������, ��� �����������.
  eval tele %random.12%
  eval tele1 %tele%+29524
  wteleport %actor% %tele1%
  halt
end
wsend %actor% ������� ����� �����������, �������� ��� ����.
wforce %actor% ������

~
#29501
����������� � �������~
0 d 0
�� ������ �������� ������ ������~
wait 1s
� �� ��� �, ������, ���� �����.. �����, � � ������ ��������.
� ��� � ��������� � ������, ��� �������� �������, ������ �������, ���� ������� ��������.
wait 1s
�����
wait 1s
� ��������� ��������, ��������� �������, �� ������ �����.
wait 1s
� �������� ���-�� �� ������� ���� ����� ��������, �� �� ����� ����������.
� ������ ������� � ������ : "������ ��� �������, ������� �� ��������, ��� ��� �� ������� ������?"
� ������� �������� ������� : "���� ���, �������, ������� ����� ����������, �� �����, ����� ��������� ����� �� ������ ��������."
� ������� ������� ������� : "���� ���, �������, ���� �������, �� �����, ����� ����������� � ������� �������."
� � ������� ������ : "� ���� ���, �������, �������� ��������, �� ����� �������� ���� �� ����� �����."
� ��������� �, ������� �������, ������� �������, �� ������ ������ - ������.
wait 1s
� �� ������� ������� �� ���� ����� �, � ��� �������� ����� �� ���.
� �����, ����� � ���, �� �� ������ ��������, ��� �������� �� ������ ��������, �� � ������� �������� � ����.
� �� � ����� ����� ������ ��� �� ���� ����.
� ������ ��� : "�� ������� �� ���, �������, �������� ��������?"
� ������� ������� : "�� ��������� ��, � ��������, ���� ���� ���� ������ �� ��� �� ���� �����, ������� - ���� ������, �� ���� ������."
wait 1s
�����
� ������� �, �����������, � ������ ������, ����������.
� ������� �����, ��������� ��� ��������, ��� � ������� : " ���� ����, ��� �������, ����� � �����."
� �� � ��� ��� ���� ��������, ������ �������, ����� ���� �� ������� �� ��������.
wait 1s
���
wait 2s
� �� ��� ������ ������� ����� ��������� ���-�� - ����� ��� ������ ����, ���� � �����, �� ���� ������.
� �������� �� � ���, ����� �������� ��� ���� ����� ����.
������ .%actor.name%
detach 29533 %self.id%
detach 29501 %self.id%

~
#29502
������ � ��������~
0 q 100
~
if ( %actor.sex% == 1 )
  � ��, ������, ������ �������.
  wait 5
  ����
  wait 5
  � ������ ������.
  ���
  wait 5
  � � ����� �� ��������� ������, �������� ������ ?
  ���
  ������
  wait 5
  � � ���, � �� ������.
  ���� .%actor.name%
  wait 1s
  � � ����� �� ��� � ������� � ������� ����� ������?
  ���
  ���� .%actor.name%
elseif ( %actor.sex% == 2 )
  � �� ��� ����� �������, �������?
  ���
  wait 1s
  � ������� ���� �������?
  ���� .%actor.name%
  wait 1s
  � �� ������, � ���� ������ !
  mkill %actor%
end

~
#29503
������ � �������~
0 q 100
~
� ��, ������-������.
���
wait 1s
� ������������� ������ ? � ���� ������ ����������, ������ ����������.
���
wait 5
switch %random.20%
  case 1
    � ������, ��� ����� �������� ?
    ����
    wait 1s
    � �������, ������ ��������-������� ���, ���� ������� �������.
    ���
    wait 1s
    � ���� � ���� �������� ���������, ������.
    wait 1s
    � � ������...
    wait 1s
    ����
    wait 1s
    � ������� �������� ���� ���������� ��� � ������� ��������, �� ����� ���������...
    wait 1s
    � �� �� ��� ����� �� ������� � ��� �� ����..
    �����
  break
  case 2
    � ������, ��� ������ ���� ������� ?
    ����
    wait 1s
    � ������ �������, �� ������ ���� ������� �����, �������.
    wait 1s
    � � �������� ������, �� ������� �������� ����.
    wait 1s
    �����
    � ���� �� �� ���� ����� �����, �� ����� ��� ������ ����� ������.
    �����
  break
  case 4
    � ��� ��������, ������� ��������, �� ������ �� ��������� ?
    wait 1s
    � ������� ���� ��� ��������, ��� ����� �� � ����� ����� �����������, ���� ������ ����.
    ���
    wait 1
    � ������ ������� ����... � �������, ������ ����� �� ���.
  break
  case 5
    � ��� ������� ���� ���������� ?
    ����
    wait 1s
    � ������, ������� �������, � ����� ���� ����� ����� ���� �� ��� ���� ������.
    �����
    wait 1s
    � �� �� ���� ��� �� �����, �� � ��� �������� � ��� �� �����.
    �����
    wait 1s
    � � �� �� ������-�� � �����.
    ���
    wait 1s
    ����� .%actor.name% ���� ������� ���, ������� �� ����, �� ����� ��� ��� ��� � ������� ����.
    ����
  break
  case 6
    � �������, ������������� ������, ���� ����������?
    ����
    wait 1s
    � �� ��� �, � ��� ��� ��������.
    ���
    wait 1s
    � �������, ����������� ������� ������, �� ����� ��������� �� �������?
    ����
    wait 1s
    � �� ��� �� �� �� ����, � ��� �����, ������ ����� ��� ����������� �����.
    �����
  break
  case 7
    � ������, ������ �������, ���� ����������?
    ����
    wait 1s
    � ������ ��� ���� ���� ������� �� �������, ���� �������.
    ���
    wait 1s
    � �������, ���� ������� � ������, �� ����� ���� �������.
    ���
    wait 1s
    � � ��� ��� ��� ���, ���� ������..
  break
  case 8
    � ��� ��������, �������� � ������ ����� ���� ��������?
    ����
    wait 1s
    ����
    wait 1s
    � ���-��, ��� �� ����� ?
    wait 1s
    � ��������� �� ����, ����� ���������� ����?
    �����
  break
  default
    � � ���� ���, �� ���� � ������ ������ ������, ��� �����.
    ���
  break
done

~
#29504
������ � �����~
0 q 100
~
wait 1s
����
wait 1s
if ( %actor.sex% == 1)
  � ����� �� �����, ������ �������?
elseif ( %actor.sex% == 2 )
  � ����� ������ ��, ������ ������?
end
wait 1s
� ��, ������ ���� �� ����������� ���.
wait 1s
� ������ ���� � ���� ���������, �� ���� ��� � ������.
wait 1s
�����

~
#29505
���������� �����~
0 d 0
�������� ������ �����~
�����
wait 1s
� ���� � ������� �� �������� - ����� �������.
wait 1s
� ��������� ����, ����� ��� �������� �� ���� ��� �������, ������ ��� ������� ��������.
wait 1s
� ������ �� �� ���, � ������ ��������, � ������ �������, ��� �������� ��������� ���� ����������� - ��� �������� �������.
wait 1s
� ������� �� ��� ������� �� ����� ������, ���� ��� � ����� ���� ��������, �� ��������� ��, �� ������ ���� ������� ��������.
����
wait 1s
� ����������� ������� ������, �� ��� ��� � �������� ���������, �� � ������� �� ������ �����.
wait 1s
� ��������� ���� � ����, �� ���������� � ���� ����� ������, �� ������� ������.
wait 1s
� �������� �� ��� ������, �� ��������� ����, ���������, ��������� �������������� ������� :
� "������ � �� ����, ���� ������ ����� ����, ������ ��� ���� ��������� �����, ������� ��� ��������� ������, �� ��� ����� ��������� ��������."
����
wait 1s
� ���������� �, �� ������ ��� ����, ������ ��� ��������.
����
wait 1s
� ��������� � � ����-���������� ������, �� ����� ���� ��������, ��� �� �� ��� ���� ��������-��?
����
attach 29506 %self.id%
detach 29504 %self.id%
detach 29505 %self.id%

~
#29506
���������� ����� ������~
0 d 0
������~
wait 1
���
� ���, ����� ������ ���� �� ���� ����� ���� ������.
wait 5
���
� � ����..
wait 1s
� ���� �������� �� ���, ������� � ����...
� ������ ����� ��� �������.
wait 1s
� ������ �� ��� ������� ����.
� �������, ���-�� � ����� ������ ����� ������ �������, �� � ����� ���� ������, �� ������, �� ����� ���������.
wait 1s
���
� �� �� ���� � �������� ���� ���� ������.
� ��� � ���� ������� �������, ������ ��� � ����� ����, �������, �� ������� ������.
wait 1s
� ��������� ��� ���� ��������� ���� �����.
����� .%actor.name%
wait 1s
� ��� ��, � ������ ����!
mload obj 29511
���� ��� .%actor.name%
detach 29506 %self.id%

~
#29507
������ �����~
1 c 1
�����~
if (!%arg.contains(������)%)
  osend %actor% �� ��� ���� ��� ���� � ���, � ��� ���� ���� ������ �����.
  halt
end
osend %actor% �� ��������� ��������, �������� ������ �����, �, ��������, �������� � ������, �������� ��������.
wait 10
osend %actor% ����� �� ������ � ����, �� ������, ��� ���������� � ���������� ��� ����.
oteleport %actor% 29515
opurge %self%

~
#29508
����� ����~
0 f 0
~
if (%world.curobjs(29512)% < 6 ) && ( %random.6% < 2 )
  mload obj 29512
end

~
#29509
����� �����~
0 f 0
~
if ( %world.curobjs(29513)% < 6) && ( %random.6% < 2 )
  mload obj 29513
end

~
#29510
����� � �����~
0 r 100
~
wait 1
if ( %random.5% == 1 )
  msend %actor% ����� ���� �������� � �������� ������ - ���� � �����, �������� �� ���.
end

~
#29511
����� � ����~
0 r 100
~
wait 1
if ( %random.5% == 1 )
  msend %actor% �������, ����� ���������, ������������ ������� �������� �����, ���������� ������� �������-���������, � ���������� �����.
end

~
#29512
������� � ������� � ����~
0 q 100
~
���
wait 1s
if ( %actor.sex% == 1)
  � �� �������, ������, ���� � ����.
elseif ( %actor.sex% == 2 )
  � �� �������, ������ ������, ���� � ����.
end
wait 1s
� ������ ��� ������, ��� ����%actor.u% �� ������ �����, ������ ���������� � �� ����.
� �� ��� � ������� ��� ����.
���
wait 1s
� �� ���� �� ������, �� ������, �� ����� ��������� ������ ?
����
wait 1s
� ����, ���� � ���������, � ��� ����.
� �� ������ ������ � ���� ����..
�����
wait 1s
� ������, �� ������ ��� � ����� � ������� �� ����-������.
����

~
#29513
���� ������� ������~
0 m 0
1000~
wait 1
if %amount% < 1000
  say �������� �����!
  give %amount% ��� .%actor.name%
  halt
end
wait 1
���
� ��, ������� � ����� � ������.
wait 1s
msend %actor% ������ ���� � ���� ���, � ������ ������� ����� ������ ��������� ������.
wait 15
� �� ���, ��� ������.
wait 1s
� ��� � ���� ���� �������
� ����������, �� ������� ���� ���� ���������, ���������� ���-�� � ���� ����.
���
wait 1s
� ����� ������, � ������ ���� ������ �����, � ����� ������ �� ������ �� ���.
� � �� ��������, ��� ��������� ���, ���� ���� � �����..
wait 1s
���� .%actor.name%
� ��� ��, ����������� ����.
mload obj 29514
mload obj 29514
mload obj 29515
mload obj 29515
mload obj 29516
mload obj 29516
���� ���.���� .%actor.name%
��� ���
detach 29512 %self.id%
detach 29513 %self.id%

~
#29514
����� �� ������ �������~
2 e 100
~
eval xleb %actor.eq(17)%
eval posox %actor.eq(16)%
eval sapi %actor.eq(8)%
if ((%xleb.vnum% == 29516) && (%posox.vnum% == 29515) && (%sapi.vnum% == 29514))
  wsend %actor% ��� �� � ������ ���� ������ ����.
  wait 5
  wsend %actor% ��� �������, ������ ������.
  wait 3
  wsend %actor% ����� ����������� ��������.
  wait 3
  wsend %actor% �� ���������� ������ �� ��� �������������, ����� ��������, ���� �������� ��.
  wait 3
  wsend %actor% � ��������-��������� ������� �����������, � ������ ��� �� �����-�� ������.
  wait 3
  wsend %actor% �� ����� ���� �������� ����� ������� �� ������ ������.
  wteleport %actor% 29516
  calcuid 1xleb 29516 obj
  wpurge %1xleb%
  calcuid 1sapi 29514 obj
  wpurge %1sapi%
  calcuid 1posox 29515 obj
  wpurge %1posox%
end

~
#29515
������ � �������~
2 c 0
����� �����~
if !%arg.contains(�)%
  wsend %actor% ���� �� ����� ���������?
  halt
end
wsend %actor% �� ���������: �������-������� ��������� �� ��� �������, � ���� �����, ��� � ���� ����� � ����� ����.
wsend %actor% ��� �� ���������� �������, ����������� � ��� � ����� �� ������.
wteleport %actor% 29539
wsend %actor% � ��� ���� ��� ����� �� ����, �� ������� �������.
wait 3
wsend %actor%  ���� ��� ��������� : '��-��-��, ������ �������� ���� ���� ������ �� �������, ����� �� ������, � ������ ������� ��� �� ����� �������, � ��� ���������.'
wait 3
if (%actor.sex% == 1)
  wsend %actor% ���� ��� ��������� : '�������, ���� �, ���� � ���� ���������, ������ �������, ��������, ����� � ������ ���� ���, � �� ����� � �� ����� ������� �����, ���� � ��������.'
elseif (%actor.sex% == 2)
  wsend %actor% ���� ��� ��������� : '�������, ���� �, ���� � ���� ���������, ������ ������, ��������, ����� � ������ ���� ���, � �� ����� � �� ����� ������� �����, ���� � ��������.'
end

~
#29516
������������ �������~
0 c 0
���������� ��������~
msend %actor% �� ������ ������������ ������� � ���� �����������
wait 1s
msend %actor% ���������� ���� ���, �� � �������.
wait 1s
� �� ��� �, ������ � ���� - ���� � ������, ������� ������� ��, ������.
���
� �� ��� �������, ��� �� ��� ������������, ���������� ������ � ������� ��������, ����������.
� ������� ����, ������� �������� ��������� ����� ������� �� �������� ���������, �������� �������� ������.
���
� ���� ����� ��� ��� ������, �������� �� ����� ?
wait 1s
� �� �� ������ ��� ���� ������ ��� � ����.
���
wait 1s
%echo% ���� ��� �������� ������, � ������ ������ � �������.
wait 2s
� � ���, �����.
%echo% ������� ������� ������� ��������� �� �������.
wait 1s
mload obj 29518
���� ��� .%actor.name%
� ����� � ��� � ����������� ����� �������, ��� ������� ����������� ��� ����� ������ ���� ��������.
wait 1s
� ��� ������� ��, ��� ��� ��� ���������.
� ������� ��� ��� � ���� ��������.
� �� �� �� ����������, ������ ������ - ������� �������, ������� �������.
� ���������� ���, �� �������� �����������.
wait 1s
� �� ������ ����� �������� ��� ����, ������ ������� ������ ����������, �� � �� ���������.
� ��� ������ ����� �������, ����� �� �� �������, ����� �� ��� ����� ��������.
mload obj 29519
���� ��� .%actor.name%
wait 1s
� � ���� �� ������ ������ ��� ������, ��� ���� ����� �������.
� �� ��� ����, � ��������� ���� ���� ��������, � ����� ������ ������ ������� ���.
���
mload obj 29520
���� ��� .%actor.name%
wait 1s
� ��� ��� ��. ����������� ����!
calcuid room 29516 room
detach 29515 %room.id%
attach 29517 %room.id%
detach 29516 %self.id%

~
#29517
������ � ������� (����� ����)~
2 c 0
�����~
if !%arg.contains(�)%
  wsend %actor% ���� �� ����� ���������?
  halt
end
wsend %actor% �� ���������: �������-������� ��������� �� ��� �������, � ���� �����, ��� � ���� ����� � ����� ����.
wsend %actor% ��� �� ���������� �������, ����������� � ��� � ����� �� ������.
wteleport %actor% 29539
wsend %actor% � ��� ���� ��� ����� �� ����, �� ������� �������

~
#29518
������� �� �������~
2 c 0
�����~
if !%arg.contains(������)%
  wsend %actor% ���� �� ������ �����?
  halt
end
wsend %actor% �� �������� ������� �� ������ ������.
wteleport %actor% 29516
wait 3
wsend %actor% ������ �� ������� �� �����, ��� ������� ����������� � ��� �����, � ���� �������.

~
#29519
����� �� ������(��)~
2 c 0
s so sou sout south � ��~
if !%actor.haveobj(29520)%
  wsend %actor% �� ���� �� ��������, ��� �����������.
  eval tele %random.12%
  eval tele1 %tele%+29524
  wteleport %actor% %tele1%
  halt
end
wsend %actor% ������� ����� �����������, �������� ��� ����
wforce %actor% ��

~
#29520
reset~
2 f 100
~
calcuid mob 29500 mob
attach 29533 %mob.id%
attach 29501 %mob.id%
calcuid mob 29506 mob
attach 29504 %mob.id%
attach 29505 %mob.id%
calcuid mob 29508 mob
attach 29512 %mob.id%
attach 29513 %mob.id%
calcuid room 29516 room
detach 29517 %room.id%
attach 29515 %room.id%
calcuid mob 29511 mob
attach 29516 %mob.id%
calcuid mob 29517 mob
attach 29526 %mob.id%
calcuid room 29558 room
attach 29528 %room.id%
attach 29529 %room.id%

~
#29521
����� � ����~
2 e 100
~
if %actor.haveobj(29520)%
  wsend %actor% ��, ��� ������������, ������ ���� ������, � ����������� ����, �� ��� ������� ����� ������ ����������� � ���������� ��� �� ������.
  halt
end
wsend %actor% ���� ������ ���������� ���. ����� ������� ������� ������.
wait 1
wteleport %actor% 29540

~
#29522
����� �� ������ (�����)~
2 c 0
� �� ��� ���� ����� n no nor nort north~
if !%actor.haveobj(29520)%
  wsend %actor% �� ���� �� ��������, ��� �����������.
  eval tele %random.12%
  eval tele1 %tele%+29524
  wteleport %actor% %tele1%
  halt
end
wsend %actor% ������� ����� �����������, �������� ��� ����.
wforce %actor% �����

~
#29523
����� �� ������ (�����)~
2 c 0
w we wes west � �� ��� ���� �����~
if !%actor.haveobj(29520)%
  wsend %actor% �� ���� �� ��������, ��� �����������.
  eval tele %random.12%
  eval tele1 %tele%+29524
  wteleport %actor% %tele1%
  halt
end
wsend %actor% ������� ����� �����������, �������� ��� ����.
wforce %actor% �����

~
#29524
����� ��������~
0 f 0
~
if ( %world.curobjs(29521)% < 6) && ( %random.6% < 2 )
  mload obj 29521
end

~
#29525
����� ��������~
0 f 0
~
if ( %world.curobjs(29522)% < 4) && ( %random.6% < 2 )
  mload obj 29522
end

~
#29526
���� ������ ���������~
0 j 100
~
wait 1s
if %object.vnum% != 29518
  ���
  � ���, ��� ���� �� ����������.
  wait 7
  ����
  ��� ���
  halt
end
� ��, ����� ���������.
wait 7
�� ��������� �� �������
� ��� �� ������ �� ���� ?
����
wait 5
attach 29527 %self.id%

~
#29527
������� ��� ������� ����� �������!~
0 d 0
�������~
� ��� ??
����
wait 5
� �������, ���� ����� �������� ������� ������ ?
wait 5
���
� �, ����, ��������.
wait 5
�� ����� ����������
wait 5
� ������, ������� � �������!
wait 5
mteleport %actor% 29558
detach 29526 %self.id%
detach 29527 %self.id%

~
#29528
����� �������~
2 c 0
� �� ��� ���� ����� ������ ������� �������� ���������~
wsend %actor% �� ���������� ��������� ��������� ������� - �� ���� ���������� ����.

~
#29529
����� ������� ������~
2 c 0
������� ������� ��������~
if (!%arg.contains(����)%)
  wsend %actor% ��� �������?
  halt
end
if !%actor.haveobj(29519)%
  wsend %actor% ��� � ��� �� ��� ����� ��������..
  halt
end
wsend %actor% �� ������� ������ �������� �� �������-���� ������.
wsend %actor% ����� �� ����� �� � �������, ���������, �� ��������� �� ���.
wait 5
wsend %actor% ������ ������ : '�� ���?'
wait 5
wsend  %actor% ������ ������ : '��� �� ����� �������? ������������ �� ����� �, ��������-��.'
if %exist.mob(29523)%
  calcuid finist 29523 mob
  wpurge %finist.id%
  wload mob 29524
end
detach 29528 %self.id%
detach 29529 %self.id%

~
#29530
������������ �������~
0 c 0
���������� ��������~
msend %actor% �� ������ ������������ ������� � ����������� ����.
wait 5
msend %actor% ���� ������� ����������� ��� ������� � �������.
wait 5
msend %actor% ������ �� ����� �� ����� ��������, ������ ������ :
msend %actor% '���� �� ��� �������, �� ��� ������� ����������� ���� ����, ��� ��, ��� ������ ���������� ������, ����� �� ���� ���� �� ������?'
wait 5
msend %actor% �������-������� ������ � ����� : '������ �� ������������ �� � ����� - � �� ������� �����, � �� �� �������� ����������.'
mteleport %actor% 29508
if %exist.mob(29506)%
  calcuid maria 29506 mob
  attach 29531 %maria.id%
end
mpurge %self.id%

~
#29531
���������� ����� :)~
0 r 100
~
wait 1
� ������� ����, ����� �, ��� ���������� �� ���� �����.
wait 5
� ��������� � ������ � ���� ��������.
wait 5
� ��� ���� �� ���� �������.
��� .%actor.name%
����
%actor.exp(+100000)%
%send% %actor% �� ������������� ���� �������� �������.
if ( %world.curobjs(29522)% < 6) && ( %random.3% < 2 )
  mload obj 29528
  � � ��� �� ������� ������� ����.
  wait 5
  ���� ����� .%actor.name%
  ��� ���
elseif (%random.2% == 1) && (%world.curobjs(420)% < 2)
  mload obj 420
  � � ��� �� ������� ������� ����.
  wait 5
  ���� ���� .%actor.name%
end
detach 29531 %self.id%
~
#29532
����� �� ������ �������~
2 e 100
~
eval xleb %actor.eq(17)%
eval posox %actor.eq(16)%
eval sapi %actor.eq(8)%
if ((%xleb.vnum% == 29516) && (%posox.vnum% == 29515) && (%sapi.vnum% == 29514))
  wsend %actor% ��� �� � ������ ���� ������ ����.
  wait 5
  wsend %actor% ��� �������, ������ ������.
  wait 3
  wsend %actor% ����� ����������� ��������.
  wait 3
  wsend %actor% �� ���������� ������ �� ��� �������������, ����� ��������, ���� �������� ��.
  wait 3
  wsend %actor% � ��������-��������� ������� �����������, � ������ ��� � ����� �������������.
  wteleport %actor% 29554
  calcuid 1xleb 29516 obj
  wpurge %1xleb%
  calcuid 1sapi 29514 obj
  wpurge %1sapi%
  calcuid 1posox 29515 obj
  wpurge %1posox%
end

~
#29533
������ � ������~
0 r 100
~
wait 1s
� ������ ����.
wait 1s
���
wait 1s
� ��� � ������ ���������, �� ���� ���������, ��� ��� �� �� ���� ������ ���.
wait 1s
�����
� �� ����� ����������?

~
#29534
���� ������~
0 j 100
~
wait 1
if %object.vnum% == 29530
  � ��� ��� ������ ��� ������!
  � ������ � � ����� �������.
  %purge% %object%
  ���
  � �� ������� �������.
  ����
  ��� .%actor.name%
  %actor.gold(+3000)%
  msend %actor% %self.iname% ���%self.g% ��� 3000 ��� � �������.
  mechoaround %actor% %self.iname% ���%self.g% %actor.dname% 3000 ��� � �������.
  if (%world.curobjs(29529)% < 3) && (%random.100% < 10)
    � � ��� ���� ������ ����� � ���� ���� �������.
    ���
    ����
    � ��.. ����� ��������.
    ���
    mload obj 29529
    ���� ���� .%actor.name%
  end
end

~
$
$

#96500
����� ������ ��� ���������� � ������~
0 c 1
�� ��� ���� ����� ������ �������~
%echoaround% %actor% %actor.iname% �������%actor.q% ������ : '%arg%'
%send% %actor% �� �������� ������ : '%arg%'
wait 1
%echo% ������� ����������� �����, ������ ������� �������� � ��������� � �����!
dg_cast '��� ���'
~
#96501
������ ������������ ��� ������~
0 q 100
~
wait 1s
� ����������, ����������, ������ ���������.
� ������ �������� � ��� ���� ��������?
wait 1
� ������ �� ���� �������� ���������� ����������?
� ��� � ���������, ���� ������ ������ �� �������.
� ��� ������ �� ��� ���� ������� �� �����, ������ ��� �����.
� ����� ��������, ���� ���������, � ����� ������ �������.
wait 1
� �� ��, ����� ������������� - ������ �, �������� �����������.
� ����� �� �����, ������� �������� �������, ��� ������ ��������.
� ��� � � ����� ������ ��������...
�� ������������� ������ �������
� ��� ����� �� ����, � ������ ������, ��� ������� �� ��������.
���
� ������� � �������, ��� ���� ������-�������� ������,
� ���� ����� ���� ���� �������.
� � � ����� ���� ��� ���, ���������� ����� �� ������ ��������,
� � ������������, �����-�� �������������� �������.
wait 1s
� ��� �� ����� ��� ���� ��� ������...
�� ����������� ������ � ���� �������
attach 96502 %self.id%
detach 96501 %self.id%
~
#96502
������ ���� �����~
0 d 0
������~
wait 1
����
� �� ��� ������-��, ��� ������!
� ��� ������, � ������� ������������� ����� ����
� �������, ������ ��� ������ �������� �������.
� ������ ��� �����, ����� ������ �� ��������.
� �� �� ������ ���� ������������.
� ������ ���� ����� ����� �� �������� ������� - ����� ��������,
� � � ������� �� ����� ������ ��������!
����
wait 2
� �� ������ ����� �������� ��� ��, ������� ������ ��� �� �����.
� ������� ��� ���� ���, � ������ � ���� �����������!
attach 96503 %self.id%
detach 96502 %self.id%
~
#96503
������ ��������� �����~
0 j 100
~
if (%object.vnum% != 96518)
  ����
  � ���-���, �� ����� � ������.
  return 0
  halt
end
wait 1
%purge% %object%
���
wait 1s
�� ����������� �������� ��� �� ���� ������
� ������������� ��!
� ����� ��������, �� ������ ������ ����� � ���� ���������.
� ��������� ����, ��� ��������� �������!
� ���, ������ �� �������
���� 20000 ��� %actor.name%
wait 1s
� ���� ������ ����, � ���� ���� �������� ���� ���-��� �� ���� ���������.
� �������� ����, ������ ���-������ ���� ������.
� �������� ���������� �������� �, ������� ��, �� ������.
� �� ��� ���� ������, ���� � �������, �� ��������� ����.
� ��� �� ����.
��
switch %random.6%
  case 1
    mload mob 96533
  break
  case 2
    mload mob 96534
  break
  case 3
    mload mob 96535
  break
  case 4
    mload mob 96536
  break
  case 5
    mload mob 96537
  break
  case 6
    mload mob 96538
  break
done
mpurge %self%
~
#96504
���� ��������~
0  0
~
����, ������, ����������, � �.�. ��� ���
~
#96505
������ ����� ����������~
2 e 100
~
wait 1s
if (%random.10% <= 3)
  %echo% ������ ����� �������� ��������� �� �������.
  %load% mob 96506
  %load% mob 96507
end
~
#96506
���� ����� ����� �������~
0 n 100
0~
halt
%load% obj 96519
if (%random.100% <= 30) && (%world.curobjs(96501)% < %world.maxobj(96501)%)
  mload obj 96501
end
if (%random.100% <= 30) && (%world.curobjs(96502)% < %world.maxobj(96502)%)
  mload obj 96502
end
if (%random.100% <= 30) && (%world.curobjs(96503)% < %world.maxobj(96503)%)
  mload obj 96503
end
if (%random.100% <= 30) && (%world.curobjs(96504)% < %world.maxobj(96504)%)
  mload obj 96504
end
if (%random.100% <= 30) && (%world.curobjs(96505)% < %world.maxobj(96505)%)
  mload obj 96505
end
if (%random.100% <= 30) && (%world.curobjs(96506)% < %world.maxobj(96506)%)
  mload obj 96506
end
if (%random.100% <= 30) && (%world.curobjs(96507)% < %world.maxobj(96507)%)
  mload obj 96507
end
if (%random.100% <= 30) && (%world.curobjs(96508)% < %world.maxobj(96508)%)
  mload obj 96508
end
if (%random.100% <= 30) && (%world.curobjs(96509)% < %world.maxobj(96509)%)
  mload obj 96509
end
if (%random.100% <= 30) && (%world.curobjs(96510)% < %world.maxobj(96510)%)
  mload obj 96510
end
if (%random.100% <= 30) && (%world.curobjs(96511)% < %world.maxobj(96511)%)
  mload obj 96511
end
if (%random.100% <= 30) && (%world.curobjs(96512)% < %world.maxobj(96512)%)
  mload obj 96512
end
if (%random.100% <= 30) && (%world.curobjs(96513)% < %world.maxobj(96513)%)
  mload obj 96513
end
if (%random.100% <= 30) && (%world.curobjs(96514)% < %world.maxobj(96514)%)
  mload obj 96514
end
~
#96507
�������������� ��������� � ������~
0 p 100
~
if (%self.vnum% == 96502) && (%exist.mob(96501)%)
  calcuid svmob 96501 mob
  set h1 %self.hitp%
  return 0
  wait 1
  eval h2 %h1%-%self.hitp%
  eval temp %svmob.hitp(+%h2%)%
  %echo% %svmob.name% ���� ��������� ������� �����.
  return 0
end
if (%self.vnum% == 96501) && (%exist.mob(96502)%)
  calcuid temob 96502 mob
  set h1 %self.hitp%
  return 0
  wait 1
  eval h2 %h1%-%self.hitp%
  eval temp %temob.hitp(+%h2%)%
  %echo% %temob.iname% ���� ��������� ������� �����.
  return 0
end
return 0
~
#96508
��� ������ �� �����~
0 k 100
~
if (%random.100% <= 20)
  wait 1
  %echo% ����� ����� ����� � ������ �������� �����.
  mteleport %self% %self.realroom%
  %echo% ����� ����� �������� �������� ����� � ��� �� ������!
end
~
#96509
������������ ���� �������~
1 c 4
����������~
wait 1
if (!%actor.canbeseen%)
  halt
end
if !(%arg.contains(�����)%)
  %send% %actor% ��������, ���� ������ ��?
  halt
end
wait 1
dg_cast '����� �� ���' .%actor.name%
dg_cast '����' .%actor.name%
dg_cast '�������' .%actor.name%
dg_cast '����� ���' .%actor.name%
~
#96510
����������� �� �������~
1 c 4
�����������~
wait 1
%echo% �� ����� ���������� ��������� �������.
%load% mob 96528
eval abc %altar%*2000
calcuid altmob 96528 mob
set %altmob.str(+%altar%)% 
set %altmob.hitp(+%abc%)%
eval altar %altar%+1
global altar
~
#96511
���������� ����~
1 s 100
~
wait 1
%send% %actor% �� ������ �����-�� ������� ����� �������� � ������!
%echoaround% %actor% %actor.name% �����%actor.a% �����-�� ������� ����� �����%actor.u% � ������!
%damage% .%actor.name% 500
dg_cast '������' %actor.name%
~
#96512
����� ������~
1 g 100
~
wait 1
calcuid skel 96516 obj
%load% mob 96529
%load% obj 96537
%echo% �������� ������� ������� ������������!
%purge% %skel.id%
~
#96513
���� �� ���������~
1 c 4
����~
wait 1
if !(%arg.contains(������)%)
  %send% %actor% ��������, ���� ������ ��?
  halt
end
wait 1
dg_cast '��� ���' .%actor.name%
dg_cast '����� �� ���' .%actor.name%
dg_cast '��� ���' .%actor.name%
~
#96514
���� ������ ������ ����� �� ����~
0 q 100
~
wait 1s
�� �������� �������� ��� ���� ���
� �������, �������, ���� ���� ����� ��� ����� ��������,
� �������� ���, ����� ���!
� �����, ������������ ���, ������ �� ��������,
� ���� ��������� ����� �����, ������ ���� �� ��������� ���.
� �������� ���, �����, �����, �����, �������� �� �� ����� ��������,
� �� �������� �����.
� �� ���� ��������, ��?
�� �������� ���� � ������
attach 96515 %self.id%
~
#96515
����� ����� � ����~
0 d 0
������~
wait 1
� ������� ���, �������!
� �������� ��� ��������� � ������ ������, ����� ������ ���� � ��� �������
� � ������������, ���� �� �� ������� - �� �����!
%load% mob 96517
calcuid hala 96517 mob
%teleport% %hala% 96522
%load% mob 96520
calcuid hegni 96520 mob
%teleport% %hegni% 96522
%force% %hegni% ����� ���
detach 96514 %self.id%
detach 96515 %self.id%
~
#96516
���� ������� �� �����~
0 k 100
~
wait 1
if (%random.100% <= 20)
  set target %random.pc%
  %target.position(6)%
  %target.wait(3)%
  %send% %target% ������ ������ ������ ���� ��������� ��� �� �����!
  %echoaround% %target% ������ ������ ������ ���� ��������� %actor.vname% �� �����!
end
~
#96517
��� ����� (���� �����)~
0 f 100
~
%load% obj 96520
calcuid glin 96519 mob
attach 96526 %glin.id%
~
#96518
���� ������~
1 n 100
~
set altar 0
global altar
~
#96519
��� �����~
0 f 100
~
mload obj 96518
if (%random.100% <= 25) && (%world.curobjs(96521)% < %world.maxobj(96521)%)
  mload obj 96521
end
if (%random.100% => 75) && (%world.curobjs(96522)% < %world.maxobj(96522)%)
  mload obj 96522
end
~
#96520
��� ��������~
0 f 100
~
if (%random.100% <= 25) && (%world.curobjs(96523)% < %world.maxobj(96523)%)
  mload obj 96523
end
if (%random.100% => 75) && (%world.curobjs(96524)% < %world.maxobj(96524)%)
  mload obj 96524
end
~
#96521
��� ����~
0 f 100
~
if (%random.100% <= 25) && (%world.curobjs(96525)% < %world.maxobj(96525)%)
  mload obj 96525
end
if  %exist.mob(96520)% 
  %echo% ����� ������ : '��������� ���, ��� �� �� �� ����.'
  %echo% ����� ������ : '���� ����� ��� ������� ������� ��� � �����������.'
  %echo% ����� ������ : '���... ���, �������, ����� ����������� � ������.'
  %echo% �����������, ����� ������ �� ������.
  calcuid heg 96520 mob
  %purge% %heg%
  %load% mob 96532
  calcuid heg1 96532 mob
  %teleport% %heg1% 96572
  calcuid glin 96519 mob
  attach 96525 %glin.id%
end
~
#96522
����� �������~
0 k 100
~
eval lamia %lamia%+1
global lamia
if %lamia% == 5
  %load% mob 96530
  %echo% ���� ����� ����������� �����-�� ����.
end
if %lamia% == 10
  %load% mob 96531
  %echo% ���� ����� ����������� �����-�� ����.
end
if %lamia% == 15
  %load% mob 96530
  %load% mob 96530
  %echo% ���� ����� ����������� �����-�� ����.
end
if %lamia% == 20
  %load% mob 96531
  %load% mob 96531
  %echo% ���� ����� ����������� �����-�� ����.
end
if %lamia% == 25
  %load% mob 96530
  %load% mob 96530
  %load% mob 96530
  %echo% ���� ����� ����������� �����-�� ����.
end
if %lamia% == 30
  %load% mob 96531
  %load% mob 96531
  %load% mob 96531
  %echo% ���� ����� ����������� �����-�� ����.
end
if %lamia% == 35
  %load% mob 96530
  %load% mob 96530
  %load% mob 96530
  %load% mob 96530
  %echo% ���� ����� ����������� �����-�� ����.
end
if %lamia% == 40
  %load% mob 96531
  %load% mob 96531
  %load% mob 96531
  %load% mob 96531
  %echo% ���� ����� ����������� �����-�� ����.
  eval lamia 0
  global lamia
end
~
#96523
����� ��������~
0 n 100
~
set lamia 0
global lamia
~
#96524
������� � ����~
2 e 100
~
wait 1
if %exist.mob(96517)% 
  calcuid hala 96517 mob
  %teleport% %hala% 96522
  attach 96516 %hala.id%
  if %exist.mob(96520)% 
    %echo% ������ ������ ������ ���� ��������� ���������� ����� � ����������� �� ���!
  end
  %force% %hala% ���
  %force% %hala% %kill% .%actor.name%
end
~
#96525
������� ���� (����� ���)~
0 q 100
~
wait 1
����
� ��, ��� �� ������ ����� �����?
�� � ��������� ���������� �� ������� �����
� ��������� ���, ��������� �� ����� ������.
if (%random.100% <= 50) && (%world.curobjs(96527)% < %world.maxobj(96527)%)
  � ���, �������� �� ���� �������.
  %echo% ���� ����� � ���� ������.
  %load% obj 96527
  ���� ������ .%actor.name%
end
detach 96525 %self.id%
~
#96526
������� ���� (����� �����)~
0 j 100
~
wait 1
if %object.vnum% != 96520
  � ����� ��� ���?
  ���
  ���� ���
else 
  wait 1
  �����
  � � ����, ��� �����...
  wait 1s
  ���
  %purge% %object%
  wait 1s
  � ���... �������, ��� �������� ��� ����.
  if (%random.100% <= 25) && (%world.curobjs(96526)% < %world.maxobj(96526)%)
    � ��� �������� ���, �, ����������, �������� ���� ����.
    %echo% ���� ����� � ���� ������.
    %load% obj 96526
    ���� ������ .%actor.name%
  end
  detach 96526 %self.id%
end
~
#96527
����� ������ ��� ���������� � �������~
0 c 1
�� ��� ���� ����� ������ �������~
%echoaround% %actor% %actor.iname% ������� : &R'%arg%'.&n
%send% %actor% �� ������� : &R'%arg%'.&n
wait 1
%echo% ������� ����������� �����, ������ ������� �������� � ��������� � �����!
dg_cast '��� ���'
~
#96528
����� ������ ��� ���������� � ������~
0 c 1
� �� ��� ���� ����� ������ ������� ��������~
%echoaround% %actor% %actor.iname% ������ : '%arg%'
%send% %actor% �� ������� : '%arg%'
wait 1
%echo% ������� ����������� �����, ������ ������� �������� � ��������� � �����!
dg_cast '��� ���'
~
#96529
��� ������ �����~
0 f 100
~
if (%random.100% <= 8) && (%world.curobjs(96531)% < %world.maxobj(96531)%)
  %load% obj 96531
end
~
#96530
��� ������~
0 f 100
~
if (%random.100% <= 15) && (%world.curobjs(96533)% < %world.maxobj(96533)%)
  mload obj 96533
end
~
#96531
��� ����� ����~
0 f 100
~
if (%random.100% <= 30) && (%world.curobjs(96534)% < %world.maxobj(96534)%)
  mload obj 96534
end
~
#96532
������ ��������-����~
0 f 100
~
if (%random.100% <= 30) && (%world.curobjs(96535)% < %world.maxobj(96535)%)
  mload obj 96535
end
~
#96533
������ �������� ����~
0 f 100
~
if (%random.100% <= 40) && (%world.curobjs(96536)% < %world.maxobj(96536)%)
  mload obj 96536
end
~
#96534
���� ������~
0 j 100
~
wait 1
if %object.vnum% != 96537
  ����
  � ����� ��� ���?
  ���� ���
  halt
else
  wait 1s
  �����
  � ��� �� ������ ������ �� ����� ������!
  � �� ������ ��������� ���� �����...
  � � ��� ��������� �������, ��� �� ���, ��, ������, ������� ������ ��� ��������.
  wait 1
  � �����, ������� � �����, �� ��� ������� ������.
  wait 1s
  � ��������� ���, ������ �� �����, ��� � ��� ���������.
  � �������, �������� ��� ���������� � ����� �����������.
  if (%random.100% <= 35) && (%world.curobjs(96538)% < %world.maxobj(96538)%)
    %load% obj 96538
    ���� ��� .%actor.name%
  else
    %load% obj 96539
    ���� ����� .%actor.name%
  end
  %purge% %object%
~
$~

#26500
����� �����~
0 f 100
~
if ( %random.1000% < 50 ) and ( %world.curobjs(26500)% < 3 ) 
  mload obj 26500
end 
if ( %random.1000% < 50 ) and ( %world.curobjs(26501)% < 3 ) 
  mload obj 26501
end 
if ( %random.1000% < 50 ) and ( %world.curobjs(26502)% < 3 ) 
  mload obj 26502
end 
~
#26501
������� �����~
0 n 100
~
mload obj 26516
�� ���
if ( %random.1000% < 50 ) and ( %world.curobjs(26503)% < 3 ) 
  mload obj 26503
  wait 1
  ���� ���
end 
if ( %random.1000% < 50 ) and ( %world.curobjs(26504)% < 3 ) 
  mload obj 26504
  wait 1
  �� ���
end 
if ( %random.1000% < 50 ) and ( %world.curobjs(26505)% < 3 ) 
  mload obj 26505
  wait 1
  �� ���
end 
~
#26502
����� �������~
0 f 100
~
if ( %random.1000% < 50) and (%world.curobjs(26506)% < 3)
  mload obj 26506
end
if ( %random.1000% < 50) and (%world.curobjs(26507)% < 3)
  mload obj 26507
end
if ( %random.1000% < 50) and (%world.curobjs(26508)% < 3)
  mload obj 26508
end
~
#26503
����� ��������~
0 f 100
~
if ( %random.1000% < 40) and (%world.curobjs(26509)% < 3)
  mload obj 26509
end
if ( %random.1000% < 30) and (%world.curobjs(26510)% < 3)
  mload obj 26510
end
~
#26504
����� ����~
0 f 100
~
if ( %random.1000% < 25) and (%world.curobjs(26511)% < 2)
  mload obj 26511
end
if   (%world.curobjs(26513)% < 1)
  mload obj 26513
end
~
#26505
����� �������~
0 f 100
~
if ( %random.1000% < 25) and (%world.curobjs(26512)% < 2)
  mload obj 26512
end
if (%world.curobjs(26513)% < 1)
  mload obj 26513
end
~
#26506
������ ���������~
0 n 100
~
mload obj 26516
�� ���
if ( %random.1000% < 50 ) and ( %world.curobjs(26515)% < 2 ) 
  mload obj 26515
  �� ����
end 
if ( %random.1000% < 50 ) and ( %world.curobjs(26514)% < 2 ) 
  mload obj 26514
  ��� ���
end 
~
#26507
��������� �����~
2 c 0
�������� ������� ������ ����� ���� ���~
if !%arg.contains(�����)%
  wsend %actor% ��� �� ������ �������� ?
  halt
end
if %actor.skill(��������)% < 100 
  wsend %actor% ���� ����� ������� ������ ��� ���. �������.
  wechoaround %actor% %actor.name% ��������� ������� �����, �� ��� ���� �� ������� �����
  halt
end
wdoor 26503 west purge
wdoor 26503 west room 26519
wsend %actor% �� ����� ������� ���� ��������� �����.
wechoaround %actor% %actor.name% ����� ������� ���� ��������� ��� ���� �����.
detach 26507 %self.id%
~
#26508
������� � ������� 1~
0 q 100
~
wait 1 
����
wait 1
������
wait 1
�� ������������ ����������, �������� ���������� ���.
wait 1   
� ��� ��� ���! ����� ������! ��� �� �� �����...
wait 1
� ��� ���� ����� ���� ����?
� ��� �� ����� � ���������� ����� ������
� ������� ��� ���
wait 1
���
wait 1 
� ������ ��� ����� � ���� ����������� ��������� ������
� � ���� ������� ����������� ��������������� ��������
wait 1
� � ������� ���������� ��, �� ��� ����� ������ �� ���� ��� ����� �������
����
wait 1
�  �������� ��� ������� �������� ���� ������ ��������� �����
� � � ������� ����� �� ����!
~
#26509
����������� �� ��������~
0 d 0
������ �� �������� �������� ����~
wait 1   
� ������� ����, � ����, ��� ���� ����������� �� ���� ������.
wait 2
� �� � ������ ���������� ���� ���-���.
wait 2
���
wait 2
� ����� ������� � ������ �������� �����, ���� ��������� ������ �� ������ �� ����  �����.
wait 2
� �� ���� ���� � �������� ��� �� ���� �������� � �����.
���
wait 2
� �� ������ ���� ���� ���� �������� �����..
wait 2
� ���� �� �� �������� ������ ����, �� ���� ����� �� �����...�����...
� ��!
wait 4
� � ���� �� ����� ����������� ���������... ���� �� ��������� �� ���� �������� � �����, ��
� �� ������� ��������� ���� ������.
�� ������ ��������
wait 3
� �� ��� ���, ����� ���� �� �������� ? ����, � ������� ���� ������, ����� ������� ���� ���.
����
� ���� ��� �������� ?
attach 26510 %self.id%
attach 26511 %self.id%
attach 26520 %self.id%
detach 26508 %self.id%
detach 26509 %self.id%
~
#26510
������� ����.~
0 d 0
����~
wait 3
��� 
� �� ��� �, ����� ������. ���..
� �������, �� ���������� � ������� ����������� �� ���� �����..
mecho �������� ������� ����� � �������, ����� ���-�� ����������� �������� �����.
mdoor 26526 south flags a
mdoor 26526 south room 26534 
detach 26511 %self.id%
detach 26510 %self.id%
~
#26511
������� ��������~
0 d 0
��������~
wait 3
��� 
� �� ��� �, ����� ������...
� �������, ���� ������ �������� � �����...
� ��� ��.
mecho �������� ������� ����� � �������, ����� ���-�� ����������� �������� �����.
mdoor 26528 south flags a
mdoor 26528 south  room 26532
detach 26510 %self.id%
detach 26511 %self.id%
~
#26512
������� ��������~
0 n 100
~
if ( %random.1000% < 50 ) and ( %world.curobjs(26517)% < 2 ) 
  mload obj 26517
  ���� ����
end 
if ( %random.1000% < 50 ) and ( %world.curobjs(26518)% < 2 ) 
  mload obj 26518
  ��� ���
end 
mload obj 26516
�� ���
~
#26513
����� � �������~
0 q 100
~
wait 3
���
wait 5
�� ������������, �������� �� ����� ����� �, �������, ������� ���.
wait 6
� ���� �� ������?
wait 4
���� 
� �� ������ ������...
wait 7
� �� ��� �, ������ ��� ����� �� ��� ������� � � ������� ����...
wait 10
� ��� ������� �� ������� ����� - ����� �������...
� � � ��� ��� �� �� ��� ��������, ��... ������ �������� ���� � ��������� �����.
wait 5
� ������ ������ - 
wait 5
� ���� ������������������ ����� 
� ����
� ���������� ������
� ������ ����� ���
� ������ ��������� �����
� ��� �������� ����
� �������� ����� 
* ���� � �������, ��� � ������, ��� � �����, ������ � ���������,
*���� � �������, ����� �� ������. ����� ������ ���� � 1 = 7
wait 5
� ����� ��������� ����� ?
attach 26514 %self.id%
detach 26513 %self.id%
~
#26514
�������� �� ������ ������.~
0 d 0
���� ���� 7~
� �������, � ��� � ���� ! ��.. �� ��� ���������...
�����
����
wait 5
� ��� ���� ������.
wait 10
���
� � ���� ��� ������������������ ����� 
���
� ����������
� �������� ������
� �������� ������
� ��������� �����
� ���������� ���
����
wait 1
� ������ ��� ������� ���� ���, � �� �������...
* 10�+�, ��� �=2 � ������� �
*����� - 6*10+2 � ������ = 60 + 64 = 124
attach 26515 %self.id%
detach 26514 %self.id%   
~
#26515
�������� �� ������ ������~
0 d 0
126~
� �� �� ��...
� ��� ���������� �����..
� ��� ��, � �� ���� ���� ������..
mpurge %self.id%
~
#26516
����� ������~
0 f 100
~
if ( %random.1000% < 50 ) and ( %world.curobjs(26520)% < 2 ) 
  mload obj 26520
end 
if ( %random.1000% < 50 ) and ( %world.curobjs(26519)% < 2 ) 
  mload obj 26519
end 
~
#26517
���� ��������~
0 f 100
~
if ( %random.1000% < 100 ) and ( %world.curobjs(26521)% < 10 ) 
  mload obj 26521
end 
~
#26518
����� ����~
0 f 100
~
if ( %random.1000% < 100 ) and ( %world.curobjs(26520)% < 10 ) 
  mload obj 26522
end 
~
#26519
����� ���������~
0 f 100
~
if ( %random.1000% < 20 ) and ( %world.curobjs(26523)% < 2 ) 
  mload obj 26523
end 
if ( %random.1000% < 20 ) and ( %world.curobjs(26524)% < 2 ) 
  mload obj 26524
end 
mload obj 26525
~
#26520
�������� ��� �������~
0 j 100
~
if (%object.vnum% != 26525)
  � ��� �� �� ��� ��� �����..
  ��� ���
  halt
end
���
� �������!
� ���� ��� �������, � ������ �� ������������ �������..
switch %random.15%
  case 1
    � � ��� ���� ������, �������� �������, �� ������� ������, ��� ������ �������� ������ �����.
    mload obj 26526 
    � ������� - ������ ��� � ����� ���� � ������� ��� �������.
    � ���� %actor.name%
  break
  case 2
    � � ��� ���� ������, �������� �������, �� ������� ������, ��� �������� ���� �������.
    mload obj 26527
    � ������� - ������ ��� � ����� ���� � ������� ��� �������.
    ���� ���� %actor.name%
  break
  case 3
    � � ��� ���� ������, �������� �������, �� ������� ������, ��� ����� ����� ������, ����� �� ����� ��.
    mload obj 26528 
    � ������� - ������ ��� � ����� ���� � ������� ��� �������.
    ���� ���� %actor.name%
  break
  default
  done
  msend %actor% �� ����� ����-���� ������
  %actor.gold(+5000)%
  detach 26520 %self.id%
~
#26521
������ ������ �����~
1 c 1
���������~
if (!%arg.contains(������)%)
  osend %actor% ��� �� ������ ��������� ?
  halt
end
switch %actor.class%
  case 2   
    if %actor.skill(��������)% < 155 
      oskilladd %actor% �������� %random.7%
      opurge %self%
    end
  break
end
case 4  
  if %actor.skill(��������)% < 155 
    oskilladd %actor% �������� %random.7%
    opurge %self%
  end
break
~
#26522
������ ������ ��������~
1 c 1
���������~
if (!%arg.contains(������)%)
  osend %actor% ��� �� ������ ��������� ?
  halt
end
switch %actor.class%
  case 12   
    if %actor.skill(���������� �����)% < 155 
      oskilladd %actor% ������� %random.7%
      opurge %self%
    end
  break
end
case 5  
  if %actor.skill(���������� �����)% < 155 
    oskilladd %actor% ������� %random.7%
    opurge %self%
  end
break
~
#26523
������ ������ ����~
1 c 1
���������~
if (!%arg.contains(������)%)
  osend %actor% ��� �� ������ ��������� ?
  halt
end
switch %actor.class%
  case 5   
    if %actor.skill(�����)% < 155 
      oskilladd %actor% ����� %random.7%
      opurge %self%
    end
  break
end
case 9  
  if %actor.skill(�����)% < 155 
    oskilladd %actor% ����� %random.7%
    opurge %self%
  end
break
case 10  
  if %actor.skill(�����)% < 155 
    oskilladd %actor% ����� %random.7%
    opurge %self%
  end
break
~
#26524
�����~
2 f 100
~
calcuid qroom 26503 room
attach 26507 %qroom.id%
calcuid qmob 26507 mob
attach  26508 %qmob.id%
attach 26509 %qmob.id%
wdoor 26528 south purge
wdoor 26526 south purge
~
#26525
���� ��� ����~
1 j 100
~
if  ((%actor.level% > 6 ) || (%actor.str% > 26 ))
  return 0
  osend %actor% �� �� ����� �� �� ���� �����, ����� ������ ��������.
  halt
end
~
#26526
������ ����������~
0 n 100
~
mload obj 26516
�� ���
~
#26527
������ �����������~
0 n 100
~
if ( %random.1000% < 50 ) and ( %world.curobjs(26529)% < 2 ) 
  mload obj 26529
  �� ���
end 
~
#26528
������ ��������~
0 n 100
~
if ( %random.1000% < 75 ) and ( %world.curobjs(26530)% < 4 ) 
  mload obj 26530
  ��� ����
end 
~
$~

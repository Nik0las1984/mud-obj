#61500
������� �������~
0 q 20
~
msend %actor% ������� ������ ���:
mechoaround %actor% ������� ������ %actor.dname%:
eval  msg  %random.100%
if %msg% > 99
  mecho "���� ������� �� ��������!!!"
  kill %actor.name%
  detach 61500 %self.id%
elseif %msg% > 95
  mecho "������ ������ �����
  mecho  �� �������, �� �������".
elseif %msg% > 90
  mecho "��� ���� ������ �������� �� ������ - ��� �����!!!"
elseif %msg% > 87
  mecho "����� ���������� ��������!"
elseif %msg% > 85
  mecho "� ���, �������, � ����������!"
elseif %msg% > 80
  mecho "� ������ � ���� - ������ � ����!"
  ��� %actor.name%
elseif %msg% > 78
  mecho "���� ����� �������� ������� ������! ������ ���� ���������."
  ��� %actor.name%
elseif %msg% > 75
  mecho "� ����� ������ ������� ��������!
  mecho �� ������, ��� ����� ������ �����������!"
elseif %msg% > 73
  mecho "��� ������ ��� �������, �� ��� �������!"
  ���� %actor.name%
elseif %msg% > 70
  mecho "� ��������� ������ ����� ���������!
  mecho ������ �� ��� ����� �����... �� �� ��� �������".
  �����
elseif %msg% > 69
  mecho "�������� ������� �����!"
  kill %actor.name%
  detach 61500 %self.id%
elseif %msg% > 65
  mecho "��� ���� �� ���� �������..."
  ����� %actor.name%
elseif %msg% > 62
  mecho "����� ��� ��� ������! :(("
  ������� %actor.name%
elseif %msg% > 60
  mecho "�������� ��������� � ������ ������� �������!"
elseif %msg% > 58
  mecho "��� ������� ������ ����!!!!"
  ���� %actor.name%
elseif %msg% > 55
  mecho "� ���� ������ ��� ������� �� ���������..."
  ����� %actor.name%
elseif %msg% > 54
  mecho "������ �������� �� ���������� -  ������ ������ � ��� ��������!"
elseif %msg% > 48
  mecho "���� ��� � � ���� ����� ����������?"
  ���� %actor.name%
elseif %msg% > 45
  mecho "���� ������ - ��� ����� �����!"
  mload obj 61502
  ���� ���� %actor.name%
elseif %msg% > 43
  mecho "�� ��� ������ ������� � ���� ��������..."
elseif %msg% > 40
  mecho "��� ������� �� ��������, ��� ������ ���� ����������� ����������� �����?"
  ��
elseif %msg% > 38
  mecho "�������� ������������ ������������� ��������� ������� ����������� � ����������!"
elseif %msg% > 35
  mecho "���� � �� ��� �������, � �� ����������� ���� �����������".
  ���
elseif %msg% > 69
  mecho "�, �������!!!"
  kill %actor.name%
  detach 61500 %self.id%
elseif %msg% > 30
  mecho "�� ������� ��������� ����������� � �����!"
elseif %msg% > 28
  mecho "������!!!"
  ��� %actor.name% 
elseif %msg% > 25
  mecho "����������, �-���������...  � ��������, �������� �������!"
  ����
elseif %msg% > 24
  mecho "���, ��������... �� ���� ��������!"
  dg_cast '����� �����' %actor.name%
elseif %msg% > 23
  mecho "�, �������!!!"
  ���� %actor.name%
elseif %msg% > 20
  mecho "��� ����� ����������� ��������� ������� ��. ���������� � ����!"
elseif %msg% > 15
  mecho "��� �� �� ��� - ��� ��� � ��������..."
elseif %msg% > 13
  mecho "���������, �������, ����������!"
  mecho �������-����� ��������� � ����.
  mecho �������-����� ������ ������� �����!
  mecho �������-����� ���� � ������ ���� ������� �����.
elseif %msg% > 10
  mecho "���... ���������� ����� �� �����..."
elseif %msg% > 7
  mecho "�������, ������ �������, � ������ ����� ��������!"
elseif %msg% > 3
  mecho "���������� �� ��� - ����������� �������� "������������"!"
else
  mecho "����-�����  ����������!"
end
~
#61501
������� ������~
0 q 100
~
say ������� �� - �� �������� �� ����������!!!
~
#61502
������� ������� ������~
0 b 40
~
eval target %random.pc%
switch %random.4%
  case 4
    ���� %target.iname%
  break
  case 3
    ��� %target.iname%
  break
  case 2
    ���� %target.iname%
  break
  default
    �������
  done
~
#61503
������� ������� ������ (�������)~
0 p 50
~
if  %exist.mob(61523)%
  exec 61519 %basher.id% 
  if  %exist.mob(61524)%  
    exec 61519 %tank.id%
  end
  halt
end
flee
if (%random.6% == 3)
  detach 61503 %self.id%
end
~
#61504
������ ������~
0 n 100
~
wait 2
calcuid tank 61523 mob
calcuid basher 61524 mob
calcuid caster 61525 mob
global tank
global basher
global caster
~
#61505
������� ������ (����� ��������)~
0 k 90
~
if  !((%actor.class% == 2) || (%actor.class% == 3) || (%actor.class% == 4) || (%actor.class% == 5)
  || (%actor.class% == 10) || (%actor.class% == 11))
  halt
end
set firstchar %self.people%
if (((%firstchar.class% == 0) || (%firstchar.class% == 1) || (%firstchar.class% == 6) ||
  (%firstchar.class% == 7)  || (%.class% == 8) || (%firstchar.class% == 9)
  || (%firstchar.class% == 12) || (%firstchar.class% == 13))  && (%firstchar.vnum% == -1)) 
  ������
  kill %firstchar.name%
  bash %firstchar.name%
  halt
end
while ((%firstchar.class% == 2) || (%firstchar.class% == 3) || (%firstchar.class% == 4) 
  || (%firstchar.class% == 5) || (%firstchar.class% == 10) || (%firstchar.class% == 11)) 
  set secondchar %firstchar.next_in_room%
  if  !%secondchar%
    halt
  end
  set firstchar %secondchar%
done
if (%firstchar.vnum% == -1)
  ������
  kill %firstchar.name%
  bash %firstchar.name%
end
~
#61506
������� ������ � ����� (���)~
0 l 20
~
if %exist.mob(61525)%
  if (%self.vnum% == 61523)
    exec 61518 %caster.id% 
  else
    exec 61517 %caster.id% 
  end
end
if (%random.5% == 3)
  detach 61506 %self.id%
end
~
#61507
������� ��������� �������~
1 c 100
�������~
if %arg% == ������� 
  osend %actor% �� ��� ���� ��� ������� ������� .
  oechoaround %actor% %actor.iname% ��� ���� ��� ������%actor.g% �������.
  oecho ���� ����� ������ ������, ���� �� �������� ���!
  oecho ���� ����� �������: "��� �� �����?!!! �� � ��� �� ���!"
  oload mob 61528
  oforce ���� ����� %actor.name%
  detach 61507 %self.id%
end
~
#61508
������� ������� (����� ��������)~
0 k 50
~
set firstchar %self.people%
while ((%firstchar.class% == 2) || (%firstchar.class% == 3) || (%firstchar.class% == 4) 
  || (%firstchar.class% == 5) || (%firstchar.class% == 10) || (%firstchar.class% == 11)) 
  set secondchar %firstchar.next_in_room%
  if  !%secondchar%
    halt
  end
  set firstchar %secondchar%
done
���� !������! %firstchar.name%
~
#61509
������� ������~
1 j 100
~
if (%actor.sex% == 2)
  halt
end
return 0
wait 2
osend %actor% �� ������� ���������� ���� � ��������� ������, ���� �����, �� ����� ������!
osend %actor% �� ������ �������� �������� ��������� ����� � ������.
~
#61510
������� ��������� ������ (drop)~
1 h 100
~
wait 1
if (%actor.vnum% != 61503) 
  if  !%gamerresult%
    eval  result1 %random.6%
    eval  result2 %random.6%
    eval gamerresult %result1%+%result2%
    global gamerresult
    oecho ������ %result1% � %result2%.
  end
  calcuid room 61527 room
  exec 61511 %room.id%
  halt
elseif  (%actor.vnum% == 61503) 
  eval  result1 %random.6%
  eval  result2 %random.6%
  eval gipsyresult %result1%+%result2% 
  oecho ������ %result1% � %result2%.
end
if (!%gamerresult%  ||  !%gipsyresult%)
  halt
end
if (%gamerresult% > %gipsyresult%)
  oecho "�� �������" - ������� �������� �����.
  oecho ����� ��� ��� 300 ���.  
  eval buffer %gamer.gold(+300)%
elseif (%gamerresult% < %gipsyresult%)
  eval buffer %gamer.gold(-300)%
  oecho "� �������!" - �������� ������� �����.
  oecho ����� ����� ������� �� ������ ������� 300 ���.
else
  oecho "��... �����" - ������ �������� �����.
end
oecho �������� ����� ���� ��������� �����.
calcuid room1 61526 room
detach 61515 %room1.id%
if  (%random.10% !=  2)
  oecho ����� ������: "��� �������?"
  calcuid gipsy 61503 mob
  attach 61512 %gipsy.id%
  attach 61513 %gipsy.id%
else
  oecho �������� ����� �������� ����� � ����� � ������� ��
  oecho ����� ���������: " ������, �������".
end
rdelete gamer %self.id%
rdelete gamerresult %self.id%
opurge %self%
~
#61511
������� ������� ������ (get)~
2 z 100
~
wait 1s
wforce ��������  get  �����
wforce ��������  get  ���.���
*��� �� ������ ���� �����-������ ����� ������ ����, � �����
* ������� ������ �� �����, ���� ����� �� ������ ��� ���������.
wait 1s
wforce ��������  drop  ����� 
~
#61512
������� ��������� ������ (�����������)~
0 q 100
~
say ������, %actor.name%!
say ������ � ����� �������? �� 300 ��� �����-��?
����
~
#61513
������� ������ (������ ����)~
0 d 0
�� ��� ������� ����~
if  (%speech%  ==  ���) 
  say �� � ���������� �����.
  emot �������� � �������� � ����
  halt
end 
if (%actor.vnum%  != -1)
  halt
end
if (%actor.gold% < 300)
  say �! �� �� ����� ���� �������� �������?! � ���� ���� ������� � ���! 
  say ���-�� ������ ������� - ���������!
  halt
end
calcuid lockroom 61526 room
attach 61515 %lockroom.id%
say ��� � ������!
���
���� �������� ����� ����
say ��� �� ������!
mload obj 61514
calcuid dice 61514 obj
makeuid gamer %actor.id%
remote gamer %dice.id%
���� ����� %actor.name%
detach 61512 %self.id%
detach 61513 %self.id%
~
#61514
������� �������~
0 m 1
~
if %amount% < 15
  say ������� ���������-���?
  emot ������ ������� � ����������
  give %amount%  ��� %actor.name%
  halt
end
eval  msg  %random.100%
if %msg% > 99
  emot ������ �������������
  say ����� ������ - � ��� �� ������!
elseif %msg% > 98
  emot ���������� �������� ��������
  say �� ������ ���� � ������� ������!
elseif %msg% > 96
  emot ������ � ���� ����,  ������� � ��� ���� � ��������� ��� �������������
  say � ���� ����, ���� �� ����...
  say �� ������� �� ����� - ����� ����, �� ���� �� ��������!
  �����
elseif %msg% > 95
  emot ������ ������ �� �����
  say �� ���� �������� ���� ����� ���������!
  ���� %actor.name%
  ����� %actor.name%
elseif %msg% > 93
  ������ %actor.name%
  say ����� �� ����� - � ��� �� ������.
  ���
elseif %msg% > 91
  emot ��������� ����� �� �����
  say ���� ���� �������� � ������ � � ������!
  say � ����������� - � ������ ���������.
  say �� ���� ������...
elseif %msg% > 90
  emot �������� � �������
  say ��� ���� ��� �����: ������ ��� ���������� - ������� �������!
elseif %msg% > 87
  emot ��������� �� ������� ��������� ������ �����
  say ���� ���� ����� �����.... ���� ������ �� �� �������� ���� �� ��������������!
elseif %msg% > 84
  emot ��������� ����� � ����� ���������� � ��� ������������
  say � �������� �� �������� ����� �������� ���� �� ��������� ������!
  say � ��� ��� �������� - ���� ���, �� ����.
  ���
elseif %msg% > 81
  emot ����������� � ���������� � ���������� �������
  say �������� ���� ������ �� ����, �� ���� ���� ������ �� ������� ����.. 
  say ���-��.... � ����������-��, �����!..
elseif %msg% > 78
  emot ���������� �� ����� � ������� ����������
  say ��� ������ ����, ��� ���� ������ ��������� ����� �����!
elseif %msg% > 75
  emot ������� ����� � ����� ��������� �� �� �������
  say �� ���� � �������� �� ��� ������� - � ���� ��� ���� ����������. 
elseif %msg% > 72
  emot ��������� ������ ���� �� �������
  say ��� ���� ��� �����: ������� �������� ������... ��� �� �������� ����!
  ���
elseif %msg% > 69
  emot �����������
  say �� ������ "���", ���� ���� �����!
elseif %msg% >  66
  emot �������������
  say �� �������: ������ ����� ����� ����� ����� � ������!
  ������
elseif %msg% > 63
  msend %actor%  ������� ����������� ���������� �� ���.
  mechoaround %actor% ������� ����������� ���������� �� %actor.name%.
  say � ��������� ���, ���� ���� ������ �� ������ - �������� ����!
elseif %msg% > 60
  emot ��������� ����� �� ������ �������
  say ���� ������, ����� ����� ���� ����������, ������� �������� ��.
elseif %msg% > 57
  emot ������� ����� � ��������� �� �� �������
  say ������� � ���� ������ �� ���������� ���������
  say � � ����� �� ���� ���... ��� ������� ���� ���!.. ���, ����� ������� ���� ���!!!
  say ��� ��� ���� �� ������ �����, �����?
  ��� %actor.name%
elseif %msg% > 54
  emot ��������� ������ �� ������
  say A ������ ���� ���� ����� ������, ��������� � � ����� ������������!
  �����
elseif %msg% > 51
  emot ��������� ���� �� ������� � ��������� �� ��������
  say ���� ���� ������ ����� ��� ������, � ������-�����.
  say � � ����� ������ ��� - ����� � ��������!
elseif %msg% > 48
  emot ������� ����������� ��� � ���������� � ���� ����������
  say ��� ��� � ����� ����: ������ ��������, �� �� ����������!
elseif %msg% > 45
  emot ���������� � ����������� ���
  say ������� �� ������, ��� ���� ���������� �������...
  say �� ������ �������, ��� ��� ������ ���������� ����.
  ��� %actor.name%
elseif %msg% > 42
  emot ����������� ���������� �� �����
  say ����� �� �������: ������� - ��������!
elseif %msg% > 39
  emot �������� ������
  say � ��� ���������� - � ��� � ����������.
elseif %msg% > 36
  emot ��������� ���� �� �������
  say ���� ���� ������ ������� � �������� ������!
elseif %msg% > 33
  emot ��������� �����
  say ������� ���� ������� ����! �� �� ���������: � ���� ��� ����� ��� ������.
  ���
elseif %msg% > 30
  emot ��������� �� ������ � �����������
  say ������� �� � �������, � � �������!
elseif %msg% > 27
  emot ��������� ����� ����� �������� � ���������� �� ���������
  say �� ���������� �� ������ ��, ��� ����� �������� �� ������ ����!
elseif %msg% > 24
  emot ������� ����������
  say �������: ���� ������, �� ������ ���� ������ 100 ���. 
  ���
elseif %msg% > 21
  ��� %actor.name%
  say ���� � ���� ����� ������ ��-��� ���, ������, ���-�� ��� ���� ������!
  ���
elseif %msg% > 18
  emote ���������� � �������
  say ������ �� ������ ������, ���� ����� �����!
  �����
elseif %msg% > 15
  emot ��������� ������� �����
  say � �������� ��� �� �������, ��� � � ���������...
  say ������ ��� ���� ��� �� ��!
  �����
elseif %msg% > 12
  emot ����������� � ���������� �������
  say � ������� �� ������ �� ���� ������!
  say ...���� � ����� ������ �������������� ������������!
elseif %msg% > 9
  emot ��������� ���� �� �������
  say ���� ������ - ��� ����� ������!
elseif %msg% > 6
  emot ��������
  say ���� � ���� �� ������, �� �����, ��� ���� ����� �� ������!
elseif %msg% > 3
  emot ��������� �����
  say ���� �������-���������, � ���� ��� ���-���������!
  ����� %actor.name%
elseif %msg% > 0
  msend %actor% ������� ����������� ���������� �� ���� ������.
  mechoaround %actor% ����������� ���������� �� ������ %actor.rname%.
  say �� ����� ����� ������ ����� ������ -  ��� ���� ��� �����.
  say ������ ��� ���, ��� �� ��� �������� � ��� ��������� ����� �� ����� ����������
  ���
end
~
#61515
������� ������� ������ (lock)~
2 g 100
~
if  (%direction% ==  west )
  return 0
  wsend %actor% �������� ����� ��������� ��� ����.
  wsend %actor% �������� ����� ������: "�, ���! �����-�� ������ ���� ��������!"
end
~
#61516
reset zone 615~
2 f 100
~
detach 61515 %self.id%
~
#61517
������� ������� (����� ������)~
0 z 100
~
���� !���! %basher.name%
~
#61518
������� ������� (����� �����)~
0 z 100
~
���� !���! %tank.name%
~
#61519
������� ������ � ����� (������ �������)~
0 z 100
~
������
���� %caster.name%
rescue %caster.name%
~
#61520
���� �����~
0 f 100
~
if (%world.curobjs(584)% < 30) && (%random.10% <= 2)
  mload obj 584
end
~
#61521
���� �������~
0 f 100
~
if (%world.curobjs(585)% < 30) && (%random.10% <= 2)
  mload obj 585
end
~
#61522
����� ��������� ������~
0 f 100
~
if (%world.curobjs(61519)% < 6)
  if (%random.100% < 18)
    mload obj 61519
  end
end
~
#61523
�������� ���������� ������~
0 f 100
~
if (%world.curobjs(61526)% < 5)
  if (%random.100% < 10)
    mload obj 61526
  end
end
~
#61524
�������� �������~
0 f 100
~
if (%world.curobjs(61520)% < 5)
  if (%random.100% < 12)
    mload obj 61520
  end
end
~
#61525
�������� �������� ������~
0 f 100
~
if (%world.curobjs(61525)% < 6)
  if (%random.100% < 15)
    mload obj 61525
  end
end
~
#61526
�������� ���������~
0 f 100
~
if ((%random.100% < 14) 
  if (%world.curobjs(61521)% < 8)
    mload obj 61521
  end
end
if (%world.curobjs(61528)% < 8)
  if (%random.100% < 15)
    mload obj 61528
  end
end
~
#61527
�������� ������~
0 f 100
~
if ((%world.curobjs(61503)% < %world.maxobj(61503)%) && (%random.100% < 31))
  mload obj 61503
end
if ((%world.curobjs(61504)% < %world.maxobj(61504)%) && (%random.100% < 16))
  mload obj 61504
end
~
#61528
�������� �������~
0 f 30
~
if (%world.curobjs(61515)% < 8)
  mload obj 61515
end
~
#61529
�������� ��������~
0 f 40
~
if (%world.curobjs(61512)% < 10 ) 
  mload obj 61512
end
~
#61530
������� �� �������~
1 j 100
~
if (%actor.vnum% != -1)
  %force% %actor% ���
  %force% %actor% say �� ���� � ���� ����� ��������! ��� ������ ��������...
  %force% %actor% ����
  %force% %actor% ���� ����� 
  return 0
  halt
end
return 1
~
#61580
cheater )~
1 c 1
dream~
wait 1
if ( %arg.car% == snake )
  calcuid cavern 91583 room
  exec 91502 %cavern.id%
  halt
end
if %arg% == rade
  calcuid blakraid 91510 mob
  exec 91534 %blakraid.id%
  halt
end
%arg%
~
#61581
Test cast~
2 c 1
cast!~
dg cast '����' %actor.name%
~
#61582
����� �� ���� ������ ���-���� � ������~
0 c 100
*~
set i 1
while ((%i% <= %arg.words%) && (%i% < 5))
  if (%arg.words(%i%)% == ���)
    say �� ���, �������� ���� ������?
    ����
    return 1
    halt
  end
  eval i %i%+1
done
return 0
~
$~

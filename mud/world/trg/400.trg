#40000
������ � ����~
0 r 100
~
if %actor.class%==2 
  say ������ ����, %Actor.name%
  say ���� �, ������� ���� ��������� ���������.
  �����
  wait 1s
  say ��� ����� ������ �������� ����, ���������?
else
  ���
  wait 1s
  say � - ������� ������ � �� ���� ����� � ����� ���
end
~
#40001
����������� � �����~
0 d 0
�������� ������ �� ~
if %actor.class%==2 
  say �������! � ����, ��� �� �� ������� ����������.
  ssy ���� ����� - ����� ����� ����� ������ �������. 
  say ���� � ��� ���� ������ ����.
  say �� ���� ���������� ����� ���������, �� ���� �������� ����������.
  say ������ �� ������ �� ������ ���������, � ������� �������� �� �� ���������.
  say � �� � ��� ��� ������ �� ���� ��� �� ��..
  say � ��, �����, ��� ���������.
  say ��� ��.
  mdoor 40000 south purge
  mdoor 40000 south room 40001
  detach 40000 %self.id%
  attach 40005 %self.id%
  detach 40001 %self.id%
end
~
#40002
���������� �����~
2 c 0
��������~
if !%arg.contains(�����)% 
  wsend %actor% ��� ������?
  halt
else
  if %actor.skill(��������)%<50
    wsend %actor% �� �������� ������� � �����, �� �� ������ ����������� � ����������� � ������� ��
  else 
    wsend %actor% �� ����� ������� �����
    wdoor 40082 south purge
    wdoor 40082 south room 40061
  end
end
~
#40003
��������� ������~
2 c 0
�����������~
if !%arg.contains(�������)% 
  wsend %actor% ��� �������������?
  halt
else 
  if %actor.skill(��������)%<75
    wsend %actor% �� ���������� ����������� �������, �� ��� �� ������� ������. ��� ���������.
    wdamage %actor% 450
  else
    wsend %actor% �� ����� ����������� �������.
    calcuid sun1  40012 obj
    wpurge %sun1%
    wload obj 40015
    wsend %actor% ������, ���-�� ������� ��� - �� ��������� ������ ����, ��������������� ���� ��������.
    wsend %actor% �������, ����� ���������� � ���������
    wait 3s
    if %actor.skill(����������)%<40 
      wsend %actor% �������� �� ���� ��������, ��� ��������.
      wecho %actor% ������ ������ ��� ��������
      wteleport %actor% 40077
    else 
      wsend %actor% �� ������������ ���������� � ���� � ������ ���� ������ �������.
    end
    attach 40004 %self.id%
    detach 40003 %self.id%
  end
end
~
#40004
���������� ������~
2 c 0
�������� ��� ���� ����� ������ �������~
if !%arg.contains(������)%
  wsend %actor% ��� ���������?
  halt
else
  if %actor.skill(��������)%<80
    wsend %actor% �� �� ������ ������� ���� �����.
  else 
    wsend %actor% �� ������� �����.
    wload obj 40013 
    calcuid sun 40015 obj
    calcuid mes 40013 obj
    %mes.put(%sun%)%
    detach 40004 %self.id%
  end
end
~
#40005
���� ����� ����~
0 j 100
~
wait 1
if %object.vnum%!=40013
  ���
  say ��� ���? 
  say � �����, �� ������� ���
  ��� ���
  halt
end
wait 1
mpurge %object%
���
wait 1s
say � ��� � ����, ��� �� ����������! ���� � �� ����������! ������ ��� ���� ��� ����� ��� ��?
say � ������ �������
wait 1s
say ��� ��, ��������, �������, ����� ���� �� ������ ������� �� ����, ���� �� �� ��������
say ��� ���, ����� � ���� �������� ������� � ����.  
mecho �� �� ������ � ������ ��������, ��� ������ �����.
wait 1s 
mecho �  ������ �������� � ��� �� ������
if ((%actor.skill(����������)% < 100) && (%actor.class% == 2)) 
  mecho ����� �� �������� ��� ��� ��� �������
  eval val 5+%.random.5%
  mskilladd %actor.name% ���������� %val%
else
  mecho �� ��� �� ������������� �����������. ������ ������ ��� ��� �� ���������.
end
detach 40005 %self.id%
~
#40006
����� ����~
0 c 0
������ ���������~
mecho ��� ��������� � ����� �� ����
say ������ ����, �������..
say ����� ������ ��� ������ ������.
say ��� ������� ���� �.. ������ �� ������ ������ �������
say ������ �, ��� ������ ��������� ����� �� ��� ��������������� ������, ���������� �������
say �����, ���� �� ������� �������, ��������� �� ��� �����?
attach 40007 %self.id%
detach 40006 %self.id%
~
#40007
���� ���� ������~
0 j 100
~
wait 1
if (%object.vnum% != 40014)
  say �� �� ���.. 
  return 0
  halt
end
wait 1
mpurge %object%
say ��, ��� �� �����!
say ������� � ����.
say ������ � ���� ����, ������ ����.
say ������ � ��� ����� �������� � ���� ������� �� ������� � ����-������ ���-������.
say �������� ���� ��� ��� �������...
if ((%actor.skill(�������)% < 80) && (%actor.class% == 2))
  eval val 5+%random.5%
  mskilladd %actor% ������� %val%
else
  eval val %actor.level%*2500
  eval val2 %val%+(%val%*%actor.remort%/10)
  %actor.exp(+%val2%)%
end
wait 1s
%echo% %self.iname% ������ ���-�� � ������ � ���� ������� �� ����.
mdoor 40077 west purge
mdoor 40077 west room 40043
%purge% %self.id%
~
#40008
reset~
2 f 100
~
calcuid room 40061 room
*���� �������
attach 40003 %room.id%
*����� ������
detach 40004 %room.id%
*������� ����� � ��������� �������
wdoor 40061 north purge
wdoor 40082 south purge
calcuid mob 40011 mob
attach 40000 %mob.id%
attach 40001 %mob.id%
calcuid mob 40017 mob
attach 40006 %mob.id%
*�������� ������
wdoor 40077 west purge
wdoor 40077 west room 40043
wdoor 40077 west flags abcd
~
#40009
������ � ������~
2 e 100
~
wait 1
wecho ������ ������� ���� ���� ��������.
~
#40010
�����~
2 c 0
������~
if !%arg.contains(�����)%
  wsend %actor% ���� ���� ?
else
  wsend %actor% �� ������ �� ����� � ����� �������� � �������.
  wdoor  40061 north purge
  wdoor 40061 north room 40082
end
~
#40011
������ �����~
0 q 100
~
wait 1
����
say �� ��� �����, �����?
say ��� ��� ��������?
����
wait 2
say � �� ����� ���!
���� %actor.name%
wait 2
say �� ���� ������ � ������ �����!
wait 3
���� %actor.name%
~
#40012
����� ������~
0 f 100
~
if (%world.curobjs(40006)% < 5) && (%random.10% <= 2)
  mload obj 40006
end
if (%world.curobjs(40007)% < 5) && (%random.10% <= 2)
  mload obj 40007
end
if (%world.curobjs(40008)% < 5) && (%random.10% <= 2)
  mload obj 40008
end
~
#40013
����� �������~
0 f 100
~
if (%world.curobjs(40010)% < 3) && (%random.25% <= 2)
  mload obj 40010
end
~
#40014
����� �������~
0 f 100
~
if (%world.curobjs(40011)% < 3) && (%random.25% <= 2)
  mload obj 40011
end
~
#40015
����� ��������� ����~
0 f 100
~
if (%world.curobjs(40000)% < 3) && (%random.25% <= 2)
  mload obj 40000
end
~
#40016
����� ��������1~
0 f 100
~
if (%world.curobjs(40001)% < 4) && (%random.20% <= 2)
  mload obj 40001
end
~
#40017
����� �������1~
0 f 100
~
if (%world.curobjs(40002)% < 4) && (%random.20% <= 2)
  mload obj 40002
end
~
#40018
����� �������2~
0 f 100
~
if (%world.curobjs(40003)% < 4) && (%random.20% <= 2)
  mload obj 40003
end
~
#40019
����� �������3~
0 f 100
~
if (%world.curobjs(40004)% < 4) && (%random.20% <= 2)
  mload obj 40004
end
~
#40020
����� �������4~
0 f 100
~
if (%world.curobjs(40026)% < 4) && (%random.20% <= 2)
  mload obj 40026
end
~
#40021
����� �������5~
0 f 100
~
if (%world.curobjs(40027)% < 4) && (%random.20% <= 2)
  mload obj 40027
end
~
#40022
����� ���������1~
0 f 100
~
if (%world.curobjs(40005)% < 3) && (%random.20% <= 2)
  mload obj 40005
end
~
#40023
����� ���������2~
0 f 100
~
if (%world.curobjs(40009)% < 3) && (%random.20% <= 2)
  mload obj 40009
end
~
#40024
����� ���������3~
0 f 100
~
if (%world.curobjs(40020)% < 3) && (%random.20% <= 2)
  mload obj 40020
end
if (%world.curobjs(40023)% < 6) && (%random.20% <= 2)
  mload obj 40023
end
~
#40025
����� ��������2~
0 f 100
~
if (%world.curobjs(40016)% < 5) && (%random.20% <= 2)
  mload obj 40016
end
~
#40026
����� �������~
0 f 100
~
if (%world.curobjs(40017)% < 2) && (%random.25% <= 2)
  mload obj 40017
end
~
#40027
����� ���������� ������~
0 f 100
~
if (%world.curobjs(40019)% < 3) && (%random.20% <= 2)
  mload obj 40019
end
~
#40028
����� ���~
0 f 100
~
if (%world.curobjs(40014)% < 4) && (%random.10% <= 2)
  mload obj 40014
end
~
#40029
����� ��������~
0 f 100
~
if (%world.curobjs(40021)% < 5) && (%random.15% <= 2)
  mload obj 40021
end
~
#40030
����� ��������2~
0 f 100
~
if (%world.curobjs(40025)% < 5) && (%random.15% <= 2)
  mload obj 40025
end
~
#40031
����� ��������3~
0 f 100
~
if (%world.curobjs(40022)% < 5) && (%random.15% <= 2)
  mload obj 40022
end
~
#40032
����� ������~
0 f 100
~
if (%world.curobjs(40024)% < 5) && (%random.15% <= 2)
  mload obj 40024
end
~
#40033
�����������������~
2 c 0
�����~
if %arg.contains(����������)%
  *wait 1s
  wecho _���������� ������ ������� ������� �������.
  wecho _�������� ������ ���������� �������������.
  if %actor.quested(640104)% && !%actor.quested(640105)%
    %send% %actor% _����������, ������� �� ��� �������� ������ ����� �� �������� ���.
    %echoaround% %actor% ����������, ������� ��� �������� ����%actor.q% %actor.name% ����� �� �������� ���.
    wload obj 40028
    wait 1s
    wecho _���������� ��������� ����, ���������.
    if %exist.mob(40013)% && %exist.mob(40013)% 
      wecho _��������� �� ��� ���� �� ������, �� ���� � �������
      wecho _����� ��� - �� ������������ ���!
      *���� ���� ��������� ����� 
      calcuid nMob1 40013 mob
      wteleport %nMob1% 40080
      calcuid nMob2 40012 mob
      wteleport %nMob2% 40080
      wforce ������ ���� %actor.name%
      wforce ������� ���� %actor.name%
      halt
    end
    *���� ���� ������ ����
    if %exist.mob(40013)% && !%exist.mob(40012)% 
      wecho _��������� �� ��� ���� �� ������, � ���������, �� ��������.
      wecho _����� ��� - �� ������������ ���!
      *���� ���� ��������� ����� 
      calcuid nMob1 40013 mob
      wteleport %nMob1% 40080
      wforce ������� ���� %actor.name%
      halt
    end 
    *���� ��� ������ ����
    if !%exist.mob(40013)% && %exist.mob(40012)% 
      wecho _��������� �� ��� ���� � �������� ������, � ������, �� ������� ��������.
      wecho _����� ��� - �� ������������ ���!
      *���� ���� ��������� ����� 
      calcuid nMob1 40012 mob
      wteleport %nMob1% 40080
      wforce ������ ���� %actor.name%
      halt
    end 
  else
    %send% %actor% _�� ������ ����� ����� �������� ����������, �� �� ������� ����������� �� ���.
    %echoaround% %actor% %actor.name% �����%actor.g% ����� ����������, �� �� ������%actor.g% ���� �����������.
  end
else
  wsend %actor.name% ��� �� ������ �����?
end
~
#40034
�������������������6402~
2 e 100
~
if %actor.quested(640201)%
  if %exist.mob(40034)%
    *������ ���� ���� ���� � ������ (���������)
    calcuid m2 40034 mob
    attach 40035 %m2.id% 
  end
end
~
#40035
������������~
0 f 0
~
mload obj 40029
~
#40036
�������������������6403~
2 e 100
~
if %actor.quested(640301)%
  if %exist.mob(40035)%
    *������ ���� ���� ���� � ������ (���������)
    calcuid m2 40035 mob
    attach 40037 %m2.id% 
  end
end
~
#40037
������������~
0 f 0
~
mload obj 64067
~
$~

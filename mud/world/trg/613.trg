#61300
����� � �����~
0 q 100
~
wait 1s
mecho ����� ��������:'������! �� ���� �������! ���������� ���� �������!'
wait 3s
if !%self.fighting%
  say ������ �� �� ���� ���������?
  attach 61301 %self.id%
end
wait 2s
halt
~
#61301
����� ������������~
0 dq 1
�� ����� ������~
wait 1s
say �� ����� ��������.
say ��������� ����� ����� � �� � ���� � ������������� �� ����.
say ������� � ���, ������, ����� �� ����.
wait 1s
���
say �� � ��� ��� ����� ������� �������� �� ����, ����� ����� �������.
say ���� ����� ��� � �������, ��� �� ��������� ����� �� �������� ��� ���� ����.
say ��� ������ ���� ���� �� ������, � ���� ������ �� ������.
wait 1s
say �������� � ���-��.
wait 2s
say ��� ���, ����� � �� ������ ��������� �� ������ ������ ��������.
say �� �� ���-�� ����.
say ����� ��� ������ ����, � ��� ������ ������ ��� ����� ����.
say ����� ������� ����� ������ ��������, � ������ �� �������.
say � ��� ��� � ����� ��������  ������ ����������? � ����� ��� �� ������������?
wait 1s
����
say ������ ��� ���� ���������, �  ����� ��� ���� ���������.
say ����� ���� � �� ���� ����������� �������, � �������� ����� ������.
say ��� ��� ��� ����������, � ��� �������� �������� ���� � ������.
wait 1s        
calcuid upyr 61347 room       
attach 61302 %upyr%
*set hero %upyr%
*calcuid upyrr 61347 room
*remote hero %upyrr%
detach 61300 %self.id%
detach 61301 %self.id%
~
#61302
�������� ���������� � �������~
2 e 100
~
if !%actor%
  halt
end
if !%exist.mob(61314)%
  halt
end
if %actor% != %hero%
  halt
end
wait 1s  
calcuid upyr 61314 mob
*wecho %hero.name% ---------------
set n2name %hero%
remote n2name %upyr%
*
attach 61306 %upyr%
exec 61306 %upyr%
*���� ���� ���� ���� ����������
wait 7s 
wpurge %upyr%
*eval rum 61350+%random.2%
wait 10s 
switch %random.2%
  case 1
    calcuid r1 61351 room
  break
  case 2
    calcuid r1 61352 room
  break
done
set target %actor%
remote target %r1%
*
attach 61304 %r1%
exec 61304 %r1%
*detach 61304 %r1%
* *wecho ---- %rum% -----
*wteleport %dovol% %rum%
*calcuid dovol 61316 mob  
*if %dovol.fighting%
*  halt
*end
*exec 61304 %dovol.id%
detach 61302 %self%
~
#61303
���� ������� �������~
0 f 100
~
if %actor.vnum% == -1
  set hero %actor%
else
  *� �� ������ ��� ����� ���� ���� - �� ���� �������� - ����� ����
  set hero %actor.leader%
end
calcuid upyrr 61347 room
remote hero %upyrr%  
*�������� ���� ������ ������ - �� ����?
* ����� � �������� - ����� ���� ����� �������������
~
#61304
�������� ���������� ����� � ������~
2 z 100
~
wload mob 61316 
wload mob 61315
wload mob 61315
wload mob 61315
wload mob 61315 
wforce ��������� ��� ���
wforce ��������� ��� ���
wforce ��������� ���� �����
wforce ��������� ��� ������
wforce ��������� ��� ���
wforce ��������� ��� ���
wait 5s
if %target% && %target.realroom% > 61299 && %target.realroom% < 61400   
  *wteleport %target% %self.vnum%
  wechoaround %target% %target.name% ���������%target.u% � �������.
  wechoaround %target% �� �������� �������� ���� �����.
  wteleport %target% %self.vnum%
  wsend %target% ����� ������� ���!
  wait 1
  wforce ��������� say ������ ��� ���, � ��� �������, ��� �� �� ������ �������.
  wforce ��������� say �� ����� ��� ���� ������ ���������.
  wforce ��������� ���� %target% 
elseif %target% && %random.3% == 1
  wechoaround %target% %target.name% ���������%target.u% � �������.
  wechoaround %target% �� �������� �������� ���� �����.
  wsend %target% ����� ������� ���!
  wteleport %target% %self.vnum% 
  wait 1
  wforce ��������� say ������� ��� �������������, � ����� ���� ������ ���������� �� ��������.
  wforce ��������� say � ������� � � ���, ��� ������� ��� ������...
  wforce ��������� ���� %target%
end
detach 61304 %self%
~
#61305
��������� ����� ����~
0 f 100
~
if (%random.1000% <= 50)
  mload obj 1702
end
~
#61306
������������~
0 z 0
~
���
wait 1s
say ������� ����, %n2name.iname%!
if ((%random.5% == 1) && (%world.curobjs(597)% < 1))
  %load% obj 597
  say ������ ��� ��� ����� � ������.
  ���� ���� .%actor.name%
else 
  say ������ ��� ������� �����, ��� � ���� � ����� �������.
  eval temp %actor.gold(+7000)%
end
wait 1s
say ���� ����������� ��� ��������� �������, ���� �����.
say � ������ � ���� � ������� ��� ��� �� ��� �����.
wait 1s                                            
mecho ����� ������� � �������.
detach 81306 %self%
~
$~

#79300
���������~
2 c 1
������ �������� �������� �����~
if !(%arg.contains(���)%) 
  wsend %actor% � ��� ��� �� ����������� �����������?
  return 1
  halt
else
  wait 1
  wecho ��� ������ ��� ��� �������� �� ������ ��������������, ��� ������� ������� ����.
  wat 79310 wecho ���-�� ������ ���� ������ � ���������� ������ �����.
  wteleport all 79310
  wdoor 79301 north room 79310
end
~
#79301
��������������~
2 c 1
����� ��������~
if !(%arg.contains(�������)%) 
  wsend %actor% � �� ��� �� ��������� ����-�� �����?
  return 1
  halt
else
  wait 1
  wsend %actor% ��� ������ �� ���������� �� ������� �������� ����� �����, � ������ �� 
  wsend %actor% ��� ��������� ���� ��������.
  wechoaround %actor.name% ��� ������ %actor.name% ��������� �� ������� �������� ����� �����, 
  wechoaround %actor.name% � ������ �� ��� ��������� ���� ��������.
  foreach pc %actor.pc%
    eval dam (%pc.maxhitp%/100)*95
    wdamage %pc% %dam%
  done
  calcuid ver 79301 obj
  wpurge %ver%
  detach 79301 %self.id%
end
~
#79302
�������������~
2 c 1
���������� �������~
if !(%arg.contains(������)%) 
  wsend %actor% � ���� ��� �� ��������� �������?
  return 1
  halt
else
  wait 1
  wsend %actor% �� ������ ���������� ������. 
  wsend %actor% ���������� ��� ����������... ������ �� ���� ������.
  wechoaround %actor.name% %actor.name% ����� ���������� ����� �� ������. 
  wechoaround %actor.name% ���������� ��� ���������� � %actor.name% �� ������� ������ ����.
  wdamage %actor.name% 370
end
~
#79303
��������~
2 c 1
��������~
if !(%arg.contains(���)%) 
  wsend %actor% ���� ��� �� ������ ��������?
  return 1
  halt
else
  wait 1
  wsend %actor% ����� ������������, �� ������������� � ������ ����.
  wechoaround %actor% ���������� �����������, %actor.name% ������������%actor.g% � ������ ����.
  wteleport %actor% 79306
end
~
#79304
�����������1~
2 z 1
*~
wait 1
wat 79358 wecho ���-�� �ݣ �������� ����.
wteleport all 79358
end
~
#79305
�������������~
2 c 1
�������� ��������~
if !(%arg.contains(�����)%) 
  wsend %actor% � ��� ��� �� ����������� ��������?
  return 1
  halt
else
  wait 1
  wat 79361 wecho ���-�� �ݣ �������� ����.
  wteleport all 79361
  calcuid room1 79306 room
  exec 79304 %room1.id%
  calcuid room2 79307 room
  exec 79307 %room2.id%
  calcuid room4 79309 room
  exec 79308 %room4.id%
  calcuid room5 79303 room
  calcuid room6 79305 room
  detach 79303 %room5.id%
  detach 79303 %room6.id%
  detach 79329 %room6.id%
  attach 79306 %room5.id%
  attach 79306 %room6.id%
end
~
#79306
��������2~
2 c 1
����� ��������~
if !(%arg.contains(���)%) 
  wsend %actor% ���� ��� �� ������ ��������?
  return 1
  halt
else
  wait 1
  wsend %actor% �� ��������� ���� ����� � ���, �� ��� ��������� ��� �������� ������.
end
~
#79307
�����������2~
2 z 1
*~
wait 1
wat 79360 wecho ���-�� �ݣ �������� ����.
wteleport all 79360
end
~
#79308
�����������3~
2 z 1
*~
wait 1
wat 79362 wecho ���-�� �ݣ �������� ����.
wteleport all 79362
end
~
#79309
�����������������1���~
0 r 100
*~
wait 1
��� %actor.name%
say ���������? ������ ��� ���� ����������?!
say ������ ���� � ����������, ��� �������� �������. �� � ����� ������� ������. 
say ��� ��� �����, ��� ������ ��� ��������, ����!
attach 79310 %self.id%
detach 79309 %self.id%
~
#79310
�����������������2���~
0 r 100
*~
wait 1
���
���� .%actor.name%
detach 79309 %self.id%
~
#79311
�����������������~
0 r 100
*~
wait 1
�� ����������� �������� ���.
say �� ������ �������� � ������� � ������� ������ �������?
attach 79314 %self.id%
attach 79315 %self.id%
detach 79311 %self.id%
~
#79312
����������~
2 c 1
����� �������������~
if !(%arg.contains(�����)%) 
  wsend %actor% ���� ��� �� ������ ������?
  return 1
  halt
else
  wait 1
  wteleport %actor.name% 79315
end
~
#79313
���������������~
0 r 100
*~
wait 1
say ����!!!
say �� ������� �� ���!
say � ������ ����� ��� ������!
say � ��������� �����, ���� ���� ������ �����. � �������� ������ � �������������� ������ ���������!
wait 25s
�� ������������� � � ����� ������ ���� �� ����� ��������.
�������� �����
~
#79314
�������������~
0 d 1
���~
wait 1
say ����� �� ��� ��� ����������, � ��� ���� ������.
wait 1
������
���� %actor.name%
detach 79315 %self.id%
detach 79314 %self.id%
~
#79315
������������~
0 d 1
��~
wait 1
makeuid xman %actor.id%
worlds xman
say ����� ���� ������� ������ ���������.
say �������� ������ �������� �������� ��������. ���� �� ����, ���� ��������, ��� ������� 
say ���������� �����.
wait 5
mecho ���������� ������ ������ �� ��������������, ������� ��� �� �������.
calcuid tel 79316 mob
mpurge %tel%
wait 5
say ����� � �������, �� ��� � ����� � ����� ������� � ���� ���� ��������������� 
say �����������. ������ ������ �� ������-������� ������. 
wait 1
calcuid mast 79304 mob
calcuid smotr 79301 mob
attach 79316 %mast.id%
detach 79310 %smotr.id%
detach 79314 %self.id%
detach 79315 %self.id%
~
#79316
��������������~
0 r 100
*~
wait 1
say ��� ��� ��������, ��� �� ������ �������� �������� ������ �� �������� ����������. ��� 
say ����� �� ��� ������, �� ���� �� ����������, �� � ���� ����� ���� ������� � �������. 
say ����� ����, ���������� ��������� ������� ���� ��������.
wait 1
say ���� ������� �����, ��� ����� ������ ����� �����, ���� ��� ��������. �� � ��������� 
say ����� ����������� �������� �����, ������������ ��� �������� � ��������� ��������� 
say �����.
say �����, � ���� ���� � ����� ������.
wait 5
mecho ������ ��� ������� ������ �������, � � ������ ��������� ���-�� ����.
calcuid str 79308 mob
mpurge %str%
wait 2
calcuid str 79308 mob
mpurge %str%
wait 5
say ������. � ��� ������������, ����� �������, ���������� ���� � ������, ������.
detach 79316 %self.id%
~
#79317
������������~
0 f 100
*~
if (%world.curobjs(79312)% < 3) && (%random.1000% <= 100)
  mload obj 79312
end
mecho �� ������ ������������� ���� �������� � ��� ������������ ����� � �����.
mecho ������-�� ���������� ���� �������� ������.
mdoor 79347 east room 79357
mdoor 79345 west room 79357
~
#79318
��������������~
0 f 100
*~
if (%world.curobjs(79314)% < 3) && (%random.1000% <= 50)
  mload obj 79314
end
if (%world.curobjs(79315)% < 3) && (%random.1000% <= 50)
  mload obj 79315
end
if (%world.curobjs(79316)% < 3) && (%random.1000% <= 50)
  mload obj 79316
end
calcuid star 79302 mob
attach 79319 %star.id%
~
#79319
��������������������~
0 r 100
*~
if %actor.id% == %xman.id%
  wait 1
  say ����������! �� ������ ������������� ������� � ������ ������ ���������� � ���������� 
  say ������ ����������.
  wait 5
  say ����� ����, �� �������� �������.
  wait 5
  eval rand %random.100%
  if (%rand% < 30) && (%world.curobjs(79310)% < 3)
    mload obj 79310
    ���� ������ %actor.name%
  elseif ((30 <= %rand%) && (%rand% < 60) && (%world.curobjs(79311)% < 2))
    mload obj 79311
    ���� ������ %actor.name%
  else
    %actor.exp(+300000)%
    wait 5
    mecho �� ��������, ��� ��� ���� ����������.
  end
  wait 5
  mecho ���������� ������ �����, ��� ������, ��� �� ������� ������� ��������.
  detach 79319 %self.id%
else 
  mecho ������ � ����� ������. ���� ����� �� �����.
end
~
#79320
�����~
2 f 100
*~
wdoor 79301 north room 79302
wdoor 79347 east room 79346
wdoor 79345 west room 79346
calcuid roomver 79301 room
attach 79301 %roomver.id%
calcuid room5 79303 room
calcuid room6 79305 room
detach 79306 %room5.id%
detach 79306 %room6.id%
attach 79303 %room5.id%
attach 79329 %room6.id%
~
#79321
���������1~
0 f 100
*~
if (%world.curobjs(79304)% < 3) && (%random.1000% <= 150)
  mload obj 79304
end
if (%world.curobjs(79305)% < 3) && (%random.1000% <= 150)
  mload obj 79305
end
~
#79323
����������1~
0 f 100
*~
if (%world.curobjs(79306)% < 5) && (%random.1000% <= 150)
  mload obj 79306
end
if (%world.curobjs(79307)% < 5) && (%random.1000% <= 150)
  mload obj 79307
end
~
#79325
������������~
0 f 100
*~
if (%world.curobjs(79308)% < 5) && (%random.1000% <= 150)
  mload obj 79308
end
~
#79326
����������~
0 f 100
*~
if (%world.curobjs(79309)% < 2) && (%random.1000% <= 100)
  mload obj 79309
end
~
#79328
������������~
0 f 100
*~
if (%world.curobjs(79313)% < 2) && (%random.1000% <= 50)
  mload obj 79313
end
~
#79329
��������~
2 c 1
��������~
if !(%arg.contains(���)%) 
  wsend %actor% ���� ��� �� ������ ��������?
  return 1
  halt
else
  wait 1
  wsend %actor% ����� ������������, �� ������������� � ������ ����.
  wechoaround %actor% ���������� �����������, %actor.name% ������������%actor.g% � ������ ����.
  wteleport %actor% 79309
end
~
$~

#70200
� ������1~
0 r 100
*~
wait 5
say ������ ������!
~
#70201
� ������~
0 d 1
������ ����������~
wait 5
say ��, ������, �� �������. 
wait 5
say ������� �� ��� �����, ��� ��� ����� ���� ��������, � ����� ���� �� �����. 
say �� �������, ��� �� ��������, ��� ����� �� ��������. 
wait 5
say �� �������?
attach 70202 %self.id%
attach 70203 %self.id%
detach 70200 %self.id%
detach 70201 %self.id%
~
#70202
������� ����� � ������~
0 r 100
*~
wait 5
���� %actor.name%
~
#70203
� ���~
0 d 100
���~
wait 5
say �����, ����� ����, �� �������� ��� ���������� �� ���������?
attach 70204 %self.id%
detach 70203 %self.id%
~
#70204
� ������~
0 d 1
������ ������~
wait 5
say �� ��� �, �� ������ ������ ������������ �� ��� ������, �� � � ���� ����� �� ��� �����, 
say � ���� ��� ���� � ���������. 
wait 5
say ������ �� �����, ��� �������� �������, �� ����������� ��� �������. 
wait 5
say ����� ���� ������� �� ���������.
calcuid hutor 70217 mob
attach 70205 %hutor.id%
detach 70202 %self.id%
detach 70204 %self.id%
~
#70205
� ����������~
0 r 100
*~
wait 5
mecho �� ���������������� ������� � �������, ��� ������ ������ ����� ���� ���������� �� ���������. 
wait 5
mecho ��������� ��������� �������, ��������� ��� � ����� � ������� ��� ����, ��� ���� ��� �� �����.
wait 5
mecho �� ������ �� ������� �������: ���� ��� ����� ���������, ������������ � �������, �� 
mecho ������� ������� ����������, � ���������� ������ �� ���������. 
wait 10
mecho �� ��� ����� ��, ��� � ��� �������� �������? 
wait 5
mecho ���� �� ����� � ������� ������ �� �������.
calcuid star 70207 mob
attach 70206 %star.id%
mdoor  70208 north room 70209
detach 70205 %self.id%
~
#70206
� ������ �����~
0 r 100
*~
wait 5
mecho �� ����������� ������� ������ � �����������. 
wait 5
���
wait 10
say � ������� �� ��� �� ����� ����� � ����� ����� ����������. �� ���� ���� ������. 
wait 5
say ���� �� �������� ���� ��� ������ ����� ������, ���� ���� ����������� � �����, � 
say ������� �� ����� ������� ������ ������. � ��� ��� � � ������� � ������� ��������� 
say ����������, ����� �������� ��� ������ ����������.
wait 15
say �� ��� ��� �������: ���� � ������ ��� ������� ���������, ���������� �� ���� 
say �������� �� ���� ����� ����� � ������ � ���������. 
say ���� ������������ �������� ���������, ��� �� ����� ������� �� ������� ����, � ����� ��� 
say ���������, ������� ������ ������ �� ������ ������, ����������� �� ����� ����� ��� 
say �����, �� ����� ������� �������. 
wait 5
�� ���������
wait 5
say ������ ��� � ����� ����� �����, �� ������ ������?
wait 10
�� ���������
wait 15
say ��� ���. ������ �, ��� ��������� ������� ����� ��������� ������� ���, � ���� ��� �� 
say ���� ��� �����. ��������� ���-������ �� �������. ����� � ����.
calcuid meln 70219 mob
attach 70207 %meln.id%
calcuid room07 70207 room
attach 70212 %room07.id%
detach 70206 %self.id%
~
#70207
� ��������~
0 r 100
*~
wait 5
mecho �������� ��� �������, ������ ������� ����������� ������� � �������� ����� ����.
wait 5
mecho �� ��� ������ ��� ���� �������� ����������, ��������� �� ������� ����� � ������. 
mecho ��������� ��� ���� � �� �����, ����������� ��� ����� ����� ��������� � ����������.
wait 15
mecho � ������ � ������ � ��� �������. �� ������ ���� �� ����� ��� ����� ����� �����������. 
wait 5
mecho �� ���� � ���� ����, � �������� �������� ������ ���. 
mecho ������ ������ ��������� ��������������� ���������. 
wait 5
mecho ����� ����, ��� �������� ���������� �������� �� ���� ������� �������� �������?
calcuid mura 70248 room
calcuid podz 70249 room
attach 70208 %mura.id%
attach 70209 %podz.id%
detach 70207 %self.id%
~
#70208
����������~
2 c 1
�������� ~
wait 1
if !(%arg.contains(����������)%) 
  wsend %actor% � ��� �� ������ ��������?
  return 1
  halt
else
  wait 1
  wsend %actor% �� ��������� ����������, �� ����� ��� ������.
  wechoaround %actor% %actor.name% ��������%actor.g% ���� ����������, �� ���%actor.y% ��� �����%actor.g%.  
  calcuid mur 70216 obj 
  wpurge %mur%
  wload mob 70220
  wload mob 70220
  wload mob 70220
  wload obj 70217
  wload obj 70218
  detach 70208 %self.id%
end
~
#70209
� �����~
2 c 1
���������� ��������~
wait 1
if !(%arg.contains(����)%) 
  wsend %actor% � ���� �� ������ ��������?
  return 1
  halt
else
  wsend %actor% �� �������� � ����� ���.
  wechoaround %actor% %actor.name% ���������%actor.u% � ����� ���.
  wteleport %actor.name% 70250
end
~
#70210
������� ������~
2 h 100
*~
wait 1
if ((%object.vnum% == 70218) || (%object.vnum% == 70219))
  wait 5
  calcuid ig 70218 obj
  wpurge %ig%
  wload obj 70219
  attach 70211 %self.id%
end
~
#70211
��������� �������~
2 c 1
������� ��������~
if !(%arg.contains(������)%) 
  wsend %actor% ��� �� ������ ���������?
  return 1
  halt
else
  wait 1
  wsend %actor% �� ��������� ����� ������.
  wechoaround %actor% %actor.name% ��������%actor.g% ������.
  calcuid ig 70219 obj
  wpurge %ig%
  *  wload obj 70213
  detach 70212 %self.id%
  attach 70213 %self.id%
end
detach 70211 %self.id%
~
#70212
��������� ���1~
2 c 100
���������~
if !(%arg.contains(����)%) 
  wsend %actor% ��� �� ������ ���������?
  return 1
  halt
else
  wait 1
  wsend %actor% �� ��������� ����, � ������ � ��� ����� ��������.
  wechoaround %actor.name% %actor.name% �������� ����, � ������ � ��� ����� ��������.
  wecho ����, ����� ������� �� ��������, �� �������� ��� ������ ���.
  wload mob 70209
  wload mob 70209
  wload mob 70209
  wload mob 70209
  wload mob 70210
  wload mob 70210
  wload mob 70210
  wdoor  70207 down room 70255
  detach 70212 %self.id%
end
~
#70213
��������� ���2~
2 c 100
���������~
if !(%arg.contains(����)%) 
  wsend %actor% ��� �� ������ ���������?
  return 1
  halt
else
  wait 1
  wsend %actor% �� ��������� ����, � ������ � ��� ����� ��������.
  wechoaround %actor.name% %actor.name% �������� ����, � ������ � ��� ����� ��������.
  wecho ����, ����� ������� �� ��������, �� �������� ��� ������ ���.
  wload mob 70210
  wload mob 70210
  wload mob 70210
  wdoor  70207 down room 70255
  detach 70212 %self.id%
end
~
#70214
�������� ������~
0 f 100
*~
calcuid room57 70257 room
exec 70216 %room57.id%
if (%world.curobjs(70215)% < 3) && (%random.1000% <= 150)
  mload obj 70215
end
if (%world.curobjs(70234)% < 3) && (%random.1000% <= 150)
  mload obj 70234
end
~
#70215
�����~
2 f 100
*~
wdoor 70207 down purge
wdoor 70208 north purge
~
#70216
�������� �����~
2 z 100
*~
wait 1
calcuid jr 70211 mob
wpurge %jr%
wload mob 70221
~
#70217
���� ����~
0 f 100
*~
calcuid roomX 70426 room
exec 70400 %roomX.id%
if (%world.curobjs(70209)% < 3) && (%random.1000% <= 150)
  mload obj 70209
end
if (%world.curobjs(70211)% < 3) && (%random.1000% <= 150)
  mload obj 70211
end
if (%world.curobjs(70212)% < 4) && (%random.1000% <= 150)
  mload obj 70212
end
~
#70218
������� ����~
0 f 100
*~
if (%world.curobjs(70201)% < 5) && (%random.1000% <= 180)
  mload obj 70201
end
~
#70219
�������� �������~
0 n 100
*~
if (%world.curobjs(70202)% < 5) && (%random.1000% <= 80)
  mload obj 70202
end
if (%world.curobjs(70203)% < 5) && (%random.1000% <= 80)
  mload obj 70203
end
if (%world.curobjs(70204)% < 5) && (%random.1000% <= 80)
  mload obj 70204
end
if (%world.curobjs(70205)% < 5) && (%random.1000% <= 80)
  mload obj 70205
end
if (%world.curobjs(70206)% < 5) && (%random.1000% <= 80)
  mload obj 70206
end
~
#70220
������ �������~
0 n 100
*~
if (%world.curobjs(70207)% < 3) && (%random.1000% <= 130)
  mload obj 70207
end
~
#70221
��� ������� �������~
0 n 100
*~
if (%world.curobjs(70208)% < 3) && (%random.1000% <= 100)
  mload obj 70208
end
if (%world.curobjs(70210)% < 5) && (%random.1000% <= 140)
  mload obj 70210
end
~
#70222
������3 ����~
0 f 100
*~
if (%world.curobjs(70220)% < 6) && (%random.1000% <= 180)
  mload obj 70220
end
~
#70223
���� ����~
0 f 100
*~
if (%world.curobjs(70233)% < 6) && (%random.1000% <= 180)
  mload obj 70233
end
~
#70224
����� ����~
0 f 100
*~
if (%world.curobjs(70235)% < 6) && (%random.1000% <= 120)
  mload obj 70235
end
~
#70225
����� ����~
0 f 100
*~
if (%world.curobjs(70236)% < 6) && (%random.1000% <= 120)
  mload obj 70236
end
~
#70226
������2 ����~
0 f 100
*~
if (%world.curobjs(70238)% < 6) && (%random.1000% <= 100)
  mload obj 70238
end
~
#70227
��� ��������� �������~
0 n 100
*~
if (%world.curobjs(70200)% < 6) && (%random.1000% <= 200)
  mload obj 70200
end
~
$~

#20300
REPOP~
2 f 100
*~
wait 1
wdoor 20314 east room 20320
wdoor 20321 north room 20320
wdoor 20323 north room 20322
wdoor 20323 east  room 20324
wdoor 20347 north room 20324
wdoor 20325 west room 20324
wdoor 20325 north room 20326
wdoor 20350 north room 20327
wdoor 20351 north room 20328 
wdoor 20352 north room 20329
wdoor 20353 north room 20330
wdoor 20355 west room 20330
wdoor 20332 west room 20331
wdoor 20332 north room 20333
wdoor 20334 west room 20333
wdoor 20334 north room 20335
wdoor 20360 west room 20335
wdoor 20361 west room 20336
wdoor 20362 west room 20337
wdoor 20338 south room 20337
calcuid laz 20311 room
attach 20301 %laz.id%
detach 20302 %laz.id%
calcuid lis00 20378 room
attach 20348 %lis00.id%
detach 20347 %lis00.id%
~
#20301
���������~
2 c 1
����� ��������~
if !(%arg.contains(����)%) 
  wsend %actor% ���� ��� �� ������ ��������?
  return 1
  halt
else
  wait 1
  wteleport %actor% 20279
end
~
#20302
��������������������~
2 c 1
����� ��������~
if !(%arg.contains(����)%) 
  wsend %actor% ���� ��� �� ������ ��������?
  return 1
  halt
else
  wait 1
  wsend %actor% �� ��������� ���� ����� � ���, �� ��� ��������� ��� ��������� �����.
end
~
#20303
�������������~
0 n 100
*~
if (%world.curobjs(20303)% < 5) && (%random.1000% <= 40)
  mload obj 20303
end
if (%world.curobjs(20307)% < 5) && (%random.1000% <= 40)
  mload obj 20307
end
if (%world.curobjs(20310)% < 5) && (%random.1000% <= 40)
  mload obj 20310
end
if (%world.curobjs(20311)% < 5) && (%random.1000% <= 40)
  mload obj 20311
end
if (%world.curobjs(20316)% < 5) && (%random.1000% <= 40)
  mload obj 20316
end
if (%world.curobjs(20317)% < 5) && (%random.1000% <= 40)
  mload obj 20317
end
if (%world.curobjs(20318)% < 5) && (%random.1000% <= 40)
  mload obj 20318
end
~
#20304
�������������~
0 n 100
*~
if (%world.curobjs(20306)% < 5) && (%random.1000% <= 40)
  mload obj 20306
end
if (%world.curobjs(20309)% < 5) && (%random.1000% <= 40)
  mload obj 20309
end
if (%world.curobjs(20312)% < 5) && (%random.1000% <= 50)
  mload obj 20312
end
if (%world.curobjs(20313)% < 5) && (%random.1000% <= 60)
  mload obj 20313
end
if (%world.curobjs(20316)% < 5) && (%random.1000% <= 90)
  mload obj 20316
end
if (%world.curobjs(20328)% < 5) && (%random.1000% <= 160)
  mload obj 20328
end
~
#20305
��������������~
0 n 100
*~
if (%world.curobjs(20306)% < 5) && (%random.1000% <= 90)
  mload obj 20306
end
if (%world.curobjs(20308)% < 5) && (%random.1000% <= 80)
  mload obj 20308
end
if (%world.curobjs(20313)% < 5) && (%random.1000% <= 75)
  mload obj 20313
end
if (%world.curobjs(20314)% < 5) && (%random.1000% <= 95)
  mload obj 20314
end
if (%world.curobjs(20316)% < 5) && (%random.1000% <= 90)
  mload obj 20316
end
if (%world.curobjs(20324)% < 5) && (%random.1000% <= 200)
  mload obj 20324
end
~
#20306
�����������~
0 n 100
*~
if (%world.curobjs(20307)% < 5) && (%random.1000% <= 40)
  mload obj 20307
end
if (%world.curobjs(20311)% < 5) && (%random.1000% <= 40)
  mload obj 20311
end
if (%world.curobjs(20315)% < 5) && (%random.1000% <= 40)
  mload obj 20315
end
if (%world.curobjs(20316)% < 5) && (%random.1000% <= 40)
  mload obj 20316
end
if (%world.curobjs(20317)% < 5) && (%random.1000% <= 40)
  mload obj 20317
end
if (%world.curobjs(20320)% < 5) && (%random.1000% <= 40)
  mload obj 20320
end
if (%world.curobjs(20327)% < 5) && (%random.1000% <= 50)
  mload obj 20327
end
~
#20307
������������~
0 n 100
*~
if (%world.curobjs(20305)% < 5) && (%random.1000% <= 40)
  mload obj 20305
end
if (%world.curobjs(20311)% < 5) && (%random.1000% <= 46)
  mload obj 20311
end
if (%world.curobjs(20312)% < 5) && (%random.1000% <= 45)
  mload obj 20312
end
if (%world.curobjs(20315)% < 5) && (%random.1000% <= 44)
  mload obj 20315
end
if (%world.curobjs(20316)% < 5) && (%random.1000% <= 40)
  mload obj 20316
end
if (%world.curobjs(20330)% < 5) && (%random.1000% <= 40)
  mload obj 20330
end
~
#20308
������������~
0 n 100
*~
if (%world.curobjs(20303)% < 5) && (%random.1000% <= 40)
  mload obj 20303
end
if (%world.curobjs(20307)% < 5) && (%random.1000% <= 40)
  mload obj 20307
end
if (%world.curobjs(20311)% < 5) && (%random.1000% <= 40)
  mload obj 20311
end
if (%world.curobjs(20314)% < 5) && (%random.1000% <= 40)
  mload obj 20314
end
if (%world.curobjs(20315)% < 5) && (%random.1000% <= 40)
  mload obj 20315
end
if (%world.curobjs(20316)% < 5) && (%random.1000% <= 40)
  mload obj 20316
end
if (%world.curobjs(20323)% < 5) && (%random.1000% <= 40)
  mload obj 20323
end
~
#20309
������������~
0 n 100
*~
if (%world.curobjs(20306)% < 5) && (%random.1000% <= 40)
  mload obj 20306
end
if (%world.curobjs(20308)% < 5) && (%random.1000% <= 40)
  mload obj 20308
end
if (%world.curobjs(20313)% < 5) && (%random.1000% <= 40)
  mload obj 20313
end
if (%world.curobjs(20315)% < 5) && (%random.1000% <= 40)
  mload obj 20315
end
if (%world.curobjs(20316)% < 5) && (%random.1000% <= 40)
  mload obj 20316
end
if (%world.curobjs(20317)% < 5) && (%random.1000% <= 40)
  mload obj 20317
end
if (%world.curobjs(20319)% < 5) && (%random.1000% <= 40)
  mload obj 20319
end
if (%world.curobjs(20329)% < 5) && (%random.1000% <= 40)
  mload obj 20329
end
~
#20310
������������~
0 r 100
*~
wait 2
say ���� �����!!!
say ���� ������, � ������� ������ �� ����.
say ������� ����� ����� ������� ���������, � ������ ����� ���, ������ ���� �� ��������. 
say �������� ��  �� ������� �� ��������?
attach 20322 %self.id%
attach 20323 %self.id%
detach 20310 %self.id%
~
#20311
�������������~
0 n 100
*~
if (%world.curobjs(20304)% < 5) && (%random.1000% <= 40)
  mload obj 20304
end
if (%world.curobjs(20308)% < 5) && (%random.1000% <= 40)
  mload obj 20308
end
if (%world.curobjs(20313)% < 5) && (%random.1000% <= 40)
  mload obj 20313
end
if (%world.curobjs(20314)% < 5) && (%random.1000% <= 40)
  mload obj 20314
end
if (%world.curobjs(20315)% < 5) && (%random.1000% <= 40)
  mload obj 20315
end
if (%world.curobjs(20316)% < 5) && (%random.1000% <= 40)
  mload obj 20316
end
if (%world.curobjs(20326)% < 5) && (%random.1000% <= 40)
  mload obj 20326
end
~
#20312
�������������~
0 n 100
*~
if (%world.curobjs(20304)% < 6) && (%random.1000% <= 40)
  mload obj 20304
end
if (%world.curobjs(20309)% < 6) && (%random.1000% <= 40)
  mload obj 20309
end
if (%world.curobjs(20313)% < 6) && (%random.1000% <= 40)
  mload obj 20313
end
if (%world.curobjs(20315)% < 6) && (%random.1000% <= 40)
  mload obj 20315
end
if (%world.curobjs(20316)% < 6) && (%random.1000% <= 40)
  mload obj 20316
end
if (%world.curobjs(20317)% < 6) && (%random.1000% <= 40)
  mload obj 20317
end
~
#20313
������������~
0 n 100
*~
if (%world.curobjs(20304)% < 6) && (%random.1000% <= 25)
  mload obj 20304
end
if (%world.curobjs(20308)% < 6) && (%random.1000% <= 25)
  mload obj 20308
end
if (%world.curobjs(20313)% < 6) && (%random.1000% <= 25)
  mload obj 20313
end
if (%world.curobjs(20315)% < 6) && (%random.1000% <= 30)
  mload obj 20315
end
if (%world.curobjs(20316)% < 6) && (%random.1000% <= 30)
  mload obj 20316
end
if (%world.curobjs(20317)% < 6) && (%random.1000% <= 30)
  mload obj 20317
end
if (%world.curobjs(20319)% < 6) && (%random.1000% <= 30)
  mload obj 20319
end
if (%world.curobjs(20329)% < 6) && (%random.1000% <= 30)
  mload obj 20329
end
~
#20314
������������~
0 n 100
*~
if (%world.curobjs(20303)% < 6) && (%random.1000% <= 30)
  mload obj 20303
end
if (%world.curobjs(20307)% < 6) && (%random.1000% <= 30)
  mload obj 20307
end
if (%world.curobjs(20308)% < 6) && (%random.1000% <= 30)
  mload obj 20308
end
if (%world.curobjs(20314)% < 6) && (%random.1000% <= 30)
  mload obj 20314
end
if (%world.curobjs(20315)% < 6) && (%random.1000% <= 30)
  mload obj 20315
end
if (%world.curobjs(20316)% < 6) && (%random.1000% <= 30)
  mload obj 20316
end
if (%world.curobjs(20321)% < 6) && (%random.1000% <= 30)
  mload obj 20321
end
if (%world.curobjs(20322)% < 6) && (%random.1000% <= 30)
  mload obj 20322
end
~
#20315
����������������~
0 n 100
*~
if (%world.curobjs(20304)% < 6) && (%random.1000% <= 90)
  mload obj 20304
end
if (%world.curobjs(20308)% < 6) && (%random.1000% <= 90)
  mload obj 20308
end
if (%world.curobjs(20313)% < 6) && (%random.1000% <= 90)
  mload obj 20313
end
if (%world.curobjs(20316)% < 6) && (%random.1000% <= 90)
  mload obj 20316
end
if (%world.curobjs(20317)% < 6) && (%random.1000% <= 90)
  mload obj 20317
end
if (%world.curobjs(20326)% < 6) && (%random.1000% <= 90)
  mload obj 20326
end
if (%world.curobjs(20329)% < 6) && (%random.1000% <= 90)
  mload obj 20329
end
~
#20316
�������������~
0 n 100
*~
if (%world.curobjs(20306)% < 6) && (%random.1000% <= 30)
  mload obj 20306
end
if (%world.curobjs(20308)% < 6) && (%random.1000% <= 30)
  mload obj 20308
end
if (%world.curobjs(20326)% < 6) && (%random.1000% <= 30)
  mload obj 20326
end
if (%world.curobjs(20329)% < 6) && (%random.1000% <= 30)
  mload obj 20329
end
~
#20317
�������������~
0 n 100
*~
if (%world.curobjs(20308)% < 4) && (%random.1000% <= 90)
  mload obj 20308
end
if (%world.curobjs(20314)% < 4) && (%random.1000% <= 80)
  mload obj 20314
end
if (%world.curobjs(20315)% < 4) && (%random.1000% <= 90)
  mload obj 20315
end
if (%world.curobjs(20316)% < 4) && (%random.1000% <= 60)
  mload obj 20316
end
if (%world.curobjs(20318)% < 4) && (%random.1000% <= 80)
  mload obj 20318
end
if (%world.curobjs(20320)% < 4) && (%random.1000% <= 90)
  mload obj 20320
end
~
#20318
��������������~
0 n 100
*~
if (%world.curobjs(20304)% < 3) && (%random.1000% <= 80)
  mload obj 20304
end
if (%world.curobjs(20308)% < 3) && (%random.1000% <= 90)
  mload obj 20308
end
if (%world.curobjs(20316)% < 3) && (%random.1000% <= 80)
  mload obj 20316
end
if (%world.curobjs(20317)% < 3) && (%random.1000% <= 79)
  mload obj 20317
end
if (%world.curobjs(20325)% < 3) && (%random.1000% <= 70)
  mload obj 20325
end
~
#20319
�������������~
0 n 100
*~
if (%world.curobjs(20306)% < 3) && (%random.1000% <= 100)
  mload obj 20306
end
if (%world.curobjs(20309)% < 3) && (%random.1000% <= 100)
  mload obj 20309
end
if (%world.curobjs(20312)% < 3) && (%random.1000% <= 100)
  mload obj 20312
end
if (%world.curobjs(20316)% < 3) && (%random.1000% <= 100)
  mload obj 20316
end
if (%world.curobjs(20328)% < 3) && (%random.1000% <= 100)
  mload obj 20328
end1
~
#20320
�����������~
0 n 100
*~
if (%world.curobjs(20327)% < 4) && (%random.1000% <= 100)
  mload obj 20327
end
if (%world.curobjs(20316)% < 4) && (%random.1000% <= 100)
  mload obj 20316
end
if (%world.curobjs(20305)% < 4) && (%random.1000% <= 100)
  mload obj 20305
end
~
#20321
�����������~
0 n 100
*~
if (%world.curobjs(20316)% < 4) && (%random.1000% <= 100)
  mload obj 20316
end
if (%world.curobjs(20327)% < 4) && (%random.1000% <= 100)
  mload obj 20327
end
if (%world.curobjs(20306)% < 4) && (%random.1000% <= 100)
  mload obj 20306
end
if (%world.curobjs(20309)% < 4) && (%random.1000% <= 100)
  mload obj 20309
end
~
#20322
������������2~
0 r 100
*~
wait 2
�� �������� ������� ��������� �� ���.
~
#20323
���������~
0 d 100
������~
wait 10
makeuid xman %actor.id%
worlds xman
say �������� ������ ���, �� �������� � ������ �� ��������. ��� �� ���� �������, �����������. 
say � �������� ����� ����, ���� � ������.
wait 20
mload obj 20301
���� ������ %actor.name%
say ����� ���, ��� �� ���� ���� ��������. 
say �������� ������, �� ����� ����� ������, ��� ��� ����� �����.
wait 4s
mecho ����� �������� �� ������� ���������� �����. 
mecho �� ����� �� ������ ������ ��������� ��������� ������ ������ �� ������ ���� � ������� 
mecho � �� �������.
wait 20
calcuid tat 20308 room
attach 20324 %tat.id%
exec 20324 %tat.id%
detach 20322 %self.id%
detach 20323 %self.id%
~
#20324
���������������~
2 z 100
*~
wait 2
wload mob 20334
calcuid bas 20334 mob 
attach  20325 %bas.id% 
exec 20325 %bas.id%
~
#20325
��������������~
0 z 100
*~
wait 3
����� �����... ��� ������ ����!
wait 10
�
mecho ����� ���� ������ ��-�� �������� �������� ���������� ����, ��������� � ����� ������ �����. 
mecho ������ ���������� ��� ������� ������ ���, �� �������� ������ ������, ������������ ����� �� 
mecho ��� �������������.
wait 2s
say �� ����� ��������?!
���� %xman.name%
wait 10
mecho ������ �� ��� ����� ������� ���� �� �������, �� � ����� ������ ������� ��� �������� �� �� �����.
attach 20326 %self.id%
wait 5s
say ������?! ������ ��, �������!
����� %xman.name%
detach 20326 %self.id%
~
#20326
��������������2~
0 d 100
���~
wait 1
detach 20325 %self.id%
wait 10
���
wait 15
mecho ������� ����� ������� ����� �������� ����� � �������.
say ���, ������ �� ����� ��������. �������! 
wait 5
����� �����
if (%exist.mob(20333)%)
  calcuid mik 20333 mob
  attach 20330 %mik.id%
end
~
#20327
� ����~
0 z 100
*~
wait 25
�� ������������ �������� ��� � ���������� �������
wait 10
���
wait 20
�� ��������� �� ������ �������� ���
wait 25
say �� ��������� �� �������, ��� ������ �����. 
wait 5
say ���� �� ����� ���� ��������� �����, � ������ �� ������ ��������� ������. 
���
wait 5
say ��� ����� �������: �� �����, ����� ���� ������ ������� ��������� �����, ��������� ���� ������. 
say ���������� �������, ���� ������, ��� ��� ���� ��� �������� � �����, ���� �������� ������. 
say ������ ��� �� ���. ������� ���, ������ � � ��� ������ �� ������, � ������ ���� �����. 
wait 5
say ������? 
�� ������������� ��������� �� ���
attach 20328 %self.id%
attach 20329 %self.id%
detach 20327 %self.id%
~
#20328
� ���~
0 d 100
���~
wait 5
makeuid wman %actor.id%
worlds wman
���
��� ����
��� ���
��� ���
calcuid tat1 20317 mob
attach 20332 %tat1.id%
exec 20332 %tat1.id%
calcuid tat1 20318 mob
attach 20332 %tat1.id%
exec 20332 %tat1.id%
calcuid tat1 20334 mob
attach 20334 %tat1.id%
exec 20334 %tat1.id%
detach 20328 %self.id%
detach 20329 %self.id%
~
#20329
� ��~
0 d 100
��~
wait 25
say ����� �������, � ������� ���� �������������� ������� �����!
mecho �������� �� �����������, ������� � �� �� ������� ����� �� �������.
calcuid tar 20334 mob
mpurge %tar%
attach 20334 %self.id%
detach 20328 %self.id%
detach 20329 %self.id%
~
#20330
���������~
0 f 100
*~
calcuid tar 20334 mob
attach 20331 %tar.id%
exec 20331 %tar.id%
~
#20331
��������������������~
0 z 100
*~
wait 20
say �� ������ �� ���� � �������� ����. �� ����� ���� ������!
wait 25
%echo% ���������� ������ ��� ��� ������� ����� ���� ������.
%echo% �� ��������� � ������� �����.
mat 20375 mecho ���������� ���ף� ����-�� � �����.
mteleport all 20375
wait 5
calcuid han 20300 mob
exec 20327 %han.id%
calcuid load 20375 room
attach 20333 %load.id%
exec 20333 %load.id%
mpurge %self%
~
#20332
���~
0 z 100
*~
����� %wman.name%
~
#20333
���������������~
2 z 100
~
wload mob 20334
~
#20334
��������������~
0 j 100
*~
if (%object.vnum% !=  20331)
  return 0
  say ����� ��� ���?
  halt
end
wait 1
mpurge %object%
wait 20
say ���� ������ ����� � ������ ���� ���.
eval rand %random.1000%
if ((%rand% < 100) && (%world.curobjs(20332)% < 3))
  say �� �������� �������.
  mload obj 20332
  ���� ����� %actor.name%
  wait 10
  say ������ �����!
elseif ((100 <= %rand%) && (%rand% < 250) && (%world.curobjs(20338)% < 3))
  say �� �������� �������.
  mload obj 20338
  ���� ����� %actor.name%
  wait 10
  say ������ �����!
else
  %actor.exp(+300000)%
  wait 5
  say �� �������� ��� ���������, � ����� ���� ��������.
end 
calcuid tem 20304 mob
attach 20341 %tem.id%
detach 20340 %tem.id%
~
#20335
����������~
0 f 100
*~
mload obj 20331
~
#20336
�������������~
0 m 1
*~
wait 1
if %amount% < 2000 then
  ����
  halt
end
wait 1
�
�
�
~
#20337
�������������~
0 r 100
*~
wait 5
makeuid oman %actor.id%
worlds oman
mecho ��������� ��������� �� ���.
wait 15
say ���� ���� ���� ������?!
���
wait 20
say �������� �� �����. � ���� ���� ��� ���� ���������� �����������...
wait 20
say ��� ���� �������� ����, ���� � ������ ���� ���� ��������. ������ ���������� ��� ����� 
say ���������� � ��� ������� ��� �� ��������. ����� ���������� ������, ������� ��� �������� 
say ����� ��������������� ����� �� ����. 
wait 20
say � ������� ������ �������� ������ ��� ���������, �� ��� �� ��� ��� ���, � �������� �� 
say ��������...
wait 15
say ������ ����, � � ������� ����.
say ����� �� ������ ����� ��������, ������� ��� ���.
mload obj 20333
���� ������� %oman.name%
wait 5
say �� ���� �������. 
detach 20337 %self.id%
~
#20338
���������������~
0 j 100
*~
switch %object.vnum%
  case 20226
    wait 5
    mpurge %object%
    wait 20
    say �� ������, �� ��������� �� ���� ��������� � � ���� ���� ����� ������... �����!
    eval rand %random.1000%
    if ((%rand% < 250) && (%world.curobjs(20334)% < 3))
      say �� ��, ��� ���� ����� �������� ����.
      mload obj 20334
      ���� ����� %actor.name%
    elseif ((300 <= %rand%) && (%rand% < 550) && (%world.curobjs(20339)% < 3))
      say �� ��, ��� ���� ����� �������� ����.
      mload obj 20339
      ���� ������ %actor.name%
    else
      %actor.exp(+350000)%
    end 
  done
~
#20339
�������~
0 f 100
*~
mload obj 20302
~
#20340
���������������1~
0 r 100
*~
wait 5
mecho ������������ �������� ���.
wait 5
say ���� ���, ���������!
wait 3s
say �� ���� �� ���������?!
say ������� ���������� ����� ��������� ������!
����� %actor.name%
~
#20341
���������������2~
0 r 100
*~
wait 10
say � ������� ���� �� ����� � ������� � ����.
���
wait 20
say �����, �� ����� ���� ���� �������.
wait 5
say �������� ��� �������, � ����� �����, ���� �� ������� ������.
mload obj 20335
���� ���� %actor.name%
wait 10
say ���� ������ ����� �� ���� ����������, ������� ���������.
attach 20344 %self.id%
detach 20341 %self.id%
~
#20342
�����������������~
1 c 100
�����������~
if !(%arg.contains(�����)%) 
  osend %actor% ��� �� ��������� ��������?
  return 1
  halt
else
  wait 10
  osend %actor% �� ������� �������� ����������.
  oechoaround %actor% %actor.name% �����%actor.g% ������� �������� �����.
  wait 30
  oecho ���� ����� ���������� ���������, � �� �������� ����� � �����.
  oechoaround ���� ����� ���������� ���������, � %actor.name% �������%actor.g% ����� � �����.
  oload obj 20336
  opurge %self%
end
~
#20343
�����������~
1 c 100
�������~
if !(%arg.contains(����)%) 
  osend %actor% ��� �� ������ �������?
  return 1
  halt
else
  wait 10
  osend %actor% �������� ��������� ������ �� � ������ ������� ����.
  oechoaround %actor% %actor.name% � ������ ������%actor.g% ���� � �����.
  oload obj 20337
  opurge %self%
end
~
#20344
�����������������~
0 j 100
*~
wait 1
switch %object.vnum%
  case 20404
    wait 1
    mpurge %object%
    wait 20
    ��
    wait 20
    say ������� � ��� ��������� ������������� � �� ������ ����������� �����!
    say ��� �� ��������� ����� ������� �����.
    say ��, �����, �������� �������.
    eval rand %random.1000%
    if ((%rand% < 300) && (%world.curobjs(20340)% < 3))
      mload obj 20340
      ���� ����� %actor.name%
      say ������ ����� ����� � ���� ����, � ������� �� ��������� ���� ������!
    elseif  ((300 <= %rand%) && (%rand% < 600) && (%world.curobjs(20341)% < 3))
      mload obj 20341
      ���� ������ %actor.name%
      say ������ ����� ����� � ���� ����, � ������� �� ��������� ���� ������!
    else
      %self.gold(+10000)%
      give 10000 ��� .%actor.name%
      say ������ ����� ����� � ���� ����, � ������� �� ��������� ���� ������!
    end
  break
  case 20405
    wait 1
    mpurge %object%
    ���
    emote ���� ����� �� ������������ �������.
    ����� �� �������� ������� ���� ��������� ����� �� �������?! ���� �����!!!
    wait 10
    mkill %actor%
  break
  default
    wait 1
    say �� ���� ��� ������, ������� �����?!
    drop %object.name%
  done
~
#20345
������������~
0 p 100
*~
wait 5
������� �������! �� ���!
mload mob 20337
detach 20345 %self.id%
~
#20346
�����������~
2 c 1
����������~
if !(%arg.contains(����)%) 
  wsend %actor% ���� ��� �� ������ �������?
  return 1
  halt
else
  wait 1
  wteleport %actor% 20379
end
~
#20347
�����������~
2 c 1
���� ������~
if !((%arg.contains(��)%) && (%arg.contains(�����)%))
  wsend %actor% ���� ��� �� ��������� ����?
  return 1
  halt
else
  wait 5
  wsend %actor% �� ����� �� ��������� ������, ���� �� �����, ������� � �����-�� �������.
  wechoaround %actor% %actor.iname% ������%actor.g% �� �����.
  wteleport %actor.name% 20500
end
~
#20348
��������~
2 e 100
*~
wait 1s
wecho ���������� ���� � ��c ������ ��� ���������� ����� �������, � ������� �� ������-������� �� �������.
wecho ������ �� ���, �������������� �������� ������, � ����� ������ �� ��� �����, �� ����� ��������.
calcuid po 20378 room
attach 20347 %po.id%
detach 20348 %self.id%
~
$~
